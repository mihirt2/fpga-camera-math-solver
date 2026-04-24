`timescale 1ns / 1ps

module bbox_storage
    import ocr_pkg::*;
(
    input  logic                          clk,
    input  logic [$clog2(MAX_CHARS)-1:0]  waddr,
    input  logic [35:0]                   wdata,
    input  logic                          we,
    input  logic [$clog2(MAX_CHARS)-1:0]  raddr,
    output logic [35:0]                   rdata
);

    logic [35:0] mem [0:MAX_CHARS-1];

    always_ff @(posedge clk) begin
        if (we)
            mem[waddr] <= wdata;
        rdata <= mem[raddr];
    end

endmodule