`timescale 1ns / 1ps

module tb_tiny_math_cnn_match_dataset
    import ocr_pkg::*;
;
    localparam int CLK_PERIOD = 10;
    localparam int MAX_CYCLES_PER_SAMPLE = 1000000;
    localparam string VECTOR_FILE =
        "C:/Users/ishur/final_project/ocr_training/runs/cnn_hw_tb_vectors.mem";

    logic clk = 1'b0;
    logic reset = 1'b1;
    logic start = 1'b0;
    logic [TEMPLATE_BITS-1:0] input_char = '0;
    logic [CHAR_CODE_WIDTH-1:0] best_code;
    logic [9:0] best_dist;
    logic done;

    int fd;
    int rc;
    int sample_count;
    int pass_count;
    int fail_count;
    int cycles;
    logic [CHAR_CODE_WIDTH-1:0] expected_code;
    logic [TEMPLATE_BITS-1:0] vector_bits;
    string label;

    tiny_math_cnn_match #(
        .CONV1_W_FILE("C:/Users/ishur/final_project/vivado_q8_8/conv1_weight.mem"),
        .CONV2_W_FILE("C:/Users/ishur/final_project/vivado_q8_8/conv2_weight.mem"),
        .CONV3_W_FILE("C:/Users/ishur/final_project/vivado_q8_8/conv3_weight.mem"),
        .FC1_W_FILE("C:/Users/ishur/final_project/vivado_q8_8/fc1_weight.mem"),
        .FC1_B_FILE("C:/Users/ishur/final_project/vivado_q8_8/fc1_bias.mem"),
        .FC2_W_FILE("C:/Users/ishur/final_project/vivado_q8_8/fc2_weight.mem"),
        .FC2_B_FILE("C:/Users/ishur/final_project/vivado_q8_8/fc2_bias.mem"),
        .CLASS_CODE_FILE("C:/Users/ishur/final_project/vivado_q8_8/class_code.mem")
    ) dut (
        .clk(clk),
        .reset(reset),
        .start(start),
        .input_char(input_char),
        .best_code(best_code),
        .best_dist(best_dist),
        .done(done)
    );

    always #(CLK_PERIOD / 2) clk = ~clk;

    task automatic run_one_sample;
        begin
            $display("START sample=%0d label=%s expected=%0d",
                     sample_count, label, expected_code);

            input_char = vector_bits;
            @(negedge clk);
            start = 1'b1;
            @(negedge clk);
            start = 1'b0;

            cycles = 0;
            while (!done) begin
                @(posedge clk);
                cycles++;
                if (cycles > MAX_CYCLES_PER_SAMPLE) begin
                    $fatal(1, "timeout on sample %0d label=%s", sample_count, label);
                end
            end

            sample_count++;
            if (best_code === expected_code) begin
                pass_count++;
                $display(
                    "PASS sample=%0d label=%s got=%0d margin=%0d cycles=%0d",
                    sample_count,
                    label,
                    best_code,
                    best_dist,
                    cycles
                );
            end else begin
                fail_count++;
                $display(
                    "FAIL sample=%0d label=%s expected=%0d got=%0d margin=%0d cycles=%0d",
                    sample_count,
                    label,
                    expected_code,
                    best_code,
                    best_dist,
                    cycles
                );
            end

            @(posedge clk);
        end
    endtask

    initial begin
        repeat (5) @(posedge clk);
        reset = 1'b0;
        @(posedge clk);

        fd = $fopen(VECTOR_FILE, "r");
        if (fd == 0) begin
            $fatal(
                1,
                "could not open %s; run: python ocr_training/export_cnn_hw_tb_vectors.py",
                VECTOR_FILE
            );
        end

        sample_count = 0;
        pass_count = 0;
        fail_count = 0;

        while (!$feof(fd)) begin
            label = "";
            rc = $fscanf(fd, "%h %h %s\n", expected_code, vector_bits, label);
            if (rc == 3)
                run_one_sample();
        end

        $fclose(fd);
        $display("CNN RTL dataset result: pass=%0d fail=%0d total=%0d",
                 pass_count, fail_count, sample_count);

        if (fail_count != 0)
            $fatal(1, "CNN RTL dataset had %0d failures", fail_count);

        $finish;
    end
endmodule
