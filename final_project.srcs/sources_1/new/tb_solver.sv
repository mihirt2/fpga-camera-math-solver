`timescale 1ns / 1ps

module tb_solver;
    localparam int MAX_CHARS = 10;
    localparam int CHAR_CODE_WIDTH = 8;
    localparam int MAX_SOLUTIONS = 5;
    localparam int NUM_SAMPLES = 256;
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
        .solutions(solutions)
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
            expect_root_close(0, -1, q16(1) / 200);
            expect_root_close(1, 1, q16(1) / 200);
            $display(
                "PASS: x^2-1 -> roots at %0f and %0f",
                $itor(solutions[0]) / 65536.0,
                $itor(solutions[1]) / 65536.0
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
            expect_root_close(0, 2, q16(1) / 20);
            $display("PASS: 17x-34 -> root at %0f", $itor(solutions[0]) / 65536.0);
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

        run_case_constant();
        @(posedge clk);

        run_case_multi_digit_constant();
        @(posedge clk);

        run_case_folded_coefficient();
        @(posedge clk);

        run_case_multi_digit_coefficient();
        @(posedge clk);

        run_case_explicit_multiply_with_multi_digit_constant();
        @(posedge clk);

        run_case_parenthesized_folded_operand();
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
