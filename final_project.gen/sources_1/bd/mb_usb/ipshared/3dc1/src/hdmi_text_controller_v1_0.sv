`timescale 1 ns / 1 ps

module hdmi_text_controller_v1_0 #
(
    parameter integer C_AXI_DATA_WIDTH	= 32,
    parameter integer C_AXI_ADDR_WIDTH	= 16 
)
(
    output logic hdmi_clk_n,
    output logic hdmi_clk_p,
    output logic [2:0] hdmi_tx_n,
    output logic [2:0] hdmi_tx_p,

    input logic  axi_aclk,
    input logic  axi_aresetn,
    input logic [C_AXI_ADDR_WIDTH-1 : 0] axi_awaddr,
    input logic [2 : 0] axi_awprot,
    input logic  axi_awvalid,
    output logic  axi_awready,
    input logic [C_AXI_DATA_WIDTH-1 : 0] axi_wdata,
    input logic [(C_AXI_DATA_WIDTH/8)-1 : 0] axi_wstrb,
    input logic  axi_wvalid,
    output logic  axi_wready,
    output logic [1 : 0] axi_bresp,
    output logic  axi_bvalid,
    input logic  axi_bready,
    input logic [C_AXI_ADDR_WIDTH-1 : 0] axi_araddr,
    input logic [2 : 0] axi_arprot,
    input logic  axi_arvalid,
    output logic  axi_arready,
    output logic [C_AXI_DATA_WIDTH-1 : 0] axi_rdata,
    output logic [1 : 0] axi_rresp,
    output logic  axi_rvalid,
    input logic  axi_rready,
    
    // Camera frame buffer write port
    input logic        cam_pclk,
    input logic [16:0] cam_wr_addr,
    input logic [7:0]  cam_wr_data,
    input logic        cam_we
);

logic [31:0] color_reg;
logic [31:0] frame_counter;
logic [31:0] current_draw_x_reg;
logic [31:0] current_draw_y_reg;
logic [31:0] frame_counter_sync;

logic        vram_we;
logic [9:0]  vram_addr;
logic [31:0] vram_wdata;
logic [31:0] vram_rdata;
logic [3:0]  vram_wstrb;

hdmi_text_controller_v1_0_AXI # ( 
    .C_S_AXI_DATA_WIDTH(C_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH(C_AXI_ADDR_WIDTH)
) hdmi_text_controller_v1_0_AXI_inst (
    .S_AXI_ACLK(axi_aclk),
    .S_AXI_ARESETN(axi_aresetn),
    .S_AXI_AWADDR(axi_awaddr),
    .S_AXI_AWPROT(axi_awprot),
    .S_AXI_AWVALID(axi_awvalid),
    .S_AXI_AWREADY(axi_awready),
    .S_AXI_WDATA(axi_wdata),
    .S_AXI_WSTRB(axi_wstrb),
    .S_AXI_WVALID(axi_wvalid),
    .S_AXI_WREADY(axi_wready),
    .S_AXI_BRESP(axi_bresp),
    .S_AXI_BVALID(axi_bvalid),
    .S_AXI_BREADY(axi_bready),
    .S_AXI_ARADDR(axi_araddr),
    .S_AXI_ARPROT(axi_arprot),
    .S_AXI_ARVALID(axi_arvalid),
    .S_AXI_ARREADY(axi_arready),
    .S_AXI_RDATA(axi_rdata),
    .S_AXI_RRESP(axi_rresp),
    .S_AXI_RVALID(axi_rvalid),
    .S_AXI_RREADY(axi_rready),
    .vram_we(vram_we),
    .vram_addr(vram_addr),
    .vram_wdata(vram_wdata),
    .vram_rdata(vram_rdata),
    .vram_wstrb(vram_wstrb),
    .color_reg(color_reg),
    .frame_counter(frame_counter_sync),
    .current_draw_x(current_draw_x_reg),
    .current_draw_y(current_draw_y_reg)
);

// Text VRAM
(* ram_style = "block" *) logic [31:0] vram [0:599];

// Camera frame buffer - 320x240 x 8 bits = 76800 bytes
(* ram_style = "block" *) logic [7:0] cam_fb [0:76799];

// Camera mode control
logic cam_mode;
assign cam_mode = 1'b1;  // hardcoded for testing; change to color_reg[31] for SW control

// Camera read - 1:1 mapping in top-left 320x240 region, no scaling
logic [16:0] cam_rd_addr;
logic [7:0]  cam_pixel;
logic        in_cam_region;

// Check if current pixel is in the camera display area
assign in_cam_region = (drawX < 10'd320) && (drawY < 10'd240);

// Address: y*320 + x using shifts (320 = 256 + 64)
assign cam_rd_addr = ({8'b0, drawY[8:0]} << 8) + ({8'b0, drawY[8:0]} << 6) + {7'b0, drawX[9:0]};

// Port B read - display (clk_25MHz domain)
always_ff @(posedge clk_25MHz) begin
    cam_pixel <= cam_fb[cam_rd_addr];
end

// Port A write - camera (cam_pclk domain)
always_ff @(posedge cam_pclk) begin
    if (cam_we)
        cam_fb[cam_wr_addr] <= cam_wr_data;
end

// Pipeline in_cam_region to match BRAM read latency
logic in_cam_region_r;
always_ff @(posedge clk_25MHz) begin
    in_cam_region_r <= in_cam_region;
end

// BRAM initialization
initial begin
    for (int i = 0; i < 600; i++)
        vram[i] = 32'h20202020;
end

logic clk_25MHz;
logic clk_125MHz;
logic locked;
logic reset_ah;

logic hsync;
logic vsync;
logic vde;

logic [9:0] drawX;
logic [9:0] drawY;

// 8-bit color signals
logic [7:0] red;
logic [7:0] green;
logic [7:0] blue;

assign reset_ah = ~axi_aresetn;

clk_wiz_0 clk_wiz (
    .clk_out1(clk_25MHz),
    .clk_out2(clk_125MHz),
    .reset(reset_ah),
    .locked(locked),
    .clk_in1(axi_aclk)
);

vga_controller vga (
    .pixel_clk(clk_25MHz),
    .reset(reset_ah),
    .hs(hsync),
    .vs(vsync),
    .active_nblank(vde),
    .drawX(drawX),
    .drawY(drawY)
);   

// HDMI encoder - 8-bit RGB
hdmi_tx_0 vga_to_hdmi (
    .pix_clk(clk_25MHz),
    .pix_clkx5(clk_125MHz),
    .pix_clk_locked(locked),
    .rst(reset_ah),
    .red(red),
    .green(green),
    .blue(blue),
    .hsync(hsync),
    .vsync(vsync),
    .vde(vde),
    .aux0_din(4'b0),
    .aux1_din(4'b0),
    .aux2_din(4'b0),
    .ade(1'b0),
    .TMDS_CLK_P(hdmi_clk_p),
    .TMDS_CLK_N(hdmi_clk_n),
    .TMDS_DATA_P(hdmi_tx_p),
    .TMDS_DATA_N(hdmi_tx_n)   
);

// Character position from current pixel
logic [6:0] char_x;
logic [6:0] char_y;
logic [2:0] font_col;
logic [3:0] font_row;
logic [12:0] char_index;

logic [9:0] word_index;
logic [1:0] byte_index;
logic [31:0] vram_word;
logic [7:0] char_draw;

logic [10:0] font_addr;
logic [7:0] font_data;
logic pixel_on;

assign char_x = drawX >> 3;
assign char_y = drawY >> 4;
assign font_col = drawX[2:0];
assign font_row = drawY[3:0];
assign char_index = char_y * 80 + char_x;
assign word_index = char_index >> 2;
assign byte_index = char_index[1:0];

// Pipeline registers for BRAM latency
logic [2:0] font_col_r;
logic [3:0] font_row_r;
logic [1:0] byte_index_r;
logic       vde_r;

always_ff @(posedge clk_25MHz) begin
    font_col_r   <= font_col;
    font_row_r   <= font_row;
    byte_index_r <= byte_index;
    vde_r        <= vde;
end

always_comb begin
    case (byte_index_r)
        2'd0: char_draw = vram_word[7:0];
        2'd1: char_draw = vram_word[15:8];
        2'd2: char_draw = vram_word[23:16];
        2'd3: char_draw = vram_word[31:24];
        default: char_draw = 8'h20;
    endcase
end

assign font_addr = {char_draw[6:0], font_row_r};

font_rom font (
    .addr(font_addr),
    .data(font_data)
);

// 8-bit foreground/background colors from color_reg
// color_reg format: [31] cam_mode [27:20] FG_RGB [11:4] BG_RGB
// Expanded to 8-bit by replicating the 4-bit nibbles
logic [7:0] fgd_r, fgd_g, fgd_b, bkg_r, bkg_g, bkg_b;
assign fgd_r = {color_reg[27:24], color_reg[27:24]};
assign fgd_g = {color_reg[23:20], color_reg[23:20]};
assign fgd_b = {color_reg[19:16], color_reg[19:16]};
assign bkg_r = {color_reg[11:8],  color_reg[11:8]};
assign bkg_g = {color_reg[7:4],   color_reg[7:4]};
assign bkg_b = {color_reg[3:0],   color_reg[3:0]};

logic inv;
assign inv = char_draw[7];

assign pixel_on = font_data[7 - font_col_r];

// Color output mux - 8-bit
always_comb begin
    if (!vde_r) begin
        red   = 8'h00;
        green = 8'h00;
        blue  = 8'h00;
    end
    else if (cam_mode && in_cam_region_r) begin
        // Camera grayscale in top-left 320x240
        red   = cam_pixel;
        green = cam_pixel;
        blue  = cam_pixel;
    end
    else if (pixel_on ^ inv) begin
        red   = fgd_r;
        green = fgd_g;
        blue  = fgd_b;
    end
    else begin
        red   = bkg_r;
        green = bkg_g;
        blue  = bkg_b;
    end
end

assign current_draw_x_reg = {22'd0, drawX};
assign current_draw_y_reg = {22'd0, drawY};

// Text VRAM Port A - AXI read/write
always_ff @(posedge axi_aclk) begin
    if (vram_we) begin
        if (vram_wstrb[0]) vram[vram_addr][7:0]   <= vram_wdata[7:0];
        if (vram_wstrb[1]) vram[vram_addr][15:8]  <= vram_wdata[15:8];
        if (vram_wstrb[2]) vram[vram_addr][23:16] <= vram_wdata[23:16];
        if (vram_wstrb[3]) vram[vram_addr][31:24] <= vram_wdata[31:24];
    end
    vram_rdata <= vram[vram_addr];
end

// Text VRAM Port B - Display read
always_ff @(posedge clk_25MHz) begin
    vram_word <= vram[word_index];
end

// Frame counter
logic vsync_p;
logic [31:0] frame_counter_meta; 

always_ff @(posedge clk_25MHz or posedge reset_ah) begin
    if (reset_ah) begin
        frame_counter <= 32'd0;
        vsync_p       <= 1'b0;
    end else begin
        vsync_p <= vsync;
        if (~vsync_p && vsync)
            frame_counter <= frame_counter + 1;
    end
end
 
always_ff @(posedge axi_aclk or posedge reset_ah) begin
    if (reset_ah) begin
        frame_counter_meta <= 32'd0;
        frame_counter_sync <= 32'd0;
    end else begin
        frame_counter_meta <= frame_counter;      
        frame_counter_sync <= frame_counter_meta;  
    end
end

endmodule