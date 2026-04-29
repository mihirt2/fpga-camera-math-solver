`timescale 1ns / 1ps
//==============================================================================
// template_match
//
// IoU-based template matching with +/-1 pixel shift tolerance.
// Compares by cross-multiplication (no division).
// Includes ink-count rejection for noise blobs.
//
// Timing: ~32 rows x 9 shifts x digit variants/operators.
//==============================================================================

module template_match
    import ocr_pkg::*;
(
    input  logic                       clk,
    input  logic                       reset,
    input  logic                       start,
    input  logic [TEMPLATE_BITS-1:0]   input_char,

    output logic [CHAR_CODE_WIDTH-1:0] best_code,
    output logic [9:0]                 best_dist,
    output logic                       done
);

    // -- Config -----------------------------------------------------------
    localparam int NUM_TMPL       = 16;
    localparam int NUM_SHIFTS     = 9;
    localparam int MIN_INK_PIXELS = 15;
    localparam logic [9:0] THREE_LL_HINT   = 10'd12;
    localparam logic [9:0] NINE_LL_PENALTY = 10'd24;
    localparam int REJECT_CODE    = 15;   // ')' - skipped by parser

    // -- Helpers ----------------------------------------------------------
    function automatic logic [6:0] tmpl_ascii(input logic [3:0] idx);
        case (idx)
            4'd0:  return 7'h30;  4'd1:  return 7'h31;
            4'd2:  return 7'h32;  4'd3:  return 7'h33;
            4'd4:  return 7'h34;  4'd5:  return 7'h35;
            4'd6:  return 7'h36;  4'd7:  return 7'h37;
            4'd8:  return 7'h38;  4'd9:  return 7'h39;
            4'd10: return 7'h2B;  4'd11: return 7'h2D;
            4'd12: return 7'h2A;  4'd13: return 7'h3D;
            4'd14: return 7'h28;  4'd15: return 7'h29;
            default: return 7'h30;
        endcase
    endfunction

    function automatic logic has_alt_digit_template(input logic [3:0] idx);
        return (idx <= 4'd9);
    endfunction

    function automatic logic [6:0] tmpl_variant_ascii(
        input logic [3:0] idx,
        input logic       variant
    );
        if (variant && has_alt_digit_template(idx))
            return 7'h40 + {3'b000, idx};  // alternate digits live at 0x40..0x49
        else
            return tmpl_ascii(idx);
    endfunction

    function automatic logic signed [1:0] shift_dx(input logic [3:0] idx);
        case (idx % 3)
            0: return -1;  1: return 0;  2: return 1;
            default: return 0;
        endcase
    endfunction

    function automatic logic signed [1:0] shift_dy(input logic [3:0] idx);
        case (idx / 3)
            0: return -1;  1: return 0;  2: return 1;
            default: return 0;
        endcase
    endfunction

    function automatic logic [4:0] tmpl_x_min(input logic [3:0] idx);
        case (idx)
            4'd1:              return 5'd2;  // '1'
            4'd10:             return 5'd1;  // '+'
            4'd14, 4'd15:      return 5'd4;  // '(' and ')'
            default:           return 5'd0;
        endcase
    endfunction

    function automatic logic [4:0] tmpl_x_max(input logic [3:0] idx);
        case (idx)
            4'd1:              return 5'd9;  // '1' foot columns are below segment threshold
            4'd10:             return 5'd12; // '+'
            4'd14, 4'd15:      return 5'd11; // '(' and ')'
            default:           return 5'd13;
        endcase
    endfunction

    function automatic logic [4:0] tmpl_y_min(input logic [3:0] idx);
        if (idx <= 4'd9)
            return 5'd6;

        case (idx)
            4'd14, 4'd15:      return 5'd3;  // '(' and ')'
            4'd10:             return 5'd10; // '+'
            4'd11:             return 5'd14; // '-'
            4'd13:             return 5'd11; // '='
            default:           return 5'd4;
        endcase
    endfunction

    function automatic logic [4:0] tmpl_y_max(input logic [3:0] idx);
        if (idx <= 4'd9)
            return 5'd25;

        case (idx)
            4'd14, 4'd15:      return 5'd28; // '(' and ')'
            4'd10:             return 5'd20; // '+'
            4'd11:             return 5'd16; // '-'
            4'd13:             return 5'd19; // '='
            default:           return 5'd23;
        endcase
    endfunction

    function automatic logic [4:0] tmpl_bbox_w(input logic [3:0] idx);
        return tmpl_x_max(idx) - tmpl_x_min(idx) + 5'd1;
    endfunction

    function automatic logic [4:0] tmpl_bbox_h(input logic [3:0] idx);
        return tmpl_y_max(idx) - tmpl_y_min(idx) + 5'd1;
    endfunction

    function automatic logic [4:0] popcount16(input logic [15:0] val);
        logic [4:0] cnt;
        cnt = '0;
        for (int i = 0; i < 16; i++)
            cnt = cnt + {4'b0, val[i]};
        return cnt;
    endfunction

    function automatic logic [15:0] shift_row_h(
        input logic [15:0] row,
        input logic signed [1:0] dx
    );
        if (dx == -1)     return row << 1;
        else if (dx == 1) return row >> 1;
        else              return row;
    endfunction

    function automatic logic iou_better(
        input logic [9:0] ci, input logic [9:0] cu,
        input logic [9:0] bi, input logic [9:0] bu
    );
        logic [19:0] candidate_score;
        logic [19:0] best_score;

        if (cu == 0) return 1'b0;
        if (bu == 0) return 1'b1;

        candidate_score = {10'b0, ci} * {10'b0, bu};
        best_score      = {10'b0, bi} * {10'b0, cu};
        return candidate_score > best_score;
    endfunction

    // -- Font ROM ---------------------------------------------------------
    logic [6:0]  rom_char;
    logic [4:0]  rom_row;
    logic [15:0] rom_bits;

    font_rom_16x32_digits u_font_rom (
        .clk       (clk),
        .char_code (rom_char),
        .row       (rom_row),
        .bits      (rom_bits)
    );

    // -- FSM --------------------------------------------------------------
    typedef enum logic [2:0] {
        S_IDLE,
        S_COUNT_INK,
        S_COMPARE,
        S_EVAL_SHIFT,
        S_DONE
    } state_t;

    state_t state;

    // -- Ink counting -----------------------------------------------------
    logic [5:0]  ink_row;
    logic [9:0]  ink_total;
    logic        ink_reject;

    logic [15:0] ink_chunk;
    assign ink_chunk = input_char[TEMPLATE_BITS - 1 - ink_row[4:0] * CHAR_W -: CHAR_W];

    // -- Counters ---------------------------------------------------------
    logic [3:0] tmpl_idx;
    logic       variant_idx;
    logic [3:0] shift_idx;
    logic [4:0] row_cnt;
    logic       rd_valid;
    logic [4:0] row_cnt_d;
    logic [3:0] shift_idx_d;
    logic [3:0] tmpl_idx_d;

    // -- Accumulators -----------------------------------------------------
    logic [9:0] accum_inter, accum_union;
    logic [9:0] tmpl_best_inter, tmpl_best_union;
    logic [9:0] global_best_inter, global_best_union;
    logic [CHAR_CODE_WIDTH-1:0] best_code_r;
    logic [9:0] best_dist_r;

    // A handwritten '3' often has lower-left ink; a true '9' usually does not.
    logic [9:0] lower_left_ink;
    always_comb begin
        lower_left_ink = '0;
        for (int row = 18; row < CHAR_H; row++) begin
            for (int col = 0; col < 6; col++) begin
                lower_left_ink = lower_left_ink
                    + {9'b0, input_char[TEMPLATE_BITS - 1 - row * CHAR_W - col]};
            end
        end
    end

    // -- ROM address (combinational) --------------------------------------
    logic signed [6:0] norm_row_signed;
    logic [9:0]        tmpl_src_y_scaled;
    assign norm_row_signed = $signed({2'b0, row_cnt}) - $signed(shift_dy(shift_idx));
    assign tmpl_src_y_scaled = {5'b0, norm_row_signed[4:0]} * {5'b0, tmpl_bbox_h(tmpl_idx)};

    always_comb begin
        rom_char = tmpl_variant_ascii(tmpl_idx, variant_idx);
        if (norm_row_signed < 0 || norm_row_signed >= CHAR_H) begin
            rom_row = 5'd0;  // don't care - zeroed by shifted_rom_bits
        end else begin
            rom_row = tmpl_y_min(tmpl_idx) + tmpl_src_y_scaled[9:5];
        end
    end

    // -- Pipeline stage: extract and shift (uses delayed indices) ----------
    logic [15:0] input_row;
    assign input_row = input_char[TEMPLATE_BITS - 1 - row_cnt_d * CHAR_W -: CHAR_W];

    logic signed [6:0] norm_row_d_signed;
    assign norm_row_d_signed = $signed({2'b0, row_cnt_d}) - $signed(shift_dy(shift_idx_d));

    logic [15:0] normalized_rom_bits;
    logic [15:0] shifted_rom_bits;
    always_comb begin
        int src_col;
        int src_col_scaled;

        normalized_rom_bits = 16'b0;
        if (norm_row_d_signed >= 0 && norm_row_d_signed < CHAR_H) begin
            for (int col = 0; col < CHAR_W; col++) begin
                src_col_scaled = col * tmpl_bbox_w(tmpl_idx_d);
                src_col = tmpl_x_min(tmpl_idx_d) + (src_col_scaled >> 4);
                normalized_rom_bits[CHAR_W - 1 - col] =
                    rom_bits[CHAR_W - 1 - src_col];
            end
        end

        if (norm_row_d_signed < 0 || norm_row_d_signed >= CHAR_H)
            shifted_rom_bits = 16'b0;
        else
            shifted_rom_bits = shift_row_h(normalized_rom_bits, shift_dx(shift_idx_d));
    end

    logic [4:0] row_inter, row_union;
    assign row_inter = popcount16(input_row & shifted_rom_bits);
    assign row_union = popcount16(input_row | shifted_rom_bits);

    // -- S_EVAL_SHIFT: final values (combinational) -----------------------
    logic [9:0] eval_final_inter, eval_final_union;
    always_comb begin
        if (rd_valid) begin
            eval_final_inter = accum_inter + {5'b0, row_inter};
            eval_final_union = accum_union + {5'b0, row_union};
        end else begin
            eval_final_inter = accum_inter;
            eval_final_union = accum_union;
        end
    end

    // Best of this template (comparing final shift vs tmpl_best)
    logic [9:0] chosen_inter, chosen_union;
    logic [9:0] ranked_chosen_inter;
    always_comb begin
        if (iou_better(eval_final_inter, eval_final_union,
                       tmpl_best_inter, tmpl_best_union)) begin
            chosen_inter = eval_final_inter;
            chosen_union = eval_final_union;
        end else begin
            chosen_inter = tmpl_best_inter;
            chosen_union = tmpl_best_union;
        end

        ranked_chosen_inter = chosen_inter;
        if (tmpl_idx == 4'd9 && lower_left_ink >= THREE_LL_HINT) begin
            ranked_chosen_inter = (chosen_inter > NINE_LL_PENALTY)
                                ? (chosen_inter - NINE_LL_PENALTY)
                                : 10'd0;
        end
    end

    // -- Outputs ----------------------------------------------------------
    assign best_code = best_code_r;
    assign best_dist = best_dist_r;
    assign done      = (state == S_DONE);

    // -- Sequential -------------------------------------------------------
    always_ff @(posedge clk) begin
        if (reset) begin
            state             <= S_IDLE;
            tmpl_idx          <= '0;
            variant_idx       <= 1'b0;
            shift_idx         <= '0;
            row_cnt           <= '0;
            rd_valid          <= 1'b0;
            row_cnt_d         <= '0;
            shift_idx_d       <= '0;
            tmpl_idx_d        <= '0;
            accum_inter       <= '0;
            accum_union       <= '0;
            tmpl_best_inter   <= '0;
            tmpl_best_union   <= '0;
            global_best_inter <= '0;
            global_best_union <= '0;
            best_code_r       <= REJECT_CODE;
            best_dist_r       <= 10'h3FF;
            ink_row           <= '0;
            ink_total         <= '0;
            ink_reject        <= 1'b0;
        end else begin
            // ROM pipeline tracking
            rd_valid    <= (state == S_COMPARE);
            row_cnt_d   <= row_cnt;
            shift_idx_d <= shift_idx;
            tmpl_idx_d  <= tmpl_idx;

            case (state)
                // =========================================================
                S_IDLE: begin
                    if (start) begin
                        tmpl_idx          <= '0;
                        variant_idx       <= 1'b0;
                        shift_idx         <= '0;
                        row_cnt           <= '0;
                        rd_valid          <= 1'b0;
                        tmpl_idx_d        <= '0;
                        accum_inter       <= '0;
                        accum_union       <= '0;
                        tmpl_best_inter   <= '0;
                        tmpl_best_union   <= '0;
                        global_best_inter <= '0;
                        global_best_union <= '0;
                        best_code_r       <= REJECT_CODE;
                        best_dist_r       <= 10'h3FF;
                        ink_row           <= '0;
                        ink_total         <= '0;
                        ink_reject        <= 1'b0;
                        state             <= S_COUNT_INK;
                    end
                end

                // =========================================================
                S_COUNT_INK: begin
                    if (ink_row < CHAR_H) begin
                        ink_total <= ink_total + {5'b0, popcount16(ink_chunk)};
                        ink_row   <= ink_row + 1;
                    end else begin
                        if (ink_total < MIN_INK_PIXELS) begin
                            ink_reject <= 1'b1;
                            state      <= S_DONE;
                        end else begin
                            state <= S_COMPARE;
                        end
                    end
                end

                // =========================================================
                S_COMPARE: begin
                    if (rd_valid) begin
                        accum_inter <= accum_inter + {5'b0, row_inter};
                        accum_union <= accum_union + {5'b0, row_union};
                    end

                    if (row_cnt < CHAR_H - 1)
                        row_cnt <= row_cnt + 1;
                    else
                        state <= S_EVAL_SHIFT;
                end

                // =========================================================
                S_EVAL_SHIFT: begin
                    // Update tmpl_best with this shift's result
                    if (iou_better(eval_final_inter, eval_final_union,
                                   tmpl_best_inter, tmpl_best_union)) begin
                        tmpl_best_inter <= eval_final_inter;
                        tmpl_best_union <= eval_final_union;
                    end

                    // Reset accumulators for next shift/template
                    accum_inter <= '0;
                    accum_union <= '0;
                    row_cnt     <= '0;

                    if (shift_idx < NUM_SHIFTS - 1) begin
                        // More shifts to try for this template
                        shift_idx <= shift_idx + 1;
                        state     <= S_COMPARE;
                    end else begin
                        // All shifts done - compare best shift vs global best
                        // chosen_inter/union picks the better of eval_final
                        // vs tmpl_best (computed combinationally above)
                        if (iou_better(ranked_chosen_inter, chosen_union,
                                       global_best_inter, global_best_union)) begin
                            global_best_inter <= ranked_chosen_inter;
                            global_best_union <= chosen_union;
                            best_code_r       <= tmpl_idx;
                            best_dist_r       <= chosen_union - chosen_inter;
                        end

                        // Reset for next variant/template
                        tmpl_best_inter <= '0;
                        tmpl_best_union <= '0;
                        shift_idx       <= '0;

                        if (!variant_idx && has_alt_digit_template(tmpl_idx)) begin
                            variant_idx <= 1'b1;
                            state       <= S_COMPARE;
                        end else if (tmpl_idx < NUM_TMPL - 1) begin
                            tmpl_idx <= tmpl_idx + 1;
                            variant_idx <= 1'b0;
                            state       <= S_COMPARE;
                        end else begin
                            state <= S_DONE;
                        end
                    end
                end

                // =========================================================
                S_DONE: begin
                    state <= S_IDLE;
                end
            endcase
        end
    end

endmodule
