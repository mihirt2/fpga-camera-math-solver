`timescale 1ns / 1ps

module solver_to_ascii_full_decimal #(
    parameter int MAX_CHARS       = 10,
    parameter int CHAR_CODE_WIDTH = 8,
    parameter int MAX_SOLUTIONS   = 5,
    parameter int DISPLAY_CHARS   = 20,
    parameter int MAX_COEFFS      = 6,
    parameter int COEFF_WIDTH     = 16
)(
    input  logic                              clk,
    input  logic                              reset,
    input  logic                              start,
    input  logic [CHAR_CODE_WIDTH-1:0]        equation_chars [0:MAX_CHARS-1],
    input  logic [$clog2(MAX_CHARS+1)-1:0]    equation_len,
    input  logic                              solver_valid,
    input  logic                              is_const,
    input  logic [2:0]                        num_solutions,
    input  logic signed [31:0]                value,
    input  logic signed [31:0]                solutions [0:MAX_SOLUTIONS-1],
    input  logic signed [COEFF_WIDTH-1:0]     coefficients [0:MAX_COEFFS-1],

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
        S_NO_ROOT_N,
        S_NO_ROOT_O,
        S_NO_ROOT_SPACE,
        S_NO_ROOT_R,
        S_NO_ROOT_O2,
        S_NO_ROOT_O3,
        S_NO_ROOT_T,
        S_NUMBER_INIT,
        S_NUMBER_TENS,
        S_NUMBER_ONES,
        S_NUMBER_WRITE_TENS,
        S_NUMBER_WRITE_ONES,
        S_NUMBER_WRITE_DOT,
        S_NUMBER_WRITE_FRAC,
        S_NUMBER_WRITE_FRAC2,
        S_AFTER_NUMBER,
        S_FINISH
    } state_t;

    state_t state;

    logic [POS_W-1:0] pos;
    logic [POS_W-1:0] clear_idx;
    logic [SOL_IDX_W-1:0] number_idx;
    logic signed [31:0] number_q;
    logic [13:0] number_rem;
    logic [3:0] tens_digit;
    logic [3:0] ones_digit;
    logic [3:0] frac_tens_digit;
    logic number_negative;

    logic [31:0] number_abs;
    logic [31:0] scaled_hundredths_full;
    logic [13:0] scaled_hundredths;
    logic _unused_inputs;

    assign _unused_inputs = equation_chars[0][0] ^ equation_len[0] ^ coefficients[0][0];

    always_comb begin
        number_abs = number_q[31] ? (~number_q + 32'd1) : number_q;
        scaled_hundredths_full = ((number_abs << 6)
                                + (number_abs << 5)
                                + (number_abs << 2)
                                + 32'd32768) >> 16;
        scaled_hundredths = (scaled_hundredths_full > 32'd9999) ? 14'd9999
                                                                : scaled_hundredths_full[13:0];
    end

    task automatic append_char(input logic [7:0] ch);
        if (pos < POS_W'(DISPLAY_CHARS)) begin
            result_chars[pos] <= ch;
            pos <= pos + 1'b1;
        end
    endtask

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
            number_negative <= 1'b0;

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
                    if (!solver_valid) begin
                        state <= S_FINISH;
                    end else if (is_const) begin
                        number_q   <= value;
                        number_idx <= '0;
                        state      <= S_NUMBER_INIT;
                    end else if (num_solutions == 0) begin
                        state <= S_NO_ROOT_N;
                    end else begin
                        number_q   <= solutions[0];
                        number_idx <= '0;
                        state      <= S_NUMBER_INIT;
                    end
                end

                S_NO_ROOT_N: begin
                    append_char("N");
                    state <= S_NO_ROOT_O;
                end

                S_NO_ROOT_O: begin
                    append_char("O");
                    state <= S_NO_ROOT_SPACE;
                end

                S_NO_ROOT_SPACE: begin
                    append_char(" ");
                    state <= S_NO_ROOT_R;
                end

                S_NO_ROOT_R: begin
                    append_char("R");
                    state <= S_NO_ROOT_O2;
                end

                S_NO_ROOT_O2: begin
                    append_char("O");
                    state <= S_NO_ROOT_O3;
                end

                S_NO_ROOT_O3: begin
                    append_char("O");
                    state <= S_NO_ROOT_T;
                end

                S_NO_ROOT_T: begin
                    append_char("T");
                    state <= S_FINISH;
                end

                S_NUMBER_INIT: begin
                    number_negative <= number_q[31];
                    number_rem      <= scaled_hundredths;
                    tens_digit      <= '0;
                    ones_digit      <= '0;
                    frac_tens_digit <= '0;

                    if (number_q[31])
                        append_char("-");

                    state <= S_NUMBER_TENS;
                end

                S_NUMBER_TENS: begin
                    if (number_rem >= 14'd1000) begin
                        number_rem <= number_rem - 14'd1000;
                        tens_digit <= tens_digit + 1'b1;
                    end else begin
                        state <= S_NUMBER_ONES;
                    end
                end

                S_NUMBER_ONES: begin
                    if (number_rem >= 14'd100) begin
                        number_rem <= number_rem - 14'd100;
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
                    if (number_rem >= 14'd10) begin
                        number_rem      <= number_rem - 14'd10;
                        frac_tens_digit <= frac_tens_digit + 1'b1;
                    end else begin
                        append_char(8'h30 + {4'd0, frac_tens_digit});
                        state <= S_NUMBER_WRITE_FRAC2;
                    end
                end

                S_NUMBER_WRITE_FRAC2: begin
                    append_char(8'h30 + {4'd0, number_rem[3:0]});
                    state <= S_AFTER_NUMBER;
                end

                S_AFTER_NUMBER: begin
                    if (!is_const && (number_idx + 1'b1 < num_solutions)) begin
                        append_char(",");
                        number_idx <= number_idx + 1'b1;
                        number_q   <= solutions[number_idx + 1'b1];
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
