`timescale 1ns / 1ps

//==============================================================================
// tb_ocr_parser_top
//
// Full OCR pipeline testbench for ocr_parser_top.sv.
//
// It renders "15+67" into a synthetic grayscale camera frame using the same
// 16x32 font ROM that template_match uses, then runs:
//   binarize -> segment -> bbox copy -> normalize -> match -> parse -> format
//
// Console/file output includes:
//   - stage transitions
//   - detected bounding boxes
//   - normalized debug history for each selected character
//   - matched internal char_codes
//   - final formatter output string
//==============================================================================

module tb_ocr_parser_top
    import ocr_pkg::*;
();

    localparam bit USE_CNN_MATCH = 1'b1;
    localparam string CNN_WEIGHT_DIR = "../../../../vivado_q8_8";

    localparam byte CH_1    = 8'h31;
    localparam byte CH_5    = 8'h35;
    localparam byte CH_PLUS = 8'h2B;
    localparam byte CH_6    = 8'h36;
    localparam byte CH_7    = 8'h37;

    localparam bit ENABLE_NOISE = 1'b1;
    localparam int PEPPER_PER_CHAR = 2;  // remove this many ink pixels per char cell
    localparam int SALT_PER_CHAR   = 2;  // add this many isolated black pixels nearby

    logic clk;
    logic reset;
    logic trigger;

    logic [16:0] cam_rd_addr;
    logic [7:0]  cam_rd_data;
    logic        cam_rd_en;
    logic        adaptive;
    logic [7:0]  threshold;

    logic [7:0] result_chars [0:31];
    logic [5:0] result_len;
    logic       result_valid;

    logic [3:0] stage_dbg;
    logic       busy;

    logic [35:0]                  dbg_bboxes [0:MAX_CHARS-1];
    logic [$clog2(MAX_CHARS)-1:0] dbg_num_chars;

    logic [13:0] bin_dbg_raddr;
    logic [31:0] bin_dbg_rdata;

    logic [4:0]               dbg_char_sel;
    logic [TEMPLATE_BITS-1:0] dbg_normalized_char;
    logic [MAX_CHARS*TEMPLATE_BITS-1:0] dbg_norm_chars_flat;

    logic [7:0] cam_mem [0:IMG_W*IMG_H-1];

    logic [6:0]  font_char;
    logic [4:0]  font_row;
    logic [15:0] font_bits;

    integer dump_fd;
    logic [3:0] last_stage;
    int unsigned noise_seed;
    int noise_pepper_count;
    int noise_salt_count;

    font_rom_16x32_digits u_tb_font_rom (
        .clk       (clk),
        .char_code (font_char),
        .row       (font_row),
        .bits      (font_bits)
    );

    ocr_parser_top #(
        .USE_CNN_MATCH        (USE_CNN_MATCH),
        .CNN_CONV1_W_FILE     ({CNN_WEIGHT_DIR, "/conv1_weight.mem"}),
        .CNN_CONV2_W_FILE     ({CNN_WEIGHT_DIR, "/conv2_weight.mem"}),
        .CNN_CONV3_W_FILE     ({CNN_WEIGHT_DIR, "/conv3_weight.mem"}),
        .CNN_FC1_W_FILE       ({CNN_WEIGHT_DIR, "/fc1_weight.mem"}),
        .CNN_FC1_B_FILE       ({CNN_WEIGHT_DIR, "/fc1_bias.mem"}),
        .CNN_FC2_W_FILE       ({CNN_WEIGHT_DIR, "/fc2_weight.mem"}),
        .CNN_FC2_B_FILE       ({CNN_WEIGHT_DIR, "/fc2_bias.mem"}),
        .CNN_CLASS_CODE_FILE  ({CNN_WEIGHT_DIR, "/class_code.mem"})
    ) dut (
        .clk                 (clk),
        .reset               (reset),
        .trigger             (trigger),

        .cam_rd_addr         (cam_rd_addr),
        .cam_rd_data         (cam_rd_data),
        .cam_rd_en           (cam_rd_en),
        .adaptive            (adaptive),
        .threshold           (threshold),

        .result_chars        (result_chars),
        .result_len          (result_len),
        .result_valid        (result_valid),

        .stage_dbg           (stage_dbg),
        .busy                (busy),

        .dbg_bboxes          (dbg_bboxes),
        .dbg_num_chars       (dbg_num_chars),

        .bin_dbg_raddr       (bin_dbg_raddr),
        .bin_dbg_rdata       (bin_dbg_rdata),

        .dbg_char_sel        (dbg_char_sel),
        .dbg_normalized_char (dbg_normalized_char),
        .dbg_norm_chars_flat (dbg_norm_chars_flat)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    // Match the usual registered camera-BRAM behavior.
    always_ff @(posedge clk) begin
        if (reset)
            cam_rd_data <= 8'd255;
        else if (cam_rd_en)
            cam_rd_data <= cam_mem[cam_rd_addr];
    end

    function automatic string stage_name(input logic [3:0] stage);
        begin
            case (stage)
                4'd0: stage_name = "S_IDLE";
                4'd1: stage_name = "S_BINARIZE";
                4'd2: stage_name = "S_SEGMENT";
                4'd3: stage_name = "S_COPY_BBOX";
                4'd4: stage_name = "S_LOAD_BBOX";
                4'd5: stage_name = "S_NORMALIZE";
                4'd6: stage_name = "S_MATCH";
                4'd7: stage_name = "S_NEXT_CHAR";
                4'd8: stage_name = "S_PARSE";
                4'd9: stage_name = "S_DONE";
                default: stage_name = "UNKNOWN";
            endcase
        end
    endfunction

    function automatic logic [7:0] code_to_ascii(
        input logic [CHAR_CODE_WIDTH-1:0] code
    );
        begin
            case (code)
                4'd0:  code_to_ascii = 8'h30;
                4'd1:  code_to_ascii = 8'h31;
                4'd2:  code_to_ascii = 8'h32;
                4'd3:  code_to_ascii = 8'h33;
                4'd4:  code_to_ascii = 8'h34;
                4'd5:  code_to_ascii = 8'h35;
                4'd6:  code_to_ascii = 8'h36;
                4'd7:  code_to_ascii = 8'h37;
                4'd8:  code_to_ascii = 8'h38;
                4'd9:  code_to_ascii = 8'h39;
                4'd10: code_to_ascii = 8'h2B;
                4'd11: code_to_ascii = 8'h78;
                4'd12: code_to_ascii = 8'h2A;
                4'd13: code_to_ascii = 8'h3D;
                4'd14: code_to_ascii = 8'h28;
                4'd15: code_to_ascii = 8'h29;
                default: code_to_ascii = 8'h3F;
            endcase
        end
    endfunction

    function automatic string expected_label_name(input int idx);
        begin
            case (idx)
                0: expected_label_name = "1";
                1: expected_label_name = "5";
                2: expected_label_name = "plus";
                3: expected_label_name = "6";
                4: expected_label_name = "7";
                default: expected_label_name = "unlabeled";
            endcase
        end
    endfunction

    function automatic int vector_ink_count(input logic [TEMPLATE_BITS-1:0] bits);
        int count;
        begin
            count = 0;
            for (int row = 0; row < CHAR_H; row++) begin
                for (int col = 0; col < CHAR_W; col++) begin
                    if (bits[TEMPLATE_BITS - 1 - row * CHAR_W - col])
                        count++;
                end
            end
            vector_ink_count = count;
        end
    endfunction

    task automatic set_camera_pixel(input int x, input int y, input logic ink);
        int addr;
        begin
            if (x >= 0 && x < IMG_W && y >= 0 && y < IMG_H) begin
                addr = y * IMG_W + x;
                cam_mem[addr] = ink ? 8'd0 : 8'd255;
            end
        end
    endtask

    task automatic next_rand(output int unsigned value);
        begin
            noise_seed = noise_seed * 32'd1664525 + 32'd1013904223;
            value = noise_seed;
        end
    endtask

    task automatic add_noise_to_cell(
        input int x0,
        input int y0,
        input int w,
        input int h
    );
        int count;
        int attempts;
        int x;
        int y;
        int addr;
        int unsigned rand_value;
        begin
            count = 0;
            attempts = 0;
            while (count < PEPPER_PER_CHAR && attempts < 1000) begin
                next_rand(rand_value);
                x = x0 + int'(rand_value % w);
                next_rand(rand_value);
                y = y0 + int'(rand_value % h);
                addr = y * IMG_W + x;

                if (cam_mem[addr] < threshold) begin
                    cam_mem[addr] = 8'd255;
                    count++;
                    noise_pepper_count++;
                end
                attempts++;
            end

            count = 0;
            attempts = 0;
            while (count < SALT_PER_CHAR && attempts < 1000) begin
                next_rand(rand_value);
                x = x0 - 4 + int'(rand_value % (w + 8));
                next_rand(rand_value);
                y = y0 - 4 + int'(rand_value % (h + 8));

                if (x >= 0 && x < IMG_W && y >= 0 && y < IMG_H) begin
                    addr = y * IMG_W + x;
                    if (cam_mem[addr] >= threshold) begin
                        cam_mem[addr] = 8'd0;
                        count++;
                        noise_salt_count++;
                    end
                end
                attempts++;
            end
        end
    endtask

    task automatic apply_noise();
        begin
            if (ENABLE_NOISE) begin
                noise_seed = 32'h4380_0C12;
                noise_pepper_count = 0;
                noise_salt_count = 0;

                add_noise_to_cell(28,  60, CHAR_W, CHAR_H);
                add_noise_to_cell(52,  60, CHAR_W, CHAR_H);
                add_noise_to_cell(76,  60, CHAR_W, CHAR_H);
                add_noise_to_cell(100, 60, CHAR_W, CHAR_H);
                add_noise_to_cell(124, 60, CHAR_W, CHAR_H);

                $display("Applied deterministic noise: pepper=%0d salt=%0d",
                         noise_pepper_count, noise_salt_count);
                $fdisplay(dump_fd, "Applied deterministic noise: pepper=%0d salt=%0d",
                          noise_pepper_count, noise_salt_count);
            end
        end
    endtask

    task automatic require_weight_file(input string path);
        integer fd;
        begin
            fd = $fopen(path, "r");
            if (fd == 0) begin
                $fatal(1,
                       "Missing CNN weight file '%s'. Run tiny_math_cnn(3).ipynb export cell first.",
                       path);
            end
            $fclose(fd);
        end
    endtask

    task automatic check_cnn_weight_files();
        begin
            if (USE_CNN_MATCH) begin
                require_weight_file({CNN_WEIGHT_DIR, "/conv1_weight.mem"});
                require_weight_file({CNN_WEIGHT_DIR, "/conv2_weight.mem"});
                require_weight_file({CNN_WEIGHT_DIR, "/conv3_weight.mem"});
                require_weight_file({CNN_WEIGHT_DIR, "/fc1_weight.mem"});
                require_weight_file({CNN_WEIGHT_DIR, "/fc1_bias.mem"});
                require_weight_file({CNN_WEIGHT_DIR, "/fc2_weight.mem"});
                require_weight_file({CNN_WEIGHT_DIR, "/fc2_bias.mem"});
                require_weight_file({CNN_WEIGHT_DIR, "/class_code.mem"});
            end
        end
    endtask

    task automatic render_rom_char(input byte ch, input int x0, input int y0);
        logic [15:0] row_bits;
        begin
            for (int row = 0; row < CHAR_H; row++) begin
                font_char = ch[6:0];
                font_row  = row[4:0];

                // The font ROM has a registered output, so wait two clocks after
                // changing address to avoid using a stale row.
                @(posedge clk);
                @(posedge clk);
                row_bits = font_bits;

                for (int col = 0; col < CHAR_W; col++) begin
                    set_camera_pixel(x0 + col, y0 + row,
                                     row_bits[CHAR_W - 1 - col]);
                end
            end
        end
    endtask

    task automatic render_expression();
        begin
            for (int i = 0; i < IMG_W * IMG_H; i++)
                cam_mem[i] = 8'd255;

            // Gap is 8 pixels, above segment.sv MIN_GAP=5.
            render_rom_char(CH_1,    28, 60);
            render_rom_char(CH_5,    52, 60);
            render_rom_char(CH_PLUS, 76, 60);
            render_rom_char(CH_6,   100, 60);
            render_rom_char(CH_7,   124, 60);

            apply_noise();
        end
    endtask

    task automatic print_bboxes();
        logic [9:0] x_min;
        logic [9:0] x_max;
        logic [7:0] y_min;
        logic [7:0] y_max;
        begin
            $display("");
            $display("Detected bboxes: count=%0d", dbg_num_chars);
            $fdisplay(dump_fd, "");
            $fdisplay(dump_fd, "Detected bboxes: count=%0d", dbg_num_chars);

            for (int i = 0; i < dbg_num_chars; i++) begin
                x_min = dbg_bboxes[i][35:26];
                x_max = dbg_bboxes[i][25:16];
                y_min = dbg_bboxes[i][15:8];
                y_max = dbg_bboxes[i][7:0];

                $display("bbox[%0d] x=%0d..%0d y=%0d..%0d",
                         i, x_min, x_max, y_min, y_max);
                $fdisplay(dump_fd, "bbox[%0d] x=%0d..%0d y=%0d..%0d",
                          i, x_min, x_max, y_min, y_max);
            end
        end
    endtask

    task automatic print_normalized_debug(input int idx);
        int ink_count;
        begin
            dbg_char_sel = idx[4:0];
            #1;

            ink_count = 0;
            for (int row = 0; row < CHAR_H; row++) begin
                for (int col = 0; col < CHAR_W; col++) begin
                    if (dbg_normalized_char[TEMPLATE_BITS - 1 - row * CHAR_W - col])
                        ink_count++;
                end
            end

            $display("");
            $display("dbg_normalized_char[%0d], ink=%0d", idx, ink_count);
            $fdisplay(dump_fd, "");
            $fdisplay(dump_fd, "dbg_normalized_char[%0d], ink=%0d", idx, ink_count);

            for (int row = 0; row < CHAR_H; row++) begin
                $write("%02d ", row);
                $fwrite(dump_fd, "%02d ", row);
                for (int col = 0; col < CHAR_W; col++) begin
                    if (dbg_normalized_char[TEMPLATE_BITS - 1 - row * CHAR_W - col]) begin
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

    task automatic write_normalized_pbm(input int idx);
        int fd;
        string filename;
        logic [TEMPLATE_BITS-1:0] bits;
        begin
            if (idx < 0 || idx >= MAX_CHARS)
                return;

            bits = dbg_norm_chars_flat[idx*TEMPLATE_BITS +: TEMPLATE_BITS];
            filename = $sformatf("norm_capture_%0d_%s.pbm",
                                 idx, expected_label_name(idx));

            fd = $fopen(filename, "w");
            if (fd == 0) begin
                $warning("Could not write %s", filename);
                return;
            end

            // ASCII PBM: 1 = black ink, 0 = white background.
            $fdisplay(fd, "P1");
            $fdisplay(fd, "# idx=%0d label=%s", idx, expected_label_name(idx));
            $fdisplay(fd, "%0d %0d", CHAR_W, CHAR_H);
            for (int row = 0; row < CHAR_H; row++) begin
                for (int col = 0; col < CHAR_W; col++) begin
                    $fwrite(fd, "%0d ",
                            bits[TEMPLATE_BITS - 1 - row * CHAR_W - col]);
                end
                $fwrite(fd, "\n");
            end
            $fclose(fd);

            $display("Wrote normalized PBM: %s", filename);
            $fdisplay(dump_fd, "Wrote normalized PBM: %s", filename);
        end
    endtask

    task automatic print_matched_codes();
        begin
            $display("");
            $write("Matched char_codes: ");
            $fdisplay(dump_fd, "");
            $fwrite(dump_fd, "Matched char_codes: ");

            for (int i = 0; i < dut.num_chars; i++) begin
                $write("%c", code_to_ascii(dut.char_codes[i]));
                $fwrite(dump_fd, "%c", code_to_ascii(dut.char_codes[i]));
            end

            $write("\n");
            $fwrite(dump_fd, "\n");
        end
    endtask

    task automatic print_result();
        logic expected_ok;
        begin
            expected_ok = (result_len == 6'd8)
                       && (result_chars[0] == 8'h31)
                       && (result_chars[1] == 8'h35)
                       && (result_chars[2] == 8'h2B)
                       && (result_chars[3] == 8'h36)
                       && (result_chars[4] == 8'h37)
                       && (result_chars[5] == 8'h3D)
                       && (result_chars[6] == 8'h38)
                       && (result_chars[7] == 8'h32);

            $display("");
            $write("Formatted result_len=%0d text=\"", result_len);
            $fdisplay(dump_fd, "");
            $fwrite(dump_fd, "Formatted result_len=%0d text=\"", result_len);

            for (int i = 0; i < result_len; i++) begin
                $write("%c", result_chars[i]);
                $fwrite(dump_fd, "%c", result_chars[i]);
            end

            $write("\"\n");
            $fwrite(dump_fd, "\"\n");

            if (expected_ok) begin
                $display("PASS: expected result 15+67=82");
                $fdisplay(dump_fd, "PASS: expected result 15+67=82");
            end else begin
                $warning("Expected 15+67=82; inspect bboxes, normalized chars, and matched char_codes above.");
                $fdisplay(dump_fd, "WARNING: expected result 15+67=82");
            end
        end
    endtask

    task automatic print_debug_snapshot(input logic include_result);
        begin
            print_bboxes();
            print_matched_codes();

            if (include_result) begin
                print_result();
            end else begin
                $display("");
                $display("No final result_valid; dumping partial debug state.");
                $fdisplay(dump_fd, "");
                $fdisplay(dump_fd, "No final result_valid; dumping partial debug state.");
            end

            for (int i = 0; i < dbg_num_chars && i < MAX_CHARS; i++) begin
                print_normalized_debug(i);
                write_normalized_pbm(i);
            end
        end
    endtask

    always_ff @(posedge clk) begin
        if (reset) begin
            last_stage <= 4'hF;
        end else if (stage_dbg != last_stage) begin
            $display("%0t stage -> %s", $time, stage_name(stage_dbg));
            $fdisplay(dump_fd, "%0t stage -> %s", $time, stage_name(stage_dbg));
            last_stage <= stage_dbg;
        end
    end

    always_ff @(posedge clk) begin
        if (!reset && dut.normalize_start) begin
            $display("%0t normalize start char_idx=%0d bbox=x%0d..%0d y%0d..%0d",
                     $time, dut.char_idx,
                     dut.cur_bbox_x_min, dut.cur_bbox_x_max,
                     dut.cur_bbox_y_min, dut.cur_bbox_y_max);
            $fdisplay(dump_fd, "%0t normalize start char_idx=%0d bbox=x%0d..%0d y%0d..%0d",
                      $time, dut.char_idx,
                      dut.cur_bbox_x_min, dut.cur_bbox_x_max,
                      dut.cur_bbox_y_min, dut.cur_bbox_y_max);
        end

        if (!reset && dut.normalize_done) begin
            $display("%0t normalize done char_idx=%0d ink=%0d",
                     $time, dut.char_idx,
                     vector_ink_count(dut.normalized_char));
            $fdisplay(dump_fd, "%0t normalize done char_idx=%0d ink=%0d",
                      $time, dut.char_idx,
                      vector_ink_count(dut.normalized_char));
        end
    end

    always_ff @(posedge clk) begin
        if (!reset && dut.match_done) begin
            $display("%0t match char_idx=%0d code=%0d '%c' dist=%0d",
                     $time, dut.char_idx, dut.matched_char,
                     code_to_ascii(dut.matched_char), dut.match_distance);
            $fdisplay(dump_fd, "%0t match char_idx=%0d code=%0d '%c' dist=%0d",
                      $time, dut.char_idx, dut.matched_char,
                      code_to_ascii(dut.matched_char), dut.match_distance);
        end
    end

    initial begin
        int timeout_cycles;

        $timeformat(-9, 0, " ns", 10);
        $dumpfile("tb_ocr_parser_top.vcd");
        $dumpvars(0, tb_ocr_parser_top);

        dump_fd = $fopen("tb_ocr_parser_top_output.txt", "w");
        if (dump_fd == 0)
            $fatal(1, "Could not open tb_ocr_parser_top_output.txt");

        check_cnn_weight_files();

        reset        = 1'b1;
        trigger      = 1'b0;
        adaptive     = 1'b0;
        threshold    = 8'd128;
        bin_dbg_raddr = '0;
        dbg_char_sel = '0;
        font_char    = '0;
        font_row     = '0;

        render_expression();

        repeat (5) @(posedge clk);
        reset = 1'b0;
        repeat (5) @(posedge clk);

        @(negedge clk);
        trigger = 1'b1;
        @(negedge clk);
        trigger = 1'b0;

        timeout_cycles = 0;
        while (!result_valid && timeout_cycles < 2_000_000) begin
            @(posedge clk);
            timeout_cycles++;
        end

        if (!result_valid) begin
            $error("Timed out waiting for full OCR result. stage=%s busy=%0b",
                   stage_name(stage_dbg), busy);
            print_debug_snapshot(1'b0);
        end else begin
            print_debug_snapshot(1'b1);
        end

        $display("");
        $display("Done. Text dump also written to tb_ocr_parser_top_output.txt");
        $fdisplay(dump_fd, "");
        $fdisplay(dump_fd, "Done.");
        $fclose(dump_fd);

        #50;
        $finish;
    end

endmodule
