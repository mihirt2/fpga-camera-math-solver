`timescale 1ns / 1ps

module solver_to_ascii_full_decimal #(
    parameter int MAX_CHARS       = 10,
    parameter int CHAR_CODE_WIDTH = 8,
    parameter int MAX_SOLUTIONS   = 5,
    parameter int DISPLAY_CHARS   = 20
)(
    input  logic                              clk,
    input  logic                              reset,
    input  logic                              start,
    input  logic                              solver_valid,
    input  logic                              is_const,
    input  logic [2:0]                        num_solutions,
    input  logic signed [31:0]                value,
    input  logic signed [31:0]                solution0,
    input  logic signed [31:0]                solution1,
    input  logic signed [31:0]                solution2,
    input  logic signed [31:0]                solution3,
    input  logic signed [31:0]                solution4,

    output logic [7:0]                        result_chars [0:DISPLAY_CHARS-1],
    output logic [$clog2(DISPLAY_CHARS+1)-1:0] result_len,
    output logic                              result_valid
);

    localparam int POS_W = $clog2(DISPLAY_CHARS + 1);
    localparam int SOL_IDX_W = $clog2(MAX_SOLUTIONS + 1);

    typedef enum logic [4:0] {
        S_IDLE,
        S_CLEAR,
        S_STATUS,
        S_NO_SOL_N,
        S_NO_SOL_O,
        S_NO_SOL_SPACE,
        S_NO_SOL_S,
        S_NO_SOL_O2,
        S_NO_SOL_L,
        S_NO_SOL_U,
        S_NO_SOL_T,
        S_NO_SOL_I,
        S_NO_SOL_O3,
        S_NO_SOL_N2,
        S_INVALID_I,
        S_INVALID_N,
        S_INVALID_V,
        S_INVALID_A,
        S_INVALID_L,
        S_INVALID_I2,
        S_INVALID_D,
        S_NUMBER_INIT,
        S_NUMBER_TENS,
        S_NUMBER_ONES,
        S_NUMBER_WRITE_TENS,
        S_NUMBER_WRITE_ONES,
        S_NUMBER_WRITE_DOT,
        S_NUMBER_WRITE_FRAC,
        S_NUMBER_WRITE_FRAC2,
        S_NUMBER_WRITE_FRAC3,
        S_AFTER_NUMBER,
        S_FINISH
    } state_t;

    state_t state;

    logic [POS_W-1:0] pos;
    logic [POS_W-1:0] clear_idx;
    logic [SOL_IDX_W-1:0] number_idx;
    logic signed [31:0] number_q;
    logic [16:0] number_rem;
    logic [3:0] tens_digit;
    logic [3:0] ones_digit;
    logic [3:0] frac_tens_digit;
    logic [3:0] frac_hundredths_digit;
    logic number_negative;
    logic fmt_solver_valid;
    logic fmt_is_const;
    logic [2:0] fmt_num_solutions;
    logic signed [31:0] fmt_value;
    logic signed [31:0] fmt_solution0;
    logic signed [31:0] fmt_solution1;
    logic signed [31:0] fmt_solution2;
    logic signed [31:0] fmt_solution3;
    logic signed [31:0] fmt_solution4;

    logic [31:0] number_abs;
    logic [47:0] scaled_thousandths_full;
    logic [16:0] scaled_thousandths;

    always_comb begin
        number_abs = number_q[31] ? (~number_q + 32'd1) : number_q;
        scaled_thousandths_full = (((48'(number_abs) << 9)
                                  + (48'(number_abs) << 8)
                                  + (48'(number_abs) << 7)
                                  + (48'(number_abs) << 6)
                                  + (48'(number_abs) << 5)
                                  + (48'(number_abs) << 3)
                                  + 48'd32768) >> 16);
        scaled_thousandths = (scaled_thousandths_full > 48'd99999) ? 17'd99999
                                                                   : scaled_thousandths_full[16:0];
    end

    task automatic append_char(input logic [7:0] ch);
        if (pos < POS_W'(DISPLAY_CHARS)) begin
            result_chars[pos] <= ch;
            pos <= pos + 1'b1;
        end
    endtask

    function automatic logic signed [31:0] select_solution(input logic [SOL_IDX_W-1:0] idx);
        case (idx)
            SOL_IDX_W'(0): select_solution = fmt_solution0;
            SOL_IDX_W'(1): select_solution = fmt_solution1;
            SOL_IDX_W'(2): select_solution = fmt_solution2;
            SOL_IDX_W'(3): select_solution = fmt_solution3;
            default:       select_solution = fmt_solution4;
        endcase
    endfunction

    integer i;

    always_ff @(posedge clk) begin
        if (reset) begin
            state           <= S_IDLE;
            result_len      <= '0;
            result_valid    <= 1'b0;
            pos             <= '0;
            clear_idx       <= '0;
            number_idx      <= '0;
            number_q        <= '0;
            number_rem      <= '0;
            tens_digit      <= '0;
            ones_digit      <= '0;
            frac_tens_digit <= '0;
            frac_hundredths_digit <= '0;
            number_negative <= 1'b0;
            fmt_solver_valid <= 1'b0;
            fmt_is_const     <= 1'b0;
            fmt_num_solutions <= '0;
            fmt_value        <= '0;
            fmt_solution0    <= '0;
            fmt_solution1    <= '0;
            fmt_solution2    <= '0;
            fmt_solution3    <= '0;
            fmt_solution4    <= '0;

            for (i = 0; i < DISPLAY_CHARS; i = i + 1)
                result_chars[i] <= 8'h20;
        end else begin
            result_valid <= 1'b0;

            case (state)
                S_IDLE: begin
                    if (start) begin
                        pos        <= '0;
                        clear_idx  <= '0;
                        number_idx <= '0;
                        result_len <= '0;
                        fmt_solver_valid  <= solver_valid;
                        fmt_is_const      <= is_const;
                        fmt_num_solutions <= (num_solutions > 3'(MAX_SOLUTIONS))
                                           ? 3'(MAX_SOLUTIONS)
                                           : num_solutions;
                        fmt_value         <= value;
                        fmt_solution0     <= solution0;
                        fmt_solution1     <= solution1;
                        fmt_solution2     <= solution2;
                        fmt_solution3     <= solution3;
                        fmt_solution4     <= solution4;
                        state      <= S_CLEAR;
                    end
                end

                S_CLEAR: begin
                    result_chars[clear_idx] <= 8'h20;
                    if (clear_idx == POS_W'(DISPLAY_CHARS - 1))
                        state <= S_STATUS;
                    else
                        clear_idx <= clear_idx + 1'b1;
                end

                S_STATUS: begin
                    if (!fmt_solver_valid) begin
                        state <= S_INVALID_I;
                    end else if (fmt_is_const) begin
                        number_q   <= fmt_value;
                        number_idx <= '0;
                        state      <= S_NUMBER_INIT;
                    end else if (fmt_num_solutions == 0) begin
                        state <= S_NO_SOL_N;
                    end else begin
                        number_q   <= fmt_solution0;
                        number_idx <= '0;
                        state      <= S_NUMBER_INIT;
                    end
                end

                S_NO_SOL_N: begin
                    append_char("N");
                    state <= S_NO_SOL_O;
                end

                S_NO_SOL_O: begin
                    append_char("O");
                    state <= S_NO_SOL_SPACE;
                end

                S_NO_SOL_SPACE: begin
                    append_char(" ");
                    state <= S_NO_SOL_S;
                end

                S_NO_SOL_S: begin
                    append_char("S");
                    state <= S_NO_SOL_O2;
                end

                S_NO_SOL_O2: begin
                    append_char("O");
                    state <= S_NO_SOL_L;
                end

                S_NO_SOL_L: begin
                    append_char("L");
                    state <= S_NO_SOL_U;
                end

                S_NO_SOL_U: begin
                    append_char("U");
                    state <= S_NO_SOL_T;
                end

                S_NO_SOL_T: begin
                    append_char("T");
                    state <= S_NO_SOL_I;
                end

                S_NO_SOL_I: begin
                    append_char("I");
                    state <= S_NO_SOL_O3;
                end

                S_NO_SOL_O3: begin
                    append_char("O");
                    state <= S_NO_SOL_N2;
                end

                S_NO_SOL_N2: begin
                    append_char("N");
                    state <= S_FINISH;
                end

                S_INVALID_I: begin
                    append_char("I");
                    state <= S_INVALID_N;
                end

                S_INVALID_N: begin
                    append_char("N");
                    state <= S_INVALID_V;
                end

                S_INVALID_V: begin
                    append_char("V");
                    state <= S_INVALID_A;
                end

                S_INVALID_A: begin
                    append_char("A");
                    state <= S_INVALID_L;
                end

                S_INVALID_L: begin
                    append_char("L");
                    state <= S_INVALID_I2;
                end

                S_INVALID_I2: begin
                    append_char("I");
                    state <= S_INVALID_D;
                end

                S_INVALID_D: begin
                    append_char("D");
                    state <= S_FINISH;
                end

                S_NUMBER_INIT: begin
                    number_negative <= number_q[31];
                    number_rem      <= scaled_thousandths;
                    tens_digit      <= '0;
                    ones_digit      <= '0;
                    frac_tens_digit <= '0;
                    frac_hundredths_digit <= '0;

                    if (number_q[31])
                        append_char("-");

                    state <= S_NUMBER_TENS;
                end

                S_NUMBER_TENS: begin
                    if (number_rem >= 17'd10000) begin
                        number_rem <= number_rem - 17'd10000;
                        tens_digit <= tens_digit + 1'b1;
                    end else begin
                        state <= S_NUMBER_ONES;
                    end
                end

                S_NUMBER_ONES: begin
                    if (number_rem >= 17'd1000) begin
                        number_rem <= number_rem - 17'd1000;
                        ones_digit <= ones_digit + 1'b1;
                    end else begin
                        state <= S_NUMBER_WRITE_TENS;
                    end
                end

                S_NUMBER_WRITE_TENS: begin
                    if (tens_digit != 0)
                        append_char(8'h30 + {4'd0, tens_digit});
                    state <= S_NUMBER_WRITE_ONES;
                end

                S_NUMBER_WRITE_ONES: begin
                    append_char(8'h30 + {4'd0, ones_digit});
                    state <= S_NUMBER_WRITE_DOT;
                end

                S_NUMBER_WRITE_DOT: begin
                    append_char(".");
                    state <= S_NUMBER_WRITE_FRAC;
                end

                S_NUMBER_WRITE_FRAC: begin
                    if (number_rem >= 17'd100) begin
                        number_rem      <= number_rem - 17'd100;
                        frac_tens_digit <= frac_tens_digit + 1'b1;
                    end else begin
                        append_char(8'h30 + {4'd0, frac_tens_digit});
                        state <= S_NUMBER_WRITE_FRAC2;
                    end
                end

                S_NUMBER_WRITE_FRAC2: begin
                    if (number_rem >= 17'd10) begin
                        number_rem <= number_rem - 17'd10;
                        frac_hundredths_digit <= frac_hundredths_digit + 1'b1;
                    end else begin
                        append_char(8'h30 + {4'd0, frac_hundredths_digit});
                        state <= S_NUMBER_WRITE_FRAC3;
                    end
                end

                S_NUMBER_WRITE_FRAC3: begin
                    append_char(8'h30 + {4'd0, number_rem[3:0]});
                    state <= S_AFTER_NUMBER;
                end

                S_AFTER_NUMBER: begin
                    if (!fmt_is_const && (number_idx + 1'b1 < fmt_num_solutions)) begin
                        append_char(",");
                        number_idx <= number_idx + 1'b1;
                        number_q   <= select_solution(number_idx + 1'b1);
                        state      <= S_NUMBER_INIT;
                    end else begin
                        state <= S_FINISH;
                    end
                end

                S_FINISH: begin
                    result_len   <= pos;
                    result_valid <= 1'b1;
                    state        <= S_IDLE;
                end

                default: begin
                    state <= S_IDLE;
                end
            endcase
        end
    end

endmodule
