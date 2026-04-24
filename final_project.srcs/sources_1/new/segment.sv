`timescale 1ns / 1ps
//==============================================================================
// segment.sv
//
// Column-projection segmentation for a horizontal line of characters.
//   1) COL_SCAN   - read all packed pixels, count ink pixels per column
//   2) FIND_COLS  - walk column counts to extract x_min/x_max pairs
//   3) RS_*       - for each character, scan rows to find y_min/y_max
//
// Noise rejection:
//   - Only rows in [ROW_MIN, ROW_MAX] contribute to column counts
//   - A column must have >= MIN_COL_PIXELS ink pixels to count as occupied
//   - A character must span >= MIN_CHAR_W columns
//   - A gap must span >= MIN_GAP empty columns to split characters
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

    output logic [$clog2(MAX_CHARS)-1:0] num_chars,
    output logic                         done
);

    // -- Constants --------------------------------------------------------
    localparam int WORDS_PER_ROW  = IMG_W / 32;          // 10
    localparam int TOTAL_WORDS    = (IMG_W * IMG_H) / 32; // 2400
    localparam int MIN_CHAR_W     = 3;
    localparam int MIN_GAP        = 5;
    localparam int MIN_COL_PIXELS = 3;  // noise threshold per column

    // Restrict vertical range for column scan (reject top/bottom noise)
    localparam int ROW_MIN = 20;
    localparam int ROW_MAX = 220;

    // -- FSM --------------------------------------------------------------
    typedef enum logic [2:0] {
        S_IDLE,
        S_COL_SCAN,
        S_FIND_COLS,
        S_RS_INIT,
        S_RS_READ,
        S_RS_DRAIN,
        S_RS_WRITE,
        S_DONE
    } state_t;

    state_t state, state_next;

    // -- Column scan registers --------------------------------------------
    logic [13:0] scan_addr, scan_addr_next;
    logic        scan_valid;
    logic [13:0] scan_addr_d;

    // Per-column ink pixel count (8 bits each, max 240)
    logic [7:0] col_count     [0:IMG_W-1];
    logic [7:0] col_count_upd [0:IMG_W-1];  // updated values this cycle
    logic       col_count_we;                // write-enable for update

    // Row of the delayed BRAM word (for row range filtering)
    wire [7:0] scan_row      = scan_addr_d / WORDS_PER_ROW;
    wire       scan_row_ok   = (scan_row >= ROW_MIN) && (scan_row <= ROW_MAX);
    wire [$clog2(IMG_W)-1:0] base_col = (scan_addr_d % WORDS_PER_ROW) * 32;

    // -- Find cols registers ----------------------------------------------
    logic [$clog2(IMG_W)-1:0] col_idx, col_idx_next;
    logic                     in_run, in_run_next;
    logic [$clog2(IMG_W)-1:0] run_start;
    logic [$clog2(IMG_W)-1:0] gap_count, gap_count_next;

    logic [9:0] char_x_min [0:MAX_CHARS-1];
    logic [9:0] char_x_max [0:MAX_CHARS-1];
    logic [$clog2(MAX_CHARS)-1:0] char_count, char_count_next;

    // Helper: record a character (set in comb, used in ff)
    logic        record_char;
    logic [9:0]  record_x_min, record_x_max;

    // Column occupied test
    wire col_occupied = (col_count[col_idx] >= MIN_COL_PIXELS);

    // -- Row scan registers -----------------------------------------------
    logic [$clog2(MAX_CHARS)-1:0] char_idx, char_idx_next;
    logic [$clog2(IMG_H)-1:0]    row_idx, row_idx_next;

    logic [$clog2(WORDS_PER_ROW)-1:0] word_in_row, word_in_row_next;
    logic [$clog2(WORDS_PER_ROW)-1:0] rs_first_word, rs_last_word;
    logic [$clog2(WORDS_PER_ROW)-1:0] rs_word_d;
    logic        rs_valid;
    logic        rs_row_has_pixel, rs_row_has_pixel_next;

    logic [$clog2(IMG_H)-1:0] cur_y_min, cur_y_max;
    logic        found_y_min;

    // -- Row scan: check if BRAM word has any pixel in [x_min, x_max] -----
    logic rs_word_hit;
    always_comb begin
        rs_word_hit = 1'b0;
        for (int b = 0; b < 32; b++) begin
            if ((rs_word_d * 32 + b) >= char_x_min[char_idx] &&
                (rs_word_d * 32 + b) <= char_x_max[char_idx])
                rs_word_hit = rs_word_hit | bin_rdata[b];
        end
    end

    // -- Column count update logic (combinational) ------------------------
    always_comb begin
        for (int i = 0; i < IMG_W; i++)
            col_count_upd[i] = col_count[i];

        col_count_we = 1'b0;

        if (scan_valid && scan_row_ok) begin
            col_count_we = 1'b1;
            for (int b = 0; b < 32; b++) begin
                if ((base_col + b) < IMG_W && bin_rdata[b])
                    col_count_upd[base_col + b] = col_count[base_col + b] + 8'd1;
            end
        end
    end

    // -- Combinational next-state logic -----------------------------------
    always_comb begin
        // defaults
        state_next            = state;
        scan_addr_next        = scan_addr;
        col_idx_next          = col_idx;
        in_run_next           = in_run;
        gap_count_next        = gap_count;
        char_count_next       = char_count;
        char_idx_next         = char_idx;
        row_idx_next          = row_idx;
        word_in_row_next      = word_in_row;
        rs_row_has_pixel_next = rs_row_has_pixel;

        bbox_we    = 1'b0;
        bbox_waddr = '0;
        bbox_wdata = '0;
        bin_raddr  = '0;

        record_char  = 1'b0;
        record_x_min = '0;
        record_x_max = '0;

        unique case (state)
            // =============================================================
            S_IDLE: begin
                if (start)
                    state_next = S_COL_SCAN;
            end

            // =============================================================
            S_COL_SCAN: begin
                bin_raddr = scan_addr;

                if (scan_addr < TOTAL_WORDS - 1)
                    scan_addr_next = scan_addr + 1;
                else if (scan_valid && (scan_addr_d == TOTAL_WORDS - 1))
                    state_next = S_FIND_COLS;
            end

            // =============================================================
            S_FIND_COLS: begin
                if (col_idx < IMG_W) begin
                    if (col_occupied) begin
                        gap_count_next = 0;
                        if (!in_run)
                            in_run_next = 1'b1;
                    end else if (in_run) begin
                        gap_count_next = gap_count + 1;
                        if (gap_count + 1 >= MIN_GAP) begin
                            record_x_min = run_start;
                            record_x_max = col_idx - gap_count - 1;
                            if ((col_idx - gap_count - run_start) >= MIN_CHAR_W
                                && char_count < MAX_CHARS)
                                record_char = 1'b1;
                            in_run_next    = 1'b0;
                            gap_count_next = 0;
                        end
                    end
                    col_idx_next = col_idx + 1;
                end else begin
                    // close trailing run at right edge
                    if (in_run) begin
                        record_x_min = run_start;
                        record_x_max = IMG_W - 1 - gap_count;
                        if ((IMG_W - gap_count - run_start) >= MIN_CHAR_W
                            && char_count < MAX_CHARS)
                            record_char = 1'b1;
                        in_run_next = 1'b0;
                    end

                    if (char_count > 0 || record_char)
                        state_next = S_RS_INIT;
                    else
                        state_next = S_DONE;
                end
            end

            // =============================================================
            S_RS_INIT: begin
                row_idx_next          = '0;
                word_in_row_next      = char_x_min[char_idx][9:5];
                rs_row_has_pixel_next = 1'b0;
                state_next            = S_RS_READ;
            end

            // =============================================================
            S_RS_READ: begin
                bin_raddr = row_idx * WORDS_PER_ROW + word_in_row;

                if (rs_valid)
                    rs_row_has_pixel_next = rs_row_has_pixel | rs_word_hit;

                if (word_in_row < rs_last_word)
                    word_in_row_next = word_in_row + 1;
                else
                    state_next = S_RS_DRAIN;
            end

            // =============================================================
            S_RS_DRAIN: begin
                if (rs_valid)
                    rs_row_has_pixel_next = rs_row_has_pixel | rs_word_hit;

                if (row_idx < IMG_H - 1) begin
                    row_idx_next     = row_idx + 1;
                    word_in_row_next = rs_first_word;
                    state_next       = S_RS_READ;
                end else begin
                    state_next = S_RS_WRITE;
                end
            end

            // =============================================================
            S_RS_WRITE: begin
                bbox_we    = 1'b1;
                bbox_waddr = char_idx;
                bbox_wdata = {char_x_min[char_idx], char_x_max[char_idx],
                              cur_y_min, cur_y_max};

                if (char_idx < char_count - 1) begin
                    char_idx_next = char_idx + 1;
                    state_next    = S_RS_INIT;
                end else begin
                    state_next = S_DONE;
                end
            end

            // =============================================================
            S_DONE: begin
                state_next = S_IDLE;
            end
        endcase
    end

    // -- Sequential logic -------------------------------------------------
    always_ff @(posedge clk) begin
        if (reset) begin
            state            <= S_IDLE;
            scan_addr        <= '0;
            scan_valid       <= 1'b0;
            scan_addr_d      <= '0;
            col_idx          <= '0;
            in_run           <= 1'b0;
            gap_count        <= '0;
            char_count       <= '0;
            char_idx         <= '0;
            row_idx          <= '0;
            word_in_row      <= '0;
            rs_first_word    <= '0;
            rs_last_word     <= '0;
            rs_valid         <= 1'b0;
            rs_word_d        <= '0;
            rs_row_has_pixel <= 1'b0;
            cur_y_min        <= '0;
            cur_y_max        <= '0;
            found_y_min      <= 1'b0;
            run_start        <= '0;
            num_chars        <= '0;
            done             <= 1'b0;

            for (int i = 0; i < IMG_W; i++)
                col_count[i] <= 8'd0;
        end else begin
            state            <= state_next;
            scan_addr        <= scan_addr_next;
            col_idx          <= col_idx_next;
            in_run           <= in_run_next;
            gap_count        <= gap_count_next;
            char_count       <= char_count_next;
            char_idx         <= char_idx_next;
            row_idx          <= row_idx_next;
            word_in_row      <= word_in_row_next;
            rs_row_has_pixel <= rs_row_has_pixel_next;

            // BRAM latency tracking
            scan_valid  <= (state == S_COL_SCAN);
            scan_addr_d <= scan_addr;
            rs_valid    <= (state == S_RS_READ);
            rs_word_d   <= word_in_row;

            // -- Column count update --
            if (col_count_we) begin
                for (int i = 0; i < IMG_W; i++)
                    col_count[i] <= col_count_upd[i];
            end

            // -- On start: clear state --
            if (state == S_IDLE && start) begin
                scan_addr        <= '0;
                scan_valid       <= 1'b0;
                char_count       <= '0;
                char_idx         <= '0;
                col_idx          <= '0;
                in_run           <= 1'b0;
                gap_count        <= '0;
                run_start        <= '0;
                row_idx          <= '0;
                word_in_row      <= '0;
                rs_first_word    <= '0;
                rs_last_word     <= '0;
                rs_valid         <= 1'b0;
                rs_word_d        <= '0;
                rs_row_has_pixel <= 1'b0;
                cur_y_min        <= '0;
                cur_y_max        <= '0;
                found_y_min      <= 1'b0;
                done             <= 1'b0;

                for (int i = 0; i < IMG_W; i++)
                    col_count[i] <= 8'd0;
            end

            // -- FIND_COLS: latch run_start --
            if (state == S_FIND_COLS && col_idx < IMG_W && col_occupied && !in_run)
                run_start <= col_idx;

            // -- FIND_COLS: record character --
            if (record_char && char_count < MAX_CHARS) begin
                char_x_min[char_count] <= record_x_min;
                char_x_max[char_count] <= record_x_max;
                char_count             <= char_count + 1;
            end

            // -- RS_INIT: latch word bounds, clear y tracking --
            if (state_next == S_RS_INIT) begin
                cur_y_min   <= '0;
                cur_y_max   <= '0;
                found_y_min <= 1'b0;
            end

            if (state == S_RS_INIT) begin
                rs_first_word <= char_x_min[char_idx][9:5];
                rs_last_word  <= char_x_max[char_idx][9:5];
            end

            // -- RS_DRAIN: update y bounds then clear for next row --
            if (state == S_RS_DRAIN) begin
                if (rs_row_has_pixel_next) begin
                    if (!found_y_min) begin
                        cur_y_min   <= row_idx;
                        found_y_min <= 1'b1;
                    end
                    cur_y_max <= row_idx;
                end
                if (row_idx < IMG_H - 1)
                    rs_row_has_pixel <= 1'b0;
            end

            // -- Outputs --
            done <= (state_next == S_DONE);
            if (record_char && char_count < MAX_CHARS)
                num_chars <= char_count + 1;
            else
                num_chars <= char_count;
        end
    end

endmodule