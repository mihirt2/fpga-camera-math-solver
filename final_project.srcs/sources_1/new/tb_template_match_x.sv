`timescale 1ns / 1ps

module tb_template_match_x
    import ocr_pkg::*;
();

    localparam logic [CHAR_CODE_WIDTH-1:0] X_CODE = 5'd16;
    localparam byte CH_X = 8'h58;

    logic clk;
    logic reset;
    logic start;
    logic [TEMPLATE_BITS-1:0] input_char;
    logic [CHAR_CODE_WIDTH-1:0] best_code;
    logic [9:0] best_dist;
    logic done;

    logic [6:0]  font_char;
    logic [4:0]  font_row;
    logic [15:0] font_bits;

    font_rom_16x32_digits u_font_rom (
        .clk       (clk),
        .char_code (font_char),
        .row       (font_row),
        .bits      (font_bits)
    );

    template_match dut (
        .clk       (clk),
        .reset     (reset),
        .start     (start),
        .input_char (input_char),
        .best_code (best_code),
        .best_dist (best_dist),
        .done      (done)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    task automatic load_rom_char(input byte ch, output logic [TEMPLATE_BITS-1:0] glyph_bits);
        logic [15:0] row_bits;
        begin
            glyph_bits = '0;
            for (int row = 0; row < CHAR_H; row++) begin
                font_char = ch[6:0];
                font_row  = row[4:0];
                @(posedge clk);
                @(posedge clk);
                row_bits = font_bits;
                glyph_bits[TEMPLATE_BITS - 1 - row * CHAR_W -: CHAR_W] = row_bits;
            end
        end
    endtask

    initial begin
        int timeout_cycles;

        reset     = 1'b1;
        start     = 1'b0;
        input_char = '0;
        font_char = '0;
        font_row  = '0;

        repeat (4) @(posedge clk);
        reset = 1'b0;

        load_rom_char(CH_X, input_char);

        @(negedge clk);
        start = 1'b1;
        @(negedge clk);
        start = 1'b0;

        timeout_cycles = 0;
        while (!done && timeout_cycles < 10000) begin
            @(posedge clk);
            timeout_cycles++;
        end

        if (!done)
            $fatal(1, "Timed out waiting for X template match");

        if (best_code !== X_CODE)
            $fatal(1, "Expected X code %0d, got %0d", X_CODE, best_code);

        $display("PASS: matched X with code=%0d dist=%0d", best_code, best_dist);
        $finish;
    end

endmodule
