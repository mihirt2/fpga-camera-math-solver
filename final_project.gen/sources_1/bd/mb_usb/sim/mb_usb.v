//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Apr 21 21:31:54 2026
//Host        : Levono_MihirT running 64-bit major release  (build 9200)
//Command     : generate_target mb_usb.bd
//Design      : mb_usb
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mb_usb,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mb_usb,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=8,da_board_cnt=3,da_clkrst_cnt=2,da_mb_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "mb_usb.hwdef" *) 
module mb_usb
   (HDMI_0_tmds_clk_n,
    HDMI_0_tmds_clk_p,
    HDMI_0_tmds_data_n,
    HDMI_0_tmds_data_p,
    cam_d_0,
    cam_href_0,
    cam_pclk_0,
    cam_pwdn_0,
    cam_reset_n_0,
    cam_scl_0,
    cam_sda_0,
    cam_vsync_0,
    clk_100MHz,
    clk_out2_0,
    reset_rtl_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 HDMI_0 TMDS_CLK_N" *) output HDMI_0_tmds_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 HDMI_0 TMDS_CLK_P" *) output HDMI_0_tmds_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 HDMI_0 TMDS_DATA_N" *) output [2:0]HDMI_0_tmds_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 HDMI_0 TMDS_DATA_P" *) output [2:0]HDMI_0_tmds_data_p;
  input [7:0]cam_d_0;
  input cam_href_0;
  input cam_pclk_0;
  output cam_pwdn_0;
  output cam_reset_n_0;
  output cam_scl_0;
  inout cam_sda_0;
  input cam_vsync_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN mb_usb_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_100MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_OUT2_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_OUT2_0, CLK_DOMAIN /clk_wiz_1_clk_out1, FREQ_HZ 24000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output clk_out2_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_rtl_0;

  wire Net;
  wire [7:0]cam_d_0_1;
  wire cam_href_0_1;
  wire cam_pclk_0_1;
  wire cam_vsync_0_1;
  wire [16:0]camera_controller_0_bram_addr;
  wire camera_controller_0_bram_we;
  wire [7:0]camera_controller_0_bram_wrdata;
  wire camera_controller_0_cam_pclk_out;
  wire camera_controller_0_cam_pwdn;
  wire camera_controller_0_cam_reset_n;
  wire camera_controller_0_cam_scl;
  wire clk_100MHz_1;
  wire clk_wiz_1_clk_out2;
  wire clk_wiz_1_locked;
  wire hdmi_text_controller_0_HDMI_TMDS_CLK_N;
  wire hdmi_text_controller_0_HDMI_TMDS_CLK_P;
  wire [2:0]hdmi_text_controller_0_HDMI_TMDS_DATA_N;
  wire [2:0]hdmi_text_controller_0_HDMI_TMDS_DATA_P;
  wire [0:0]mdm_1_debug_sys_rst;
  wire microblaze_0_Clk_1;
  wire reset_rtl_0_1;
  wire [0:0]rst_clk_wiz_1_100M_peripheral_aresetn1;
  wire [0:0]xlconstant_1_dout;

  assign HDMI_0_tmds_clk_n = hdmi_text_controller_0_HDMI_TMDS_CLK_N;
  assign HDMI_0_tmds_clk_p = hdmi_text_controller_0_HDMI_TMDS_CLK_P;
  assign HDMI_0_tmds_data_n[2:0] = hdmi_text_controller_0_HDMI_TMDS_DATA_N;
  assign HDMI_0_tmds_data_p[2:0] = hdmi_text_controller_0_HDMI_TMDS_DATA_P;
  assign cam_d_0_1 = cam_d_0[7:0];
  assign cam_href_0_1 = cam_href_0;
  assign cam_pclk_0_1 = cam_pclk_0;
  assign cam_pwdn_0 = camera_controller_0_cam_pwdn;
  assign cam_reset_n_0 = camera_controller_0_cam_reset_n;
  assign cam_scl_0 = camera_controller_0_cam_scl;
  assign cam_vsync_0_1 = cam_vsync_0;
  assign clk_100MHz_1 = clk_100MHz;
  assign clk_out2_0 = clk_wiz_1_clk_out2;
  assign reset_rtl_0_1 = reset_rtl_0;
  mb_usb_camera_controller_0_2 camera_controller_0
       (.bram_addr(camera_controller_0_bram_addr),
        .bram_we(camera_controller_0_bram_we),
        .bram_wrdata(camera_controller_0_bram_wrdata),
        .cam_d(cam_d_0_1),
        .cam_href(cam_href_0_1),
        .cam_pclk(cam_pclk_0_1),
        .cam_pclk_out(camera_controller_0_cam_pclk_out),
        .cam_pwdn(camera_controller_0_cam_pwdn),
        .cam_reset_n(camera_controller_0_cam_reset_n),
        .cam_scl(camera_controller_0_cam_scl),
        .cam_sda(cam_sda_0),
        .cam_vsync(cam_vsync_0_1),
        .s00_axi_aclk(microblaze_0_Clk_1),
        .s00_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn1),
        .s00_axi_arprot({1'b0,1'b0,1'b0}),
        .s00_axi_arvalid(1'b0),
        .s00_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_awprot({1'b0,1'b0,1'b0}),
        .s00_axi_awvalid(1'b0),
        .s00_axi_bready(1'b0),
        .s00_axi_rready(1'b0),
        .s00_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s00_axi_wvalid(1'b0));
  mb_usb_clk_wiz_1_1 clk_wiz_1
       (.clk_in1(clk_100MHz_1),
        .clk_out1(microblaze_0_Clk_1),
        .clk_out2(clk_wiz_1_clk_out2),
        .locked(clk_wiz_1_locked),
        .reset(mdm_1_debug_sys_rst));
  mb_usb_hdmi_text_controller_0_2 hdmi_text_controller_0
       (.axi_aclk(microblaze_0_Clk_1),
        .axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn1),
        .axi_arprot({1'b0,1'b0,1'b0}),
        .axi_arvalid(1'b0),
        .axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_awprot({1'b0,1'b0,1'b0}),
        .axi_awvalid(1'b0),
        .axi_bready(1'b0),
        .axi_rready(1'b0),
        .axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .axi_wvalid(1'b0),
        .cam_pclk(camera_controller_0_cam_pclk_out),
        .cam_we(camera_controller_0_bram_we),
        .cam_wr_addr(camera_controller_0_bram_addr),
        .cam_wr_data(camera_controller_0_bram_wrdata),
        .hdmi_clk_n(hdmi_text_controller_0_HDMI_TMDS_CLK_N),
        .hdmi_clk_p(hdmi_text_controller_0_HDMI_TMDS_CLK_P),
        .hdmi_tx_n(hdmi_text_controller_0_HDMI_TMDS_DATA_N),
        .hdmi_tx_p(hdmi_text_controller_0_HDMI_TMDS_DATA_P));
  mb_usb_rst_clk_wiz_1_100M_1 rst_clk_wiz_1_100M
       (.aux_reset_in(xlconstant_1_dout),
        .dcm_locked(clk_wiz_1_locked),
        .ext_reset_in(reset_rtl_0_1),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .peripheral_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn1),
        .slowest_sync_clk(microblaze_0_Clk_1));
  mb_usb_xlconstant_0_0 xlconstant_0
       (.dout(mdm_1_debug_sys_rst));
  mb_usb_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule
