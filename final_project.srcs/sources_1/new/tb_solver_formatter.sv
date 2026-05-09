`timescale 1ns / 1ps

module tb_solver_formatter;
    localparam int DISPLAY_CHARS = 20;

    logic clk = 1'b0;
    logic reset = 1'b1;
    logic start = 1'b0;
    logic solver_valid;
    logic is_const;
    logic [2:0] num_solutions;
    logic signed [31:0] value;
    logic signed [31:0] solution0;
    logic signed [31:0] solution1;
    logic signed [31:0] solution2;
    logic signed [31:0] solution3;
    logic signed [31:0] solution4;
    logic [7:0] result_chars [0:DISPLAY_CHARS-1];
    logic [$clog2(DISPLAY_CHARS+1)-1:0] result_len;
    logic result_valid;

    solver_to_ascii_full_decimal #(
        .MAX_CHARS(16),
        .CHAR_CODE_WIDTH(8),
        .MAX_SOLUTIONS(5),
        .DISPLAY_CHARS(DISPLAY_CHARS)
    ) dut (
        .clk(clk),
        .reset(reset),
        .start(start),
        .solver_valid(solver_valid),
        .is_const(is_const),
        .num_solutions(num_solutions),
        .value(value),
        .solution0(solution0),
        .solution1(solution1),
        .solution2(solution2),
        .solution3(solution3),
        .solution4(solution4),
        .result_chars(result_chars),
        .result_len(result_len),
        .result_valid(result_valid)
    );

    always #5 clk = ~clk;

    task automatic pulse_start;
        begin
            @(negedge clk);
            start = 1'b1;
            @(negedge clk);
            start = 1'b0;
        end
    endtask

    task automatic wait_result;
        int cycles;
        begin
            cycles = 0;
            while (!result_valid) begin
                @(posedge clk);
                cycles++;
                if (cycles > 500)
                    $fatal(1, "Timed out waiting for formatted result");
            end
        end
    endtask

    task automatic expect_text(input string expected);
        begin
            if (result_len != expected.len())
                $fatal(1, "Length mismatch: got %0d expected %0d", result_len, expected.len());

            for (int i = 0; i < expected.len(); i++) begin
                if (result_chars[i] != expected[i])
                    $fatal(1, "Char %0d mismatch: got %c expected %c",
                           i, result_chars[i], expected[i]);
            end
            $display("PASS: formatter emitted \"%s\"", expected);
        end
    endtask

    initial begin
        solver_valid = 1'b0;
        is_const = 1'b0;
        num_solutions = '0;
        value = '0;
        solution0 = '0;
        solution1 = '0;
        solution2 = '0;
        solution3 = '0;
        solution4 = '0;

        repeat (4) @(posedge clk);
        reset = 1'b0;
        @(posedge clk);

        solver_valid = 1'b1;
        is_const = 1'b0;
        num_solutions = 3'd1;
        solution0 = 32'sd94520; // 1.442352, rounds/formats to 1.442
        pulse_start();
        wait_result();
        expect_text("1.442");

        solver_valid = 1'b0;
        pulse_start();
        wait_result();
        expect_text("INVALID");

        $display("All formatter test cases passed.");
        $finish;
    end
endmodule
