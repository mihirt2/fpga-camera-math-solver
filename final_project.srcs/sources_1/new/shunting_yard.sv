`timescale 1ns / 1ps
import poly_pkg::*;

module shunting_yard #(
    parameter int MAX_CHARS       = 10,
    parameter int CHAR_CODE_WIDTH = 8
)(
    input  logic                              clk,
    input  logic                              reset,
    input  logic                              start,
    input  logic [CHAR_CODE_WIDTH-1:0]        infix_chars [0:MAX_CHARS-1],
    input  logic [$clog2(MAX_CHARS+1)-1:0]    num_chars,

    output logic                              done,
    output logic                              valid,
    output logic                              error,
    output logic                              postfix_is_operator [0:MAX_CHARS-1],
    output logic [CHAR_CODE_WIDTH-1:0]        postfix_operators [0:MAX_CHARS-1],
    output coeff_t                            postfix_coeffs [0:MAX_CHARS-1],
    output logic                              postfix_has_x [0:MAX_CHARS-1],
    output logic [$clog2(MAX_CHARS+1)-1:0]    postfix_len
);
    localparam logic [CHAR_CODE_WIDTH-1:0] OP_ADD = 10;
    localparam logic [CHAR_CODE_WIDTH-1:0] OP_SUB = 11;
    localparam logic [CHAR_CODE_WIDTH-1:0] OP_MUL = 12;
    localparam logic [CHAR_CODE_WIDTH-1:0] VAR_X  = 13;
    localparam logic [CHAR_CODE_WIDTH-1:0] LPAREN = 14;
    localparam logic [CHAR_CODE_WIDTH-1:0] RPAREN = 15;
    localparam logic [CHAR_CODE_WIDTH-1:0] OP_POW = 16;
    localparam logic [$clog2(MAX_CHARS+1)-1:0] COUNT_LIMIT = $clog2(MAX_CHARS+1)'(MAX_CHARS);

    typedef enum logic [3:0] {
        IDLE,
        PROCESS,
        READ_NUMBER,
        EMIT_OPERAND,
        POP_FOR_OPERATOR,
        POP_UNTIL_LPAREN,
        DRAIN_STACK,
        FINISH_OK,
        FINISH_ERR
    } state_t;

    state_t state;

    logic [CHAR_CODE_WIDTH-1:0] op_stack [0:MAX_CHARS-1];
    logic [CHAR_CODE_WIDTH-1:0] pending_op;
    coeff_t                     pending_coeff;
    logic                       pending_has_x;
    logic                       expect_operand;
    logic                       pending_op_consumes_input;
    logic                       pending_insert_mul_after_emit;
    logic                       last_token_was_rparen;
    logic [$clog2(MAX_CHARS+1)-1:0] op_top;
    logic [$clog2(MAX_CHARS+1)-1:0] in_idx;
    logic [$clog2(MAX_CHARS+1)-1:0] out_idx;

    function automatic logic is_constant(input logic [CHAR_CODE_WIDTH-1:0] token);
        return (token <= 9);
    endfunction

    function automatic logic is_operator(input logic [CHAR_CODE_WIDTH-1:0] token);
        return ((token == OP_ADD) || (token == OP_SUB) ||
                (token == OP_MUL) || (token == OP_POW));
    endfunction

    function automatic logic [1:0] precedence(input logic [CHAR_CODE_WIDTH-1:0] token);
        if (token == OP_POW) begin
            return 3;
        end else if (token == OP_MUL) begin
            return 2;
        end else if ((token == OP_ADD) || (token == OP_SUB)) begin
            return 1;
        end else begin
            return 0;
        end
    endfunction

    function automatic logic should_pop_operator(
        input logic [CHAR_CODE_WIDTH-1:0] stack_op,
        input logic [CHAR_CODE_WIDTH-1:0] incoming_op
    );
        if (!is_operator(stack_op)) begin
            return 1'b0;
        end else if (incoming_op == OP_POW) begin
            return precedence(stack_op) > precedence(incoming_op);
        end else begin
            return precedence(stack_op) >= precedence(incoming_op);
        end
    endfunction

    integer i;

    always_ff @(posedge clk) begin
        if (reset) begin
            state          <= IDLE;
            done           <= 1'b0;
            valid          <= 1'b0;
            error          <= 1'b0;
            postfix_len    <= '0;
            op_top         <= '0;
            in_idx         <= '0;
            out_idx        <= '0;
            pending_op     <= '0;
            pending_coeff  <= '0;
            pending_has_x  <= 1'b0;
            expect_operand <= 1'b1;
            pending_op_consumes_input <= 1'b0;
            pending_insert_mul_after_emit <= 1'b0;
            last_token_was_rparen <= 1'b0;

            for (i = 0; i < MAX_CHARS; i = i + 1) begin
                op_stack[i]             <= '0;
                postfix_is_operator[i]  <= 1'b0;
                postfix_operators[i]    <= '0;
                postfix_coeffs[i]       <= '0;
                postfix_has_x[i]        <= 1'b0;
            end
        end else begin
            case (state)
                IDLE: begin
                    done  <= 1'b0;
                    valid <= 1'b0;
                    error <= 1'b0;

                    if (start) begin
                        postfix_len    <= '0;
                        op_top         <= '0;
                        in_idx         <= '0;
                        out_idx        <= '0;
                        pending_op     <= '0;
                        pending_coeff  <= '0;
                        pending_has_x  <= 1'b0;
                        expect_operand <= 1'b1;
                        pending_op_consumes_input <= 1'b0;
                        pending_insert_mul_after_emit <= 1'b0;
                        last_token_was_rparen <= 1'b0;

                        for (i = 0; i < MAX_CHARS; i = i + 1) begin
                            op_stack[i]             <= '0;
                            postfix_is_operator[i]  <= 1'b0;
                            postfix_operators[i]    <= '0;
                            postfix_coeffs[i]       <= '0;
                            postfix_has_x[i]        <= 1'b0;
                        end

                        state <= PROCESS;
                    end
                end

                PROCESS: begin
                    if (in_idx >= num_chars) begin
                        if (expect_operand) begin
                            done  <= 1'b1;
                            valid <= 1'b0;
                            error <= 1'b1;
                            state <= FINISH_ERR;
                        end else begin
                            state <= DRAIN_STACK;
                        end
                    end else if (is_constant(infix_chars[in_idx])) begin
                        if (!expect_operand) begin
                            if (last_token_was_rparen) begin
                                pending_op               <= OP_MUL;
                                pending_op_consumes_input <= 1'b0;
                                state                    <= POP_FOR_OPERATOR;
                            end else begin
                                done  <= 1'b1;
                                valid <= 1'b0;
                                error <= 1'b1;
                                state <= FINISH_ERR;
                            end
                        end else begin
                            pending_coeff <= coeff_t'(infix_chars[in_idx]);
                            pending_has_x <= 1'b0;
                            in_idx        <= in_idx + 1'b1;
                            state         <= READ_NUMBER;
                        end
                    end else if (infix_chars[in_idx] == VAR_X) begin
                        if (!expect_operand) begin
                            if (last_token_was_rparen) begin
                                pending_op               <= OP_MUL;
                                pending_op_consumes_input <= 1'b0;
                                state                    <= POP_FOR_OPERATOR;
                            end else begin
                                done  <= 1'b1;
                                valid <= 1'b0;
                                error <= 1'b1;
                                state <= FINISH_ERR;
                            end
                        end else begin
                            pending_coeff <= coeff_t'(1);
                            pending_has_x <= 1'b1;
                            in_idx        <= in_idx + 1'b1;
                            state         <= EMIT_OPERAND;
                        end
                    end else if (infix_chars[in_idx] == LPAREN) begin
                        if (!expect_operand) begin
                            pending_op               <= OP_MUL;
                            pending_op_consumes_input <= 1'b0;
                            state                    <= POP_FOR_OPERATOR;
                        end else if (op_top == COUNT_LIMIT) begin
                            done  <= 1'b1;
                            valid <= 1'b0;
                            error <= 1'b1;
                            state <= FINISH_ERR;
                        end else begin
                            op_stack[op_top] <= infix_chars[in_idx];
                            op_top           <= op_top + 1'b1;
                            in_idx           <= in_idx + 1'b1;
                        end
                    end else if (is_operator(infix_chars[in_idx])) begin
                        if (expect_operand) begin
                            done  <= 1'b1;
                            valid <= 1'b0;
                            error <= 1'b1;
                            state <= FINISH_ERR;
                        end else begin
                            pending_op               <= infix_chars[in_idx];
                            pending_op_consumes_input <= 1'b1;
                            state                    <= POP_FOR_OPERATOR;
                        end
                    end else if (infix_chars[in_idx] == RPAREN) begin
                        if (expect_operand || (op_top == 0)) begin
                            done  <= 1'b1;
                            valid <= 1'b0;
                            error <= 1'b1;
                            state <= FINISH_ERR;
                        end else begin
                            state <= POP_UNTIL_LPAREN;
                        end
                    end else begin
                        done  <= 1'b1;
                        valid <= 1'b0;
                        error <= 1'b1;
                        state <= FINISH_ERR;
                    end
                end

                READ_NUMBER: begin
                    if (in_idx < num_chars) begin
                        if (is_constant(infix_chars[in_idx])) begin
                            pending_coeff <= (pending_coeff * coeff_t'(10)) +
                                             coeff_t'(infix_chars[in_idx]);
                            in_idx        <= in_idx + 1'b1;
                        end else if (infix_chars[in_idx] == VAR_X) begin
                            pending_insert_mul_after_emit <= 1'b1;
                            state                         <= EMIT_OPERAND;
                        end else begin
                            state <= EMIT_OPERAND;
                        end
                    end else begin
                        state <= EMIT_OPERAND;
                    end
                end

                EMIT_OPERAND: begin
                    if (out_idx == COUNT_LIMIT) begin
                        done  <= 1'b1;
                        valid <= 1'b0;
                        error <= 1'b1;
                        state <= FINISH_ERR;
                    end else begin
                        postfix_is_operator[out_idx] <= 1'b0;
                        postfix_operators[out_idx]   <= '0;
                        postfix_coeffs[out_idx]      <= pending_coeff;
                        postfix_has_x[out_idx]       <= pending_has_x;
                        out_idx                      <= out_idx + 1'b1;
                        last_token_was_rparen        <= 1'b0;

                        if (pending_insert_mul_after_emit) begin
                            pending_op                    <= OP_MUL;
                            pending_op_consumes_input     <= 1'b0;
                            pending_insert_mul_after_emit <= 1'b0;
                            expect_operand                <= 1'b0;
                            state                         <= POP_FOR_OPERATOR;
                        end else begin
                            expect_operand                <= 1'b0;
                            state                         <= PROCESS;
                        end
                    end
                end

                POP_FOR_OPERATOR: begin
                    if ((op_top != 0) &&
                        should_pop_operator(op_stack[op_top - 1'b1], pending_op)) begin
                        postfix_is_operator[out_idx] <= 1'b1;
                        postfix_operators[out_idx]   <= op_stack[op_top - 1'b1];
                        postfix_coeffs[out_idx]      <= '0;
                        postfix_has_x[out_idx]       <= 1'b0;
                        out_idx                      <= out_idx + 1'b1;
                        op_top                       <= op_top - 1'b1;
                    end else if ((op_top == COUNT_LIMIT) || (out_idx == COUNT_LIMIT)) begin
                        done  <= 1'b1;
                        valid <= 1'b0;
                        error <= 1'b1;
                        state <= FINISH_ERR;
                    end else begin
                        op_stack[op_top] <= pending_op;
                        op_top           <= op_top + 1'b1;
                        if (pending_op_consumes_input) begin
                            in_idx <= in_idx + 1'b1;
                        end
                        expect_operand   <= 1'b1;
                        last_token_was_rparen <= 1'b0;
                        state            <= PROCESS;
                    end
                end

                POP_UNTIL_LPAREN: begin
                    if (op_top == 0) begin
                        done  <= 1'b1;
                        valid <= 1'b0;
                        error <= 1'b1;
                        state <= FINISH_ERR;
                    end else if (op_stack[op_top - 1'b1] == LPAREN) begin
                        op_top         <= op_top - 1'b1;
                        in_idx         <= in_idx + 1'b1;
                        expect_operand <= 1'b0;
                        last_token_was_rparen <= 1'b1;
                        state          <= PROCESS;
                    end else if (!is_operator(op_stack[op_top - 1'b1]) || (out_idx == COUNT_LIMIT)) begin
                        done  <= 1'b1;
                        valid <= 1'b0;
                        error <= 1'b1;
                        state <= FINISH_ERR;
                    end else begin
                        postfix_is_operator[out_idx] <= 1'b1;
                        postfix_operators[out_idx]   <= op_stack[op_top - 1'b1];
                        postfix_coeffs[out_idx]      <= '0;
                        postfix_has_x[out_idx]       <= 1'b0;
                        out_idx                      <= out_idx + 1'b1;
                        op_top                       <= op_top - 1'b1;
                    end
                end

                DRAIN_STACK: begin
                    if (op_top != 0) begin
                        if ((op_stack[op_top - 1'b1] == LPAREN) ||
                            !is_operator(op_stack[op_top - 1'b1]) ||
                            (out_idx == COUNT_LIMIT)) begin
                            done  <= 1'b1;
                            valid <= 1'b0;
                            error <= 1'b1;
                            state <= FINISH_ERR;
                        end else begin
                            postfix_is_operator[out_idx] <= 1'b1;
                            postfix_operators[out_idx]   <= op_stack[op_top - 1'b1];
                            postfix_coeffs[out_idx]      <= '0;
                            postfix_has_x[out_idx]       <= 1'b0;
                            out_idx                      <= out_idx + 1'b1;
                            op_top                       <= op_top - 1'b1;
                        end
                    end else begin
                        postfix_len <= out_idx;
                        done        <= 1'b1;
                        valid       <= 1'b1;
                        error       <= 1'b0;
                        state       <= FINISH_OK;
                    end
                end

                FINISH_OK: begin
                    if (!start) begin
                        done  <= 1'b0;
                        valid <= 1'b0;
                        error <= 1'b0;
                        state <= IDLE;
                    end
                end

                FINISH_ERR: begin
                    if (!start) begin
                        done  <= 1'b0;
                        valid <= 1'b0;
                        error <= 1'b0;
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
