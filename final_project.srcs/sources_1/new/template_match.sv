`timescale 1ns / 1ps
//==============================================================================
// template_match
//
// Collected-template IoU matcher.
// Each class uses up to the first 10 normalized crops captured from hardware.
// For each sample we take the best IoU over a 3x3 shift window, then pool those
// sample scores for the class and pick the class with the highest pooled IoU.
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

    localparam int NUM_CLASSES    = 16;
    localparam int MAX_SAMPLES    = 10;
    localparam int NUM_SHIFTS     = 9;
    localparam int MIN_INK_PIXELS = 8;
    localparam int REJECT_CODE    = 15;

    function automatic logic [3:0] sample_count(input logic [3:0] class_idx);
        case (class_idx)
            4'd5:    return 4'd6;
            default: return 4'd10;
        endcase
    endfunction

    function automatic logic signed [1:0] shift_dx(input logic [3:0] idx);
        case (idx % 3)
            0: return -1;
            1: return 0;
            2: return 1;
            default: return 0;
        endcase
    endfunction

    function automatic logic signed [1:0] shift_dy(input logic [3:0] idx);
        case (idx / 3)
            0: return -1;
            1: return 0;
            2: return 1;
            default: return 0;
        endcase
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
        input logic [12:0] ci, input logic [12:0] cu,
        input logic [12:0] bi, input logic [12:0] bu
    );
        logic [25:0] candidate_score;
        logic [25:0] best_score;

        if (cu == 0) return 1'b0;
        if (bu == 0) return 1'b1;

        candidate_score = {13'b0, ci} * {13'b0, bu};
        best_score      = {13'b0, bi} * {13'b0, cu};
        return candidate_score > best_score;
    endfunction

    // -- Collected template ROM -----------------------------------------
    logic [3:0]  class_idx;
    logic [3:0]  sample_idx;
    logic [3:0]  shift_idx;
    logic [4:0]  row_cnt;
    logic [15:0] rom_bits;

    logic signed [6:0] rom_row_signed;
    logic [4:0]        rom_row;
    assign rom_row_signed = $signed({2'b0, row_cnt}) - $signed(shift_dy(shift_idx));
    assign rom_row        = (rom_row_signed < 0 || rom_row_signed >= CHAR_H)
                          ? 5'd0
                          : rom_row_signed[4:0];

    collected_norm_template_rom u_collected_rom (
        .clk        (clk),
        .class_idx  (class_idx),
        .sample_idx (sample_idx),
        .row        (rom_row),
        .bits       (rom_bits)
    );

    typedef enum logic [2:0] {
        S_IDLE,
        S_COUNT_INK,
        S_COMPARE,
        S_EVAL_SHIFT,
        S_EVAL_SAMPLE,
        S_DONE
    } state_t;

    state_t state;

    logic [5:0] ink_row;
    logic [9:0] ink_total;
    logic [15:0] ink_chunk;
    assign ink_chunk = input_char[TEMPLATE_BITS - 1 - ink_row[4:0] * CHAR_W -: CHAR_W];

    logic rd_valid;
    logic [4:0] row_cnt_d;
    logic [3:0] shift_idx_d;

    logic [15:0] input_row;
    assign input_row = input_char[TEMPLATE_BITS - 1 - row_cnt_d * CHAR_W -: CHAR_W];

    logic signed [6:0] row_d_signed;
    assign row_d_signed = $signed({2'b0, row_cnt_d}) - $signed(shift_dy(shift_idx_d));

    logic [15:0] shifted_rom_bits;
    always_comb begin
        if (row_d_signed < 0 || row_d_signed >= CHAR_H)
            shifted_rom_bits = 16'b0;
        else
            shifted_rom_bits = shift_row_h(rom_bits, shift_dx(shift_idx_d));
    end

    logic [4:0] row_inter;
    logic [4:0] row_union;
    assign row_inter = popcount16(input_row & shifted_rom_bits);
    assign row_union = popcount16(input_row | shifted_rom_bits);

    logic [9:0] shift_inter;
    logic [9:0] shift_union;
    logic [9:0] sample_best_inter;
    logic [9:0] sample_best_union;
    logic [12:0] class_inter;
    logic [12:0] class_union;
    logic [12:0] global_best_inter;
    logic [12:0] global_best_union;

    logic [9:0] eval_shift_inter;
    logic [9:0] eval_shift_union;
    always_comb begin
        if (rd_valid) begin
            eval_shift_inter = shift_inter + {5'b0, row_inter};
            eval_shift_union = shift_union + {5'b0, row_union};
        end else begin
            eval_shift_inter = shift_inter;
            eval_shift_union = shift_union;
        end
    end

    logic [9:0] chosen_sample_inter;
    logic [9:0] chosen_sample_union;
    always_comb begin
        if (iou_better({3'b0, eval_shift_inter}, {3'b0, eval_shift_union},
                       {3'b0, sample_best_inter}, {3'b0, sample_best_union})) begin
            chosen_sample_inter = eval_shift_inter;
            chosen_sample_union = eval_shift_union;
        end else begin
            chosen_sample_inter = sample_best_inter;
            chosen_sample_union = sample_best_union;
        end
    end

    logic [12:0] eval_class_inter;
    logic [12:0] eval_class_union;
    logic [12:0] eval_class_miss;
    logic [9:0]  eval_class_miss_clamped;
    assign eval_class_inter = class_inter + {3'b0, chosen_sample_inter};
    assign eval_class_union = class_union + {3'b0, chosen_sample_union};
    assign eval_class_miss  = eval_class_union - eval_class_inter;
    assign eval_class_miss_clamped = (eval_class_miss > 13'd1023)
                                   ? 10'h3FF
                                   : eval_class_miss[9:0];

    logic [CHAR_CODE_WIDTH-1:0] best_code_r;
    logic [9:0] best_dist_r;

    assign best_code = best_code_r;
    assign best_dist = best_dist_r;
    assign done      = (state == S_DONE);

    always_ff @(posedge clk) begin
        if (reset) begin
            state             <= S_IDLE;
            class_idx         <= '0;
            sample_idx        <= '0;
            shift_idx         <= '0;
            row_cnt           <= '0;
            row_cnt_d         <= '0;
            shift_idx_d       <= '0;
            rd_valid          <= 1'b0;
            ink_row           <= '0;
            ink_total         <= '0;
            shift_inter       <= '0;
            shift_union       <= '0;
            sample_best_inter <= '0;
            sample_best_union <= '0;
            class_inter       <= '0;
            class_union       <= '0;
            global_best_inter <= '0;
            global_best_union <= '0;
            best_code_r       <= REJECT_CODE;
            best_dist_r       <= 10'h3FF;
        end else begin
            rd_valid    <= (state == S_COMPARE);
            row_cnt_d   <= row_cnt;
            shift_idx_d <= shift_idx;

            case (state)
                S_IDLE: begin
                    if (start) begin
                        class_idx         <= '0;
                        sample_idx        <= '0;
                        shift_idx         <= '0;
                        row_cnt           <= '0;
                        rd_valid          <= 1'b0;
                        ink_row           <= '0;
                        ink_total         <= '0;
                        shift_inter       <= '0;
                        shift_union       <= '0;
                        sample_best_inter <= '0;
                        sample_best_union <= '0;
                        class_inter       <= '0;
                        class_union       <= '0;
                        global_best_inter <= '0;
                        global_best_union <= '0;
                        best_code_r       <= REJECT_CODE;
                        best_dist_r       <= 10'h3FF;
                        state             <= S_COUNT_INK;
                    end
                end

                S_COUNT_INK: begin
                    if (ink_row < CHAR_H) begin
                        ink_total <= ink_total + {5'b0, popcount16(ink_chunk)};
                        ink_row   <= ink_row + 1;
                    end else if (ink_total < MIN_INK_PIXELS) begin
                        state <= S_DONE;
                    end else begin
                        state <= S_COMPARE;
                    end
                end

                S_COMPARE: begin
                    if (rd_valid) begin
                        shift_inter <= shift_inter + {5'b0, row_inter};
                        shift_union <= shift_union + {5'b0, row_union};
                    end

                    if (row_cnt < CHAR_H - 1)
                        row_cnt <= row_cnt + 1;
                    else
                        state <= S_EVAL_SHIFT;
                end

                S_EVAL_SHIFT: begin
                    if (iou_better({3'b0, eval_shift_inter}, {3'b0, eval_shift_union},
                                   {3'b0, sample_best_inter}, {3'b0, sample_best_union})) begin
                        sample_best_inter <= eval_shift_inter;
                        sample_best_union <= eval_shift_union;
                    end

                    shift_inter <= '0;
                    shift_union <= '0;
                    row_cnt     <= '0;

                    if (shift_idx < NUM_SHIFTS - 1) begin
                        shift_idx <= shift_idx + 1;
                        state     <= S_COMPARE;
                    end else begin
                        state <= S_EVAL_SAMPLE;
                    end
                end

                S_EVAL_SAMPLE: begin
                    class_inter       <= eval_class_inter;
                    class_union       <= eval_class_union;
                    sample_best_inter <= '0;
                    sample_best_union <= '0;
                    shift_idx         <= '0;

                    if (sample_idx + 1 < sample_count(class_idx)) begin
                        sample_idx <= sample_idx + 1;
                        state      <= S_COMPARE;
                    end else begin
                        if (iou_better(eval_class_inter, eval_class_union,
                                       global_best_inter, global_best_union)) begin
                            global_best_inter <= eval_class_inter;
                            global_best_union <= eval_class_union;
                            best_code_r       <= class_idx;
                            best_dist_r       <= eval_class_miss_clamped;
                        end

                        class_inter <= '0;
                        class_union <= '0;
                        sample_idx  <= '0;

                        if (class_idx < NUM_CLASSES - 1) begin
                            class_idx <= class_idx + 1;
                            state     <= S_COMPARE;
                        end else begin
                            state <= S_DONE;
                        end
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

endmodule
