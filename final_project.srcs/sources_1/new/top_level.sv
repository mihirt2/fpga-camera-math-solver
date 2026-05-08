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

    // USB UART normalized-character dump
    input  logic        uart_rtl_0_rxd,
    output logic        uart_rtl_0_txd,

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
    logic [TEMPLATE_BITS-1:0] dbg_normalized_char;
    logic [MAX_CHARS*TEMPLATE_BITS-1:0] dbg_norm_chars_flat;
    logic [MAX_CHARS*CHAR_CODE_WIDTH-1:0] dbg_char_codes_flat;
    logic [MAX_CHARS*10-1:0] dbg_match_dists_flat;
    logic [CHAR_CODE_WIDTH-1:0] dbg_selected_char_code;
    logic [9:0] dbg_selected_match_dist;
    logic [MAX_CHARS*CHAR_CODE_WIDTH-1:0] dbg_solver_char_codes_flat;
    logic [$clog2(MAX_CHARS+1)-1:0] dbg_solver_num_chars;
    logic dbg_parse_done;
    logic dbg_parse_wait_timeout;
    logic dbg_solver_valid;
    logic dbg_solver_valid_latched;
    logic uart_dump_start;
    logic uart_dump_busy;
    logic external_dump_start;
    logic [MAX_CHARS*CHAR_CODE_WIDTH-1:0] external_char_codes_flat;
    logic external_char_codes_valid;
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

    logic cam_xclk;
    assign cam_xclk   = xclk_div[1];   // 25MHz
    assign clk_out2_0 = cam_xclk;

    // =========================================================================
    // CAMERA CONTROLLER (I2C init + OV7670 capture)
    // =========================================================================
    logic [16:0] cam_wr_addr;
    logic [7:0]  cam_wr_data;
    logic        cam_we_sig;
    logic        cam_init_done;
    logic        cam_frame_done;

    camera_controller u_cam (
        .clk_25      (cam_xclk),
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
    logic [MAX_CHARS*36-1:0]     ocr_bboxes_flat;
    logic [DISPLAY_CHARS*8-1:0]  ocr_result_chars_flat;

    // -- OCR result signals ---------------------------------------------------
    logic [7:0]  result_chars [0:DISPLAY_CHARS-1];
    logic [$clog2(DISPLAY_CHARS+1)-1:0] result_len;
    logic        result_valid;
    logic [3:0]  stage_dbg;
    logic        busy;

    // -- Debug bbox signals ---------------------------------------------------
    logic [35:0]                   dbg_bboxes [0:MAX_CHARS-1];
    logic [$clog2(MAX_CHARS+1)-1:0]  dbg_num_chars;

    always_comb begin
        for (int i = 0; i < DISPLAY_CHARS; i++)
            ocr_result_chars_flat[i*8 +: 8] = result_chars[i];

        for (int i = 0; i < MAX_CHARS; i++)
            ocr_bboxes_flat[i*36 +: 36] = dbg_bboxes[i];
    end

    // -- Binary debug display is disabled to avoid duplicating the binary FB BRAM.
    logic [13:0] bin_dbg_raddr_unused;

    // -- OCR read port to camera frame buffer ---------------------------------
    logic [16:0] cam_rd_addr;
    logic [7:0]  cam_rd_data;
    logic        cam_rd_en;

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
        .dbg_solver_char_codes_flat(dbg_solver_char_codes_flat),
        .dbg_solver_num_chars(dbg_solver_num_chars),
        .dbg_parse_done      (dbg_parse_done),
        .dbg_parse_wait_timeout(dbg_parse_wait_timeout),
        .dbg_solver_valid    (dbg_solver_valid),
        .dbg_solver_valid_latched(dbg_solver_valid_latched),

        // Debug binary image
        .bin_dbg_en          (1'b0),
        .bin_dbg_raddr       (bin_dbg_raddr_unused),
        .bin_dbg_rdata       (32'd0),
        // debug char
        .dbg_normalized_char (dbg_normalized_char),
        .dbg_norm_chars_flat (dbg_norm_chars_flat)
    );

    // =========================================================================
    // OCR PIPELINE
    // =========================================================================
    ocr_parser_top #(
        // FPGA dumps normalized crops; PC classifies and sends char codes back.
        .USE_EXTERNAL_CLASSIFIER(1'b1),
        .USE_CNN_MATCH(1'b0)
    ) u_ocr (
        .clk           (clk_100MHz),
        .reset         (reset_ah),
        .trigger       (capture),

        .cam_rd_addr   (cam_rd_addr),
        .cam_rd_data   (cam_rd_data),
        .cam_rd_en     (cam_rd_en),

        .threshold     (threshold),
        .adaptive  (sw[9]),
        .external_dump_start(external_dump_start),
        .external_char_codes_flat(external_char_codes_flat),
        .external_char_codes_valid(external_char_codes_valid),
        .result_chars  (result_chars),
        .result_len    (result_len),
        .result_valid  (result_valid),

        .stage_dbg     (stage_dbg),
        .busy          (busy),

        .dbg_bboxes    (dbg_bboxes),
        .dbg_num_chars (dbg_num_chars),

        .dbg_char_sel  ({1'b0, sw[13:11]}),
        .dbg_normalized_char (dbg_normalized_char),
        .dbg_norm_chars_flat (dbg_norm_chars_flat),
        .dbg_char_codes_flat (dbg_char_codes_flat),
        .dbg_match_dists_flat(dbg_match_dists_flat),
        .dbg_selected_char_code(dbg_selected_char_code),
        .dbg_selected_match_dist(dbg_selected_match_dist),
        .dbg_solver_char_codes_flat(dbg_solver_char_codes_flat),
        .dbg_solver_num_chars(dbg_solver_num_chars),
        .dbg_parse_done(dbg_parse_done),
        .dbg_parse_wait_timeout(dbg_parse_wait_timeout),
        .dbg_solver_valid(dbg_solver_valid),
        .dbg_solver_valid_latched(dbg_solver_valid_latched)
    );

    assign uart_dump_start = external_dump_start && !uart_dump_busy;

    external_class_uart_rx #(
        .CLK_HZ (100_000_000),
        .BAUD   (115200)
    ) u_external_class_uart_rx (
        .clk             (clk_100MHz),
        .reset           (reset_ah),
        .rx              (uart_rtl_0_rxd),
        .expected_chars  (dbg_num_chars),
        .char_codes_flat (external_char_codes_flat),
        .valid           (external_char_codes_valid)
    );

    norm_uart_dump #(
        .CLK_HZ (100_000_000),
        .BAUD   (115200)
    ) u_norm_uart_dump (
        .clk             (clk_100MHz),
        .reset           (reset_ah),
        .start           (uart_dump_start),
        .num_chars       (dbg_num_chars),
        .norm_chars_flat (dbg_norm_chars_flat),
        .char_codes_flat (dbg_char_codes_flat),
        .match_dists_flat(dbg_match_dists_flat),
        .tx              (uart_rtl_0_txd),
        .busy            (uart_dump_busy)
    );

    // =========================================================================
    // LED DEBUG MUX
    // =========================================================================
        logic norm_any_pixel;

        assign norm_any_pixel = |dbg_normalized_char;

    always_comb begin
        case (sw[15:14])
            2'd0: led = {12'd0, stage_dbg};
            2'd1: led = {11'd0, dbg_num_chars};
            2'd2: led = {1'b0, dbg_selected_char_code, dbg_selected_match_dist};
            2'd3: led = {cam_init_done, cam_frame_done, busy, result_valid,
             uart_dump_busy, norm_any_pixel, 2'd0, threshold};
        endcase
    end

endmodule
