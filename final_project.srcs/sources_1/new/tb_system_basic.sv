`timescale 1ns / 1ps

// Basic report/demo simulation:
// OCR-style character codes -> parser/solver -> display formatter.
module tb_system_basic;
    localparam int MAX_CHARS = 10;
    localparam int CHAR_CODE_WIDTH = 8;
    localparam int MAX_SOLUTIONS = 5;
    localparam int NUM_SAMPLES = 513;
    localparam int DISPLAY_CHARS = 20;
    localparam int CLK_PERIOD = 10;

    localparam logic [CHAR_CODE_WIDTH-1:0] TOK_ADD = 8'd10;
    localparam logic [CHAR_CODE_WIDTH-1:0] TOK_SUB = 8'd11;
    localparam logic [CHAR_CODE_WIDTH-1:0] TOK_MUL = 8'd12;
    localparam logic [CHAR_CODE_WIDTH-1:0] TOK_X   = 8'd13;
    localparam logic [CHAR_CODE_WIDTH-1:0] TOK_POW = 8'd16;

    logic clk = 1'b0;
    logic reset = 1'b1;
    logic start = 1'b0;
    logic fmt_start = 1'b0;

    logic [CHAR_CODE_WIDTH-1:0] char_codes [0:MAX_CHARS-1];
    logic [$clog2(MAX_CHARS+1)-1:0] num_chars;

    logic done;
    logic valid;
    logic is_const;
    logic [2:0] num_solutions;
    logic signed [31:0] value;
    logic signed [31:0] solutions [0:MAX_SOLUTIONS-1];
    logic signed [15:0] coefficients [0:5];

    logic latched_valid;
    logic latched_is_const;
    logic [2:0] latched_num_solutions;
    logic signed [31:0] latched_value;
    logic signed [31:0] latched_solutions [0:MAX_SOLUTIONS-1];
    logic signed [15:0] latched_coefficients [0:5];

    logic [7:0] result_chars [0:DISPLAY_CHARS-1];
    logic [$clog2(DISPLAY_CHARS+1)-1:0] result_len;
    logic result_valid;

    solver #(
        .MAX_CHARS(MAX_CHARS),
        .CHAR_CODE_WIDTH(CHAR_CODE_WIDTH),
        .NUM_SAMPLES(NUM_SAMPLES),
        .MAX_SOLUTIONS(MAX_SOLUTIONS)
    ) u_solver (
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

    solver_to_ascii_full_decimal #(
        .MAX_CHARS(MAX_CHARS),
        .CHAR_CODE_WIDTH(CHAR_CODE_WIDTH),
        .MAX_SOLUTIONS(MAX_SOLUTIONS),
        .DISPLAY_CHARS(DISPLAY_CHARS)
    ) u_formatter (
        .clk(clk),
        .reset(reset),
        .start(fmt_start),
        .solver_valid(latched_valid),
        .is_const(latched_is_const),
        .num_solutions(latched_num_solutions),
        .value(latched_value),
        .solution0(latched_solutions[0]),
        .solution1(latched_solutions[1]),
        .solution2(latched_solutions[2]),
        .solution3(latched_solutions[3]),
        .solution4(latched_solutions[4]),
        .result_chars(result_chars),
        .result_len(result_len),
        .result_valid(result_valid)
    );

    always #(CLK_PERIOD / 2) clk = ~clk;

    task automatic clear_inputs;
        integer idx;
        begin
            num_chars = '0;
            for (idx = 0; idx < MAX_CHARS; idx = idx + 1) begin
                char_codes[idx] = '0;
            end
        end
    endtask

    task automatic pulse_solver_start;
        begin
            @(negedge clk);
            start = 1'b1;
            @(negedge clk);
            start = 1'b0;
        end
    endtask

    task automatic pulse_formatter_start;
        begin
            @(negedge clk);
            fmt_start = 1'b1;
            @(negedge clk);
            fmt_start = 1'b0;
        end
    endtask

    task automatic wait_for_solver_done;
        integer cycles;
        begin
            cycles = 0;
            while (!done) begin
                @(posedge clk);
                cycles = cycles + 1;
                if (cycles > 10000) begin
                    $fatal(1, "Timed out waiting for solver");
                end
            end
        end
    endtask

    task automatic wait_for_formatter_done;
        integer cycles;
        begin
            cycles = 0;
            while (!result_valid) begin
                @(posedge clk);
                cycles = cycles + 1;
                if (cycles > 1000) begin
                    $fatal(1, "Timed out waiting for formatter");
                end
            end
        end
    endtask

    task automatic latch_solver_result;
        integer idx;
        begin
            latched_valid = valid;
            latched_is_const = is_const;
            latched_num_solutions = num_solutions;
            latched_value = value;
            for (idx = 0; idx < MAX_SOLUTIONS; idx = idx + 1) begin
                latched_solutions[idx] = solutions[idx];
            end
            for (idx = 0; idx <= 5; idx = idx + 1) begin
                latched_coefficients[idx] = coefficients[idx];
            end
        end
    endtask

    task automatic print_formatted_result;
        integer idx;
        begin
            $write("display text: \"");
            for (idx = 0; idx < result_len; idx = idx + 1) begin
                $write("%c", result_chars[idx]);
            end
            $display("\"");
        end
    endtask

    task automatic print_solver_result(input string label);
        integer idx;
        begin
            $display("------------------------------------------------------------");
            $display("input expression: %s", label);
            $display(
                "solver status: valid=%0d is_const=%0d num_solutions=%0d",
                latched_valid,
                latched_is_const,
                latched_num_solutions
            );
            $display(
                "polynomial coefficients: c0=%0d c1=%0d c2=%0d c3=%0d c4=%0d c5=%0d",
                latched_coefficients[0],
                latched_coefficients[1],
                latched_coefficients[2],
                latched_coefficients[3],
                latched_coefficients[4],
                latched_coefficients[5]
            );

            if (latched_is_const) begin
                $display("constant value: %0f", $itor(latched_value) / 65536.0);
            end else begin
                for (idx = 0; idx < latched_num_solutions; idx = idx + 1) begin
                    $display(
                        "solution[%0d]: %0f",
                        idx,
                        $itor(latched_solutions[idx]) / 65536.0
                    );
                end
            end

            print_formatted_result();
        end
    endtask

    task automatic run_case(input string label);
        begin
            pulse_solver_start();
            wait_for_solver_done();
            latch_solver_result();
            pulse_formatter_start();
            wait_for_formatter_done();
            print_solver_result(label);
            @(posedge clk);
        end
    endtask

    initial begin
        clear_inputs();
        repeat (5) @(posedge clk);
        reset = 1'b0;
        repeat (2) @(posedge clk);

        $display("");
        $display("BASIC OCR EQUATION SOLVER SYSTEM SIMULATION");
        $display("Character codes emulate OCR output feeding the parser/solver.");

        clear_inputs();
        char_codes[0] = 8'd5;
        char_codes[1] = TOK_X;
        char_codes[2] = TOK_ADD;
        char_codes[3] = 8'd3;
        num_chars = 4;
        run_case("5x+3");

        clear_inputs();
        char_codes[0] = 8'd3;
        char_codes[1] = TOK_X;
        char_codes[2] = TOK_POW;
        char_codes[3] = 8'd2;
        char_codes[4] = TOK_SUB;
        char_codes[5] = 8'd1;
        num_chars = 6;
        run_case("3x^2-1");

        clear_inputs();
        char_codes[0] = TOK_X;
        char_codes[1] = TOK_POW;
        char_codes[2] = 8'd2;
        num_chars = 3;
        run_case("x^2");

        clear_inputs();
        char_codes[0] = TOK_X;
        char_codes[1] = TOK_POW;
        char_codes[2] = 8'd2;
        char_codes[3] = TOK_ADD;
        char_codes[4] = 8'd1;
        num_chars = 5;
        run_case("x^2+1");

        clear_inputs();
        char_codes[0] = 8'd3;
        char_codes[1] = TOK_MUL;
        char_codes[2] = 8'd5;
        num_chars = 3;
        run_case("3*5");

        $display("------------------------------------------------------------");
        $display("Basic system simulation complete.");
        $finish;
    end
endmodule
