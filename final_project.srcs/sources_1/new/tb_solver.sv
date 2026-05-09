`timescale 1ns / 1ps

module tb_solver;
    localparam int MAX_CHARS = 16;
    localparam int CHAR_CODE_WIDTH = 8;
    localparam int MAX_SOLUTIONS = 5;
    localparam int NUM_SAMPLES = 513;
    localparam int CLK_PERIOD = 10;
    localparam logic [CHAR_CODE_WIDTH-1:0] TOK_ADD = 8'd10;
    localparam logic [CHAR_CODE_WIDTH-1:0] TOK_SUB = 8'd11;
    localparam logic [CHAR_CODE_WIDTH-1:0] TOK_MUL = 8'd12;
    localparam logic [CHAR_CODE_WIDTH-1:0] TOK_X   = 8'd13;
    localparam logic [CHAR_CODE_WIDTH-1:0] TOK_LPAREN = 8'd14;
    localparam logic [CHAR_CODE_WIDTH-1:0] TOK_RPAREN = 8'd15;
    localparam logic [CHAR_CODE_WIDTH-1:0] TOK_POW = 8'd16;

    logic clk = 1'b0;
    logic reset = 1'b1;
    logic start = 1'b0;
    logic [CHAR_CODE_WIDTH-1:0] char_codes [0:MAX_CHARS-1];
    logic [$clog2(MAX_CHARS+1)-1:0] num_chars;

    logic done;
    logic valid;
    logic is_const;
    logic [2:0] num_solutions;
    logic signed [31:0] value;
    logic signed [31:0] solutions [0:MAX_SOLUTIONS-1];
    logic signed [15:0] coefficients [0:5];

    solver #(
        .MAX_CHARS(MAX_CHARS),
        .CHAR_CODE_WIDTH(CHAR_CODE_WIDTH),
        .NUM_SAMPLES(NUM_SAMPLES),
        .MAX_SOLUTIONS(MAX_SOLUTIONS)
    ) dut (
        .clk(clk),
        .reset(reset),
        .start(start),
        .char_codes(char_codes),
        .num_chars(num_chars),
        .done(done),
        .valid(valid),
        .is_const(is_const),
        .num_solutions(num_solutions),
        .value(value),
        .solutions(solutions),
        .coefficients(coefficients)
    );

    always #(CLK_PERIOD / 2) clk = ~clk;

    function automatic logic signed [31:0] q16(input integer value);
        return value <<< 16;
    endfunction

    task automatic clear_inputs;
        integer idx;
        begin
            num_chars = '0;
            for (idx = 0; idx < MAX_CHARS; idx = idx + 1) begin
                char_codes[idx] = '0;
            end
        end
    endtask

    task automatic pulse_start;
        begin
            @(negedge clk);
            start = 1'b1;
            @(negedge clk);
            start = 1'b0;
        end
    endtask

    task automatic wait_for_done;
        integer cycles;
        begin
            cycles = 0;
            while (!done) begin
                @(posedge clk);
                cycles = cycles + 1;
                if (cycles > 5000) begin
                    $fatal(1, "Timed out waiting for solver completion");
                end
            end
        end
    endtask

    task automatic expect_root_close(
        input int sol_idx,
        input integer expected_int,
        input integer tolerance_q16
    );
        logic signed [31:0] diff;
        begin
            diff = solutions[sol_idx] - q16(expected_int);
            if (diff < 0) begin
                diff = -diff;
            end

            if (diff > tolerance_q16) begin
                $fatal(
                    1,
                    "Root %0d mismatch: got %0f expected %0d +/- %0f",
                    sol_idx,
                    $itor(solutions[sol_idx]) / 65536.0,
                    expected_int,
                    $itor(tolerance_q16) / 65536.0
                );
            end
        end
    endtask

    task automatic expect_root_q16_close(
        input int sol_idx,
        input logic signed [31:0] expected_q16,
        input integer tolerance_q16
    );
        logic signed [31:0] diff;
        begin
            diff = solutions[sol_idx] - expected_q16;
            if (diff < 0) begin
                diff = -diff;
            end

            if (diff > tolerance_q16) begin
                $fatal(
                    1,
                    "Root %0d mismatch: got %0f expected %0f +/- %0f",
                    sol_idx,
                    $itor(solutions[sol_idx]) / 65536.0,
                    $itor(expected_q16) / 65536.0,
                    $itor(tolerance_q16) / 65536.0
                );
            end
        end
    endtask

    task automatic expect_coefficients(
        input integer c0,
        input integer c1,
        input integer c2,
        input integer c3,
        input integer c4,
        input integer c5
    );
        integer expected_degree;
        begin
            if ((coefficients[0] != c0) || (coefficients[1] != c1) ||
                (coefficients[2] != c2) || (coefficients[3] != c3) ||
                (coefficients[4] != c4) || (coefficients[5] != c5)) begin
                $fatal(
                    1,
                    "Coefficient mismatch: got [%0d,%0d,%0d,%0d,%0d,%0d] expected [%0d,%0d,%0d,%0d,%0d,%0d]",
                    coefficients[0], coefficients[1], coefficients[2],
                    coefficients[3], coefficients[4], coefficients[5],
                    c0, c1, c2, c3, c4, c5
                );
            end

            expected_degree = 0;
            if (c1 != 0) expected_degree = 1;
            if (c2 != 0) expected_degree = 2;
            if (c3 != 0) expected_degree = 3;
            if (c4 != 0) expected_degree = 4;
            if (c5 != 0) expected_degree = 5;

            if (int'(num_solutions) > expected_degree) begin
                $fatal(
                    1,
                    "Solution count %0d exceeds polynomial degree %0d for coefficients [%0d,%0d,%0d,%0d,%0d,%0d]",
                    num_solutions, expected_degree, c0, c1, c2, c3, c4, c5
                );
            end
        end
    endtask

    task automatic run_case_x;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            num_chars = 1;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 root for x, got %0d", num_solutions);
            end
            expect_coefficients(0, 1, 0, 0, 0, 0);
            expect_root_close(0, 0, 16);
            $display("PASS: x -> root at %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_x_minus_2;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_SUB;
            char_codes[2] = 8'd2;
            num_chars = 3;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x-2 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x-2 case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 root for x-2, got %0d", num_solutions);
            end
            expect_coefficients(-2, 1, 0, 0, 0, 0);
            expect_root_close(0, 2, q16(1) / 40);
            $display("PASS: x-2 -> root at %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_x_squared_minus_1;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_MUL;
            char_codes[2] = TOK_X;
            char_codes[3] = TOK_SUB;
            char_codes[4] = 8'd1;
            num_chars = 5;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x*x-1 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x*x-1 case to be non-constant");
            end
            if (num_solutions != 2) begin
                $fatal(1, "Expected 2 roots for x*x-1, got %0d", num_solutions);
            end
            expect_root_close(0, -1, q16(1) / 200);
            expect_root_close(1, 1, q16(1) / 200);
            $display(
                "PASS: x*x-1 -> roots at %0f and %0f",
                $itor(solutions[0]) / 65536.0,
                $itor(solutions[1]) / 65536.0
            );
        end
    endtask

    task automatic run_case_x_power_2_minus_1;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_POW;
            char_codes[2] = 8'd2;
            char_codes[3] = TOK_SUB;
            char_codes[4] = 8'd1;
            num_chars = 5;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x^2-1 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x^2-1 case to be non-constant");
            end
            if (num_solutions != 2) begin
                $fatal(1, "Expected 2 roots for x^2-1, got %0d", num_solutions);
            end
            expect_coefficients(-1, 0, 1, 0, 0, 0);
            expect_root_close(0, -1, q16(1) / 200);
            expect_root_close(1, 1, q16(1) / 200);
            $display(
                "PASS: x^2-1 -> roots at %0f and %0f",
                $itor(solutions[0]) / 65536.0,
                $itor(solutions[1]) / 65536.0
            );
        end
    endtask

    task automatic run_case_3x_power_2_minus_1;
        begin
            clear_inputs();
            char_codes[0] = 8'd3;
            char_codes[1] = TOK_X;
            char_codes[2] = TOK_POW;
            char_codes[3] = 8'd2;
            char_codes[4] = TOK_SUB;
            char_codes[5] = 8'd1;
            num_chars = 6;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected 3x^2-1 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected 3x^2-1 case to be non-constant");
            end
            if (num_solutions != 2) begin
                $fatal(1, "Expected 2 roots for 3x^2-1, got %0d", num_solutions);
            end
            expect_coefficients(-1, 0, 3, 0, 0, 0);
            expect_root_q16_close(0, -32'sd37837, q16(1) / 1000);
            expect_root_q16_close(1,  32'sd37837, q16(1) / 1000);
            $display(
                "PASS: 3x^2-1 -> exact quadratic roots at %0f and %0f",
                $itor(solutions[0]) / 65536.0,
                $itor(solutions[1]) / 65536.0
            );
        end
    endtask

    task automatic run_case_x_power_2;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_POW;
            char_codes[2] = 8'd2;
            num_chars = 3;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x^2 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x^2 case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 real root for x^2, got %0d", num_solutions);
            end
            expect_coefficients(0, 0, 1, 0, 0, 0);
            expect_root_close(0, 0, q16(1) / 200);
            $display("PASS: x^2 -> coefficients [0,0,1,0,0,0]");
        end
    endtask

    task automatic run_case_x_power_2_plus_1;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_POW;
            char_codes[2] = 8'd2;
            char_codes[3] = TOK_ADD;
            char_codes[4] = 8'd1;
            num_chars = 5;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x^2+1 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x^2+1 case to be non-constant");
            end
            if (num_solutions != 0) begin
                $fatal(1, "Expected 0 real roots for x^2+1, got %0d", num_solutions);
            end
            expect_coefficients(1, 0, 1, 0, 0, 0);
            $display("PASS: x^2+1 -> no real roots");
        end
    endtask

    task automatic run_case_parenthesized_x_power_2;
        begin
            clear_inputs();
            char_codes[0] = TOK_LPAREN;
            char_codes[1] = TOK_X;
            char_codes[2] = TOK_POW;
            char_codes[3] = 8'd2;
            char_codes[4] = TOK_RPAREN;
            num_chars = 5;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected (x^2) case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected (x^2) case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 real root for (x^2), got %0d", num_solutions);
            end
            expect_coefficients(0, 0, 1, 0, 0, 0);
            expect_root_close(0, 0, q16(1) / 200);
            $display("PASS: (x^2) -> coefficients [0,0,1,0,0,0]");
        end
    endtask

    task automatic run_case_x_power_3_minus_1;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_POW;
            char_codes[2] = 8'd3;
            char_codes[3] = TOK_SUB;
            char_codes[4] = 8'd1;
            num_chars = 5;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x^3-1 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x^3-1 case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 root for x^3-1, got %0d", num_solutions);
            end
            expect_root_close(0, 1, q16(1) / 200);
            $display("PASS: x^3-1 -> root at %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_x_power_3_minus_x;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_POW;
            char_codes[2] = 8'd3;
            char_codes[3] = TOK_SUB;
            char_codes[4] = TOK_X;
            num_chars = 5;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x^3-x case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x^3-x case to be non-constant");
            end
            if (num_solutions != 3) begin
                $fatal(1, "Expected 3 roots for x^3-x, got %0d", num_solutions);
            end
            expect_root_close(0, -1, q16(1) / 200);
            expect_root_close(1, 0, q16(1) / 200);
            expect_root_close(2, 1, q16(1) / 200);
            $display(
                "PASS: x^3-x -> roots at %0f, %0f, %0f",
                $itor(solutions[0]) / 65536.0,
                $itor(solutions[1]) / 65536.0,
                $itor(solutions[2]) / 65536.0
            );
        end
    endtask

    task automatic run_case_parenthesized_x_minus_1_cubed;
        begin
            clear_inputs();
            char_codes[0] = TOK_LPAREN;
            char_codes[1] = TOK_X;
            char_codes[2] = TOK_SUB;
            char_codes[3] = 8'd1;
            char_codes[4] = TOK_RPAREN;
            char_codes[5] = TOK_POW;
            char_codes[6] = 8'd3;
            num_chars = 7;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected (x-1)^3 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected (x-1)^3 case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 root for (x-1)^3, got %0d", num_solutions);
            end
            expect_coefficients(-1, 3, -3, 1, 0, 0);
            expect_root_close(0, 1, q16(1) / 100);
            $display("PASS: (x-1)^3 -> root at %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_x_squared_minus_100;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_POW;
            char_codes[2] = 8'd2;
            char_codes[3] = TOK_SUB;
            char_codes[4] = 8'd1;
            char_codes[5] = 8'd0;
            char_codes[6] = 8'd0;
            num_chars = 7;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x^2-100 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x^2-100 case to be non-constant");
            end
            if (num_solutions != 2) begin
                $fatal(1, "Expected 2 roots for x^2-100, got %0d", num_solutions);
            end
            expect_root_close(0, -10, q16(1) / 100);
            expect_root_close(1, 10, q16(1) / 100);
            $display(
                "PASS: x^2-100 -> roots at %0f and %0f",
                $itor(solutions[0]) / 65536.0,
                $itor(solutions[1]) / 65536.0
            );
        end
    endtask

    task automatic run_case_x_power_3_minus_8;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_POW;
            char_codes[2] = 8'd3;
            char_codes[3] = TOK_SUB;
            char_codes[4] = 8'd8;
            num_chars = 5;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x^3-8 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x^3-8 case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 root for x^3-8, got %0d", num_solutions);
            end
            expect_root_close(0, 2, q16(1) / 100);
            $display("PASS: x^3-8 -> root at %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_x_power_3_minus_3;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_POW;
            char_codes[2] = 8'd3;
            char_codes[3] = TOK_SUB;
            char_codes[4] = 8'd3;
            num_chars = 5;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x^3-3 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x^3-3 case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 root for x^3-3, got %0d", num_solutions);
            end
            expect_coefficients(-3, 0, 0, 1, 0, 0);
            expect_root_q16_close(0, 32'sd94514, q16(1) / 100);
            $display("PASS: x^3-3 -> root at %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_x_power_3_plus_1;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_POW;
            char_codes[2] = 8'd3;
            char_codes[3] = TOK_ADD;
            char_codes[4] = 8'd1;
            num_chars = 5;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x^3+1 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x^3+1 case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 root for x^3+1, got %0d", num_solutions);
            end
            expect_coefficients(1, 0, 0, 1, 0, 0);
            expect_root_close(0, -1, q16(1) / 100);
            $display("PASS: x^3+1 -> root at %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_x_power_4_minus_16;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_POW;
            char_codes[2] = 8'd4;
            char_codes[3] = TOK_SUB;
            char_codes[4] = 8'd1;
            char_codes[5] = 8'd6;
            num_chars = 6;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x^4-16 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x^4-16 case to be non-constant");
            end
            if (num_solutions != 2) begin
                $fatal(1, "Expected 2 roots for x^4-16, got %0d", num_solutions);
            end
            expect_root_close(0, -2, q16(1) / 100);
            expect_root_close(1, 2, q16(1) / 100);
            $display(
                "PASS: x^4-16 -> roots at %0f and %0f",
                $itor(solutions[0]) / 65536.0,
                $itor(solutions[1]) / 65536.0
            );
        end
    endtask

    task automatic run_case_x_power_4_minus_5x_power_2_plus_4;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_POW;
            char_codes[2] = 8'd4;
            char_codes[3] = TOK_SUB;
            char_codes[4] = 8'd5;
            char_codes[5] = TOK_X;
            char_codes[6] = TOK_POW;
            char_codes[7] = 8'd2;
            char_codes[8] = TOK_ADD;
            char_codes[9] = 8'd4;
            num_chars = 10;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x^4-5x^2+4 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x^4-5x^2+4 case to be non-constant");
            end
            if (num_solutions != 4) begin
                $fatal(1, "Expected 4 roots for x^4-5x^2+4, got %0d", num_solutions);
            end
            expect_coefficients(4, 0, -5, 0, 1, 0);
            expect_root_close(0, -2, q16(1) / 100);
            expect_root_close(1, -1, q16(1) / 100);
            expect_root_close(2, 1, q16(1) / 100);
            expect_root_close(3, 2, q16(1) / 100);
            $display(
                "PASS: x^4-5x^2+4 -> roots at %0f, %0f, %0f, %0f",
                $itor(solutions[0]) / 65536.0,
                $itor(solutions[1]) / 65536.0,
                $itor(solutions[2]) / 65536.0,
                $itor(solutions[3]) / 65536.0
            );
        end
    endtask

    task automatic run_case_x_power_5_minus_x;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_POW;
            char_codes[2] = 8'd5;
            char_codes[3] = TOK_SUB;
            char_codes[4] = TOK_X;
            num_chars = 5;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected x^5-x case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected x^5-x case to be non-constant");
            end
            if (num_solutions != 3) begin
                $fatal(1, "Expected 3 real roots for x^5-x, got %0d", num_solutions);
            end
            expect_coefficients(0, -1, 0, 0, 0, 1);
            expect_root_close(0, -1, q16(1) / 100);
            expect_root_close(1, 0, q16(1) / 100);
            expect_root_close(2, 1, q16(1) / 100);
            $display(
                "PASS: x^5-x -> roots at %0f, %0f, %0f",
                $itor(solutions[0]) / 65536.0,
                $itor(solutions[1]) / 65536.0,
                $itor(solutions[2]) / 65536.0
            );
        end
    endtask

    task automatic run_case_constant;
        begin
            clear_inputs();
            char_codes[0] = 8'd5;
            num_chars = 1;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected constant case to be valid");
            end
            if (!is_const) begin
                $fatal(1, "Expected constant case to set is_const");
            end
            if (value != q16(5)) begin
                $fatal(
                    1,
                    "Expected constant value 5, got %0f",
                    $itor(value) / 65536.0
                );
            end
            if (num_solutions != 0) begin
                $fatal(1, "Expected 0 roots for constant 5, got %0d", num_solutions);
            end
            expect_coefficients(5, 0, 0, 0, 0, 0);
            $display("PASS: 5 -> value %0f, is_const asserted", $itor(value) / 65536.0);
        end
    endtask

    task automatic run_case_multi_digit_constant;
        begin
            clear_inputs();
            char_codes[0] = 8'd1;
            char_codes[1] = 8'd0;
            num_chars = 2;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected 10 case to be valid");
            end
            if (!is_const) begin
                $fatal(1, "Expected 10 case to be constant");
            end
            if (value != q16(10)) begin
                $fatal(1, "Expected constant value 10, got %0f", $itor(value) / 65536.0);
            end
            $display("PASS: 10 -> value %0f", $itor(value) / 65536.0);
        end
    endtask

    task automatic run_case_folded_coefficient;
        begin
            clear_inputs();
            char_codes[0] = 8'd5;
            char_codes[1] = TOK_X;
            num_chars = 2;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected 5x case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected 5x case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 root for 5x, got %0d", num_solutions);
            end
            expect_root_close(0, 0, 16);
            $display("PASS: 5x -> root at %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_multi_digit_folded_coefficient;
        begin
            clear_inputs();
            char_codes[0] = 8'd1;
            char_codes[1] = 8'd0;
            char_codes[2] = TOK_X;
            num_chars = 3;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected 10x case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected 10x case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 root for 10x, got %0d", num_solutions);
            end
            expect_coefficients(0, 10, 0, 0, 0, 0);
            expect_root_close(0, 0, 16);
            $display("PASS: 10x -> root at %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_multi_digit_coefficient;
        begin
            clear_inputs();
            char_codes[0] = 8'd1;
            char_codes[1] = 8'd7;
            char_codes[2] = TOK_X;
            char_codes[3] = TOK_SUB;
            char_codes[4] = 8'd3;
            char_codes[5] = 8'd4;
            num_chars = 6;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected 17x-34 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected 17x-34 case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 root for 17x-34, got %0d", num_solutions);
            end
            expect_coefficients(-34, 17, 0, 0, 0, 0);
            expect_root_close(0, 2, q16(1) / 20);
            $display("PASS: 17x-34 -> root at %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_folded_coefficient_plus_constant;
        begin
            clear_inputs();
            char_codes[0] = 8'd3;
            char_codes[1] = TOK_X;
            char_codes[2] = TOK_ADD;
            char_codes[3] = 8'd1;
            num_chars = 4;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected 3x+1 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected 3x+1 case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 root for 3x+1, got %0d", num_solutions);
            end
            expect_coefficients(1, 3, 0, 0, 0, 0);
            expect_root_q16_close(0, -(q16(1) / 3), q16(1) / 100);
            $display("PASS: 3x+1 -> root at %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_5x_plus_3;
        begin
            clear_inputs();
            char_codes[0] = 8'd5;
            char_codes[1] = TOK_X;
            char_codes[2] = TOK_ADD;
            char_codes[3] = 8'd3;
            num_chars = 4;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected 5x+3 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected 5x+3 case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 root for 5x+3, got %0d", num_solutions);
            end
            expect_coefficients(3, 5, 0, 0, 0, 0);
            expect_root_q16_close(0, -(q16(3) / 5), q16(1) / 100);
            $display("PASS: 5x+3 -> root at %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_explicit_multiply_with_multi_digit_constant;
        begin
            clear_inputs();
            char_codes[0] = 8'd1;
            char_codes[1] = 8'd2;
            char_codes[2] = TOK_MUL;
            char_codes[3] = TOK_X;
            num_chars = 4;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected 12*x case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected 12*x case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 root for 12*x, got %0d", num_solutions);
            end
            expect_root_close(0, 0, 16);
            $display("PASS: 12*x -> root at %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_constant_multiply;
        begin
            clear_inputs();
            char_codes[0] = 8'd3;
            char_codes[1] = TOK_MUL;
            char_codes[2] = 8'd5;
            num_chars = 3;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected 3*5 case to be valid");
            end
            if (!is_const) begin
                $fatal(1, "Expected 3*5 case to be constant");
            end
            if (value != q16(15)) begin
                $fatal(1, "Expected constant value 15, got %0f", $itor(value) / 65536.0);
            end
            expect_coefficients(15, 0, 0, 0, 0, 0);
            $display("PASS: 3*5 -> value %0f", $itor(value) / 65536.0);
        end
    endtask

    task automatic run_case_parenthesized_folded_operand;
        begin
            clear_inputs();
            char_codes[0] = TOK_LPAREN;
            char_codes[1] = 8'd1;
            char_codes[2] = 8'd4;
            char_codes[3] = TOK_X;
            char_codes[4] = TOK_RPAREN;
            char_codes[5] = TOK_SUB;
            char_codes[6] = 8'd7;
            num_chars = 7;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected (14x)-7 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected (14x)-7 case to be non-constant");
            end
            if (num_solutions != 1) begin
                $fatal(1, "Expected 1 root for (14x)-7, got %0d", num_solutions);
            end
            expect_root_q16_close(0, q16(1) >>> 1, q16(1) / 15);
            $display("PASS: (14x)-7 -> root at %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_parenthesized_constant_implicit_multiply;
        begin
            clear_inputs();
            char_codes[0] = 8'd3;
            char_codes[1] = TOK_LPAREN;
            char_codes[2] = 8'd5;
            char_codes[3] = TOK_ADD;
            char_codes[4] = 8'd4;
            char_codes[5] = TOK_RPAREN;
            num_chars = 6;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected 3(5+4) case to be valid");
            end
            if (!is_const) begin
                $fatal(1, "Expected 3(5+4) case to be constant");
            end
            if (value != q16(27)) begin
                $fatal(1, "Expected constant value 27, got %0f", $itor(value) / 65536.0);
            end
            expect_coefficients(27, 0, 0, 0, 0, 0);
            $display("PASS: 3(5+4) -> value %0f", $itor(value) / 65536.0);
        end
    endtask

    task automatic run_case_parenthesized_polynomial_implicit_multiply;
        begin
            clear_inputs();
            char_codes[0] = TOK_LPAREN;
            char_codes[1] = TOK_X;
            char_codes[2] = TOK_ADD;
            char_codes[3] = 8'd1;
            char_codes[4] = TOK_RPAREN;
            char_codes[5] = TOK_LPAREN;
            char_codes[6] = TOK_X;
            char_codes[7] = TOK_SUB;
            char_codes[8] = 8'd1;
            char_codes[9] = TOK_RPAREN;
            num_chars = 10;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected (x+1)(x-1) case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected (x+1)(x-1) case to be non-constant");
            end
            expect_coefficients(-1, 0, 1, 0, 0, 0);
            expect_root_close(0, -1, q16(1) / 200);
            expect_root_close(1, 1, q16(1) / 200);
            $display(
                "PASS: (x+1)(x-1) -> roots at %0f and %0f",
                $itor(solutions[0]) / 65536.0,
                $itor(solutions[1]) / 65536.0
            );
        end
    endtask

    task automatic run_case_power_of_parenthesized_polynomial;
        begin
            clear_inputs();
            char_codes[0] = TOK_LPAREN;
            char_codes[1] = TOK_X;
            char_codes[2] = TOK_ADD;
            char_codes[3] = 8'd1;
            char_codes[4] = TOK_RPAREN;
            char_codes[5] = TOK_POW;
            char_codes[6] = 8'd2;
            num_chars = 7;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected (x+1)^2 case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected (x+1)^2 case to be non-constant");
            end
            expect_coefficients(1, 2, 1, 0, 0, 0);
            expect_root_close(0, -1, q16(1) / 200);
            $display("PASS: (x+1)^2 -> repeated root near %0f", $itor(solutions[0]) / 65536.0);
        end
    endtask

    task automatic run_case_folded_then_parenthesized_implicit_multiply;
        begin
            clear_inputs();
            char_codes[0] = 8'd2;
            char_codes[1] = TOK_X;
            char_codes[2] = TOK_LPAREN;
            char_codes[3] = TOK_X;
            char_codes[4] = TOK_ADD;
            char_codes[5] = 8'd1;
            char_codes[6] = TOK_RPAREN;
            num_chars = 7;
            pulse_start();
            wait_for_done();

            if (!valid) begin
                $fatal(1, "Expected 2x(x+1) case to be valid");
            end
            if (is_const) begin
                $fatal(1, "Expected 2x(x+1) case to be non-constant");
            end
            expect_coefficients(0, 2, 2, 0, 0, 0);
            expect_root_close(0, -1, q16(1) / 200);
            expect_root_close(1, 0, q16(1) / 200);
            $display(
                "PASS: 2x(x+1) -> roots at %0f and %0f",
                $itor(solutions[0]) / 65536.0,
                $itor(solutions[1]) / 65536.0
            );
        end
    endtask

    task automatic run_case_invalid;
        begin
            clear_inputs();
            char_codes[0] = TOK_ADD;
            num_chars = 1;
            pulse_start();
            wait_for_done();

            if (valid) begin
                $fatal(1, "Expected invalid expression to fail");
            end
            if (is_const) begin
                $fatal(1, "Expected invalid expression to clear is_const");
            end
            if (num_solutions != 0) begin
                $fatal(1, "Expected 0 roots for invalid expression, got %0d", num_solutions);
            end
            $display("PASS: invalid expression rejected");
        end
    endtask

    task automatic run_case_invalid_x7;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = 8'd7;
            num_chars = 2;
            pulse_start();
            wait_for_done();

            if (valid) begin
                $fatal(1, "Expected x7 to be invalid");
            end
            $display("PASS: x7 rejected");
        end
    endtask

    task automatic run_case_invalid_xx;
        begin
            clear_inputs();
            char_codes[0] = TOK_X;
            char_codes[1] = TOK_X;
            num_chars = 2;
            pulse_start();
            wait_for_done();

            if (valid) begin
                $fatal(1, "Expected xx to be invalid");
            end
            $display("PASS: xx rejected");
        end
    endtask

    task automatic run_case_invalid_10x2;
        begin
            clear_inputs();
            char_codes[0] = 8'd1;
            char_codes[1] = 8'd0;
            char_codes[2] = TOK_X;
            char_codes[3] = 8'd2;
            num_chars = 4;
            pulse_start();
            wait_for_done();

            if (valid) begin
                $fatal(1, "Expected 10x2 to be invalid");
            end
            $display("PASS: 10x2 rejected");
        end
    endtask

    initial begin
        clear_inputs();

        repeat (3) @(posedge clk);
        reset = 1'b0;
        @(posedge clk);

        run_case_x();
        @(posedge clk);

        run_case_x_minus_2();
        @(posedge clk);

        run_case_x_squared_minus_1();
        @(posedge clk);

        run_case_x_power_2_minus_1();
        @(posedge clk);

        run_case_3x_power_2_minus_1();
        @(posedge clk);

        run_case_x_power_2();
        @(posedge clk);

        run_case_x_power_2_plus_1();
        @(posedge clk);

        run_case_parenthesized_x_power_2();
        @(posedge clk);

        run_case_x_power_3_minus_1();
        @(posedge clk);

        run_case_x_power_3_minus_x();
        @(posedge clk);

        run_case_parenthesized_x_minus_1_cubed();
        @(posedge clk);

        run_case_x_squared_minus_100();
        @(posedge clk);

        run_case_x_power_3_minus_8();
        @(posedge clk);

        run_case_x_power_3_minus_3();
        @(posedge clk);

        run_case_x_power_3_plus_1();
        @(posedge clk);

        run_case_x_power_4_minus_16();
        @(posedge clk);

        run_case_x_power_4_minus_5x_power_2_plus_4();
        @(posedge clk);

        run_case_x_power_5_minus_x();
        @(posedge clk);

        run_case_constant();
        @(posedge clk);

        run_case_multi_digit_constant();
        @(posedge clk);

        run_case_folded_coefficient();
        @(posedge clk);

        run_case_multi_digit_folded_coefficient();
        @(posedge clk);

        run_case_multi_digit_coefficient();
        @(posedge clk);

        run_case_folded_coefficient_plus_constant();
        @(posedge clk);

        run_case_5x_plus_3();
        @(posedge clk);

        run_case_explicit_multiply_with_multi_digit_constant();
        @(posedge clk);

        run_case_constant_multiply();
        @(posedge clk);

        run_case_parenthesized_folded_operand();
        @(posedge clk);

        run_case_parenthesized_constant_implicit_multiply();
        @(posedge clk);

        run_case_parenthesized_polynomial_implicit_multiply();
        @(posedge clk);

        run_case_power_of_parenthesized_polynomial();
        @(posedge clk);

        run_case_folded_then_parenthesized_implicit_multiply();
        @(posedge clk);

        run_case_invalid();
        @(posedge clk);

        run_case_invalid_x7();
        @(posedge clk);

        run_case_invalid_xx();
        @(posedge clk);

        run_case_invalid_10x2();
        @(posedge clk);

        $display("All solver test cases passed.");
        $finish;
    end
endmodule
