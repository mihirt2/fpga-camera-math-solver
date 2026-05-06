`timescale 1ns / 1ps

module binary_frame_buffer (
    input  logic        clk,
    // write port (binarize)
    input  logic        we,
    input  logic [13:0] waddr,
    input  logic [31:0] wdata,
    // read port (segment / normalize)
    input  logic [13:0] raddr,
    output logic [31:0] rdata
);

    (* ram_style = "block" *) logic [31:0] mem [0:4799]; // 640*240/32

    // single write/read port for the OCR pipeline
    always_ff @(posedge clk) begin
        if (we)
            mem[waddr] <= wdata;
        rdata <= mem[raddr];
    end

endmodule
