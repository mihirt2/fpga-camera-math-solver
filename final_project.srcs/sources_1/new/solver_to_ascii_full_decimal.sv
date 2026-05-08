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
    localparam int COEFF_IDX_W = $clog2(MAX_COEFFS + 1);
    localparam logic [POS_W-1:0] DISPLAY_LIMIT = POS_W'(DISPLAY_CHARS);
    localparam logic [POS_W-1:0] STATUS_EQ_LIMIT =
        (DISPLAY_CHARS > 8) ? POS_W'(DISPLAY_CHARS - 8) : '0;
    localparam logic [POS_W-1:0] STATUS_MSG_START =
        (DISPLAY_CHARS > 7) ? POS_W'(DISPLAY_CHARS - 7) : '0;

    typedef enum logic [3:0] {
        S_IDLE,
        S_CLEAR,
        S_EQUATION,
        S_EQUATION_EQUALS,
        S_STATUS,
        S_MSG,
        S_COEFF_OPEN,
        S_COEFF_LOAD,
        S_COEFF_SIGN,
        S_COEFF_DIGIT_INIT,
        S_COEFF_DIGIT_SUB,
        S_COEFF_DIGIT_EMIT,
        S_COEFF_AFTER,
        S_FINISH
    } state_t;

    localparam logic [7:0] STATUS_I = 8'h01;
    localparam logic [7:0] STATUS_N = 8'h02;
    localparam logic [7:0] STATUS_V = 8'h03;
    localparam logic [7:0] STATUS_A = 8'h04;
    localparam logic [7:0] STATUS_L = 8'h05;
    localparam logic [7:0] STATUS_D = 8'h06;

    state_t state;

    logic [POS_W-1:0]                    pos;
    logic [POS_W-1:0]                    clear_idx;
    logic [$clog2(MAX_CHARS+1)-1:0]      eq_idx;
    logic [3:0]                          msg_idx;
    logic [COEFF_IDX_W-1:0]              coeff_idx;
    logic                                coeff_negative;
    logic [COEFF_WIDTH-1:0]              coeff_abs;
    logic [COEFF_WIDTH-1:0]              coeff_rem;
    logic [COEFF_WIDTH-1:0]              coeff_div;
    logic [2:0]                          digit_idx;
    logic [3:0]                          digit;
    logic                                digit_started;

    logic _unused_inputs;
    assign _unused_inputs = is_const ^ num_solutions[0] ^ value[0] ^ solutions[0][0];

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
                4'd11:   token_to_ascii = "-";
                4'd12:   token_to_ascii = "*";
                4'd13:   token_to_ascii = "X";
                4'd14:   token_to_ascii = "(";
                4'd15:   token_to_ascii = ")";
                default: token_to_ascii = "?";
            endcase
        end
    endfunction

    function automatic logic [COEFF_WIDTH-1:0] coeff_abs_value(
        input logic signed [COEFF_WIDTH-1:0] value_in
    );
        if (value_in < 0)
            coeff_abs_value = 0 - value_in;
        else
            coeff_abs_value = value_in;
    endfunction

    function automatic logic [COEFF_WIDTH-1:0] coeff_divisor(input logic [2:0] idx);
        case (idx)
            3'd0:    coeff_divisor = COEFF_WIDTH'(10000);
            3'd1:    coeff_divisor = COEFF_WIDTH'(1000);
            3'd2:    coeff_divisor = COEFF_WIDTH'(100);
            3'd3:    coeff_divisor = COEFF_WIDTH'(10);
            default: coeff_divisor = COEFF_WIDTH'(1);
        endcase
    endfunction

    function automatic logic [7:0] invalid_char(input logic [3:0] idx);
        case (idx)
            4'd0:    invalid_char = STATUS_I;
            4'd1:    invalid_char = STATUS_N;
            4'd2:    invalid_char = STATUS_V;
            4'd3:    invalid_char = STATUS_A;
            4'd4:    invalid_char = STATUS_L;
            4'd5:    invalid_char = STATUS_I;
            4'd6:    invalid_char = STATUS_D;
            default: invalid_char = 8'h00;
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
            state            <= S_IDLE;
            result_len       <= '0;
            result_valid     <= 1'b0;
            pos              <= '0;
            clear_idx        <= '0;
            eq_idx           <= '0;
            msg_idx          <= '0;
            coeff_idx        <= '0;
            coeff_negative   <= 1'b0;
            coeff_abs        <= '0;
            coeff_rem        <= '0;
            coeff_div        <= '0;
            digit_idx        <= '0;
            digit            <= '0;
            digit_started    <= 1'b0;

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
                        coeff_idx  <= '0;
                        result_len <= '0;
                        state      <= S_CLEAR;
                    end
                end

                S_CLEAR: begin
                    result_chars[clear_idx] <= 8'h20;
                    if (clear_idx == DISPLAY_LIMIT - 1'b1)
                        state <= S_EQUATION;
                    else
                        clear_idx <= clear_idx + 1'b1;
                end

                S_EQUATION: begin
                    if ((eq_idx < equation_len) &&
                        (solver_valid || (pos < STATUS_EQ_LIMIT))) begin
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
                        msg_idx <= '0;
                        pos     <= STATUS_MSG_START;
                        state   <= S_MSG;
                    end else begin
                        state <= S_COEFF_OPEN;
                    end
                end

                S_MSG: begin
                    if (invalid_char(msg_idx) != 8'h00) begin
                        append_char(invalid_char(msg_idx));
                        msg_idx <= msg_idx + 1'b1;
                    end else begin
                        state <= S_FINISH;
                    end
                end

                S_COEFF_OPEN: begin
                    append_char("[");
                    coeff_idx <= '0;
                    state     <= S_COEFF_LOAD;
                end

                S_COEFF_LOAD: begin
                    coeff_negative <= (coefficients[coeff_idx] < 0);
                    coeff_abs      <= coeff_abs_value(coefficients[coeff_idx]);
                    digit_idx      <= '0;
                    digit_started  <= 1'b0;
                    state          <= S_COEFF_SIGN;
                end

                S_COEFF_SIGN: begin
                    if (coeff_negative)
                        append_char("-");
                    coeff_rem <= coeff_abs;
                    state     <= S_COEFF_DIGIT_INIT;
                end

                S_COEFF_DIGIT_INIT: begin
                    coeff_div <= coeff_divisor(digit_idx);
                    digit     <= '0;
                    state     <= S_COEFF_DIGIT_SUB;
                end

                S_COEFF_DIGIT_SUB: begin
                    if (coeff_rem >= coeff_div) begin
                        coeff_rem <= coeff_rem - coeff_div;
                        digit     <= digit + 1'b1;
                    end else begin
                        state <= S_COEFF_DIGIT_EMIT;
                    end
                end

                S_COEFF_DIGIT_EMIT: begin
                    if (digit_started || (digit != 0) || (digit_idx == 3'd4)) begin
                        append_char(8'h30 + {4'd0, digit});
                        digit_started <= 1'b1;
                    end

                    if (digit_idx == 3'd4) begin
                        state <= S_COEFF_AFTER;
                    end else begin
                        digit_idx <= digit_idx + 1'b1;
                        state     <= S_COEFF_DIGIT_INIT;
                    end
                end

                S_COEFF_AFTER: begin
                    if (int'(coeff_idx) == (MAX_COEFFS - 1)) begin
                        append_char("]");
                        state <= S_FINISH;
                    end else begin
                        append_char(",");
                        coeff_idx <= coeff_idx + 1'b1;
                        state     <= S_COEFF_LOAD;
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
