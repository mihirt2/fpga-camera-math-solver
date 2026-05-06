`timescale 1ns / 1ps
//==============================================================================
// segment.sv
//
// Column-projection segmentation for one horizontal line of characters.
// This version scans one column at a time instead of keeping a wide randomly
// randomly indexed counter array. It is slower at runtime but much easier for
// Vivado to optimize.
//==============================================================================

module segment
    import ocr_pkg::*;
(
    input  logic        clk,
    input  logic        reset,
    input  logic        start,

    output logic [13:0] bin_raddr,
    input  logic [31:0] bin_rdata,

    output logic [$clog2(MAX_CHARS)-1:0] bbox_waddr,
    output logic [35:0]                  bbox_wdata,
    output logic                         bbox_we,

    output logic [$clog2(MAX_CHARS+1)-1:0] num_chars,
    output logic                         done
);

    localparam int WORDS_PER_ROW  = IMG_W / 32;
    localparam int TOTAL_WORDS    = (IMG_W * IMG_H) / 32;
    localparam int MIN_CHAR_W     = 3;
    localparam int MIN_GAP        = 5;
    localparam int MIN_COL_PIXELS = 3;
    localparam int MIN_ROW_PIXELS = 3;
    localparam int ROW_MIN        = 20;
    localparam int ROW_MAX        = 220;
    localparam int ROW_MIN_BASE   = ROW_MIN * WORDS_PER_ROW;
    // Optional edge crop for segmentation. Set to zero in the stable QVGA path.
    localparam int SCAN_LEFT_COL      = IMG_CROP_LEFT;
    localparam int SCAN_RIGHT_COL     = IMG_W - IMG_CROP_RIGHT;
    localparam int SCAN_RIGHT_LAST    = SCAN_RIGHT_COL - 1;
    localparam logic [$clog2(IMG_W)-1:0] SCAN_LEFT_COL_U   = SCAN_LEFT_COL;
    localparam logic [$clog2(IMG_W)-1:0] SCAN_RIGHT_LAST_U = SCAN_RIGHT_LAST;

    typedef enum logic [3:0] {
        S_IDLE,
        S_COL_START,
        S_COL_READ,
        S_COL_FINISH,
        S_COL_FLUSH,
        S_COL_DONE,
        S_RS_INIT,
        S_RS_READ,
        S_RS_DRAIN,
        S_RS_WRITE,
        S_DONE
    } state_t;

    state_t state, state_next;

    logic [$clog2(IMG_W)-1:0] scan_col, scan_col_next;
    logic [$clog2(IMG_H)-1:0] scan_row, scan_row_next;
    logic [13:0]              scan_row_base, scan_row_base_next;
    logic [1:0]               col_count, col_count_next;
    logic                     col_valid, col_valid_next;
    logic                     occ_prev2, occ_prev2_next;
    logic                     occ_prev1, occ_prev1_next;

    logic [1:0] col_count_accum;
    logic       current_col_occ;
    logic [4:0] scan_bit;
    logic [$clog2(WORDS_PER_ROW)-1:0] scan_word;

    assign scan_bit  = scan_col[4:0];
    assign scan_word = scan_col >> 5;

    always_comb begin
        col_count_accum = col_count;
        if (col_valid && bin_rdata[scan_bit] && (col_count != 2'd3))
            col_count_accum = col_count + 2'd1;
    end

    assign current_col_occ = (col_count_accum >= MIN_COL_PIXELS[1:0]);

    logic [$clog2(IMG_W)-1:0] col_idx, col_idx_next;
    logic                     in_run, in_run_next;
    logic [$clog2(IMG_W)-1:0] run_start;
    logic [$clog2(IMG_W)-1:0] gap_count, gap_count_next;

    logic [9:0] char_x_min [0:MAX_CHARS-1];
    logic [9:0] char_x_max [0:MAX_CHARS-1];
    logic [$clog2(MAX_CHARS+1)-1:0] char_count, char_count_next;

    logic        support_valid;
    logic        col_supported;
    logic [9:0]  support_x;
    logic        record_char;
    logic [9:0]  record_x_min, record_x_max;

    logic [$clog2(MAX_CHARS)-1:0] char_idx, char_idx_next;
    logic [$clog2(IMG_H)-1:0]     row_idx, row_idx_next;

    logic [$clog2(WORDS_PER_ROW)-1:0] word_in_row, word_in_row_next;
    logic [$clog2(WORDS_PER_ROW)-1:0] rs_first_word, rs_last_word;
    logic [$clog2(WORDS_PER_ROW)-1:0] rs_word_d;
    logic [13:0] rs_row_base, rs_row_base_next;
    logic        rs_valid, rs_valid_next;
    logic [7:0]  rs_row_pixel_count, rs_row_pixel_count_next;

    logic [$clog2(IMG_H)-1:0] cur_y_min, cur_y_max;
    logic        found_y_min;

    logic [5:0] rs_word_pixel_count;
    logic [$clog2(IMG_W)-1:0] rs_base_col;
    assign rs_base_col = {rs_word_d, 5'b0};

    always_comb begin
        rs_word_pixel_count = '0;
        for (int b = 0; b < 32; b++) begin
            if ((rs_base_col + b) >= char_x_min[char_idx] &&
                (rs_base_col + b) <= char_x_max[char_idx] &&
                bin_rdata[b]) begin
                rs_word_pixel_count = rs_word_pixel_count + 6'd1;
            end
        end
    end

    always_comb begin
        state_next              = state;
        scan_col_next           = scan_col;
        scan_row_next           = scan_row;
        scan_row_base_next      = scan_row_base;
        col_count_next          = col_count_accum;
        col_valid_next          = (state == S_COL_READ);
        occ_prev2_next          = occ_prev2;
        occ_prev1_next          = occ_prev1;
        col_idx_next            = col_idx;
        in_run_next             = in_run;
        gap_count_next          = gap_count;
        char_count_next         = char_count;
        char_idx_next           = char_idx;
        row_idx_next            = row_idx;
        word_in_row_next        = word_in_row;
        rs_row_base_next        = rs_row_base;
        rs_valid_next           = (state == S_RS_READ);
        rs_row_pixel_count_next = rs_row_pixel_count;

        bbox_we    = 1'b0;
        bbox_waddr = '0;
        bbox_wdata = '0;
        bin_raddr  = '0;

        support_valid = 1'b0;
        col_supported = 1'b0;
        support_x     = '0;
        record_char   = 1'b0;
        record_x_min  = '0;
        record_x_max  = '0;

        case (state)
            S_IDLE: begin
                col_valid_next = 1'b0;
                rs_valid_next  = 1'b0;
                if (start)
                    state_next = S_COL_START;
            end

            S_COL_START: begin
                scan_row_next      = ROW_MIN[$clog2(IMG_H)-1:0];
                scan_row_base_next = ROW_MIN_BASE[13:0];
                col_count_next     = '0;
                col_valid_next     = 1'b0;
                state_next         = S_COL_READ;
            end

            S_COL_READ: begin
                bin_raddr = scan_row_base + scan_word;
                if (scan_row < ROW_MAX) begin
                    scan_row_next      = scan_row + 1'b1;
                    scan_row_base_next = scan_row_base + WORDS_PER_ROW;
                end else begin
                    state_next = S_COL_FINISH;
                end
            end

            S_COL_FINISH: begin
                col_valid_next = 1'b0;

                if (scan_col != SCAN_LEFT_COL_U) begin
                    support_valid = 1'b1;
                    support_x     = {1'b0, scan_col} - 10'd1;
                    col_supported = occ_prev1 && (occ_prev2 || current_col_occ);
                end

                occ_prev2_next = occ_prev1;
                occ_prev1_next = current_col_occ;

                if (scan_col == SCAN_RIGHT_LAST_U) begin
                    state_next = S_COL_DONE;
                end else begin
                    scan_col_next = scan_col + 1'b1;
                    state_next    = S_COL_START;
                end
            end

            S_COL_FLUSH: begin
                support_valid = 1'b1;
                support_x     = IMG_W - 1;
                col_supported = occ_prev1 && occ_prev2;
                state_next    = S_COL_DONE;
            end

            S_COL_DONE: begin
                if (in_run) begin
                    record_x_min = run_start;
                    record_x_max = SCAN_RIGHT_LAST_U - gap_count;
                    if (({1'b0, SCAN_RIGHT_LAST_U} + 10'd1 - gap_count - run_start) >= MIN_CHAR_W &&
                        char_count < MAX_CHARS)
                        record_char = 1'b1;
                    in_run_next = 1'b0;
                end

                if (char_count > 0 || record_char)
                    state_next = S_RS_INIT;
                else
                    state_next = S_DONE;
            end

            S_RS_INIT: begin
                row_idx_next              = '0;
                word_in_row_next          = char_x_min[char_idx][9:5];
                rs_row_base_next          = '0;
                rs_row_pixel_count_next   = '0;
                rs_valid_next             = 1'b0;
                state_next                = S_RS_READ;
            end

            S_RS_READ: begin
                bin_raddr = rs_row_base + word_in_row;

                if (rs_valid)
                    rs_row_pixel_count_next = rs_row_pixel_count + {2'b0, rs_word_pixel_count};

                if (word_in_row < rs_last_word)
                    word_in_row_next = word_in_row + 1'b1;
                else
                    state_next = S_RS_DRAIN;
            end

            S_RS_DRAIN: begin
                if (rs_valid)
                    rs_row_pixel_count_next = rs_row_pixel_count + {2'b0, rs_word_pixel_count};

                if (row_idx < IMG_H - 1) begin
                    row_idx_next            = row_idx + 1'b1;
                    rs_row_base_next        = rs_row_base + WORDS_PER_ROW;
                    word_in_row_next        = rs_first_word;
                    state_next              = S_RS_READ;
                end else begin
                    state_next = S_RS_WRITE;
                end
            end

            S_RS_WRITE: begin
                bbox_we    = 1'b1;
                bbox_waddr = char_idx;
                bbox_wdata = {char_x_min[char_idx], char_x_max[char_idx],
                              cur_y_min, cur_y_max};

                if ({1'b0, char_idx} < char_count - 1'b1) begin
                    char_idx_next = char_idx + 1'b1;
                    state_next    = S_RS_INIT;
                end else begin
                    state_next = S_DONE;
                end
            end

            S_DONE: begin
                state_next = S_IDLE;
            end

            default: begin
                state_next = S_IDLE;
            end
        endcase

        if (support_valid) begin
            if (col_supported) begin
                gap_count_next = '0;
                if (!in_run)
                    in_run_next = 1'b1;
            end else if (in_run) begin
                gap_count_next = gap_count + 1'b1;
                if (gap_count + 1'b1 >= MIN_GAP) begin
                    record_x_min = run_start;
                    record_x_max = support_x - gap_count - 1'b1;
                    if ((support_x - gap_count - run_start) >= MIN_CHAR_W &&
                        char_count < MAX_CHARS)
                        record_char = 1'b1;
                    in_run_next    = 1'b0;
                    gap_count_next = '0;
                end
            end
        end
    end

    always_ff @(posedge clk) begin
        if (reset) begin
            state              <= S_IDLE;
            scan_col           <= '0;
            scan_row           <= '0;
            scan_row_base      <= '0;
            col_count          <= '0;
            col_valid          <= 1'b0;
            occ_prev2          <= 1'b0;
            occ_prev1          <= 1'b0;
            col_idx            <= '0;
            in_run             <= 1'b0;
            gap_count          <= '0;
            char_count         <= '0;
            char_idx           <= '0;
            row_idx            <= '0;
            word_in_row        <= '0;
            rs_first_word      <= '0;
            rs_last_word       <= '0;
            rs_word_d          <= '0;
            rs_row_base        <= '0;
            rs_valid           <= 1'b0;
            rs_row_pixel_count <= '0;
            cur_y_min          <= '0;
            cur_y_max          <= '0;
            found_y_min        <= 1'b0;
            run_start          <= '0;
            num_chars          <= '0;
            done               <= 1'b0;
        end else begin
            state              <= state_next;
            scan_col           <= scan_col_next;
            scan_row           <= scan_row_next;
            scan_row_base      <= scan_row_base_next;
            col_count          <= col_count_next;
            col_valid          <= col_valid_next;
            occ_prev2          <= occ_prev2_next;
            occ_prev1          <= occ_prev1_next;
            col_idx            <= col_idx_next;
            in_run             <= in_run_next;
            gap_count          <= gap_count_next;
            char_count         <= char_count_next;
            char_idx           <= char_idx_next;
            row_idx            <= row_idx_next;
            word_in_row        <= word_in_row_next;
            rs_row_base        <= rs_row_base_next;
            rs_valid           <= rs_valid_next;
            rs_word_d          <= word_in_row;
            rs_row_pixel_count <= rs_row_pixel_count_next;

            if (state == S_IDLE && start) begin
                scan_col           <= SCAN_LEFT_COL_U;
                scan_row           <= '0;
                scan_row_base      <= '0;
                col_count          <= '0;
                col_valid          <= 1'b0;
                occ_prev2          <= 1'b0;
                occ_prev1          <= 1'b0;
                col_idx            <= '0;
                in_run             <= 1'b0;
                gap_count          <= '0;
                char_count         <= '0;
                char_idx           <= '0;
                row_idx            <= '0;
                word_in_row        <= '0;
                rs_first_word      <= '0;
                rs_last_word       <= '0;
                rs_word_d          <= '0;
                rs_row_base        <= '0;
                rs_valid           <= 1'b0;
                rs_row_pixel_count <= '0;
                cur_y_min          <= '0;
                cur_y_max          <= '0;
                found_y_min        <= 1'b0;
                run_start          <= '0;
                num_chars          <= '0;
                done               <= 1'b0;
            end

            if (support_valid && col_supported && !in_run)
                run_start <= support_x;

            if (record_char && char_count < MAX_CHARS) begin
                char_x_min[char_count[$clog2(MAX_CHARS)-1:0]] <= record_x_min;
                char_x_max[char_count[$clog2(MAX_CHARS)-1:0]] <= record_x_max;
                char_count <= char_count + 1'b1;
            end

            if (state_next == S_RS_INIT) begin
                cur_y_min          <= '0;
                cur_y_max          <= '0;
                found_y_min        <= 1'b0;
                rs_row_pixel_count <= '0;
            end

            if (state == S_RS_INIT) begin
                rs_first_word <= char_x_min[char_idx][9:5];
                rs_last_word  <= char_x_max[char_idx][9:5];
            end

            if (state == S_RS_DRAIN) begin
                if (rs_row_pixel_count_next >= MIN_ROW_PIXELS) begin
                    if (!found_y_min) begin
                        cur_y_min   <= row_idx;
                        found_y_min <= 1'b1;
                    end
                    cur_y_max <= row_idx;
                end
                if (row_idx < IMG_H - 1)
                    rs_row_pixel_count <= '0;
            end

            done <= (state_next == S_DONE);
            if (record_char && char_count < MAX_CHARS)
                num_chars <= char_count + 1'b1;
            else
                num_chars <= char_count;
        end
    end

endmodule
