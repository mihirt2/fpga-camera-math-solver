//==============================================================================
// normalize
//
// Nearest-neighbor rescaling of a segmented character to CHAR_W x CHAR_H.
// Processes one character per start pulse.
//
// Nearest-neighbor (CHAR_W=16, CHAR_H=32 are powers of 2):
//   src_x = x_min + (ox * bbox_width)  >> 4
//   src_y = y_min + (oy * bbox_height) >> 5
//
// Address computation is pipelined across 3 cycles per pixel:
//   S_ADDR   ? register src_x, src_y
//   S_READ   ? compute BRAM address from registered coords, issue read
//   S_SAMPLE ? extract pixel bit from BRAM data, store in row
//
// Output: one row (CHAR_W bits) per write, CHAR_H rows total.
//         row_reg[CHAR_W-1] = leftmost pixel (ox=0)
//         row_reg[0]        = rightmost pixel (ox=CHAR_W-1)
//==============================================================================
`timescale 1ns / 1ps

module normalize
    import ocr_pkg::*;
(
    input  logic        clk,
    input  logic        reset,
    input  logic        start,

    // bounding box of the character to normalize
    input  logic [9:0]  bbox_x_min,
    input  logic [9:0]  bbox_x_max,
    input  logic [7:0]  bbox_y_min,
    input  logic [7:0]  bbox_y_max,

    // BRAM read port into binarized image (32 packed pixels per word)
    output logic [13:0] bin_raddr,
    input  logic [31:0] bin_rdata,

    // output: normalized bitmap, one row per write
    output logic [4:0]           norm_waddr,   // row index 0..CHAR_H-1
    output logic [CHAR_W-1:0]   norm_wdata,   // one row of pixels
    output logic                 norm_we,

    output logic                 done
);

    // ?? FSM ??????????????????????????????????????????????????????????????
    typedef enum logic [2:0] {
        S_IDLE,
        S_INIT,
        S_ADDR,         // register source coordinates
        S_READ,         // issue BRAM read from registered coords
        S_SAMPLE,       // extract pixel from BRAM result, store in row
        S_WRITE_ROW,    // write completed row to output
        S_DONE
    } state_t;

    state_t state, state_next;

    // ?? pixel iterators ??????????????????????????????????????????????????
    logic [3:0] ox, ox_next;          // 0 .. CHAR_W-1
    logic [4:0] oy, oy_next;          // 0 .. CHAR_H-1

    // ?? precomputed bbox dimensions (latched on start) ???????????????????
    logic [9:0] bbox_w;               // x_max - x_min + 1
    logic [8:0] bbox_h;               // y_max - y_min + 1

    // ?? pipeline stage A: registered source coordinates ??????????????????
    logic [9:0] src_x_r;
    logic [7:0] src_y_r;

    // ?? pipeline stage B: BRAM address from registered coords ????????????
    logic [18:0] linear;
    logic [13:0] word_addr;
    logic [4:0]  bit_idx;

    assign linear    = src_y_r * IMG_W + src_x_r;
    assign word_addr = linear[18:5];
    assign bit_idx   = linear[4:0];

    // ?? pipeline stage C: extract pixel from BRAM data ???????????????????
    logic [4:0]  bit_idx_d;           // delayed bit index
    logic [3:0]  ox_d;                // delayed ox for row_reg placement

    logic pixel_val;
    assign pixel_val = bin_rdata[bit_idx_d];

    // ?? row accumulator ??????????????????????????????????????????????????
    logic [CHAR_W-1:0] row_reg, row_reg_next;

    // ?? combinational next-state logic ???????????????????????????????????
    always_comb begin
        state_next   = state;
        ox_next      = ox;
        oy_next      = oy;
        row_reg_next = row_reg;
        bin_raddr    = '0;
        norm_we      = 1'b0;
        norm_waddr   = '0;
        norm_wdata   = '0;

        unique case (state)
            S_IDLE: begin
                if (start)
                    state_next = S_INIT;
            end

            S_INIT: begin
                ox_next      = '0;
                oy_next      = '0;
                row_reg_next = '0;
                state_next   = S_ADDR;
            end

            // stage A: src_x_r and src_y_r are registered in ff block
            S_ADDR: begin
                state_next = S_READ;
            end

            // stage B: BRAM address valid from registered src_x_r, src_y_r
            S_READ: begin
                bin_raddr  = word_addr;
                state_next = S_SAMPLE;
            end

            // stage C: BRAM data arrived, extract pixel
            S_SAMPLE: begin
                row_reg_next[CHAR_W - 1 - ox_d] = pixel_val;

                if (ox < CHAR_W - 1) begin
                    ox_next    = ox + 1;
                    state_next = S_ADDR;
                end else begin
                    state_next = S_WRITE_ROW;
                end
            end

            S_WRITE_ROW: begin
                norm_we    = 1'b1;
                norm_waddr = oy;
                norm_wdata = row_reg;

                if (oy < CHAR_H - 1) begin
                    oy_next      = oy + 1;
                    ox_next      = '0;
                    row_reg_next = '0;
                    state_next   = S_ADDR;
                end else begin
                    state_next = S_DONE;
                end
            end

            S_DONE: begin
                state_next = S_IDLE;
            end
        endcase
    end

    // ?? sequential logic ?????????????????????????????????????????????????
    always_ff @(posedge clk) begin
        if (reset) begin
            state     <= S_IDLE;
            ox        <= '0;
            oy        <= '0;
            row_reg   <= '0;
            bbox_w    <= '0;
            bbox_h    <= '0;
            src_x_r   <= '0;
            src_y_r   <= '0;
            bit_idx_d <= '0;
            ox_d      <= '0;
            done      <= 1'b0;
        end else begin
            state   <= state_next;
            ox      <= ox_next;
            oy      <= oy_next;
            row_reg <= row_reg_next;

            // latch bbox dimensions on start
            if (state == S_IDLE && start) begin
                bbox_w <= bbox_x_max - bbox_x_min + 1;
                bbox_h <= bbox_y_max - bbox_y_min + 1;
                done   <= 1'b0;
            end

            // stage A: register source coordinates
            if (state == S_ADDR) begin
                src_x_r <= bbox_x_min + ((ox * bbox_w) >> 4);
                src_y_r <= bbox_y_min + ((oy * bbox_h) >> 5);
            end

            // stage B: register bit index and ox for extraction
            if (state == S_READ) begin
                bit_idx_d <= bit_idx;
                ox_d      <= ox;
            end

            done <= (state_next == S_DONE);
        end
    end

endmodule