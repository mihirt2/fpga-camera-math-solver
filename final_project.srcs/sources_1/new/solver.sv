`timescale 1ns / 1ps
import poly_pkg::*;

module solver #(
    parameter int MAX_CHARS       = 10,
    parameter int CHAR_CODE_WIDTH = 8,
    parameter int NUM_SAMPLES     = 256,
    parameter int MAX_SOLUTIONS   = 5
)(
    input  logic                              clk,
    input  logic                              reset,
    input  logic                              start,
    input  logic [CHAR_CODE_WIDTH-1:0]        char_codes [0:MAX_CHARS-1],
    input  logic [$clog2(MAX_CHARS+1)-1:0]    num_chars,

    output logic                              done,
    output logic                              valid,
    output logic                              is_const,
    output logic [2:0]                        num_solutions,
    output logic signed [31:0]                value,
    output logic signed [31:0]                solutions [0:MAX_SOLUTIONS-1]
);
    localparam int LAST_SAMPLE_IDX = NUM_SAMPLES - 1;
    localparam logic signed [31:0] ROOT_THRESHOLD = 32'sd655;

    typedef logic signed [31:0] q16_t;

    typedef enum logic [2:0] {
        IDLE,
        START_PARSE,
        WAIT_PARSE,
        INIT_SWEEP,
        CHECK_SAMPLE,
        FINISH_OK,
        FINISH_ERR
    } state_t;

    state_t state;

    logic                              parser_start;
    logic                              parser_done;
    logic                              parser_valid;
    logic                              parser_error;
    polynomial_t                       parsed_poly;

    q16_t                              coeffs_q [0:MAX_DEGREE];
    q16_t                              current_x;
    q16_t                              current_y;
    q16_t                              prev_x;
    q16_t                              prev_y;
    q16_t                              step_q;
    logic [9:0]                        sweep_idx;
    logic                              single_point_mode;
    logic                              in_root_region;
    q16_t                              candidate_root;
    logic                              near_zero_hit;
    logic                              sign_change_hit;
    logic                              root_hit;

    integer i;

    function automatic q16_t q16_abs(input q16_t value);
        if (value < 0) begin
            return -value;
        end else begin
            return value;
        end
    endfunction

    function automatic q16_t int_to_q16(input coeff_t value);
        return q16_t'(value) <<< 16;
    endfunction

    function automatic q16_t q16_mul(input q16_t a, input q16_t b);
        logic signed [63:0] product;
        begin
            product = a * b;
            return q16_t'(product >>> 16);
        end
    endfunction

    function automatic q16_t eval_poly_q16(
        input q16_t x,
        input q16_t coeffs [0:MAX_DEGREE]
    );
        q16_t accum;
        integer idx;
        begin
            accum = coeffs[MAX_DEGREE];
            for (idx = MAX_DEGREE - 1; idx >= 0; idx = idx - 1) begin
                accum = q16_mul(accum, x) + coeffs[idx];
            end
            return accum;
        end
    endfunction

    parser #(
        .MAX_CHARS(MAX_CHARS),
        .CHAR_CODE_WIDTH(CHAR_CODE_WIDTH)
    ) u_parser (
        .clk(clk),
        .reset(reset),
        .start(parser_start),
        .char_codes(char_codes),
        .num_chars(num_chars),
        .done(parser_done),
        .valid(parser_valid),
        .error(parser_error),
        .poly(parsed_poly)
    );

    always_comb begin
        current_y = eval_poly_q16(current_x, coeffs_q);
        near_zero_hit = (q16_abs(current_y) <= ROOT_THRESHOLD);
        sign_change_hit = (sweep_idx != 0) &&
                          (((prev_y < 0) && (current_y > 0)) ||
                           ((prev_y > 0) && (current_y < 0)));
        root_hit = near_zero_hit || sign_change_hit;

        if (near_zero_hit) begin
            candidate_root = current_x;
        end else begin
            candidate_root = q16_t'((prev_x + current_x) >>> 1);
        end
    end

    always_ff @(posedge clk) begin
        if (reset) begin
            state            <= IDLE;
            parser_start     <= 1'b0;
            done             <= 1'b0;
            valid            <= 1'b0;
            is_const         <= 1'b0;
            num_solutions    <= '0;
            value            <= '0;
            current_x        <= '0;
            prev_x           <= '0;
            prev_y           <= '0;
            step_q           <= '0;
            sweep_idx        <= '0;
            single_point_mode <= 1'b0;
            in_root_region   <= 1'b0;

            for (i = 0; i <= MAX_DEGREE; i = i + 1) begin
                coeffs_q[i] <= '0;
            end

            for (i = 0; i < MAX_SOLUTIONS; i = i + 1) begin
                solutions[i] <= '0;
            end
        end else begin
            case (state)
                IDLE: begin
                    parser_start      <= 1'b0;
                    done              <= 1'b0;
                    valid             <= 1'b0;
                    is_const          <= 1'b0;
                    num_solutions     <= '0;
                    value             <= '0;
                    current_x         <= '0;
                    prev_x            <= '0;
                    prev_y            <= '0;
                    step_q            <= '0;
                    sweep_idx         <= '0;
                    single_point_mode <= 1'b0;
                    in_root_region    <= 1'b0;

                    for (i = 0; i <= MAX_DEGREE; i = i + 1) begin
                        coeffs_q[i] <= '0;
                    end

                    for (i = 0; i < MAX_SOLUTIONS; i = i + 1) begin
                        solutions[i] <= '0;
                    end

                    if (start) begin
                        parser_start <= 1'b1;
                        state        <= START_PARSE;
                    end
                end

                START_PARSE: begin
                    parser_start <= 1'b0;
                    state        <= WAIT_PARSE;
                end

                WAIT_PARSE: begin
                    if (parser_done) begin
                        if (parser_valid && !parser_error) begin
                            value    <= int_to_q16(parsed_poly[0]);
                            is_const <= 1'b1;
                            for (i = 0; i <= MAX_DEGREE; i = i + 1) begin
                                coeffs_q[i] <= int_to_q16(parsed_poly[i]);
                                if ((i != 0) && (parsed_poly[i] != '0)) begin
                                    is_const <= 1'b0;
                                end
                            end
                            state <= INIT_SWEEP;
                        end else begin
                            done  <= 1'b1;
                            valid <= 1'b0;
                            is_const <= 1'b0;
                            value <= '0;
                            state <= FINISH_ERR;
                        end
                    end
                end

                INIT_SWEEP: begin
                    num_solutions     <= '0;
                    sweep_idx         <= '0;
                    current_x         <= -q16_abs(coeffs_q[0]);
                    prev_x            <= '0;
                    prev_y            <= '0;
                    single_point_mode <= (coeffs_q[0] == '0);
                    in_root_region    <= 1'b0;

                    for (i = 0; i < MAX_SOLUTIONS; i = i + 1) begin
                        solutions[i] <= '0;
                    end

                    if (coeffs_q[0] == '0) begin
                        current_x <= '0;
                        step_q    <= '0;
                    end else begin
                        step_q <= (q16_abs(coeffs_q[0]) <<< 1) / LAST_SAMPLE_IDX;
                    end

                    state <= CHECK_SAMPLE;
                end

                CHECK_SAMPLE: begin
                    if (root_hit) begin
                        if (!in_root_region) begin
                            if (int'(num_solutions) < MAX_SOLUTIONS) begin
                                solutions[num_solutions] <= candidate_root;
                                num_solutions            <= num_solutions + 1'b1;
                            end
                            in_root_region <= 1'b1;
                        end
                    end else begin
                        in_root_region <= 1'b0;
                    end

                    if (single_point_mode || (int'(sweep_idx) == LAST_SAMPLE_IDX)) begin
                        done  <= 1'b1;
                        valid <= 1'b1;
                        state <= FINISH_OK;
                    end else begin
                        prev_x    <= current_x;
                        prev_y    <= current_y;
                        current_x <= current_x + step_q;
                        sweep_idx <= sweep_idx + 1'b1;
                    end
                end

                FINISH_OK: begin
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
