`timescale 1ns / 1ps

module camera_controller_v1_0 #(
    parameter integer C_S00_AXI_DATA_WIDTH = 32,
    parameter integer C_S00_AXI_ADDR_WIDTH = 5
)(
    // AXI-Lite Slave Interface
    input  logic                                    s00_axi_aclk,
    input  logic                                    s00_axi_aresetn,
    input  logic [C_S00_AXI_ADDR_WIDTH-1:0]         s00_axi_awaddr,
    input  logic [2:0]                              s00_axi_awprot,
    input  logic                                    s00_axi_awvalid,
    output logic                                    s00_axi_awready,
    input  logic [C_S00_AXI_DATA_WIDTH-1:0]         s00_axi_wdata,
    input  logic [(C_S00_AXI_DATA_WIDTH/8)-1:0]     s00_axi_wstrb,
    input  logic                                    s00_axi_wvalid,
    output logic                                    s00_axi_wready,
    output logic [1:0]                              s00_axi_bresp,
    output logic                                    s00_axi_bvalid,
    input  logic                                    s00_axi_bready,
    input  logic [C_S00_AXI_ADDR_WIDTH-1:0]         s00_axi_araddr,
    input  logic [2:0]                              s00_axi_arprot,
    input  logic                                    s00_axi_arvalid,
    output logic                                    s00_axi_arready,
    output logic [C_S00_AXI_DATA_WIDTH-1:0]         s00_axi_rdata,
    output logic [1:0]                              s00_axi_rresp,
    output logic                                    s00_axi_rvalid,
    input  logic                                    s00_axi_rready,

    // Camera external ports
    inout  logic        cam_sda,
    output logic        cam_scl,
    input  logic        cam_pclk,
    input  logic        cam_vsync,
    input  logic        cam_href,
    input  logic [7:0]  cam_d,
    output logic        cam_pclk_out,
    output logic        cam_pwdn,
    output logic        cam_reset_n,

    // BRAM write port (directly to frame buffer)
    output logic [16:0] bram_addr,
    output logic [15:0] bram_wrdata,
    output logic        bram_we
    
  
);
    assign cam_pclk_out = cam_pclk;
    // Auto power-cycle camera on FPGA boot
    // Holds PWDN high for ~50ms, then releases
    
    logic [23:0] pwdn_timer;
    always_ff @(posedge s00_axi_aclk) begin
        if (~s00_axi_aresetn)
            pwdn_timer <= 24'd0;
        else if (pwdn_timer < 24'd10_000_000)
            pwdn_timer <= pwdn_timer + 1;
    end
    assign cam_pwdn = (pwdn_timer < 24'd5_000_000) ? 1'b1 : 1'b0;
    
    assign cam_reset_n = 1'b1;  // not in reset
    camera_controller_v1_0_S00_AXI #(
        .C_S_AXI_DATA_WIDTH (C_S00_AXI_DATA_WIDTH),
        .C_S_AXI_ADDR_WIDTH (C_S00_AXI_ADDR_WIDTH)
    ) u_axi_slave (
        .S_AXI_ACLK    (s00_axi_aclk),
        .S_AXI_ARESETN (s00_axi_aresetn),
        .S_AXI_AWADDR  (s00_axi_awaddr),
        .S_AXI_AWPROT  (s00_axi_awprot),
        .S_AXI_AWVALID (s00_axi_awvalid),
        .S_AXI_AWREADY (s00_axi_awready),
        .S_AXI_WDATA   (s00_axi_wdata),
        .S_AXI_WSTRB   (s00_axi_wstrb),
        .S_AXI_WVALID  (s00_axi_wvalid),
        .S_AXI_WREADY  (s00_axi_wready),
        .S_AXI_BRESP   (s00_axi_bresp),
        .S_AXI_BVALID  (s00_axi_bvalid),
        .S_AXI_BREADY  (s00_axi_bready),
        .S_AXI_ARADDR  (s00_axi_araddr),
        .S_AXI_ARPROT  (s00_axi_arprot),
        .S_AXI_ARVALID (s00_axi_arvalid),
        .S_AXI_ARREADY (s00_axi_arready),
        .S_AXI_RDATA   (s00_axi_rdata),
        .S_AXI_RRESP   (s00_axi_rresp),
        .S_AXI_RVALID  (s00_axi_rvalid),
        .S_AXI_RREADY  (s00_axi_rready),

        .cam_sda       (cam_sda),
        .cam_scl       (cam_scl),
        .cam_pclk      (cam_pclk),
        .cam_vsync     (cam_vsync),
        .cam_href      (cam_href),
        .cam_d         (cam_d),

        .bram_addr     (bram_addr),
        .bram_wrdata   (bram_wrdata),
        .bram_we       (bram_we)
    );

endmodule