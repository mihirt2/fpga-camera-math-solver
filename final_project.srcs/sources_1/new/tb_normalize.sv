`timescale 1ns / 1ps

//==============================================================================
// tb_normalize
//
// Focused simulation testbench for normalize.sv.
//
// It builds a small synthetic binary frame containing "15+67", feeds known
// bounding boxes into normalize, and prints the 16x32 normalized bitmaps.
//
// Display convention matches the HDMI/template convention:
//   normalized row bit for column c is row_bits[CHAR_W - 1 - c]
//==============================================================================

module tb_normalize
    import ocr_pkg::*;
();

    localparam int MEM_WORDS = (IMG_W * IMG_H) / 32;

    localparam byte CH_1    = 8'h31;
    localparam byte CH_5    = 8'h35;
    localparam byte CH_PLUS = 8'h2B;
    localparam byte CH_6    = 8'h36;
    localparam byte CH_7    = 8'h37;

    logic clk;
    logic reset;
    logic start;

    logic [9:0] bbox_x_min;
    logic [9:0] bbox_x_max;
    logic [7:0] bbox_y_min;
    logic [7:0] bbox_y_max;

    logic [13:0] bin_raddr;
    logic [31:0] bin_rdata;

    logic [4:0]        norm_waddr;
    logic [CHAR_W-1:0] norm_wdata;
    logic              norm_we;
    logic              done;

    logic [31:0]       bin_mem [0:MEM_WORDS-1];
    logic [CHAR_W-1:0] norm_rows [0:CHAR_H-1];

    integer dump_fd;

    normalize dut (
        .clk        (clk),
        .reset      (reset),
        .start      (start),

        .bbox_x_min (bbox_x_min),
        .bbox_x_max (bbox_x_max),
        .bbox_y_min (bbox_y_min),
        .bbox_y_max (bbox_y_max),

        .bin_raddr  (bin_raddr),
        .bin_rdata  (bin_rdata),

        .norm_waddr (norm_waddr),
        .norm_wdata (norm_wdata),
        .norm_we    (norm_we),

        .done       (done)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    // Match binary_frame_buffer.sv behavior: registered one-cycle read latency.
    always_ff @(posedge clk) begin
        bin_rdata <= bin_mem[bin_raddr];
    end

    always_ff @(posedge clk) begin
        if (norm_we)
            norm_rows[norm_waddr] <= norm_wdata;
    end

    function automatic logic [4:0] glyph_row(input byte ch, input int row);
        begin
            glyph_row = 5'b00000;

            case (ch)
                CH_1: begin
                    case (row)
                        0: glyph_row = 5'b00100;
                        1: glyph_row = 5'b01100;
                        2: glyph_row = 5'b00100;
                        3: glyph_row = 5'b00100;
                        4: glyph_row = 5'b00100;
                        5: glyph_row = 5'b00100;
                        6: glyph_row = 5'b01110;
                        default: glyph_row = 5'b00000;
                    endcase
                end

                CH_5: begin
                    case (row)
                        0: glyph_row = 5'b11111;
                        1: glyph_row = 5'b10000;
                        2: glyph_row = 5'b11110;
                        3: glyph_row = 5'b00001;
                        4: glyph_row = 5'b00001;
                        5: glyph_row = 5'b10001;
                        6: glyph_row = 5'b01110;
                        default: glyph_row = 5'b00000;
                    endcase
                end

                CH_PLUS: begin
                    case (row)
                        0: glyph_row = 5'b00000;
                        1: glyph_row = 5'b00100;
                        2: glyph_row = 5'b00100;
                        3: glyph_row = 5'b11111;
                        4: glyph_row = 5'b00100;
                        5: glyph_row = 5'b00100;
                        6: glyph_row = 5'b00000;
                        default: glyph_row = 5'b00000;
                    endcase
                end

                CH_6: begin
                    case (row)
                        0: glyph_row = 5'b01110;
                        1: glyph_row = 5'b10000;
                        2: glyph_row = 5'b10000;
                        3: glyph_row = 5'b11110;
                        4: glyph_row = 5'b10001;
                        5: glyph_row = 5'b10001;
                        6: glyph_row = 5'b01110;
                        default: glyph_row = 5'b00000;
                    endcase
                end

                CH_7: begin
                    case (row)
                        0: glyph_row = 5'b11111;
                        1: glyph_row = 5'b00001;
                        2: glyph_row = 5'b00010;
                        3: glyph_row = 5'b00100;
                        4: glyph_row = 5'b01000;
                        5: glyph_row = 5'b01000;
                        6: glyph_row = 5'b01000;
                        default: glyph_row = 5'b00000;
                    endcase
                end

                default: glyph_row = 5'b00000;
            endcase
        end
    endfunction

    task automatic set_pixel(input int x, input int y, input logic value);
        int linear;
        int word_addr;
        int bit_idx;
        begin
            if (x >= 0 && x < IMG_W && y >= 0 && y < IMG_H) begin
                linear    = y * IMG_W + x;
                word_addr = linear >> 5;
                bit_idx   = linear & 31;
                bin_mem[word_addr][bit_idx] = value;
            end
        end
    endtask

    task automatic draw_block(
        input int x0,
        input int y0,
        input int w,
        input int h
    );
        begin
            for (int y = y0; y < y0 + h; y++) begin
                for (int x = x0; x < x0 + w; x++) begin
                    set_pixel(x, y, 1'b1);
                end
            end
        end
    endtask

    task automatic draw_glyph(
        input byte ch,
        input int  x0,
        input int  y0,
        input int  scale_x,
        input int  scale_y
    );
        logic [4:0] row_bits;
        begin
            for (int gy = 0; gy < 7; gy++) begin
                row_bits = glyph_row(ch, gy);
                for (int gx = 0; gx < 5; gx++) begin
                    if (row_bits[4 - gx])
                        draw_block(x0 + gx * scale_x, y0 + gy * scale_y,
                                   scale_x, scale_y);
                end
            end
        end
    endtask

    function automatic logic get_pixel(input int x, input int y);
        int linear;
        int word_addr;
        int bit_idx;
        begin
            if (x < 0 || x >= IMG_W || y < 0 || y >= IMG_H) begin
                get_pixel = 1'b0;
            end else begin
                linear    = y * IMG_W + x;
                word_addr = linear >> 5;
                bit_idx   = linear & 31;
                get_pixel = bin_mem[word_addr][bit_idx];
            end
        end
    endfunction

    function automatic int norm_ink_count();
        int count;
        begin
            count = 0;
            for (int y = 0; y < CHAR_H; y++) begin
                for (int x = 0; x < CHAR_W; x++) begin
                    if (norm_rows[y][x])
                        count++;
                end
            end
            norm_ink_count = count;
        end
    endfunction

    task automatic clear_norm_rows();
        begin
            for (int y = 0; y < CHAR_H; y++)
                norm_rows[y] = '0;
        end
    endtask

    task automatic print_input_bbox(
        input byte ch,
        input int  x_min,
        input int  x_max,
        input int  y_min,
        input int  y_max
    );
        begin
            $display("");
            $display("Input bbox for '%c': x=%0d..%0d y=%0d..%0d",
                     ch, x_min, x_max, y_min, y_max);
            $fdisplay(dump_fd, "");
            $fdisplay(dump_fd, "Input bbox for '%c': x=%0d..%0d y=%0d..%0d",
                      ch, x_min, x_max, y_min, y_max);

            for (int y = y_min; y <= y_max; y++) begin
                $write("%02d ", y - y_min);
                $fwrite(dump_fd, "%02d ", y - y_min);
                for (int x = x_min; x <= x_max; x++) begin
                    if (get_pixel(x, y)) begin
                        $write("#");
                        $fwrite(dump_fd, "#");
                    end else begin
                        $write(".");
                        $fwrite(dump_fd, ".");
                    end
                end
                $write("\n");
                $fwrite(dump_fd, "\n");
            end
        end
    endtask

    task automatic print_normalized(input byte ch);
        begin
            $display("");
            $display("Normalized output for '%c' (%0d ink pixels):",
                     ch, norm_ink_count());
            $fdisplay(dump_fd, "");
            $fdisplay(dump_fd, "Normalized output for '%c' (%0d ink pixels):",
                      ch, norm_ink_count());

            for (int y = 0; y < CHAR_H; y++) begin
                $write("%02d ", y);
                $fwrite(dump_fd, "%02d ", y);
                for (int x = 0; x < CHAR_W; x++) begin
                    if (norm_rows[y][CHAR_W - 1 - x]) begin
                        $write("#");
                        $fwrite(dump_fd, "#");
                    end else begin
                        $write(".");
                        $fwrite(dump_fd, ".");
                    end
                end
                $write("\n");
                $fwrite(dump_fd, "\n");
            end
        end
    endtask

    task automatic run_normalize_case(
        input byte ch,
        input int  x_min,
        input int  x_max,
        input int  y_min,
        input int  y_max
    );
        int timeout_cycles;
        begin
            clear_norm_rows();

            bbox_x_min = x_min[9:0];
            bbox_x_max = x_max[9:0];
            bbox_y_min = y_min[7:0];
            bbox_y_max = y_max[7:0];

            print_input_bbox(ch, x_min, x_max, y_min, y_max);

            @(negedge clk);
            start = 1'b1;
            @(negedge clk);
            start = 1'b0;

            timeout_cycles = 0;
            while (!done && timeout_cycles < 5000) begin
                @(posedge clk);
                timeout_cycles++;
            end

            if (!done) begin
                $error("normalize timed out for '%c'", ch);
            end else begin
                @(posedge clk);
                print_normalized(ch);
            end
        end
    endtask

    initial begin
        $timeformat(-9, 0, " ns", 10);
        $dumpfile("tb_normalize.vcd");
        $dumpvars(0, tb_normalize);

        dump_fd = $fopen("tb_normalize_output.txt", "w");
        if (dump_fd == 0)
            $fatal(1, "Could not open tb_normalize_output.txt");

        for (int i = 0; i < MEM_WORDS; i++)
            bin_mem[i] = '0;

        clear_norm_rows();

        reset      = 1'b1;
        start      = 1'b0;
        bbox_x_min = '0;
        bbox_x_max = '0;
        bbox_y_min = '0;
        bbox_y_max = '0;

        // Five 15x28 synthetic glyph cells spelling "15+67".
        draw_glyph(CH_1,    20, 60, 3, 4);
        draw_glyph(CH_5,    42, 60, 3, 4);
        draw_glyph(CH_PLUS, 64, 60, 3, 4);
        draw_glyph(CH_6,    86, 60, 3, 4);
        draw_glyph(CH_7,   108, 60, 3, 4);

        repeat (4) @(posedge clk);
        reset = 1'b0;
        repeat (2) @(posedge clk);

        run_normalize_case(CH_1,    20,  34, 60, 87);
        run_normalize_case(CH_5,    42,  56, 60, 87);
        run_normalize_case(CH_PLUS, 64,  78, 60, 87);
        run_normalize_case(CH_6,    86, 100, 60, 87);
        run_normalize_case(CH_7,   108, 122, 60, 87);

        $display("");
        $display("Done. Text dump also written to tb_normalize_output.txt");
        $fdisplay(dump_fd, "");
        $fdisplay(dump_fd, "Done.");
        $fclose(dump_fd);

        #50;
        $finish;
    end

endmodule
