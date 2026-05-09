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
    output logic signed [31:0]                solutions [0:MAX_SOLUTIONS-1],
    output coeff_t                            coefficients [0:MAX_DEGREE]
);
    localparam int LAST_SAMPLE_IDX = NUM_SAMPLES - 1;
    localparam logic signed [63:0] ROOT_THRESHOLD = 64'sd65;
    localparam logic signed [31:0] Q16_ONE = 32'sd65536;
    localparam logic signed [31:0] Q16_MAX = 32'sh7fff_0000;
    localparam logic signed [31:0] SWEEP_BOUND_Q16 = 32'sd2097152; // +/-32.0
    localparam logic signed [63:0] EVAL_MAX = 64'sh7fff_ffff_ffff_ffff;
    localparam logic signed [63:0] EVAL_MIN = -64'sh7fff_ffff_ffff_ffff;
    localparam int BISECTION_ITERS = 16;

    typedef logic signed [31:0] q16_t;
    typedef logic signed [63:0] eval_t;
    typedef logic signed [95:0] wide_eval_t;

    typedef enum logic [4:0] {
        IDLE,
        START_PARSE,
        WAIT_PARSE,
        SOLVE_EXACT,
        EXACT_SQRT_STEP,
        EXACT_SQRT_DONE,
        EXACT_DIV_INIT,
        EXACT_DIV_STEP,
        EXACT_DIV_DONE,
        INIT_SWEEP,
        CHECK_SAMPLE,
        REFINE_STEP,
        STORE_ROOT,
        ADVANCE_SAMPLE,
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
    eval_t                             current_y;
    q16_t                              prev_x;
    eval_t                             prev_y;
    q16_t                              step_q;
    q16_t                              sweep_bound_q;
    logic [9:0]                        sweep_idx;
    logic                              single_point_mode;
    logic                              in_root_region;
    logic                              flat_root_active;
    q16_t                              flat_root_start;
    q16_t                              candidate_root;
    logic                              near_zero_hit;
    logic                              sign_change_hit;
    logic                              root_hit;
    logic [2:0]                        polynomial_degree;
    eval_t                             exact_quad_disc;
    eval_t                             exact_quad_denom;
    eval_t                             exact_quad_mid_num;
    logic [63:0]                       exact_quad_sqrt_input;
    logic [31:0]                       exact_quad_sqrt_q16;
    q16_t                              exact_quad_root_a;
    q16_t                              exact_quad_root_b;
    logic [63:0]                       sqrt_num;
    logic [63:0]                       sqrt_result;
    logic [63:0]                       sqrt_bit_value;
    logic [5:0]                        sqrt_iter;
    eval_t                             div_numerator;
    eval_t                             div_denominator;
    logic                              div_negative;
    logic [63:0]                       div_abs_num;
    logic [63:0]                       div_abs_den;
    logic [63:0]                       div_remainder;
    logic [63:0]                       div_quotient;
    logic [5:0]                        div_bit_idx;
    logic [6:0]                        div_steps_left;
    logic [1:0]                        div_result_target;
    logic [63:0]                       div_shifted_remainder;
    q16_t                              div_result_q16;
    q16_t                              refine_lo;
    q16_t                              refine_hi;
    eval_t                             refine_f_lo;
    logic [4:0]                        refine_iter;
    q16_t                              refine_mid_x;
    eval_t                             refine_mid_y;
    q16_t                              root_bound_value;
    q16_t                              eval_x;
    eval_t                             eval_y;

    integer i;

    function automatic q16_t q16_abs(input q16_t value);
        if (value < 0) begin
            return -value;
        end else begin
            return value;
        end
    endfunction

    function automatic eval_t eval_abs(input eval_t value);
        if (value < 0) begin
            return -value;
        end else begin
            return value;
        end
    endfunction

    function automatic logic [63:0] eval_abs_u64(input eval_t value);
        if (value < 0) begin
            return $unsigned(-value);
        end else begin
            return $unsigned(value);
        end
    endfunction

    function automatic q16_t int_to_q16(input coeff_t value);
        return q16_t'(value) <<< 16;
    endfunction

    function automatic wide_eval_t eval_to_wide(input eval_t value);
        return wide_eval_t'({{32{value[63]}}, value});
    endfunction

    function automatic eval_t saturate_eval(input wide_eval_t value);
        if (value > 96'sh0000_0000_7fff_ffff_ffff_ffff) begin
            return EVAL_MAX;
        end else if (value < -96'sh0000_0000_7fff_ffff_ffff_ffff) begin
            return EVAL_MIN;
        end else begin
            return eval_t'(value);
        end
    endfunction

    function automatic eval_t eval_add_sat(input eval_t a, input eval_t b);
        wide_eval_t sum;
        begin
            sum = eval_to_wide(a) + eval_to_wide(b);
            return saturate_eval(sum);
        end
    endfunction

    function automatic eval_t q16_mul_eval_sat(input eval_t a, input q16_t b);
        wide_eval_t product;
        begin
            product = a * b;
            return saturate_eval(product >>> 16);
        end
    endfunction

    function automatic eval_t eval_poly_q16(
        input q16_t x,
        input q16_t coeffs [0:MAX_DEGREE]
    );
        eval_t accum;
        integer idx;
        begin
            accum = eval_t'(coeffs[MAX_DEGREE]);
            for (idx = 0; idx < MAX_DEGREE; idx = idx + 1) begin
                accum = eval_add_sat(
                    q16_mul_eval_sat(accum, x),
                    eval_t'(coeffs[MAX_DEGREE - 1 - idx])
                );
            end
            return accum;
        end
    endfunction

    function automatic q16_t root_bound_q16(input q16_t coeffs [0:MAX_DEGREE]);
        integer idx;
        integer degree;
        begin
            degree = 0;
            for (idx = 1; idx <= MAX_DEGREE; idx = idx + 1) begin
                if (coeffs[idx] != '0) begin
                    degree = idx;
                end
            end

            if (degree == 0) begin
                return '0;
            end

            return SWEEP_BOUND_Q16;
        end
    endfunction

    function automatic logic signs_differ(input eval_t a, input eval_t b);
        return (((a < 0) && (b > 0)) || ((a > 0) && (b < 0)));
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
        refine_mid_x = q16_t'((refine_lo + refine_hi) >>> 1);
        eval_x = (state == REFINE_STEP) ? refine_mid_x : current_x;
        eval_y = eval_poly_q16(eval_x, coeffs_q);
        current_y = eval_y;
        refine_mid_y = eval_y;
        root_bound_value = root_bound_q16(coeffs_q);
        near_zero_hit = (eval_abs(current_y) <= ROOT_THRESHOLD);
        sign_change_hit = (sweep_idx != 0) &&
                          signs_differ(prev_y, current_y);
        root_hit = near_zero_hit || sign_change_hit;

        exact_quad_disc = (eval_t'(coefficients[1]) * eval_t'(coefficients[1])) -
                          (64'sd4 * eval_t'(coefficients[2]) *
                           eval_t'(coefficients[0]));
        exact_quad_denom = eval_t'(coefficients[2]) * 64'sd2;
        exact_quad_mid_num = -(eval_t'(coefficients[1]) <<< 16);
        if (exact_quad_disc <= 64'sd0) begin
            exact_quad_sqrt_input = '0;
        end else if (exact_quad_disc[63:32] != 32'd0) begin
            exact_quad_sqrt_input = {64{1'b1}};
        end else begin
            exact_quad_sqrt_input = {exact_quad_disc[31:0], 32'd0};
        end

        div_shifted_remainder = {div_remainder[62:0], div_abs_num[div_bit_idx]};
        if (div_denominator == 64'sd0) begin
            div_result_q16 = '0;
        end else if (div_quotient > 64'd2147483647) begin
            div_result_q16 = div_negative ? -32'sh7fff_ffff : 32'sh7fff_ffff;
        end else if (div_negative) begin
            div_result_q16 = -q16_t'(div_quotient[31:0]);
        end else begin
            div_result_q16 = q16_t'(div_quotient[31:0]);
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
            sweep_bound_q    <= '0;
            sweep_idx        <= '0;
            single_point_mode <= 1'b0;
            in_root_region   <= 1'b0;
            flat_root_active <= 1'b0;
            flat_root_start  <= '0;
            candidate_root   <= '0;
            polynomial_degree <= '0;
            refine_lo        <= '0;
            refine_hi        <= '0;
            refine_f_lo      <= '0;
            refine_iter      <= '0;
            exact_quad_sqrt_q16 <= '0;
            exact_quad_root_a <= '0;
            exact_quad_root_b <= '0;
            sqrt_num <= '0;
            sqrt_result <= '0;
            sqrt_bit_value <= '0;
            sqrt_iter <= '0;
            div_numerator <= '0;
            div_denominator <= '0;
            div_negative <= 1'b0;
            div_abs_num <= '0;
            div_abs_den <= '0;
            div_remainder <= '0;
            div_quotient <= '0;
            div_bit_idx <= '0;
            div_steps_left <= '0;
            div_result_target <= '0;

            for (i = 0; i <= MAX_DEGREE; i = i + 1) begin
                coeffs_q[i] <= '0;
                coefficients[i] <= '0;
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
                    sweep_bound_q     <= '0;
                    sweep_idx         <= '0;
                    single_point_mode <= 1'b0;
                    in_root_region    <= 1'b0;
                    flat_root_active  <= 1'b0;
                    flat_root_start   <= '0;
                    candidate_root    <= '0;
                    polynomial_degree <= '0;
                    refine_lo         <= '0;
                    refine_hi         <= '0;
                    refine_f_lo       <= '0;
                    refine_iter       <= '0;
                    exact_quad_sqrt_q16 <= '0;
                    exact_quad_root_a <= '0;
                    exact_quad_root_b <= '0;
                    sqrt_num <= '0;
                    sqrt_result <= '0;
                    sqrt_bit_value <= '0;
                    sqrt_iter <= '0;
                    div_numerator <= '0;
                    div_denominator <= '0;
                    div_negative <= 1'b0;
                    div_abs_num <= '0;
                    div_abs_den <= '0;
                    div_remainder <= '0;
                    div_quotient <= '0;
                    div_bit_idx <= '0;
                    div_steps_left <= '0;
                    div_result_target <= '0;

                    for (i = 0; i <= MAX_DEGREE; i = i + 1) begin
                        coeffs_q[i] <= '0;
                        coefficients[i] <= '0;
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
                            polynomial_degree <= '0;
                            for (i = 0; i <= MAX_DEGREE; i = i + 1) begin
                                coeffs_q[i] <= int_to_q16(parsed_poly[i]);
                                coefficients[i] <= parsed_poly[i];
                                if ((i != 0) && (parsed_poly[i] != '0)) begin
                                    is_const <= 1'b0;
                                    polynomial_degree <= 3'(i);
                                end
                            end
                            state <= SOLVE_EXACT;
                        end else begin
                            done  <= 1'b1;
                            valid <= 1'b0;
                            is_const <= 1'b0;
                            value <= '0;
                            polynomial_degree <= '0;
                            for (i = 0; i <= MAX_DEGREE; i = i + 1) begin
                                coefficients[i] <= '0;
                            end
                            state <= FINISH_ERR;
                        end
                    end
                end

                SOLVE_EXACT: begin
                    num_solutions <= '0;
                    for (i = 0; i < MAX_SOLUTIONS; i = i + 1) begin
                        solutions[i] <= '0;
                    end

                    if (polynomial_degree == 0) begin
                        done  <= 1'b1;
                        valid <= 1'b1;
                        state <= FINISH_OK;
                    end else if (polynomial_degree == 1) begin
                        div_numerator     <= -(eval_t'(coefficients[0]) <<< 16);
                        div_denominator   <= eval_t'(coefficients[1]);
                        div_result_target <= 2'd0;
                        state             <= EXACT_DIV_INIT;
                    end else if (polynomial_degree == 2) begin
                        if (exact_quad_disc < 64'sd0) begin
                            num_solutions <= '0;
                            done          <= 1'b1;
                            valid         <= 1'b1;
                            state         <= FINISH_OK;
                        end else if (exact_quad_disc == 64'sd0) begin
                            div_numerator     <= exact_quad_mid_num;
                            div_denominator   <= exact_quad_denom;
                            div_result_target <= 2'd1;
                            state             <= EXACT_DIV_INIT;
                        end else begin
                            sqrt_num       <= exact_quad_sqrt_input;
                            sqrt_result    <= '0;
                            sqrt_bit_value <= 64'h4000_0000_0000_0000;
                            sqrt_iter      <= '0;
                            state          <= EXACT_SQRT_STEP;
                        end
                    end else begin
                        state <= INIT_SWEEP;
                    end
                end

                EXACT_SQRT_STEP: begin
                    if (sqrt_num >= sqrt_result + sqrt_bit_value) begin
                        sqrt_num    <= sqrt_num - (sqrt_result + sqrt_bit_value);
                        sqrt_result <= (sqrt_result >> 1) + sqrt_bit_value;
                    end else begin
                        sqrt_result <= sqrt_result >> 1;
                    end

                    sqrt_bit_value <= sqrt_bit_value >> 2;
                    if (sqrt_iter == 6'd31) begin
                        state <= EXACT_SQRT_DONE;
                    end else begin
                        sqrt_iter <= sqrt_iter + 1'b1;
                    end
                end

                EXACT_SQRT_DONE: begin
                    exact_quad_sqrt_q16 <= sqrt_result[31:0];
                    div_numerator       <= exact_quad_mid_num -
                                           eval_t'({32'd0, sqrt_result[31:0]});
                    div_denominator     <= exact_quad_denom;
                    div_result_target   <= 2'd2;
                    state               <= EXACT_DIV_INIT;
                end

                EXACT_DIV_INIT: begin
                    div_negative   <= div_numerator[63] ^ div_denominator[63];
                    div_abs_num    <= eval_abs_u64(div_numerator);
                    div_abs_den    <= eval_abs_u64(div_denominator);
                    div_remainder  <= '0;
                    div_quotient   <= '0;
                    div_bit_idx    <= 6'd63;
                    div_steps_left <= 7'd64;
                    state          <= EXACT_DIV_STEP;
                end

                EXACT_DIV_STEP: begin
                    if (div_abs_den == 64'd0) begin
                        state <= EXACT_DIV_DONE;
                    end else if (div_steps_left == 7'd0) begin
                        state <= EXACT_DIV_DONE;
                    end else begin
                        if (div_shifted_remainder >= div_abs_den) begin
                            div_remainder <= div_shifted_remainder - div_abs_den;
                            div_quotient[div_bit_idx] <= 1'b1;
                        end else begin
                            div_remainder <= div_shifted_remainder;
                        end

                        div_steps_left <= div_steps_left - 1'b1;
                        if (div_steps_left == 7'd1) begin
                            state <= EXACT_DIV_DONE;
                        end else begin
                            div_bit_idx <= div_bit_idx - 1'b1;
                        end
                    end
                end

                EXACT_DIV_DONE: begin
                    if (div_result_target == 2'd0) begin
                        solutions[0]  <= div_result_q16;
                        num_solutions <= 3'd1;
                        done          <= 1'b1;
                        valid         <= 1'b1;
                        state         <= FINISH_OK;
                    end else if (div_result_target == 2'd1) begin
                        solutions[0]  <= div_result_q16;
                        num_solutions <= 3'd1;
                        done          <= 1'b1;
                        valid         <= 1'b1;
                        state         <= FINISH_OK;
                    end else if (div_result_target == 2'd2) begin
                        exact_quad_root_a <= div_result_q16;
                        div_numerator     <= exact_quad_mid_num +
                                             eval_t'({32'd0, exact_quad_sqrt_q16});
                        div_denominator   <= exact_quad_denom;
                        div_result_target <= 2'd3;
                        state             <= EXACT_DIV_INIT;
                    end else begin
                        exact_quad_root_b <= div_result_q16;
                        if (exact_quad_root_a <= div_result_q16) begin
                            solutions[0] <= exact_quad_root_a;
                            solutions[1] <= div_result_q16;
                        end else begin
                            solutions[0] <= div_result_q16;
                            solutions[1] <= exact_quad_root_a;
                        end
                        num_solutions <= 3'd2;
                        done          <= 1'b1;
                        valid         <= 1'b1;
                        state         <= FINISH_OK;
                    end
                end

                INIT_SWEEP: begin
                    num_solutions     <= '0;
                    sweep_idx         <= '0;
                    sweep_bound_q     <= root_bound_value;
                    current_x         <= -root_bound_value;
                    prev_x            <= '0;
                    prev_y            <= '0;
                    single_point_mode <= (root_bound_value == '0);
                    in_root_region    <= 1'b0;
                    flat_root_active  <= 1'b0;
                    flat_root_start   <= '0;
                    candidate_root    <= '0;
                    refine_lo         <= '0;
                    refine_hi         <= '0;
                    refine_f_lo       <= '0;
                    refine_iter       <= '0;

                    for (i = 0; i < MAX_SOLUTIONS; i = i + 1) begin
                        solutions[i] <= '0;
                    end

                    if (root_bound_value == '0) begin
                        current_x <= '0;
                        step_q    <= '0;
                    end else begin
                        step_q <= q16_t'((64'(root_bound_value) * 64'sd2) /
                                          LAST_SAMPLE_IDX);
                    end

                    state <= CHECK_SAMPLE;
                end

                CHECK_SAMPLE: begin
                    if (near_zero_hit) begin
                        if (!flat_root_active && !in_root_region) begin
                            flat_root_active <= 1'b1;
                            flat_root_start  <= current_x;
                            state            <= ADVANCE_SAMPLE;
                        end else begin
                            state <= ADVANCE_SAMPLE;
                        end
                    end else if (sign_change_hit) begin
                        if (flat_root_active) begin
                            candidate_root   <= q16_t'((flat_root_start + prev_x) >>> 1);
                            flat_root_active <= 1'b0;
                            state            <= STORE_ROOT;
                        end else if (!in_root_region) begin
                            refine_lo   <= prev_x;
                            refine_hi   <= current_x;
                            refine_f_lo <= prev_y;
                            refine_iter <= '0;
                            state       <= REFINE_STEP;
                        end else begin
                            state <= ADVANCE_SAMPLE;
                        end
                    end else begin
                        if (flat_root_active) begin
                            candidate_root   <= q16_t'((flat_root_start + prev_x) >>> 1);
                            flat_root_active <= 1'b0;
                            state            <= STORE_ROOT;
                        end else begin
                            in_root_region <= 1'b0;
                            state          <= ADVANCE_SAMPLE;
                        end
                    end
                end

                REFINE_STEP: begin
                    if (eval_abs(refine_mid_y) <= ROOT_THRESHOLD) begin
                        candidate_root <= refine_mid_x;
                        state          <= STORE_ROOT;
                    end else begin
                        if (signs_differ(refine_f_lo, refine_mid_y)) begin
                            refine_hi <= refine_mid_x;
                            if (refine_iter == BISECTION_ITERS - 1) begin
                                candidate_root <= q16_t'((refine_lo + refine_mid_x) >>> 1);
                                state          <= STORE_ROOT;
                            end
                        end else begin
                            refine_lo   <= refine_mid_x;
                            refine_f_lo <= refine_mid_y;
                            if (refine_iter == BISECTION_ITERS - 1) begin
                                candidate_root <= q16_t'((refine_mid_x + refine_hi) >>> 1);
                                state          <= STORE_ROOT;
                            end
                        end

                        if (refine_iter != BISECTION_ITERS - 1) begin
                            refine_iter <= refine_iter + 1'b1;
                        end
                    end
                end

                STORE_ROOT: begin
                    if ((int'(num_solutions) < MAX_SOLUTIONS) &&
                        (num_solutions < polynomial_degree)) begin
                        solutions[num_solutions] <= candidate_root;
                        num_solutions            <= num_solutions + 1'b1;
                    end
                    in_root_region <= 1'b1;
                    state          <= ADVANCE_SAMPLE;
                end

                ADVANCE_SAMPLE: begin
                    if (flat_root_active &&
                        (single_point_mode || (int'(sweep_idx) == LAST_SAMPLE_IDX))) begin
                        candidate_root   <= q16_t'((flat_root_start + current_x) >>> 1);
                        flat_root_active <= 1'b0;
                        state            <= STORE_ROOT;
                    end else if (single_point_mode || (int'(sweep_idx) == LAST_SAMPLE_IDX)) begin
                        done  <= 1'b1;
                        valid <= 1'b1;
                        state <= FINISH_OK;
                    end else begin
                        prev_x    <= current_x;
                        prev_y    <= current_y;
                        current_x <= current_x + step_q;
                        sweep_idx <= sweep_idx + 1'b1;
                        state     <= CHECK_SAMPLE;
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
