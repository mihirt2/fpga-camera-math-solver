`timescale 1ns / 1ps
import ocr_pkg::*;

module top_level (
    input  logic        clk_100MHz,
    input  logic        reset_rtl_0,
    input  logic [15:0] sw,
    output logic [15:0] led,

    // HDMI
    output logic        HDMI_0_tmds_clk_n,
    output logic        HDMI_0_tmds_clk_p,
    output logic [2:0]  HDMI_0_tmds_data_n,
    output logic [2:0]  HDMI_0_tmds_data_p,

    // Camera
    inout  wire         cam_sda_0,
    output logic        cam_scl_0,
    input  logic        cam_pclk_0,
    input  logic        cam_vsync_0,
    input  logic        cam_href_0,
    input  logic [7:0]  cam_d_0,
    output logic        cam_pwdn_0,

    // Camera XCLK (~25MHz)
    output logic        clk_out2_0,

    // Button
    input  logic        capture
);

    // -- Resets ---------------------------------------------------------------
    logic reset_ah;
    assign reset_ah = reset_rtl_0;   // active-high reset

    // -- Threshold from switches ----------------------------------------------
    logic [7:0] threshold;
    assign threshold = sw[7:0];
    
    // =========================================================================
    // CAMERA XCLK GENERATION (~25MHz from 100MHz)
    // OV7670 accepts 10-48MHz. 100/4 = 25MHz.
    // =========================================================================
    logic [1:0] xclk_div;
    always_ff @(posedge clk_100MHz) begin
        if (reset_ah)
            xclk_div <= 2'd0;
        else
            xclk_div <= xclk_div + 2'd1;
    end
    assign clk_out2_0 = xclk_div[1];   // 25MHz

    // =========================================================================
    // CAMERA CONTROLLER (I2C init + OV7670 capture)
    // =========================================================================
    logic [16:0] cam_wr_addr;
    logic [7:0]  cam_wr_data;
    logic        cam_we_sig;
    logic        cam_init_done;
    logic        cam_frame_done;

    camera_controller u_cam (
        .clk_25      (clk_out2_0),
        .clk_100     (clk_100MHz),
        .reset       (reset_ah),
        .cam_sda     (cam_sda_0),
        .cam_scl     (cam_scl_0),
        .cam_pclk    (cam_pclk_0),
        .cam_vsync   (cam_vsync_0),
        .cam_href    (cam_href_0),
        .cam_d       (cam_d_0),
        .cam_pwdn    (cam_pwdn_0),
        .cam_reset_n (),
        .cam_wr_addr (cam_wr_addr),
        .cam_wr_data (cam_wr_data),
        .cam_we      (cam_we_sig),
        .init_done   (cam_init_done),
        .frame_done  (cam_frame_done)
    );

    // =========================================================================
    // HDMI CONTROLLER
    // =========================================================================

    // -- Flatten arrays for HDMI module ---------------------------------------
    logic [1151:0] ocr_bboxes_flat;
    logic [255:0]  ocr_result_chars_flat;

    always_comb begin
        for (int i = 0; i < 32; i++) begin
            ocr_bboxes_flat[i*36 +: 36]      = dbg_bboxes[i];
            ocr_result_chars_flat[i*8 +: 8]   = result_chars[i];
        end
    end

    // -- Debug binary image signals -------------------------------------------
    logic [13:0] bin_dbg_raddr;
    logic [31:0] bin_dbg_rdata;

    // -- OCR read port to camera frame buffer ---------------------------------
    logic [16:0] cam_rd_addr;
    logic [7:0]  cam_rd_data;
    logic        cam_rd_en;

    // -- OCR result signals ---------------------------------------------------
    logic [7:0]  result_chars [0:31];
    logic [5:0]  result_len;
    logic        result_valid;
    logic [3:0]  stage_dbg;
    logic        busy;

    // -- Debug bbox signals ---------------------------------------------------
    logic [35:0]                   dbg_bboxes [0:MAX_CHARS-1];
    logic [$clog2(MAX_CHARS)-1:0]  dbg_num_chars;

    hdmi_text_controller_v1_0 u_hdmi (
        // HDMI outputs
        .hdmi_clk_n          (HDMI_0_tmds_clk_n),
        .hdmi_clk_p          (HDMI_0_tmds_clk_p),
        .hdmi_tx_n           (HDMI_0_tmds_data_n),
        .hdmi_tx_p           (HDMI_0_tmds_data_p),

        // AXI clock + reset (HDMI uses axi_aclk for internal PLL)
        .axi_aclk            (clk_100MHz),
        .axi_aresetn         (~reset_ah),

        // AXI slave - tied off (no MicroBlaze)
        .axi_awaddr          (16'd0),
        .axi_awprot          (3'd0),
        .axi_awvalid         (1'b0),
        .axi_awready         (),
        .axi_wdata           (32'd0),
        .axi_wstrb           (4'd0),
        .axi_wvalid          (1'b0),
        .axi_wready          (),
        .axi_bresp           (),
        .axi_bvalid          (),
        .axi_bready          (1'b1),
        .axi_araddr          (16'd0),
        .axi_arprot          (3'd0),
        .axi_arvalid         (1'b0),
        .axi_arready         (),
        .axi_rdata           (),
        .axi_rresp           (),
        .axi_rvalid          (),
        .axi_rready          (1'b1),

        // Camera frame buffer write port
        .cam_pclk            (cam_pclk_0),
        .cam_wr_addr         (cam_wr_addr),
        .cam_wr_data         (cam_wr_data),
        .cam_we              (cam_we_sig),

        // OCR read port into camera frame buffer
        .ocr_rd_addr         (cam_rd_addr),
        .ocr_rd_data         (cam_rd_data),
        .ocr_rd_en           (cam_rd_en),

        // OCR overlay
        .ocr_bboxes_flat     (ocr_bboxes_flat),
        .ocr_num_chars       (dbg_num_chars),
        .ocr_result_chars_flat(ocr_result_chars_flat),
        .ocr_result_len      (result_len),

        // Debug binary image
        .bin_dbg_en          (sw[8]),
        .bin_dbg_raddr       (bin_dbg_raddr),
        .bin_dbg_rdata       (bin_dbg_rdata)
    );

    // =========================================================================
    // OCR PIPELINE
    // =========================================================================
    ocr_parser_top u_ocr (
        .clk           (clk_100MHz),
        .reset         (reset_ah),
        .trigger       (capture),

        .cam_rd_addr   (cam_rd_addr),
        .cam_rd_data   (cam_rd_data),
        .cam_rd_en     (cam_rd_en),

        .threshold     (threshold),
        .adaptive  (sw[9]),
        .result_chars  (result_chars),
        .result_len    (result_len),
        .result_valid  (result_valid),

        .stage_dbg     (stage_dbg),
        .busy          (busy),

        .dbg_bboxes    (dbg_bboxes),
        .dbg_num_chars (dbg_num_chars),

        .bin_dbg_raddr (bin_dbg_raddr),
        .bin_dbg_rdata (bin_dbg_rdata)
    );

    // =========================================================================
    // LED DEBUG MUX
    // =========================================================================
    always_comb begin
        case (sw[15:14])
            2'd0: led = {12'd0, stage_dbg};
            2'd1: led = {11'd0, dbg_num_chars};
            2'd2: led = dbg_bboxes[0][35:20];
            2'd3: led = {cam_init_done, cam_frame_done, busy, result_valid, 4'd0, threshold};
        endcase
    end

endmodule