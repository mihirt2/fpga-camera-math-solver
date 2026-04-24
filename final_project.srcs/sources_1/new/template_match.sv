`timescale 1ns / 1ps
//==============================================================================
// template_match
//
// Compares a normalized CHAR_W x CHAR_H bitmap against all templates stored
// in font_rom_16x32_digits using IoU:
//      IoU = intersection / union
//
// Adds shift tolerance by testing each template shifted by:
//      dx, dy in {-1, 0, +1}
//
// No division is used. Scores are compared by cross multiplication:
//      a/b > c/d  <=>  a*d > c*b
//
// best_dist is kept for interface compatibility.
// It now reports foreground disagreement for the winning match:
//      best_dist = best_union - best_intersection
//
// Timing: about 32 rows x 9 shifts x 16 templates = 4608 row comparisons.
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

    localparam int NUM_TMPL   = 16;
    localparam int NUM_SHIFTS = 9;

    function automatic logic [6:0] tmpl_ascii(input logic [3:0] idx);
        case (idx)
            4'd0:    return 7'h30;
            4'd1:    return 7'h31;
            4'd2:    return 7'h32;
            4'd3:    return 7'h33;
            4'd4:    return 7'h34;
            4'd5:    return 7'h35;
            4'd6:    return 7'h36;
            4'd7:    return 7'h37;
            4'd8:    return 7'h38;
            4'd9:    return 7'h39;
            4'd10:   return 7'h2B;
            4'd11:   return 7'h2D;
            4'd12:   return 7'h2A;
            4'd13:   return 7'h3D;
            4'd14:   return 7'h28;
            4'd15:   return 7'h29;
            default: return 7'h30;
        endcase
    endfunction

    function automatic logic signed [1:0] shift_dx(input logic [3:0] idx);
        case (idx % 3)
            0: return -1;
            1: return  0;
            2: return  1;
        endcase
    endfunction

    function automatic logic signed [1:0] shift_dy(input logic [3:0] idx);
        case (idx / 3)
            0: return -1;
            1: return  0;
            2: return  1;
        endcase
    endfunction

    function automatic logic [4:0] popcount16(input logic [15:0] val);
        logic [4:0] cnt;
        cnt = '0;
        for (int i = 0; i < 16; i++)
            cnt = cnt + {4'b0, val[i]};
        return cnt;
    endfunction

    function automatic logic [15:0] shift_row(
        input logic [15:0] row,
        input logic signed [1:0] dx
    );
        if (dx < 0)
            return row << 1;
        else if (dx > 0)
            return row >> 1;
        else
            return row;
    endfunction

    function automatic logic iou_better(
        input logic [9:0] cand_inter,
        input logic [9:0] cand_union,
        input logic [9:0] best_inter,
        input logic [9:0] best_union
    );
        logic [19:0] lhs;
        logic [19:0] rhs;
        begin
            if (cand_union == 0 && best_union == 0)
                return 1'b0;
            else if (cand_union == 0)
                return 1'b0;
            else if (best_union == 0)
                return 1'b1;

            lhs = cand_inter * best_union;
            rhs = best_inter  * cand_union;
            return lhs > rhs;
        end
    endfunction

    logic [6:0]  rom_char;
    logic [4:0]  rom_row;
    logic [15:0] rom_bits;

    font_rom_16x32_digits u_font_rom (
        .clk       (clk),
        .char_code (rom_char),
        .row       (rom_row),
        .bits      (rom_bits)
    );

    typedef enum logic [1:0] {
        S_IDLE,
        S_COMPARE,
        S_EVAL_SHIFT,
        S_DONE
    } state_t;

    state_t state;

    logic [3:0] tmpl_idx;
    logic [3:0] shift_idx;
    logic [4:0] row_cnt;

    logic rd_valid;
    logic [4:0] row_cnt_d;
    logic [3:0] shift_idx_d;

    logic [9:0] accum_inter;
    logic [9:0] accum_union;

    logic [9:0] tmpl_best_inter;
    logic [9:0] tmpl_best_union;

    logic [9:0] global_best_inter;
    logic [9:0] global_best_union;

    logic [CHAR_CODE_WIDTH-1:0] best_code_r;
    logic [9:0]                 best_dist_r;

    logic signed [6:0] src_row_signed;
    logic [4:0]        src_row;

    assign src_row_signed = $signed({1'b0, row_cnt}) - shift_dy(shift_idx);
    assign src_row = src_row_signed[4:0];

    always_comb begin
        rom_char = tmpl_ascii(tmpl_idx);

        if (src_row_signed < 0 || src_row_signed >= CHAR_H)
            rom_row = '0;
        else
            rom_row = src_row;
    end

    logic [15:0] input_row;
    assign input_row = input_char[TEMPLATE_BITS - 1 - row_cnt_d * CHAR_W -: CHAR_W];

    logic signed [1:0] dx_d;
    logic signed [1:0] dy_d;
    assign dx_d = shift_dx(shift_idx_d);
    assign dy_d = shift_dy(shift_idx_d);

    logic [15:0] shifted_rom_bits;
    always_comb begin
        if (($signed({1'b0, row_cnt_d}) - dy_d) < 0 ||
            ($signed({1'b0, row_cnt_d}) - dy_d) >= CHAR_H)
            shifted_rom_bits = 16'b0;
        else
            shifted_rom_bits = shift_row(rom_bits, dx_d);
    end

    logic [15:0] row_inter_bits;
    logic [15:0] row_union_bits;
    logic [4:0]  row_inter;
    logic [4:0]  row_union;

    assign row_inter_bits = input_row & shifted_rom_bits;
    assign row_union_bits = input_row | shifted_rom_bits;
    assign row_inter      = popcount16(row_inter_bits);
    assign row_union      = popcount16(row_union_bits);

    assign best_code = best_code_r;
    assign best_dist = best_dist_r;
    assign done      = (state == S_DONE);

    always_ff @(posedge clk) begin
        if (reset) begin
            state             <= S_IDLE;
            tmpl_idx          <= '0;
            shift_idx         <= '0;
            row_cnt           <= '0;
            rd_valid          <= 1'b0;
            row_cnt_d         <= '0;
            shift_idx_d       <= '0;

            accum_inter       <= '0;
            accum_union       <= '0;
            tmpl_best_inter   <= '0;
            tmpl_best_union   <= '0;
            global_best_inter <= '0;
            global_best_union <= '0;

            best_code_r       <= '0;
            best_dist_r       <= 10'h3FF;
        end else begin
            rd_valid    <= (state == S_COMPARE);
            row_cnt_d   <= row_cnt;
            shift_idx_d <= shift_idx;

            case (state)
                S_IDLE: begin
                    if (start) begin
                        tmpl_idx          <= '0;
                        shift_idx         <= '0;
                        row_cnt           <= '0;
                        rd_valid          <= 1'b0;

                        accum_inter       <= '0;
                        accum_union       <= '0;
                        tmpl_best_inter   <= '0;
                        tmpl_best_union   <= '0;
                        global_best_inter <= '0;
                        global_best_union <= '0;

                        best_code_r       <= '0;
                        best_dist_r       <= 10'h3FF;

                        state             <= S_COMPARE;
                    end
                end

                S_COMPARE: begin
                    if (rd_valid) begin
                        accum_inter <= accum_inter + {5'b0, row_inter};
                        accum_union <= accum_union + {5'b0, row_union};
                    end

                    if (row_cnt < CHAR_H - 1) begin
                        row_cnt <= row_cnt + 1;
                    end else begin
                        state <= S_EVAL_SHIFT;
                    end
                end

                S_EVAL_SHIFT: begin
                    logic [9:0] final_inter;
                    logic [9:0] final_union;

                    final_inter = accum_inter;
                    final_union = accum_union;

                    if (rd_valid) begin
                        final_inter = accum_inter + {5'b0, row_inter};
                        final_union = accum_union + {5'b0, row_union};
                    end

                    if (iou_better(final_inter, final_union,
                                   tmpl_best_inter, tmpl_best_union)) begin
                        tmpl_best_inter <= final_inter;
                        tmpl_best_union <= final_union;
                    end

                    accum_inter <= '0;
                    accum_union <= '0;
                    row_cnt     <= '0;

                    if (shift_idx < NUM_SHIFTS - 1) begin
                        shift_idx <= shift_idx + 1;
                        state     <= S_COMPARE;
                    end else begin
                        logic [9:0] chosen_inter;
                        logic [9:0] chosen_union;

                        chosen_inter = tmpl_best_inter;
                        chosen_union = tmpl_best_union;

                        if (iou_better(final_inter, final_union,
                                       tmpl_best_inter, tmpl_best_union)) begin
                            chosen_inter = final_inter;
                            chosen_union = final_union;
                        end

                        if (iou_better(chosen_inter, chosen_union,
                                       global_best_inter, global_best_union)) begin
                            global_best_inter <= chosen_inter;
                            global_best_union <= chosen_union;
                            best_code_r <= tmpl_idx;
                            best_dist_r       <= chosen_union - chosen_inter;
                        end

                        tmpl_best_inter <= '0;
                        tmpl_best_union <= '0;
                        shift_idx       <= '0;

                        if (tmpl_idx < NUM_TMPL - 1) begin
                            tmpl_idx <= tmpl_idx + 1;
                            state    <= S_COMPARE;
                        end else begin
                            state    <= S_DONE;
                        end
                    end
                end

                S_DONE: begin
                    state <= S_IDLE;
                end
            endcase
        end
    end

endmodule