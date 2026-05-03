`timescale 1ns / 1ps

module coeff_to_ascii (
    input  logic                                            clk,
    input  logic                                            reset,
    input  logic                                            start,
    input  logic                                            parse_valid,
    input  logic                                            parse_error,
    input  logic signed [poly_pkg::COEFF_WIDTH-1:0]         poly [0:poly_pkg::MAX_DEGREE],

    output logic [7:0]                                      result_chars [0:31],
    output logic [5:0]                                      result_len,
    output logic                                            result_valid
);

    localparam int DISPLAY_MAX_CHARS = 20;

    typedef enum logic [2:0] {
        S_IDLE,
        S_PREPARE,
        S_APPEND_COEFF,
        S_APPEND_SPACE,
        S_APPEND_CLOSE,
        S_DONE
    } state_t;

    state_t state;

    logic [2:0] coeff_idx;
    logic [4:0] write_pos;
    logic [3:0] digit_count;
    logic [31:0] magnitude;
    logic [31:0] divisor;
    logic        digit_started;

    function automatic logic [31:0] pow10(input logic [3:0] idx);
        case (idx)
            4'd0:    return 32'd10000;
            4'd1:    return 32'd1000;
            4'd2:    return 32'd100;
            4'd3:    return 32'd10;
            4'd4:    return 32'd1;
            default: return 32'd1;
        endcase
    endfunction

    function automatic logic signed [31:0] coeff_ext(
        input logic signed [poly_pkg::COEFF_WIDTH-1:0] coeff
    );
        return {{(32 - poly_pkg::COEFF_WIDTH){coeff[poly_pkg::COEFF_WIDTH-1]}}, coeff};
    endfunction

    function automatic logic [3:0] coeff_ascii_len(
        input logic signed [poly_pkg::COEFF_WIDTH-1:0] coeff
    );
        logic signed [31:0] coeff_value;
        logic [31:0] abs_value;
        begin
            coeff_value = coeff_ext(coeff);
            abs_value = (coeff_value < 0) ? -coeff_value : coeff_value;

            if (abs_value >= 32'd10000) begin
                coeff_ascii_len = (coeff_value < 0) ? 4'd6 : 4'd5;
            end else if (abs_value >= 32'd1000) begin
                coeff_ascii_len = (coeff_value < 0) ? 4'd5 : 4'd4;
            end else if (abs_value >= 32'd100) begin
                coeff_ascii_len = (coeff_value < 0) ? 4'd4 : 4'd3;
            end else if (abs_value >= 32'd10) begin
                coeff_ascii_len = (coeff_value < 0) ? 4'd3 : 4'd2;
            end else begin
                coeff_ascii_len = (coeff_value < 0) ? 4'd2 : 4'd1;
            end
        end
    endfunction

    task automatic clear_result_chars;
        for (int i = 0; i < 32; i++) begin
            result_chars[i] <= 8'h20;
        end
    endtask

    always_ff @(posedge clk) begin
        if (reset) begin
            state         <= S_IDLE;
            coeff_idx     <= '0;
            write_pos     <= '0;
            digit_count   <= '0;
            magnitude     <= '0;
            divisor       <= '0;
            digit_started <= 1'b0;
            result_len    <= '0;
            result_valid  <= 1'b0;
            clear_result_chars();
        end else begin
            result_valid <= 1'b0;

            case (state)
                S_IDLE: begin
                    if (start) begin
                        coeff_idx     <= '0;
                        write_pos     <= '0;
                        digit_count   <= '0;
                        magnitude     <= '0;
                        divisor       <= '0;
                        digit_started <= 1'b0;
                        result_len    <= '0;
                        clear_result_chars();

                        if (!parse_valid || parse_error) begin
                            result_chars[0] <= "E";
                            result_chars[1] <= "R";
                            result_chars[2] <= "R";
                            write_pos       <= 5'd3;
                            state           <= S_DONE;
                        end else begin
                            result_chars[0] <= "(";
                            write_pos       <= 5'd1;
                            state           <= S_PREPARE;
                        end
                    end
                end

                S_PREPARE: begin
                    logic signed [31:0] coeff_value_local;
                    logic [3:0] needed_len_local;
                    logic [4:0] available_len_local;

                    coeff_value_local = coeff_ext(poly[coeff_idx]);
                    needed_len_local = coeff_ascii_len(poly[coeff_idx]);
                    available_len_local = 5'(DISPLAY_MAX_CHARS) - write_pos;

                    if (available_len_local <= 1) begin
                        if (write_pos != 0) begin
                            result_chars[write_pos - 1'b1] <= ")";
                        end
                        state <= S_DONE;
                    end else if ({1'b0, needed_len_local} > (available_len_local - 1'b1)) begin
                        result_chars[write_pos] <= ")";
                        write_pos               <= write_pos + 1'b1;
                        state                   <= S_DONE;
                    end else begin
                        if (coeff_value_local < 0) begin
                            result_chars[write_pos] <= "-";
                            write_pos               <= write_pos + 1'b1;
                            magnitude               <= -coeff_value_local;
                        end else begin
                            magnitude <= coeff_value_local;
                        end

                        digit_count   <= needed_len_local - ((coeff_value_local < 0) ? 4'd1 : 4'd0);
                        divisor       <= pow10(needed_len_local - ((coeff_value_local < 0) ? 4'd2 : 4'd1));
                        digit_started <= 1'b0;
                        state         <= S_APPEND_COEFF;
                    end
                end

                S_APPEND_COEFF: begin
                    logic [31:0] next_magnitude_local;
                    logic [31:0] next_divisor_local;
                    logic [3:0]  digit_local;

                    next_magnitude_local = magnitude;
                    digit_local = 4'd0;
                    while (next_magnitude_local >= divisor) begin
                        next_magnitude_local = next_magnitude_local - divisor;
                        digit_local = digit_local + 1'b1;
                    end

                    if ((digit_local != 0) || digit_started || (digit_count == 1)) begin
                        result_chars[write_pos] <= 8'h30 + {4'd0, digit_local};
                        write_pos               <= write_pos + 1'b1;
                        digit_started           <= 1'b1;
                    end

                    magnitude  <= next_magnitude_local;
                    digit_count <= digit_count - 1'b1;

                    if (digit_count == 1) begin
                        if (coeff_idx == 3'(poly_pkg::MAX_DEGREE)) begin
                            state <= S_APPEND_CLOSE;
                        end else begin
                            state <= S_APPEND_SPACE;
                        end
                    end else begin
                        next_divisor_local = divisor / 32'd10;
                        if (next_divisor_local == 0) begin
                            next_divisor_local = 32'd1;
                        end
                        divisor <= next_divisor_local;
                    end
                end

                S_APPEND_SPACE: begin
                    if (write_pos < 5'(DISPLAY_MAX_CHARS - 1)) begin
                        result_chars[write_pos] <= " ";
                        write_pos               <= write_pos + 1'b1;
                        coeff_idx               <= coeff_idx + 1'b1;
                        state                   <= S_PREPARE;
                    end else begin
                        result_chars[write_pos] <= ")";
                        write_pos               <= write_pos + 1'b1;
                        state                   <= S_DONE;
                    end
                end

                S_APPEND_CLOSE: begin
                    if (write_pos < 5'(DISPLAY_MAX_CHARS)) begin
                        result_chars[write_pos] <= ")";
                        write_pos               <= write_pos + 1'b1;
                    end else begin
                        result_chars[DISPLAY_MAX_CHARS - 1] <= ")";
                    end
                    state <= S_DONE;
                end

                S_DONE: begin
                    result_len   <= {1'b0, write_pos};
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
