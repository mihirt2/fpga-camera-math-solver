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
    input  logic [CHAR_CODE_WIDTH-1:0]        equation_chars [0:MAX_CHARS-1],
    input  logic [$clog2(MAX_CHARS+1)-1:0]    equation_len,
    input  logic                              solver_valid,
    input  logic                              is_const,
    input  logic [2:0]                        num_solutions,
    input  logic signed [31:0]                value,
    input  logic signed [31:0]                solutions [0:MAX_SOLUTIONS-1],

    output logic [7:0]                        result_chars [0:DISPLAY_CHARS-1],
    output logic [$clog2(DISPLAY_CHARS+1)-1:0] result_len,
    output logic                              result_valid
);

    localparam int POS_W = $clog2(DISPLAY_CHARS + 1);
    localparam logic [POS_W-1:0] DISPLAY_LIMIT = POS_W'(DISPLAY_CHARS);
    localparam logic [POS_W-1:0] STATUS_EQ_LIMIT =
        (DISPLAY_CHARS > 8) ? POS_W'(DISPLAY_CHARS - 8) : '0;
    localparam logic [POS_W-1:0] STATUS_MSG_START =
        (DISPLAY_CHARS > 7) ? POS_W'(DISPLAY_CHARS - 7) : '0;

    typedef enum logic [4:0] {
        S_IDLE,
        S_CLEAR,
        S_EQUATION,
        S_EQUATION_EQUALS,
        S_STATUS,
        S_MSG,
        S_CONST_V,
        S_CONST_EQUALS,
        S_ROOT_ZERO,
        S_ROOT_SPACE,
        S_ROOT_X,
        S_ROOT_EQUALS,
        S_ROOT_COMMA,
        S_NUMBER_INIT,
        S_NUMBER_SIGN,
        S_INT_DIGIT_INIT,
        S_INT_DIGIT_SUB,
        S_INT_DIGIT_EMIT,
        S_FRAC_DOT,
        S_FRAC_DIGIT_INIT,
        S_FRAC_DIGIT_SUB,
        S_FRAC_DIGIT_EMIT,
        S_AFTER_NUMBER,
        S_FINISH
    } state_t;

    typedef enum logic [1:0] {
        MSG_INVALID,
        MSG_NO_ROOT
    } msg_t;

    localparam logic [7:0] STATUS_I = 8'h01;
    localparam logic [7:0] STATUS_N = 8'h02;
    localparam logic [7:0] STATUS_V = 8'h03;
    localparam logic [7:0] STATUS_A = 8'h04;
    localparam logic [7:0] STATUS_L = 8'h05;
    localparam logic [7:0] STATUS_D = 8'h06;
    localparam logic [7:0] STATUS_O = 8'h07;
    localparam logic [7:0] STATUS_R = 8'h08;
    localparam logic [7:0] STATUS_T = 8'h09;

    state_t state;
    msg_t   msg_sel;

    logic [POS_W-1:0]                    pos;
    logic [POS_W-1:0]                    clear_idx;
    logic [$clog2(MAX_CHARS+1)-1:0]      eq_idx;
    logic [3:0]                          msg_idx;
    logic [1:0]                          number_idx;
    logic signed [31:0]                  number_q;
    logic [31:0]                         number_abs;
    logic [31:0]                         int_rem;
    logic [31:0]                         int_div;
    logic [3:0]                          int_digit_idx;
    logic [26:0]                         frac_rem;
    logic [26:0]                         frac_div;
    logic [3:0]                          frac_digit_idx;
    logic [3:0]                          digit;
    logic                                int_started;

    logic [47:0] frac_input_ext;
    logic [47:0] frac_scaled_calc;
    logic        reserve_status_space;

    assign frac_input_ext    = {32'd0, number_abs[15:0]};
    assign frac_scaled_calc  = ((frac_input_ext * 48'd100000000) + 48'd32768) >> 16;
    assign reserve_status_space = !solver_valid ||
                                  (solver_valid && !is_const && (num_solutions == 0));

    function automatic logic [7:0] token_to_ascii(input logic [CHAR_CODE_WIDTH-1:0] token);
        if (token == {CHAR_CODE_WIDTH{1'b1}}) begin
            token_to_ascii = "?";
        end else if (token <= 9) begin
            token_to_ascii = 8'h30 + {4'd0, token[3:0]};
        end else if (token == 16) begin
            token_to_ascii = "^";
        end else begin
            case (token[3:0])
                4'd10:   token_to_ascii = "+";
                4'd11:   token_to_ascii = "X";
                4'd12:   token_to_ascii = "*";
                4'd13:   token_to_ascii = "-";
                4'd14:   token_to_ascii = "(";
                4'd15:   token_to_ascii = ")";
                default: token_to_ascii = "?";
            endcase
        end
    endfunction

    function automatic logic [31:0] q16_abs(input logic signed [31:0] q);
        if (q < 0)
            q16_abs = -q;
        else
            q16_abs = q;
    endfunction

    function automatic logic [31:0] int_divisor(input logic [3:0] idx);
        case (idx)
            4'd0:    int_divisor = 32'd1000000000;
            4'd1:    int_divisor = 32'd100000000;
            4'd2:    int_divisor = 32'd10000000;
            4'd3:    int_divisor = 32'd1000000;
            4'd4:    int_divisor = 32'd100000;
            4'd5:    int_divisor = 32'd10000;
            4'd6:    int_divisor = 32'd1000;
            4'd7:    int_divisor = 32'd100;
            4'd8:    int_divisor = 32'd10;
            default: int_divisor = 32'd1;
        endcase
    endfunction

    function automatic logic [26:0] frac_divisor(input logic [3:0] idx);
        case (idx)
            4'd0:    frac_divisor = 27'd10000000;
            4'd1:    frac_divisor = 27'd1000000;
            4'd2:    frac_divisor = 27'd100000;
            4'd3:    frac_divisor = 27'd10000;
            4'd4:    frac_divisor = 27'd1000;
            4'd5:    frac_divisor = 27'd100;
            4'd6:    frac_divisor = 27'd10;
            default: frac_divisor = 27'd1;
        endcase
    endfunction

    function automatic logic [7:0] msg_char(input msg_t sel, input logic [3:0] idx);
        case (sel)
            MSG_INVALID: begin
                case (idx)
                    4'd0:    msg_char = STATUS_I;
                    4'd1:    msg_char = STATUS_N;
                    4'd2:    msg_char = STATUS_V;
                    4'd3:    msg_char = STATUS_A;
                    4'd4:    msg_char = STATUS_L;
                    4'd5:    msg_char = STATUS_I;
                    4'd6:    msg_char = STATUS_D;
                    default: msg_char = 8'h00;
                endcase
            end

            default: begin
                case (idx)
                    4'd0:    msg_char = STATUS_N;
                    4'd1:    msg_char = STATUS_O;
                    4'd2:    msg_char = " ";
                    4'd3:    msg_char = STATUS_R;
                    4'd4:    msg_char = STATUS_O;
                    4'd5:    msg_char = STATUS_O;
                    4'd6:    msg_char = STATUS_T;
                    default: msg_char = 8'h00;
                endcase
            end
        endcase
    endfunction

    task automatic append_char(input logic [7:0] ch);
        if (pos < DISPLAY_LIMIT) begin
            result_chars[pos] <= ch;
            pos <= pos + 1'b1;
        end
    endtask

    integer i;

    always_ff @(posedge clk) begin
        if (reset) begin
            state          <= S_IDLE;
            result_len     <= '0;
            result_valid   <= 1'b0;
            pos            <= '0;
            clear_idx      <= '0;
            eq_idx         <= '0;
            msg_idx        <= '0;
            msg_sel        <= MSG_INVALID;
            number_idx     <= '0;
            number_q       <= '0;
            number_abs     <= '0;
            int_rem        <= '0;
            int_div        <= '0;
            int_digit_idx  <= '0;
            frac_rem       <= '0;
            frac_div       <= '0;
            frac_digit_idx <= '0;
            digit          <= '0;
            int_started    <= 1'b0;

            for (i = 0; i < DISPLAY_CHARS; i = i + 1)
                result_chars[i] <= 8'h20;
        end else begin
            result_valid <= 1'b0;

            case (state)
                S_IDLE: begin
                    if (start) begin
                        pos        <= '0;
                        clear_idx  <= '0;
                        eq_idx     <= '0;
                        msg_idx    <= '0;
                        number_idx <= '0;
                        result_len <= '0;
                        state      <= S_CLEAR;
                    end
                end

                S_CLEAR: begin
                    result_chars[clear_idx] <= 8'h20;
                    if (clear_idx == DISPLAY_LIMIT - 1'b1) begin
                        state <= S_EQUATION;
                    end else begin
                        clear_idx <= clear_idx + 1'b1;
                    end
                end

                S_EQUATION: begin
                    if ((eq_idx < equation_len) &&
                        (!reserve_status_space || (pos < STATUS_EQ_LIMIT))) begin
                        append_char(token_to_ascii(equation_chars[eq_idx]));
                        eq_idx <= eq_idx + 1'b1;
                    end else begin
                        state <= S_EQUATION_EQUALS;
                    end
                end

                S_EQUATION_EQUALS: begin
                    if (equation_len != '0 && solver_valid)
                        append_char("=");
                    state <= S_STATUS;
                end

                S_STATUS: begin
                    if (!solver_valid) begin
                        msg_sel <= MSG_INVALID;
                        msg_idx <= '0;
                        pos     <= STATUS_MSG_START;
                        state   <= S_MSG;
                    end else if (is_const) begin
                        number_q   <= value;
                        number_idx <= '0;
                        state      <= S_NUMBER_INIT;
                    end else if (num_solutions == 0) begin
                        msg_sel <= MSG_NO_ROOT;
                        msg_idx <= '0;
                        pos     <= STATUS_MSG_START;
                        state   <= S_MSG;
                    end else begin
                        state <= S_ROOT_ZERO;
                    end
                end

                S_MSG: begin
                    if (msg_char(msg_sel, msg_idx) != 8'h00) begin
                        append_char(msg_char(msg_sel, msg_idx));
                        msg_idx <= msg_idx + 1'b1;
                    end else begin
                        state <= S_FINISH;
                    end
                end

                S_CONST_V: begin
                    append_char("V");
                    state <= S_CONST_EQUALS;
                end

                S_CONST_EQUALS: begin
                    append_char("=");
                    number_q   <= value;
                    number_idx <= '0;
                    state      <= S_NUMBER_INIT;
                end

                S_ROOT_ZERO: begin
                    append_char("0");
                    state <= S_ROOT_SPACE;
                end

                S_ROOT_SPACE: begin
                    append_char(" ");
                    state <= S_ROOT_X;
                end

                S_ROOT_X: begin
                    append_char("X");
                    state <= S_ROOT_EQUALS;
                end

                S_ROOT_EQUALS: begin
                    append_char("=");
                    number_q   <= solutions[0];
                    number_idx <= '0;
                    state      <= S_NUMBER_INIT;
                end

                S_ROOT_COMMA: begin
                    append_char(",");
                    number_q   <= solutions[1];
                    number_idx <= 2'd1;
                    state      <= S_NUMBER_INIT;
                end

                S_NUMBER_INIT: begin
                    number_abs <= q16_abs(number_q);
                    state      <= S_NUMBER_SIGN;
                end

                S_NUMBER_SIGN: begin
                    if (number_q < 0)
                        append_char("-");

                    int_rem        <= number_abs >> 16;
                    int_digit_idx  <= '0;
                    frac_digit_idx <= '0;
                    int_started    <= 1'b0;

                    if (frac_scaled_calc >= 48'd100000000) begin
                        int_rem  <= (number_abs >> 16) + 32'd1;
                        frac_rem <= 27'd0;
                    end else begin
                        frac_rem <= frac_scaled_calc[26:0];
                    end

                    state <= S_INT_DIGIT_INIT;
                end

                S_INT_DIGIT_INIT: begin
                    int_div <= int_divisor(int_digit_idx);
                    digit   <= '0;
                    state   <= S_INT_DIGIT_SUB;
                end

                S_INT_DIGIT_SUB: begin
                    if (int_rem >= int_div) begin
                        int_rem <= int_rem - int_div;
                        digit   <= digit + 1'b1;
                    end else begin
                        state <= S_INT_DIGIT_EMIT;
                    end
                end

                S_INT_DIGIT_EMIT: begin
                    if (int_started || (digit != 0) || (int_digit_idx == 4'd9)) begin
                        append_char(8'h30 + {4'd0, digit});
                        int_started <= 1'b1;
                    end

                    if (int_digit_idx == 4'd9) begin
                        state <= S_FRAC_DOT;
                    end else begin
                        int_digit_idx <= int_digit_idx + 1'b1;
                        state         <= S_INT_DIGIT_INIT;
                    end
                end

                S_FRAC_DOT: begin
                    append_char(".");
                    state <= S_FRAC_DIGIT_INIT;
                end

                S_FRAC_DIGIT_INIT: begin
                    frac_div <= frac_divisor(frac_digit_idx);
                    digit    <= '0;
                    state    <= S_FRAC_DIGIT_SUB;
                end

                S_FRAC_DIGIT_SUB: begin
                    if (frac_rem >= frac_div) begin
                        frac_rem <= frac_rem - frac_div;
                        digit    <= digit + 1'b1;
                    end else begin
                        state <= S_FRAC_DIGIT_EMIT;
                    end
                end

                S_FRAC_DIGIT_EMIT: begin
                    append_char(8'h30 + {4'd0, digit});
                    if (frac_digit_idx == 4'd7) begin
                        state <= S_AFTER_NUMBER;
                    end else begin
                        frac_digit_idx <= frac_digit_idx + 1'b1;
                        state          <= S_FRAC_DIGIT_INIT;
                    end
                end

                S_AFTER_NUMBER: begin
                    if (!is_const && (number_idx == 0) && (num_solutions > 1)) begin
                        state <= S_ROOT_COMMA;
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
