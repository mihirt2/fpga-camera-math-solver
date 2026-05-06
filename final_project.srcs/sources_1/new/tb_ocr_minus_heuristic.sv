`timescale 1ns / 1ps

module tb_ocr_minus_heuristic;
    logic [9:0] bbox_width;
    logic [7:0] bbox_height;
    logic bbox_is_minus;

    assign bbox_is_minus = (bbox_width >= 10'd6)
                         && (bbox_height <= 8'd10)
                         && (bbox_width >= ({2'b0, bbox_height} * 10'd2));

    initial begin
        bbox_width = 10'd30;
        bbox_height = 8'd6;
        #1;
        if (!bbox_is_minus)
            $fatal(1, "30x6 bbox should classify as minus");

        bbox_width = 10'd24;
        bbox_height = 8'd8;
        #1;
        if (!bbox_is_minus)
            $fatal(1, "24x8 bbox should classify as minus");

        bbox_width = 10'd12;
        bbox_height = 8'd16;
        #1;
        if (bbox_is_minus)
            $fatal(1, "12x16 bbox should not classify as minus");

        $display("PASS: bbox minus heuristic");
        $finish;
    end
endmodule
