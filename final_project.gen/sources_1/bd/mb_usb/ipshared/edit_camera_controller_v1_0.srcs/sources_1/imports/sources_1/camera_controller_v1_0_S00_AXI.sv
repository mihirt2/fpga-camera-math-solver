`timescale 1ns / 1ps
 
module camera_controller_v1_0_S00_AXI #(
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    parameter integer C_S_AXI_ADDR_WIDTH = 5
)(
    input  logic                                S_AXI_ACLK,
    input  logic                                S_AXI_ARESETN,
    input  logic [C_S_AXI_ADDR_WIDTH-1:0]       S_AXI_AWADDR,
    input  logic [2:0]                          S_AXI_AWPROT,
    input  logic                                S_AXI_AWVALID,
    output logic                                S_AXI_AWREADY,
    input  logic [C_S_AXI_DATA_WIDTH-1:0]       S_AXI_WDATA,
    input  logic [(C_S_AXI_DATA_WIDTH/8)-1:0]   S_AXI_WSTRB,
    input  logic                                S_AXI_WVALID,
    output logic                                S_AXI_WREADY,
    output logic [1:0]                          S_AXI_BRESP,
    output logic                                S_AXI_BVALID,
    input  logic                                S_AXI_BREADY,
    input  logic [C_S_AXI_ADDR_WIDTH-1:0]       S_AXI_ARADDR,
    input  logic [2:0]                          S_AXI_ARPROT,
    input  logic                                S_AXI_ARVALID,
    output logic                                S_AXI_ARREADY,
    output logic [C_S_AXI_DATA_WIDTH-1:0]       S_AXI_RDATA,
    output logic [1:0]                          S_AXI_RRESP,
    output logic                                S_AXI_RVALID,
    input  logic                                S_AXI_RREADY,
 
    inout  logic        cam_sda,
    output logic        cam_scl,
    input  logic        cam_pclk,
    input  logic        cam_vsync,
    input  logic        cam_href,
    input  logic [7:0]  cam_d,
 
    output logic [18:0] bram_addr,
    output logic [15:0] bram_wrdata,
    output logic        bram_we
);
 
    logic [C_S_AXI_ADDR_WIDTH-1:0] axi_awaddr;
    logic                          axi_awready;
    logic                          axi_wready;
    logic [1:0]                    axi_bresp;
    logic                          axi_bvalid;
    logic [C_S_AXI_ADDR_WIDTH-1:0] axi_araddr;
    logic                          axi_arready;
    logic [C_S_AXI_DATA_WIDTH-1:0] axi_rdata;
    logic [1:0]                    axi_rresp;
    logic                          axi_rvalid;
 
    localparam integer ADDR_LSB          = (C_S_AXI_DATA_WIDTH / 32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 2;
 
    // Software-writable registers
    logic [C_S_AXI_DATA_WIDTH-1:0] slv_reg0;   // CTRL
    logic [C_S_AXI_DATA_WIDTH-1:0] slv_reg2;   // THRESHOLD
 
    wire soft_reset = slv_reg0[2];
    wire hw_reset = ~S_AXI_ARESETN | soft_reset;
 
    // =========================================================================
    //  AUTO-START: boots camera without software
    // =========================================================================
    logic [27:0] boot_timer;
    logic boot_init_done;
    logic auto_init_start;
    logic auto_capture_en;
 
    always_ff @(posedge S_AXI_ACLK) begin
        if (hw_reset) begin
            boot_timer      <= 28'd0;
            boot_init_done  <= 1'b0;
            auto_init_start <= 1'b0;
            auto_capture_en <= 1'b0;
        end else begin
            if (boot_timer < 28'd200_000_000)
                boot_timer <= boot_timer + 1;
 
            // After ~200ms: start SCCB init
            if (boot_timer == 28'd20_000_000)
                auto_init_start <= 1'b1;
 
            // After init completes, stop init_start
            if (init_done && auto_init_start) begin
                auto_init_start <= 1'b0;
                boot_init_done  <= 1'b1;
            end
 
            // After ~1s: enable capture
            if (boot_timer > 28'd100_000_000 && boot_init_done)
                auto_capture_en <= 1'b1;
        end
    end
 
    // Control signals: software OR auto-start
    wire capture_en = slv_reg0[0] | auto_capture_en;
    wire init_start = slv_reg0[1] | auto_init_start;
 
    // =========================================================================
    //  CDC: AXI_CLK -> PCLK
    // =========================================================================
    logic capture_en_sync1, capture_en_sync2;
 
    always_ff @(posedge cam_pclk) begin
        if (hw_reset) begin
            capture_en_sync1 <= 1'b0;
            capture_en_sync2 <= 1'b0;
        end else begin
            capture_en_sync1 <= capture_en;
            capture_en_sync2 <= capture_en_sync1;
        end
    end
 
    // =========================================================================
    //  CDC: PCLK -> AXI_CLK
    // =========================================================================
    logic frame_done_raw;
    logic frame_done_sync1, frame_done_sync2;
    logic frame_done;
 
    always_ff @(posedge S_AXI_ACLK) begin
        if (hw_reset) begin
            frame_done_sync1 <= 1'b0;
            frame_done_sync2 <= 1'b0;
        end else begin
            frame_done_sync1 <= frame_done_raw;
            frame_done_sync2 <= frame_done_sync1;
        end
    end
    assign frame_done = frame_done_sync2;
 
    logic [18:0] pixel_addr_sync1, pixel_addr_sync2;
 
    always_ff @(posedge S_AXI_ACLK) begin
        if (hw_reset) begin
            pixel_addr_sync1 <= 19'd0;
            pixel_addr_sync2 <= 19'd0;
        end else begin
            pixel_addr_sync1 <= bram_addr;
            pixel_addr_sync2 <= pixel_addr_sync1;
        end
    end
 
    // =========================================================================
    //  STATUS
    // =========================================================================
    logic        init_done;
    logic [15:0] frame_count;
 
    wire capturing_status = capture_en & ~frame_done;
 
    logic frame_done_prev;
 
    always_ff @(posedge S_AXI_ACLK) begin
        if (hw_reset) begin
            frame_count     <= 16'd0;
            frame_done_prev <= 1'b0;
        end else begin
            frame_done_prev <= frame_done;
            if (frame_done & ~frame_done_prev)
                frame_count <= frame_count + 16'd1;
        end
    end
 
    // =========================================================================
    //  HARDWARE MODULES
    // =========================================================================
 
    cam_init u_cam_init (
        .xclk       (S_AXI_ACLK),
        .start_fsm  (init_start),
        .reset      (hw_reset),
        .sda        (cam_sda),
        .scl        (cam_scl),
        .write_flag (init_done)
    );
 
    ov7670_capture u_capture (
        .pclk       (cam_pclk),
        .reset      (hw_reset),
        .capture_en (capture_en_sync2),
        .vsync      (cam_vsync),
        .href       (cam_href),
        .d          (cam_d),
        .bram_addr  (bram_addr),
        .bram_wrdata(bram_wrdata),
        .bram_we    (bram_we),
        .frame_done (frame_done_raw)
    );
 
    // =========================================================================
    //  AXI-LITE WRITE LOGIC
    // =========================================================================
 
    assign S_AXI_AWREADY = axi_awready;
    assign S_AXI_WREADY  = axi_wready;
    assign S_AXI_BRESP   = axi_bresp;
    assign S_AXI_BVALID  = axi_bvalid;
    assign S_AXI_ARREADY = axi_arready;
    assign S_AXI_RDATA   = axi_rdata;
    assign S_AXI_RRESP   = axi_rresp;
    assign S_AXI_RVALID  = axi_rvalid;
 
    always_ff @(posedge S_AXI_ACLK) begin
        if (~S_AXI_ARESETN) begin
            axi_awready <= 1'b0;
            axi_awaddr  <= '0;
        end else begin
            if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID) begin
                axi_awready <= 1'b1;
                axi_awaddr  <= S_AXI_AWADDR;
            end else begin
                axi_awready <= 1'b0;
            end
        end
    end
 
    always_ff @(posedge S_AXI_ACLK) begin
        if (~S_AXI_ARESETN)
            axi_wready <= 1'b0;
        else if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID)
            axi_wready <= 1'b1;
        else
            axi_wready <= 1'b0;
    end
 
    wire slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;
 
    always_ff @(posedge S_AXI_ACLK) begin
        if (~S_AXI_ARESETN) begin
            slv_reg0 <= 32'd0;
            slv_reg2 <= 32'd128;
        end else if (slv_reg_wren) begin
            case (axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
                3'h0: begin
                    for (int i = 0; i < (C_S_AXI_DATA_WIDTH/8); i++)
                        if (S_AXI_WSTRB[i])
                            slv_reg0[(i*8) +: 8] <= S_AXI_WDATA[(i*8) +: 8];
                end
                3'h2: begin
                    for (int i = 0; i < (C_S_AXI_DATA_WIDTH/8); i++)
                        if (S_AXI_WSTRB[i])
                            slv_reg2[(i*8) +: 8] <= S_AXI_WDATA[(i*8) +: 8];
                end
                default: ;
            endcase
        end
    end
 
    always_ff @(posedge S_AXI_ACLK) begin
        if (~S_AXI_ARESETN) begin
            axi_bvalid <= 1'b0;
            axi_bresp  <= 2'b0;
        end else begin
            if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID) begin
                axi_bvalid <= 1'b1;
                axi_bresp  <= 2'b0;
            end else if (S_AXI_BREADY && axi_bvalid) begin
                axi_bvalid <= 1'b0;
            end
        end
    end
 
    // =========================================================================
    //  AXI-LITE READ LOGIC
    // =========================================================================
 
    always_ff @(posedge S_AXI_ACLK) begin
        if (~S_AXI_ARESETN) begin
            axi_arready <= 1'b0;
            axi_araddr  <= '0;
        end else begin
            if (~axi_arready && S_AXI_ARVALID) begin
                axi_arready <= 1'b1;
                axi_araddr  <= S_AXI_ARADDR;
            end else begin
                axi_arready <= 1'b0;
            end
        end
    end
 
    logic [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;
    wire slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
 
    always_comb begin
        case (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
            3'h0: reg_data_out = slv_reg0;
            3'h1: reg_data_out = {29'b0, capturing_status, frame_done, init_done};
            3'h2: reg_data_out = slv_reg2;
            3'h3: reg_data_out = {16'b0, frame_count};
            3'h4: reg_data_out = {13'b0, pixel_addr_sync2};
            default: reg_data_out = 32'd0;
        endcase
    end
 
    always_ff @(posedge S_AXI_ACLK) begin
        if (~S_AXI_ARESETN) begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0;
        end else begin
            if (axi_arready && S_AXI_ARVALID && ~axi_rvalid) begin
                axi_rvalid <= 1'b1;
                axi_rresp  <= 2'b0;
                axi_rdata  <= reg_data_out;
            end else if (axi_rvalid && S_AXI_RREADY) begin
                axi_rvalid <= 1'b0;
            end
        end
    end
 
endmodule