`timescale 1 ns / 1 ps
  import ocr_pkg::*;
  // OCR display constants (match ocr_pkg)
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
    input  logic        bin_dbg_en,       // sw[8]: show binary instead of camera
    output logic [13:0] bin_dbg_raddr,    // address into binary frame buffer
    input  logic [31:0] bin_dbg_rdata,    // 32 packed pixels from binary FB
    
    // Camera frame buffer write port
    input logic        cam_pclk,
    input logic [16:0] cam_wr_addr,
    input logic [7:0]  cam_wr_data,
    input logic        cam_we,
    
    // OCR read port (axi_aclk domain)
input  logic [16:0] ocr_rd_addr,    // was cam_rd_addr
output logic [7:0]  ocr_rd_data,    // was cam_rd_data
input  logic        ocr_rd_en,      // was cam_rd_en

input logic [1151:0] ocr_bboxes_flat,       // 32 x 36 = 1152 bits
input logic [4:0]    ocr_num_chars,
input logic [255:0]  ocr_result_chars_flat,  // 32 x 8  = 256 bits
input logic [5:0]    ocr_result_len,

input logic [TEMPLATE_BITS-1:0]         dbg_normalized_char,
input logic [MAX_CHARS*TEMPLATE_BITS-1:0] dbg_norm_chars_flat
);

localparam int TEXT_Y_START = IMG_H - CHAR_H;  // 208
localparam int TEXT_MAX    = IMG_W / CHAR_W;    // 20


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
assign cam_mode = 1'b1;

logic clk_25MHz;
logic clk_125MHz;
logic locked;
logic reset_ah;

logic hsync;
logic vsync;
logic vde;

logic [9:0] drawX;
logic [9:0] drawY;
logic [9:0] drawX_r;
logic [9:0] drawY_r;

logic [7:0] red;
logic [7:0] green;
logic [7:0] blue;

// Camera read
logic [16:0] cam_rd_addr;
logic [7:0]  cam_pixel;
logic        in_cam_region;
 // ?? Binary debug image display ???????????????????????????????????????
    // Compute which word and bit in the binary FB correspond to (drawX, drawY)
    // linear = drawY * 320 + drawX
    // word   = linear >> 5
    // bit    = linear & 31
    
    logic [18:0] bin_dbg_linear;
    logic [13:0] bin_dbg_word;
    logic [4:0]  bin_dbg_bit;
 
    assign bin_dbg_linear = ({8'b0, drawY[8:0]} << 8)
                          + ({8'b0, drawY[8:0]} << 6)
                          + {9'b0, drawX[9:0]};
    assign bin_dbg_word   = bin_dbg_linear[18:5];
    assign bin_dbg_bit    = bin_dbg_linear[4:0];
 
    // Issue read address (port runs on axi_aclk = 100MHz inside OCR,
    // but address is stable for many 100MHz cycles per pixel at 25MHz)
    assign bin_dbg_raddr = bin_dbg_word;
 
    // Pipeline to match cam_pixel latency (1 cycle)
    logic [4:0]  bin_dbg_bit_r;
    logic        bin_dbg_en_r;
 
    always_ff @(posedge clk_25MHz) begin
        bin_dbg_bit_r <= bin_dbg_bit;
        bin_dbg_en_r  <= bin_dbg_en && in_cam_region;
    end
 
    // Extract the single pixel from the 32-bit word
    logic bin_dbg_pixel;
    assign bin_dbg_pixel = bin_dbg_rdata[bin_dbg_bit_r];
assign in_cam_region = (drawX < 10'd320) && (drawY < 10'd240);
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

logic [35:0] ocr_bboxes [0:31];
logic [7:0]  ocr_result_chars [0:31];

always_comb begin
    for (int i = 0; i < 32; i++) begin
        ocr_bboxes[i]       = ocr_bboxes_flat[i*36 +: 36];
        ocr_result_chars[i] = ocr_result_chars_flat[i*8 +: 8];
    end
end
// ???????????????????????????????????????????????????????????????????????
// TEXT VRAM CHARACTER LOOKUP (existing - unchanged)
// ???????????????????????????????????????????????????????????????????????
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

logic [2:0] font_col_r;
logic [3:0] font_row_r;
logic [1:0] byte_index_r;
logic       vde_r;
logic in_norm_region_r;
logic norm_dbg_pixel;
logic norm_strip_active;
logic norm_strip_pixel;
logic norm_strip_border;

localparam int NORM_STRIP_X     = 336;
localparam int NORM_STRIP_Y     = 48;
localparam int NORM_STRIP_SCALE = 2;
localparam int NORM_STRIP_W     = CHAR_W * NORM_STRIP_SCALE;
localparam int NORM_STRIP_H     = CHAR_H * NORM_STRIP_SCALE;
localparam int NORM_STRIP_PITCH = NORM_STRIP_W + 8;

always_comb begin
    int rel_x;
    int rel_y;
    int cell_x;
    int cell_idx;
    int pix_x;
    int pix_y;
    int bit_idx;

    norm_strip_active = 1'b0;
    norm_strip_pixel  = 1'b0;
    norm_strip_border = 1'b0;

    rel_x = int'(drawX_r) - NORM_STRIP_X;
    rel_y = int'(drawY_r) - NORM_STRIP_Y;

    if (rel_x >= 0 && rel_y >= 0 &&
        rel_x < (8 * NORM_STRIP_PITCH) &&
        rel_y < (NORM_STRIP_H + 2)) begin
        cell_idx = rel_x / NORM_STRIP_PITCH;
        cell_x   = rel_x - cell_idx * NORM_STRIP_PITCH;

        if (cell_idx < 8 && cell_x < NORM_STRIP_W && cell_idx < ocr_num_chars) begin
            norm_strip_active = 1'b1;
            norm_strip_border = (cell_x == 0) || (cell_x == NORM_STRIP_W - 1) ||
                                (rel_y == 0) || (rel_y == NORM_STRIP_H - 1);

            if (rel_y < NORM_STRIP_H) begin
                pix_x = cell_x / NORM_STRIP_SCALE;
                pix_y = rel_y / NORM_STRIP_SCALE;
                bit_idx = cell_idx * TEMPLATE_BITS
                        + (TEMPLATE_BITS - 1 - pix_y * CHAR_W - pix_x);
                norm_strip_pixel = dbg_norm_chars_flat[bit_idx];
            end
        end
    end
end

always_ff @(posedge clk_25MHz) begin
    in_norm_region_r <= (drawX >= 300) && (drawX < 316) && (drawY < 32);
end

// Use drawX_r/drawY_r (delayed) for pixel extraction
assign norm_dbg_pixel = dbg_normalized_char[
    TEMPLATE_BITS - 1 - drawY_r[4:0] * CHAR_W - (drawX_r - 10'd300)];

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


// second read port on cam_fb
always_ff @(posedge axi_aclk) begin
    if (ocr_rd_en)
        ocr_rd_data <= cam_fb[ocr_rd_addr];
end
// Delay drawX/drawY by 1 cycle to match cam_pixel / in_cam_region_r timing
always_ff @(posedge clk_25MHz) begin
    drawX_r <= drawX;
    drawY_r <= drawY;
end

logic on_bbox_edge;

always_comb begin
    on_bbox_edge = 1'b0;
    for (int i = 0; i < MAX_CHARS; i++) begin
        if (i < ocr_num_chars) begin
            automatic logic [9:0] x_min = ocr_bboxes[i][35:26];
            automatic logic [9:0] x_max = ocr_bboxes[i][25:16];
            automatic logic [7:0] y_min = ocr_bboxes[i][15:8];
            automatic logic [7:0] y_max = ocr_bboxes[i][7:0];

            automatic logic in_x = (drawX_r >= x_min) && (drawX_r <= x_max);
            automatic logic in_y = (drawY_r >= y_min) && (drawY_r <= y_max);

            automatic logic on_v = in_y && (drawX_r == x_min || drawX_r == x_max);
            automatic logic on_h = in_x && (drawY_r == y_min || drawY_r == y_max);

            if (on_v || on_h)
                on_bbox_edge = 1'b1;
        end
    end
end

// ???????????????????????????????????????????????????????????????????????
// OCR TEXT OVERLAY (1-cycle pipeline using font_rom_16x32_digits)
//
// Draws result string at bottom of camera region (y = 208..239)
// ???????????????????????????????????????????????????????????????????????

localparam int TEXT_MAX_CHARS = IMG_W / CHAR_W;  // 20

// ?? Stage 0: compute text position, issue font ROM read ??????????????
logic [4:0]  ocr_char_slot;    // which character in result (0..19)
logic [3:0]  ocr_char_col;     // pixel column within glyph (0..15)
logic [4:0]  ocr_char_row;     // pixel row within glyph (0..31)
logic        ocr_in_text;      // pixel is in text bar AND has a character
logic        ocr_in_bar;       // pixel is in the text bar background

assign ocr_char_slot = drawX[8:4];                    // drawX / 16
assign ocr_char_col  = drawX[3:0];                    // drawX % 16
assign ocr_char_row  = drawY[4:0] - TEXT_Y_START[4:0]; // row within glyph

assign ocr_in_bar  = (drawY >= TEXT_Y_START) && (drawY < IMG_H)
                   && (drawX < IMG_W);
assign ocr_in_text = ocr_in_bar && (ocr_char_slot < ocr_result_len);

// font ROM for OCR result text (16x32 glyphs)
logic [6:0]  ocr_rom_char;
logic [4:0]  ocr_rom_row;
logic [15:0] ocr_rom_bits;

assign ocr_rom_char = ocr_in_text ? ocr_result_chars[ocr_char_slot][6:0] : 7'h20;
assign ocr_rom_row  = ocr_char_row;

font_rom_16x32_digits u_ocr_font_rom (
    .clk       (clk_25MHz),
    .char_code (ocr_rom_char),
    .row       (ocr_rom_row),
    .bits      (ocr_rom_bits)
);

// ?? Stage 1: delayed signals + glyph bit extraction ??????????????????
logic        ocr_in_text_r;
logic        ocr_in_bar_r;
logic [3:0]  ocr_char_col_r;

always_ff @(posedge clk_25MHz) begin
    ocr_in_text_r  <= ocr_in_text;
    ocr_in_bar_r   <= ocr_in_bar;
    ocr_char_col_r <= ocr_char_col;
end

// bit 15 = leftmost pixel (col 0), bit 0 = rightmost (col 15)
logic ocr_pixel_on;
assign ocr_pixel_on = ocr_rom_bits[CHAR_W - 1 - ocr_char_col_r];

// ???????????????????????????????????????????????????????????????????????
// FINAL COLOR MUX (priority: text overlay > bbox > camera > vram text)
// ???????????????????????????????????????????????????????????????????????
always_comb begin
    if (!vde_r) begin
        // blanking
        red   = 8'h00;
        green = 8'h00;
        blue  = 8'h00;
    end
    else if (ocr_in_text_r && ocr_pixel_on) begin
        // OCR result text: white on black
        red   = 8'hFF;
        green = 8'hFF;
        blue  = 8'hFF;
    end
    else if (ocr_in_bar_r) begin
        // text bar background: black
        red   = 8'h00;
        green = 8'h00;
        blue  = 8'h00;
    end
    else if (in_norm_region_r) begin
        red   = norm_dbg_pixel ? 8'h00 : 8'h08;
        green = norm_dbg_pixel ? 8'hFF : 8'h08;
        blue  = norm_dbg_pixel ? 8'h00 : 8'h08;
    end
    else if (norm_strip_active) begin
        // Capture strip: black ink on white, red border around each char.
        red   = norm_strip_border ? 8'hFF : (norm_strip_pixel ? 8'h00 : 8'hFF);
        green = norm_strip_border ? 8'h00 : (norm_strip_pixel ? 8'h00 : 8'hFF);
        blue  = norm_strip_border ? 8'h00 : (norm_strip_pixel ? 8'h00 : 8'hFF);
    end
    else if (on_bbox_edge) begin
        // bounding box edges: red
        red   = 8'hFF;
        green = 8'h00;
        blue  = 8'h00;
    end
    else if (bin_dbg_en_r) begin
        // binary debug view: white = ink pixel, black = background
        red   = bin_dbg_pixel ? 8'hFF : 8'h00;
        green = bin_dbg_pixel ? 8'hFF : 8'h00;
        blue  = bin_dbg_pixel ? 8'hFF : 8'h00;
    end
    else if (cam_mode && in_cam_region_r) begin
        // normal camera grayscale
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
