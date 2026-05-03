`timescale 1ns / 1ps
import poly_pkg::*;

module parser #(
    parameter int MAX_CHARS       = 10,
    parameter int CHAR_CODE_WIDTH = 8
)(
    input  logic                              clk,
    input  logic                              reset,
    input  logic                              start,
    input  logic [CHAR_CODE_WIDTH-1:0]        char_codes [0:MAX_CHARS-1],
    input  logic [$clog2(MAX_CHARS+1)-1:0]    num_chars,

    output logic                              done,
    output logic                              valid,
    output logic                              error,

    output polynomial_t                       poly
);
// Char code mapping (from template_match):
//   0-9  -> digits
//   10   -> '+'
//   11   -> '-'
//   12   -> '*'
//   13   -> 'x'
//   14   -> '('
//   15   -> ')'
//

    localparam logic [CHAR_CODE_WIDTH-1:0] OP_ADD = 10;
    localparam logic [CHAR_CODE_WIDTH-1:0] OP_SUB = 11;
    localparam logic [CHAR_CODE_WIDTH-1:0] OP_MUL = 12;
    localparam logic [$clog2(MAX_CHARS+1)-1:0] STACK_DEPTH = $clog2(MAX_CHARS+1)'(MAX_CHARS);

    typedef enum logic [3:0] {
        IDLE,
        START_SHUNT,
        WAIT_SHUNT,
        EVAL_TOKEN,
        APPLY_OPERATOR,
        FINISH_OK,
        FINISH_ERR
    } state_t;

    state_t state;

    logic                              shunt_start;
    logic                              shunt_done;
    logic                              shunt_valid;
    logic                              shunt_error;
    logic                              postfix_is_operator [0:MAX_CHARS-1];
    logic [CHAR_CODE_WIDTH-1:0]        postfix_operators [0:MAX_CHARS-1];
    coeff_t                            postfix_coeffs [0:MAX_CHARS-1];
    logic                              postfix_has_x [0:MAX_CHARS-1];
    logic [$clog2(MAX_CHARS+1)-1:0]    postfix_len;
    logic [CHAR_CODE_WIDTH-1:0]        current_op;
    logic [$clog2(MAX_CHARS+1)-1:0]    eval_idx;
    logic [$clog2(MAX_CHARS+1)-1:0]    eval_sp;
    polynomial_t                       eval_stack [0:MAX_CHARS-1];
    polynomial_t                       lhs_poly;
    polynomial_t                       rhs_poly;
    polynomial_t                       add_result;
    polynomial_t                       sub_result;
    polynomial_t                       mul_result;

    function automatic logic is_operator(input logic [CHAR_CODE_WIDTH-1:0] token);
        return ((token == OP_ADD) || (token == OP_SUB) || (token == OP_MUL));
    endfunction

    shunting_yard #(
        .MAX_CHARS(MAX_CHARS),
        .CHAR_CODE_WIDTH(CHAR_CODE_WIDTH)
    ) u_shunting_yard (
        .clk(clk),
        .reset(reset),
        .start(shunt_start),
        .infix_chars(char_codes),
        .num_chars(num_chars),
        .done(shunt_done),
        .valid(shunt_valid),
        .error(shunt_error),
        .postfix_is_operator(postfix_is_operator),
        .postfix_operators(postfix_operators),
        .postfix_coeffs(postfix_coeffs),
        .postfix_has_x(postfix_has_x),
        .postfix_len(postfix_len)
    );

    poly_add u_poly_add (
        .a(lhs_poly),
        .b(rhs_poly),
        .sum(add_result)
    );

    poly_sub u_poly_sub (
        .a(lhs_poly),
        .b(rhs_poly),
        .diff(sub_result)
    );

    poly_mul u_poly_mul (
        .a(lhs_poly),
        .b(rhs_poly),
        .prod(mul_result)
    );

    integer i;
    integer j;

    always_ff @(posedge clk) begin
        if (reset) begin
            state       <= IDLE;
            shunt_start <= 1'b0;
            done        <= 1'b0;
            valid       <= 1'b0;
            error       <= 1'b0;
            current_op  <= '0;
            eval_idx    <= '0;
            eval_sp     <= '0;

            for (i = 0; i <= MAX_DEGREE; i = i + 1) begin
                poly[i]     <= '0;
                lhs_poly[i] <= '0;
                rhs_poly[i] <= '0;
            end

            for (i = 0; i < MAX_CHARS; i = i + 1) begin
                for (j = 0; j <= MAX_DEGREE; j = j + 1) begin
                    eval_stack[i][j] <= '0;
                end
            end
        end else begin
            case (state)
                IDLE: begin
                    shunt_start <= 1'b0;
                    done        <= 1'b0;
                    valid       <= 1'b0;
                    error       <= 1'b0;
                    current_op  <= '0;
                    eval_idx    <= '0;
                    eval_sp     <= '0;

                    if (start) begin
                        shunt_start <= 1'b1;

                        for (i = 0; i <= MAX_DEGREE; i = i + 1) begin
                            poly[i]     <= '0;
                            lhs_poly[i] <= '0;
                            rhs_poly[i] <= '0;
                        end

                        for (i = 0; i < MAX_CHARS; i = i + 1) begin
                            for (j = 0; j <= MAX_DEGREE; j = j + 1) begin
                                eval_stack[i][j] <= '0;
                            end
                        end

                        state <= START_SHUNT;
                    end
                end

                START_SHUNT: begin
                    shunt_start <= 1'b0;
                    state       <= WAIT_SHUNT;
                end

                WAIT_SHUNT: begin
                    if (shunt_done) begin
                        if (shunt_valid && !shunt_error) begin
                            eval_idx <= '0;
                            eval_sp  <= '0;
                            state    <= EVAL_TOKEN;
                        end else begin
                            done  <= 1'b1;
                            valid <= 1'b0;
                            error <= 1'b1;
                            state <= FINISH_ERR;
                        end
                    end
                end

                EVAL_TOKEN: begin
                    if (eval_idx >= postfix_len) begin
                        if (eval_sp == 1) begin
                            state <= FINISH_OK;
                        end else begin
                            done  <= 1'b1;
                            valid <= 1'b0;
                            error <= 1'b1;
                            state <= FINISH_ERR;
                        end
                    end else if (!postfix_is_operator[eval_idx]) begin
                        if (eval_sp == STACK_DEPTH) begin
                            done  <= 1'b1;
                            valid <= 1'b0;
                            error <= 1'b1;
                            state <= FINISH_ERR;
                        end else begin
                            for (i = 0; i <= MAX_DEGREE; i = i + 1) begin
                                eval_stack[eval_sp][i] <= '0;
                            end

                            if (postfix_has_x[eval_idx]) begin
                                eval_stack[eval_sp][1] <= postfix_coeffs[eval_idx];
                            end else begin
                                eval_stack[eval_sp][0] <= postfix_coeffs[eval_idx];
                            end

                            eval_sp  <= eval_sp + 1'b1;
                            eval_idx <= eval_idx + 1'b1;
                        end
                    end else if (is_operator(postfix_operators[eval_idx])) begin
                        if (eval_sp < 2) begin
                            done  <= 1'b1;
                            valid <= 1'b0;
                            error <= 1'b1;
                            state <= FINISH_ERR;
                        end else begin
                            current_op <= postfix_operators[eval_idx];
                            for (i = 0; i <= MAX_DEGREE; i = i + 1) begin
                                lhs_poly[i] <= eval_stack[eval_sp - 2][i];
                                rhs_poly[i] <= eval_stack[eval_sp - 1][i];
                            end
                            state <= APPLY_OPERATOR;
                        end
                    end else begin
                        done  <= 1'b1;
                        valid <= 1'b0;
                        error <= 1'b1;
                        state <= FINISH_ERR;
                    end
                end

                APPLY_OPERATOR: begin
                    for (i = 0; i <= MAX_DEGREE; i = i + 1) begin
                        if (current_op == OP_ADD) begin
                            eval_stack[eval_sp - 2][i] <= add_result[i];
                        end else if (current_op == OP_SUB) begin
                            eval_stack[eval_sp - 2][i] <= sub_result[i];
                        end else begin
                            eval_stack[eval_sp - 2][i] <= mul_result[i];
                        end
                    end

                    eval_sp  <= eval_sp - 1'b1;
                    eval_idx <= eval_idx + 1'b1;
                    state    <= EVAL_TOKEN;
                end

                FINISH_OK: begin
                    for (i = 0; i <= MAX_DEGREE; i = i + 1) begin
                        poly[i] <= eval_stack[0][i];
                    end
                    done  <= 1'b1;
                    valid <= 1'b1;
                    error <= 1'b0;

                    if (!start) begin
                        state <= IDLE;
                    end
                end

                FINISH_ERR: begin
                    if (!start) begin
                        state <= IDLE;
                    end
                end

                default: begin
                    state <= IDLE;
                end
            endcase
        end
    end

endmodule
