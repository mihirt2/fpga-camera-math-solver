//==============================================================================
// int_to_ascii
//
// Formats the OCR result as an ASCII string:
//   1. Copies recognized expression (char_codes ? ASCII)
//   2. Appends '=' if not already present
//   3. Appends the computed result as decimal digits
//
// Example: char_codes = {1,2,+,3,4} with value=46 ? "12+34=46"
//
// Output: result_chars[0:31] with result_len indicating valid count.
// Asserts result_valid for one cycle when done.
//==============================================================================
`timescale 1ns / 1ps

module int_to_ascii
    import ocr_pkg::*;
(
    input  logic                              clk,
    input  logic                              reset,
    input  logic                              start,
    input  logic signed [31:0]                value,
    input  logic [CHAR_CODE_WIDTH-1:0]        char_codes [0:MAX_CHARS-1],
    input  logic [$clog2(MAX_CHARS)-1:0]      num_chars,

    output logic [7:0]                        result_chars [0:31],
    output logic [5:0]                        result_len,
    output logic                              result_valid
);

    // ?? char code to ASCII ???????????????????????????????????????????????
    function automatic logic [7:0] code_to_ascii(input logic [CHAR_CODE_WIDTH-1:0] code);
        case (code)
            4'd0:    return 8'h30;   // '0'
            4'd1:    return 8'h31;
            4'd2:    return 8'h32;
            4'd3:    return 8'h33;
            4'd4:    return 8'h34;
            4'd5:    return 8'h35;
            4'd6:    return 8'h36;
            4'd7:    return 8'h37;
            4'd8:    return 8'h38;
            4'd9:    return 8'h39;
            4'd10:   return 8'h2B;   // '+'
            4'd11:   return 8'h78;   // 'x'
            4'd12:   return 8'h2A;   // '*'
            4'd13:   return 8'h3D;   // '='
            4'd14:   return 8'h28;   // '('
            4'd15:   return 8'h29;   // ')'
            default: return 8'h3F;   // '?'
        endcase
    endfunction

    // ?? powers of 10 LUT ?????????????????????????????????????????????????
    function automatic logic [31:0] pow10(input logic [3:0] idx);
        case (idx)
            4'd0:    return 32'd1000000000;
            4'd1:    return 32'd100000000;
            4'd2:    return 32'd10000000;
            4'd3:    return 32'd1000000;
            4'd4:    return 32'd100000;
            4'd5:    return 32'd10000;
            4'd6:    return 32'd1000;
            4'd7:    return 32'd100;
            4'd8:    return 32'd10;
            4'd9:    return 32'd1;
            default: return 32'd1;
        endcase
    endfunction

    // ?? FSM ??????????????????????????????????????????????????????????????
    typedef enum logic [2:0] {
        S_IDLE,
        S_COPY_EXPR,    // copy char_codes as ASCII
        S_ADD_EQUALS,   // append '=' if needed
        S_SIGN,         // handle negative sign
        S_EXTRACT,      // extract decimal digits via repeated subtraction
        S_ZERO,         // special case: value is 0
        S_DONE
    } state_t;

    state_t state;

    // ?? registers ????????????????????????????????????????????????????????
    logic [$clog2(MAX_CHARS)-1:0] copy_idx;    // index into char_codes
    logic [5:0]                    write_pos;   // current write position in result_chars
    logic [31:0]                   remaining;   // absolute value being extracted
    logic [3:0]                    pow_idx;     // current power-of-10 index (0..9)
    logic [3:0]                    digit;       // current digit being counted
    logic                          leading;     // still in leading zeros?
    logic                          expr_had_eq; // did expression end with '='?

    // ?? current power of 10 (combinational) ??????????????????????????????
    logic [31:0] cur_pow;
    assign cur_pow = pow10(pow_idx);

    // ?? sequential logic ?????????????????????????????????????????????????
    always_ff @(posedge clk) begin
        if (reset) begin
            state        <= S_IDLE;
            copy_idx     <= '0;
            write_pos    <= '0;
            remaining    <= '0;
            pow_idx      <= '0;
            digit        <= '0;
            leading      <= 1'b1;
            expr_had_eq  <= 1'b0;
            result_len   <= '0;
            result_valid <= 1'b0;
            for (int i = 0; i < 32; i++)
                result_chars[i] <= 8'h20;   // fill with spaces
        end else begin
            result_valid <= 1'b0;

            case (state)
                // ?????????????????????????????????????????????????????
                S_IDLE: begin
                    if (start) begin
                        state       <= S_COPY_EXPR;
                        copy_idx    <= '0;
                        write_pos   <= '0;
                        leading     <= 1'b1;
                        expr_had_eq <= 1'b0;
                        for (int i = 0; i < 32; i++)
                            result_chars[i] <= 8'h20;
                    end
                end

                // ?????????????????????????????????????????????????????
                // Copy expression characters as ASCII
                // ?????????????????????????????????????????????????????
                S_COPY_EXPR: begin
                    if (copy_idx < num_chars) begin
                        result_chars[write_pos] <= code_to_ascii(char_codes[copy_idx]);
                        write_pos <= write_pos + 1;

                        // check if this is '='
                        if (char_codes[copy_idx] == 4'd13)
                            expr_had_eq <= 1'b1;

                        copy_idx <= copy_idx + 1;
                    end else begin
                        state <= S_ADD_EQUALS;
                    end
                end

                // ?????????????????????????????????????????????????????
                // Append '=' if expression didn't already end with one
                // ?????????????????????????????????????????????????????
                S_ADD_EQUALS: begin
                    if (!expr_had_eq) begin
                        result_chars[write_pos] <= 8'h3D;   // '='
                        write_pos <= write_pos + 1;
                    end
                    state <= S_SIGN;
                end

                // ?????????????????????????????????????????????????????
                // Handle negative sign and compute absolute value
                // ?????????????????????????????????????????????????????
                S_SIGN: begin
                    if (value == 0) begin
                        // special case: just write '0'
                        state <= S_ZERO;
                    end else if (value < 0) begin
                        result_chars[write_pos] <= 8'h2D;   // '-'
                        write_pos <= write_pos + 1;
                        remaining <= -value;
                        pow_idx   <= '0;
                        digit     <= '0;
                        leading   <= 1'b1;
                        state     <= S_EXTRACT;
                    end else begin
                        remaining <= value;
                        pow_idx   <= '0;
                        digit     <= '0;
                        leading   <= 1'b1;
                        state     <= S_EXTRACT;
                    end
                end

                // ?????????????????????????????????????????????????????
                // Extract digits by repeated subtraction of powers of 10
                // ?????????????????????????????????????????????????????
                S_EXTRACT: begin
                    if (remaining >= cur_pow) begin
                        remaining <= remaining - cur_pow;
                        digit     <= digit + 1;
                    end else begin
                        // finished this digit position
                        if (digit > 0 || !leading || pow_idx == 4'd9) begin
                            // non-zero digit, or we've reached the ones place
                            result_chars[write_pos] <= 8'h30 + digit;
                            write_pos <= write_pos + 1;
                            leading   <= 1'b0;
                        end
                        // advance to next power of 10
                        digit <= '0;
                        if (pow_idx < 4'd9) begin
                            pow_idx <= pow_idx + 1;
                        end else begin
                            state <= S_DONE;
                        end
                    end
                end

                // ?????????????????????????????????????????????????????
                S_ZERO: begin
                    result_chars[write_pos] <= 8'h30;   // '0'
                    write_pos <= write_pos + 1;
                    state     <= S_DONE;
                end

                // ?????????????????????????????????????????????????????
                S_DONE: begin
                    result_len   <= write_pos;
                    result_valid <= 1'b1;
                    state        <= S_IDLE;
                end
            endcase
        end
    end

endmodule
