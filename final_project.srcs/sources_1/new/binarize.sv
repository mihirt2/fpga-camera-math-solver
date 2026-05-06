`timescale 1ns / 1ps
//==============================================================================
// binarize.sv
//
// Fixed-threshold binarizer. Pixel is ink when cam_data < threshold.
// The adaptive/tiled threshold path is intentionally disabled to reduce LUT use.
//==============================================================================

module binarize #(
    parameter int IMG_W = 320,
    parameter int IMG_H = 240,
    parameter int CROP_LEFT = 0,
    parameter int CROP_RIGHT = 0
)(
    input  logic        clk,
    input  logic        reset,
    input  logic        start,
    input  logic [7:0]  threshold,
    input  logic        adaptive,

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

    localparam int TOTAL_PIXELS = IMG_W * IMG_H;

    typedef enum logic [2:0] {
        S_IDLE,
        S_READ,
        S_LATCH,
        S_WRITE,
        S_DONE
    } state_t;

    state_t state;

    logic [16:0] pixel_idx;
    logic [31:0] accum;
    logic [4:0]  bit_pos;
    logic [13:0] word_addr;
    logic        bin_pixel;

    assign bin_pixel = (cam_data < threshold);

    always_ff @(posedge clk) begin
        if (reset) begin
            state     <= S_IDLE;
            pixel_idx <= '0;
            accum     <= '0;
            bit_pos   <= '0;
            word_addr <= '0;
        end else begin
            case (state)
                S_IDLE: begin
                    if (start) begin
                        pixel_idx <= '0;
                        accum     <= '0;
                        bit_pos   <= '0;
                        word_addr <= '0;
                        state     <= S_READ;
                    end
                end

                S_READ: begin
                    state <= S_LATCH;
                end

                S_LATCH: begin
                    accum[bit_pos] <= bin_pixel;

                    if (bit_pos == 5'd31) begin
                        bit_pos <= '0;
                        state   <= S_WRITE;
                    end else begin
                        bit_pos <= bit_pos + 1'b1;
                        if (pixel_idx + 17'd1 >= TOTAL_PIXELS) begin
                            state <= S_DONE;
                        end else begin
                            pixel_idx <= pixel_idx + 1'b1;
                            state     <= S_READ;
                        end
                    end
                end

                S_WRITE: begin
                    accum     <= '0;
                    word_addr <= word_addr + 1'b1;

                    if (pixel_idx + 17'd1 >= TOTAL_PIXELS) begin
                        state <= S_DONE;
                    end else begin
                        pixel_idx <= pixel_idx + 1'b1;
                        state     <= S_READ;
                    end
                end

                S_DONE: begin
                    state <= S_IDLE;
                end

                default: begin
                    state <= S_IDLE;
                end
            endcase
        end
    end

    always_comb begin
        cam_addr  = pixel_idx;
        cam_en    = (state == S_READ);
        bin_waddr = word_addr;
        bin_wdata = accum;
        bin_we    = (state == S_WRITE) || ((state == S_DONE) && (bit_pos != 5'd0));
        done      = (state == S_DONE);
    end

endmodule
