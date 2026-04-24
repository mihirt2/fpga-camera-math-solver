`timescale 1ns / 1ps
//==============================================================================
// binarize.sv
//
// Two modes controlled by 'adaptive' input (sw[9]):
//   adaptive=0: Fixed threshold. Pixel is ink if cam_data < threshold.
//   adaptive=1: Two-pass adaptive.
//       Pass 1: scan all pixels to find global min and max.
//       Pass 2: pixel is ink if cam_data < (min + threshold).
//               sw[7:0] = margin above darkest pixel.
//               Typical value: 40-80 depending on contrast.
//
// Packing: 32 binary pixels per word, bit 0 = first pixel in group.
// Timing:  ~1.5ms fixed, ~3ms adaptive at 100MHz.
//==============================================================================

module binarize #(
    parameter int IMG_W = 320,
    parameter int IMG_H = 240
)(
    input  logic        clk,
    input  logic        reset,
    input  logic        start,
    input  logic [7:0]  threshold,
    input  logic        adaptive,     // sw[9]: 0=fixed, 1=adaptive

    // Camera BRAM read port
    output logic [16:0] cam_addr,
    input  logic [7:0]  cam_data,
    output logic        cam_en,

    // Binary frame buffer write port
    output logic [13:0] bin_waddr,
    output logic [31:0] bin_wdata,
    output logic        bin_we,

    output logic        done
);

    localparam int TOTAL_PIXELS = IMG_W * IMG_H;        // 76800
    localparam int WORDS_TOTAL  = TOTAL_PIXELS / 32;    // 2400

    typedef enum logic [2:0] {
        S_IDLE,
        S_SCAN_READ,   // pass 1: issue address for min/max scan
        S_SCAN_LATCH,  // pass 1: update min/max
        S_READ,        // pass 2: issue address for binarization
        S_LATCH,       // pass 2: threshold and pack
        S_WRITE,       // pass 2: write 32-bit word
        S_DONE
    } state_t;

    state_t state, state_next;

    // Pixel counter (used in both passes)
    logic [16:0] pixel_idx, pixel_idx_next;

    // Min/max tracking (pass 1)
    logic [7:0] pixel_min, pixel_min_next;
    logic [7:0] pixel_max, pixel_max_next;

    // Effective threshold (computed after pass 1)
    logic [7:0] eff_thresh, eff_thresh_next;

    // 32-bit accumulator for packing
    logic [31:0] accum, accum_next;
    logic [4:0]  bit_pos, bit_pos_next;

    // Word address for binary FB
    logic [13:0] word_addr, word_addr_next;

    // Thresholded pixel
    logic bin_pixel;
    assign bin_pixel = (cam_data < eff_thresh) ? 1'b1 : 1'b0;

    always_ff @(posedge clk) begin
        if (reset) begin
            state     <= S_IDLE;
            pixel_idx <= 17'd0;
            pixel_min <= 8'hFF;
            pixel_max <= 8'h00;
            eff_thresh<= 8'd128;
            accum     <= 32'd0;
            bit_pos   <= 5'd0;
            word_addr <= 14'd0;
        end else begin
            state     <= state_next;
            pixel_idx <= pixel_idx_next;
            pixel_min <= pixel_min_next;
            pixel_max <= pixel_max_next;
            eff_thresh<= eff_thresh_next;
            accum     <= accum_next;
            bit_pos   <= bit_pos_next;
            word_addr <= word_addr_next;
        end
    end

    always_comb begin
        // Defaults
        state_next     = state;
        pixel_idx_next = pixel_idx;
        pixel_min_next = pixel_min;
        pixel_max_next = pixel_max;
        eff_thresh_next= eff_thresh;
        accum_next     = accum;
        bit_pos_next   = bit_pos;
        word_addr_next = word_addr;
        cam_addr       = pixel_idx;
        cam_en         = 1'b0;
        bin_waddr      = word_addr;
        bin_wdata      = accum;
        bin_we         = 1'b0;
        done           = 1'b0;

        case (state)
            // =============================================================
            S_IDLE: begin
                if (start) begin
                    pixel_idx_next = 17'd0;
                    pixel_min_next = 8'hFF;
                    pixel_max_next = 8'h00;
                    accum_next     = 32'd0;
                    bit_pos_next   = 5'd0;
                    word_addr_next = 14'd0;

                    if (adaptive)
                        state_next = S_SCAN_READ;  // two-pass
                    else begin
                        eff_thresh_next = threshold; // fixed mode
                        state_next = S_READ;
                    end
                end
            end

            // =============================================================
            // PASS 1: Find min and max (adaptive mode only)
            // =============================================================
            S_SCAN_READ: begin
                cam_addr = pixel_idx;
                cam_en   = 1'b1;
                state_next = S_SCAN_LATCH;
            end

            S_SCAN_LATCH: begin
                // Update min/max
                if (cam_data < pixel_min)
                    pixel_min_next = cam_data;
                if (cam_data > pixel_max)
                    pixel_max_next = cam_data;

                pixel_idx_next = pixel_idx + 17'd1;

                if (pixel_idx + 17'd1 >= TOTAL_PIXELS) begin
                    // Pass 1 done - compute effective threshold
                    // eff_thresh = min + threshold (clamped to 255)
                    // If threshold=0, auto-midpoint: (min+max)/2
                    if (threshold == 8'd0) begin
                        eff_thresh_next = pixel_min_next + ((pixel_max_next - pixel_min_next) >> 1);
                    end else begin
                        // threshold/256 fraction of the range above min
                        eff_thresh_next = pixel_min_next + ((pixel_max_next - pixel_min_next) * threshold) >> 8;
                    end
                    
                    // Reset for pass 2
                    pixel_idx_next = 17'd0;
                    state_next     = S_READ;
                end else begin
                    state_next = S_SCAN_READ;
                end
            end

            // =============================================================
            // PASS 2: Binarize (used by both modes)
            // =============================================================
            S_READ: begin
                cam_addr = pixel_idx;
                cam_en   = 1'b1;
                state_next = S_LATCH;
            end

            S_LATCH: begin
                accum_next = accum;
                accum_next[bit_pos] = bin_pixel;

                if (bit_pos == 5'd31) begin
                    state_next   = S_WRITE;
                    bit_pos_next = 5'd0;
                end else begin
                    bit_pos_next   = bit_pos + 5'd1;
                    pixel_idx_next = pixel_idx + 17'd1;

                    if (pixel_idx + 17'd1 >= TOTAL_PIXELS)
                        state_next = S_DONE;
                    else
                        state_next = S_READ;
                end
            end

            S_WRITE: begin
                bin_waddr = word_addr;
                bin_wdata = accum;
                bin_we    = 1'b1;

                word_addr_next = word_addr + 14'd1;
                accum_next     = 32'd0;
                pixel_idx_next = pixel_idx + 17'd1;

                if (pixel_idx + 17'd1 >= TOTAL_PIXELS)
                    state_next = S_DONE;
                else
                    state_next = S_READ;
            end

            // =============================================================
            S_DONE: begin
                if (bit_pos != 5'd0) begin
                    bin_waddr = word_addr;
                    bin_wdata = accum;
                    bin_we    = 1'b1;
                end
                done       = 1'b1;
                state_next = S_IDLE;
            end
        endcase
    end

endmodule