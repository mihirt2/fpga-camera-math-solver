`timescale 1ns / 1ps

module tb_external_class_uart_rx;
    import ocr_pkg::*;

    localparam int CLK_HZ = 100_000_000;
    localparam int BAUD = 115200;
    localparam int CLKS_PER_BIT = CLK_HZ / BAUD;
    localparam time CLK_PERIOD = 10ns;
    localparam time BIT_PERIOD = CLKS_PER_BIT * CLK_PERIOD;

    logic clk = 1'b0;
    logic reset = 1'b1;
    logic rx = 1'b1;
    logic [$clog2(MAX_CHARS+1)-1:0] expected_chars;
    logic [MAX_CHARS*CHAR_CODE_WIDTH-1:0] char_codes_flat;
    logic valid;
    logic valid_seen;
    logic clear_seen;

    external_class_uart_rx #(
        .CLK_HZ(CLK_HZ),
        .BAUD(BAUD)
    ) dut (
        .clk(clk),
        .reset(reset),
        .rx(rx),
        .expected_chars(expected_chars),
        .char_codes_flat(char_codes_flat),
        .valid(valid)
    );

    always #(CLK_PERIOD / 2) clk = ~clk;

    always_ff @(posedge clk) begin
        if (reset || clear_seen)
            valid_seen <= 1'b0;
        else if (valid)
            valid_seen <= 1'b1;
    end

    task automatic send_uart_byte(input logic [7:0] b);
        begin
            rx = 1'b0;
            #(BIT_PERIOD);
            for (int i = 0; i < 8; i++) begin
                rx = b[i];
                #(BIT_PERIOD);
            end
            rx = 1'b1;
            #(BIT_PERIOD);
        end
    endtask

    task automatic send_string(input string s);
        begin
            for (int i = 0; i < s.len(); i++) begin
                send_uart_byte(s[i]);
            end
        end
    endtask

    task automatic clear_valid_seen;
        begin
            clear_seen = 1'b1;
            @(posedge clk);
            clear_seen = 1'b0;
            @(posedge clk);
        end
    endtask

    task automatic check_valid_seen(input string tag);
        begin
            repeat (10) @(posedge clk);
            if (!valid_seen)
                $fatal(1, "valid was not seen for %s", tag);
        end
    endtask

    function automatic logic [CHAR_CODE_WIDTH-1:0] code_at(input int idx);
        return char_codes_flat[idx*CHAR_CODE_WIDTH +: CHAR_CODE_WIDTH];
    endfunction

    initial begin
        clear_seen = 1'b0;
        expected_chars = 0;
        repeat (10) @(posedge clk);
        reset = 1'b0;
        repeat (10) @(posedge clk);

        expected_chars = 3;
        clear_valid_seen();
        send_string("R 04 0A 05\r\n");
        check_valid_seen("exact 3-code response");
        if (code_at(0) !== 5'h04 || code_at(1) !== 5'h0A || code_at(2) !== 5'h05) begin
            $fatal(1, "bad 3-code response: got %02h %02h %02h",
                   code_at(0), code_at(1), code_at(2));
        end
        $display("PASS exact response got %02h %02h %02h",
                 code_at(0), code_at(1), code_at(2));

        expected_chars = 3;
        clear_valid_seen();
        send_string("R 09 09\r\n");
        repeat (1000) @(posedge clk);
        if (valid_seen)
            $fatal(1, "short response should not assert valid");
        if (code_at(0) !== 5'h04 || code_at(1) !== 5'h0A || code_at(2) !== 5'h05) begin
            $fatal(1, "short response should not update live codes");
        end
        $display("PASS short response rejected");

        expected_chars = 3;
        clear_valid_seen();
        send_string("R 01 02 03 04\r\n");
        repeat (1000) @(posedge clk);
        if (valid_seen)
            $fatal(1, "long response should not assert valid");
        if (code_at(0) !== 5'h04 || code_at(1) !== 5'h0A || code_at(2) !== 5'h05) begin
            $fatal(1, "long response should not update live codes");
        end
        $display("PASS long response rejected");

        expected_chars = 1;
        clear_valid_seen();
        send_string("r 10\n");
        check_valid_seen("one-code response");
        if (code_at(0) !== 5'h10) begin
            $fatal(1, "bad 1-code response: got %02h", code_at(0));
        end
        $display("PASS one-code response got %02h", code_at(0));

        $display("tb_external_class_uart_rx PASS");
        $finish;
    end
endmodule
