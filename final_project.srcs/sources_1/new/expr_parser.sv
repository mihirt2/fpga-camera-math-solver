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

    localparam logic [1:0] OP_ADD = 2'd0;
    localparam logic [1:0] OP_SUB = 2'd1;
    localparam logic [1:0] OP_MUL = 2'd2;

    // Renamed FSM states
    typedef enum logic [2:0] {
        P_IDLE,
        P_READ,
        P_APPLY,
        P_DONE
    } parser_state_t;

    parser_state_t state;

    logic [$clog2(MAX_CHARS)-1:0]  idx;
    logic signed [31:0]            accum;
    logic signed [31:0]            current_num;
    logic [1:0]                    pending_op;
    logic                          is_end;

    logic [CHAR_CODE_WIDTH-1:0]    cur_code;
    assign cur_code = char_codes[idx];

    logic signed [31:0] apply_result;

    always_comb begin
        case (pending_op)
            OP_ADD:  apply_result = accum + current_num;
            OP_SUB:  apply_result = accum - current_num;
            OP_MUL:  apply_result = accum * current_num;
            default: apply_result = accum + current_num;
        endcase
    end

    always_ff @(posedge clk) begin
        if (reset) begin
            state       <= P_IDLE;
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
                P_IDLE: begin
                    if (start) begin
                        state       <= P_READ;
                        idx         <= '0;
                        accum       <= '0;
                        current_num <= '0;
                        pending_op  <= OP_ADD;
                        is_end      <= 1'b0;
                    end
                end

                P_READ: begin
                    if (idx >= num_chars) begin
                        is_end <= 1'b1;
                        state  <= P_APPLY;
                    end else if (cur_code <= 4'd9) begin
                        current_num <= current_num * 10 + cur_code;
                        idx <= idx + 1;
                    end else if (cur_code == 4'd13) begin
                        is_end <= 1'b1;
                        state  <= P_APPLY;
                    end else if (cur_code >= 4'd10 && cur_code <= 4'd12) begin
                        is_end <= 1'b0;
                        state  <= P_APPLY;
                    end else begin
                        idx <= idx + 1;
                    end
                end

                P_APPLY: begin
                    accum       <= apply_result;
                    current_num <= '0;

                    if (is_end) begin
                        value <= apply_result;
                        done  <= 1'b1;
                        state <= P_DONE;
                    end else begin
                        case (cur_code)
                            4'd10:   pending_op <= OP_ADD;
                            4'd11:   pending_op <= OP_SUB;
                            4'd12:   pending_op <= OP_MUL;
                            default: pending_op <= OP_ADD;
                        endcase
                        idx   <= idx + 1;
                        state <= P_READ;
                    end
                end

                P_DONE: begin
                    state <= P_IDLE;
                end
            endcase
        end
    end

endmodule