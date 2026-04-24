//==============================================================================
// expr_parser
//
// Evaluates a simple arithmetic expression from recognized character codes.
// Left-to-right evaluation (no operator precedence).
//
// Supports: digits 0-9, operators +, -, *
// Stops at '=' (code 13) or end of input.
// Parentheses are ignored.
//
// Char code mapping (from template_match):
//   0-9  ? digits
//   10   ? '+'
//   11   ? '-'
//   12   ? '*'
//   13   ? '='
//   14   ? '('  
//   15   ? ')'  
//
// Output: signed 32-bit result.
//==============================================================================
`timescale 1ns / 1ps

module expr_parser
    import ocr_pkg::*;
(
    input  logic                              clk,
    input  logic                              reset,
    input  logic                              start,
    input  logic [CHAR_CODE_WIDTH-1:0]        char_codes [0:MAX_CHARS-1],
    input  logic [$clog2(MAX_CHARS)-1:0]      num_chars,

    output logic signed [31:0]                value,
    output logic                              done
);

    // ?? operator encoding ????????????????????????????????????????????????
    localparam logic [1:0] OP_ADD = 2'd0;
    localparam logic [1:0] OP_SUB = 2'd1;
    localparam logic [1:0] OP_MUL = 2'd2;

    // ?? FSM ??????????????????????????????????????????????????????????????
    typedef enum logic [2:0] {
        S_IDLE,
        S_READ,      // read next char, build number or detect operator
        S_APPLY,     // apply pending operator (gives multiply a full cycle)
        S_DONE
    } state_t;

    state_t state;

    // ?? registers ????????????????????????????????????????????????????????
    logic [$clog2(MAX_CHARS)-1:0]  idx;
    logic signed [31:0]            accum;
    logic signed [31:0]            current_num;
    logic [1:0]                    pending_op;
    logic                          is_end;       // triggered by '=' or end of input

    // ?? current character (combinational read from register array) ????????
    logic [CHAR_CODE_WIDTH-1:0]    cur_code;
    assign cur_code = char_codes[idx];

    // ?? apply result (combinational) ?????????????????????????????????????
    logic signed [31:0] apply_result;

    always_comb begin
        case (pending_op)
            OP_ADD:  apply_result = accum + current_num;
            OP_SUB:  apply_result = accum - current_num;
            OP_MUL:  apply_result = accum * current_num;
            default: apply_result = accum + current_num;
        endcase
    end

    // ?? sequential logic ?????????????????????????????????????????????????
    always_ff @(posedge clk) begin
        if (reset) begin
            state       <= S_IDLE;
            idx         <= '0;
            accum       <= '0;
            current_num <= '0;
            pending_op  <= OP_ADD;
            is_end      <= 1'b0;
            value       <= '0;
            done        <= 1'b0;
        end else begin
            done <= 1'b0;

            case (state)
                // ?????????????????????????????????????????????????????
                S_IDLE: begin
                    if (start) begin
                        state       <= S_READ;
                        idx         <= '0;
                        accum       <= '0;
                        current_num <= '0;
                        pending_op  <= OP_ADD;  // implicit leading '+'
                        is_end      <= 1'b0;
                    end
                end

                // ?????????????????????????????????????????????????????
                S_READ: begin
                    if (idx >= num_chars) begin
                        // end of input: apply final operator
                        is_end <= 1'b1;
                        state  <= S_APPLY;
                    end else if (cur_code <= 4'd9) begin
                        // digit: accumulate into current_num
                        current_num <= current_num * 10 + cur_code;
                        idx <= idx + 1;
                    end else if (cur_code == 4'd13) begin
                        // '=' : apply and finish
                        is_end <= 1'b1;
                        state  <= S_APPLY;
                    end else if (cur_code >= 4'd10 && cur_code <= 4'd12) begin
                        // operator +, -, *: apply pending, then set new
                        is_end <= 1'b0;
                        state  <= S_APPLY;
                    end else begin
                        // parentheses or unknown: skip
                        idx <= idx + 1;
                    end
                end

                // ?????????????????????????????????????????????????????
                S_APPLY: begin
                    accum       <= apply_result;
                    current_num <= '0;

                    if (is_end) begin
                        value <= apply_result;
                        done  <= 1'b1;
                        state <= S_DONE;
                    end else begin
                        // set new pending operator from cur_code
                        case (cur_code)
                            4'd10:   pending_op <= OP_ADD;
                            4'd11:   pending_op <= OP_SUB;
                            4'd12:   pending_op <= OP_MUL;
                            default: pending_op <= OP_ADD;
                        endcase
                        idx   <= idx + 1;
                        state <= S_READ;
                    end
                end

                // ?????????????????????????????????????????????????????
                S_DONE: begin
                    state <= S_IDLE;
                end
            endcase
        end
    end

endmodule