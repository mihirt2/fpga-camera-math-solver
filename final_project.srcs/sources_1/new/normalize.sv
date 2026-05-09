`timescale 1ns / 1ps

module normalize
    import ocr_pkg::*;
(
    input  logic        clk,
    input  logic        reset,
    input  logic        start,

    input  logic [9:0]  bbox_x_min,
    input  logic [9:0]  bbox_x_max,
    input  logic [7:0]  bbox_y_min,
    input  logic [7:0]  bbox_y_max,

    output logic [13:0] bin_raddr,
    input  logic [31:0] bin_rdata,

    output logic [4:0]           norm_waddr,
    output logic [CHAR_W-1:0]    norm_wdata,
    output logic                 norm_we,

    output logic                 done
);

    typedef enum logic [2:0] {
        N_IDLE,
        N_INIT,
        N_ADDR,
        N_READ,
        N_SAMPLE,
        N_WRITE_ROW,
        N_DONE
    } norm_state_t;

    norm_state_t state, state_next;

    logic [3:0] ox, ox_next;
    logic [4:0] oy, oy_next;

    logic [9:0] bbox_w;
    logic [9:0] bbox_h;
    logic [7:0] bbox_y_start;

    logic [9:0] src_x_r;
    logic [7:0] src_y_r;

    logic [16:0] linear;
    logic [13:0] word_addr;
    logic [4:0]  bit_idx;

    logic [4:0] bit_idx_d;
    logic [3:0] ox_d;

    logic pixel_val;

    logic [CHAR_W-1:0] row_reg, row_reg_next;

    logic [13:0] ox_times_w;
    logic [14:0] oy_times_h;
    logic [14:0] ox_sample_num;
    logic [15:0] oy_sample_num;

    localparam int MIN_THIN_BBOX_H = 8;
    localparam int MAX_Y_ORIGIN_FOR_THIN = IMG_H - MIN_THIN_BBOX_H;
    localparam logic [16:0] IMG_W_U = IMG_W;
    localparam logic [7:0] BOTTOM_TRIM_ROWS = 8'd2;
    localparam int MIN_H_FOR_BOTTOM_TRIM = 12;

    logic [7:0] bbox_y_max_trimmed;
    logic [9:0] untrimmed_bbox_h;
    logic [9:0] raw_bbox_h;
    logic [9:0] thin_pad;
    logic [9:0] thin_y_candidate;
    logic [7:0] expanded_bbox_y_min;
    logic [9:0] expanded_bbox_h;

    assign untrimmed_bbox_h = (bbox_y_max >= bbox_y_min)
                            ? ({2'b0, bbox_y_max} - {2'b0, bbox_y_min} + 10'd1)
                            : 10'd1;
    assign bbox_y_max_trimmed = (untrimmed_bbox_h > MIN_H_FOR_BOTTOM_TRIM &&
                                 bbox_y_max >= (bbox_y_min + BOTTOM_TRIM_ROWS))
                              ? (bbox_y_max - BOTTOM_TRIM_ROWS)
                              : bbox_y_max;
    assign raw_bbox_h = (bbox_y_max_trimmed >= bbox_y_min)
                      ? ({2'b0, bbox_y_max_trimmed} - {2'b0, bbox_y_min} + 10'd1)
                      : 10'd1;
    assign thin_pad = (raw_bbox_h < MIN_THIN_BBOX_H)
                    ? ((MIN_THIN_BBOX_H - raw_bbox_h) >> 1)
                    : 10'd0;
    assign thin_y_candidate = ({2'b0, bbox_y_min} > thin_pad)
                            ? ({2'b0, bbox_y_min} - thin_pad)
                            : 10'd0;

    always_comb begin
        if (raw_bbox_h < MIN_THIN_BBOX_H) begin
            expanded_bbox_h = MIN_THIN_BBOX_H;
            if (thin_y_candidate > MAX_Y_ORIGIN_FOR_THIN)
                expanded_bbox_y_min = 8'(MAX_Y_ORIGIN_FOR_THIN);
            else
                expanded_bbox_y_min = thin_y_candidate[7:0];
        end else begin
            expanded_bbox_h     = raw_bbox_h;
            expanded_bbox_y_min = bbox_y_min;
        end
    end

    assign linear    = ({9'b0, src_y_r} * IMG_W_U) + {7'b0, src_x_r};
    assign word_addr = linear[16:5];
    assign bit_idx   = linear[4:0];

    assign pixel_val = bin_rdata[bit_idx_d];

    assign ox_times_w = {10'b0, ox} * {4'b0, bbox_w};
    assign oy_times_h = {10'b0, oy} * {5'b0, bbox_h};
    assign ox_sample_num = {1'b0, ox_times_w} + {6'b0, bbox_w[9:1]};
    assign oy_sample_num = {1'b0, oy_times_h} + {7'b0, bbox_h[9:1]};

    always_comb begin
        state_next   = state;
        ox_next      = ox;
        oy_next      = oy;
        row_reg_next = row_reg;

        bin_raddr  = word_addr;
        norm_we    = 1'b0;
        norm_waddr = '0;
        norm_wdata = '0;

        case (state)
            N_IDLE: begin
                bin_raddr = '0;
                if (start)
                    state_next = N_INIT;
            end

            N_INIT: begin
                ox_next      = '0;
                oy_next      = '0;
                row_reg_next = '0;
                state_next   = N_ADDR;
            end

            N_ADDR: begin
                state_next = N_READ;
            end

            N_READ: begin
                state_next = N_SAMPLE;
            end

            N_SAMPLE: begin
                row_reg_next[CHAR_W - 1 - ox_d] = pixel_val;

                if (ox < CHAR_W - 1) begin
                    ox_next    = ox + 1'b1;
                    state_next = N_ADDR;
                end else begin
                    state_next = N_WRITE_ROW;
                end
            end

            N_WRITE_ROW: begin
                norm_we    = 1'b1;
                norm_waddr = oy;
                norm_wdata = row_reg;

                if (oy < CHAR_H - 1) begin
                    oy_next      = oy + 1'b1;
                    ox_next      = '0;
                    row_reg_next = '0;
                    state_next   = N_ADDR;
                end else begin
                    state_next = N_DONE;
                end
            end

            N_DONE: begin
                state_next = N_IDLE;
            end

            default: begin
                state_next = N_IDLE;
            end
        endcase
    end

    always_ff @(posedge clk) begin
        if (reset) begin
            state     <= N_IDLE;
            ox        <= '0;
            oy        <= '0;
            row_reg   <= '0;
            bbox_w    <= '0;
            bbox_h    <= '0;
            bbox_y_start <= '0;
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

            done <= (state == N_DONE);

            if (state == N_INIT) begin
                bbox_w <= (bbox_x_max >= bbox_x_min)
                        ? (bbox_x_max - bbox_x_min + 10'd1)
                        : 10'd1;

                bbox_h       <= expanded_bbox_h;
                bbox_y_start <= expanded_bbox_y_min;
            end

            if (state == N_ADDR) begin
                src_x_r <= bbox_x_min + ox_sample_num[13:4];
                src_y_r <= bbox_y_start + oy_sample_num[12:5];
            end

            if (state == N_READ) begin
                bit_idx_d <= bit_idx;
                ox_d      <= ox;
            end
        end
    end

endmodule
