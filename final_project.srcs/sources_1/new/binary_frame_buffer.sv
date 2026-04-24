`timescale 1ns / 1ps

module binary_frame_buffer (
    input  logic        clk,
    // write port (binarize)
    input  logic        we,
    input  logic [13:0] waddr,
    input  logic [31:0] wdata,
    // read port A (segment / normalize)
    input  logic [13:0] raddr,
    output logic [31:0] rdata,
    // read port B (debug display)
    input  logic [13:0] dbg_raddr,
    output logic [31:0] dbg_rdata
);

    (* ram_style = "block" *) logic [31:0] mem [0:2399]; // 76800/32

    // port A: write + read (OCR pipeline)
    always_ff @(posedge clk) begin
        if (we)
            mem[waddr] <= wdata;
        rdata <= mem[raddr];
    end

    // port B: read only (debug display)
    always_ff @(posedge clk) begin
        dbg_rdata <= mem[dbg_raddr];
    end

endmodule