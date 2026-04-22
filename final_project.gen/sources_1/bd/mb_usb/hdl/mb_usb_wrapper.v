//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Tue Apr 21 21:31:55 2026
//Host        : Levono_MihirT running 64-bit major release  (build 9200)
//Command     : generate_target mb_usb_wrapper.bd
//Design      : mb_usb_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb_usb_wrapper
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
  output HDMI_0_tmds_clk_n;
  output HDMI_0_tmds_clk_p;
  output [2:0]HDMI_0_tmds_data_n;
  output [2:0]HDMI_0_tmds_data_p;
  input [7:0]cam_d_0;
  input cam_href_0;
  input cam_pclk_0;
  output cam_pwdn_0;
  output cam_reset_n_0;
  output cam_scl_0;
  inout cam_sda_0;
  input cam_vsync_0;
  input clk_100MHz;
  output clk_out2_0;
  input reset_rtl_0;

  wire HDMI_0_tmds_clk_n;
  wire HDMI_0_tmds_clk_p;
  wire [2:0]HDMI_0_tmds_data_n;
  wire [2:0]HDMI_0_tmds_data_p;
  wire [7:0]cam_d_0;
  wire cam_href_0;
  wire cam_pclk_0;
  wire cam_pwdn_0;
  wire cam_reset_n_0;
  wire cam_scl_0;
  wire cam_sda_0;
  wire cam_vsync_0;
  wire clk_100MHz;
  wire clk_out2_0;
  wire reset_rtl_0;

  mb_usb mb_usb_i
       (.HDMI_0_tmds_clk_n(HDMI_0_tmds_clk_n),
        .HDMI_0_tmds_clk_p(HDMI_0_tmds_clk_p),
        .HDMI_0_tmds_data_n(HDMI_0_tmds_data_n),
        .HDMI_0_tmds_data_p(HDMI_0_tmds_data_p),
        .cam_d_0(cam_d_0),
        .cam_href_0(cam_href_0),
        .cam_pclk_0(cam_pclk_0),
        .cam_pwdn_0(cam_pwdn_0),
        .cam_reset_n_0(cam_reset_n_0),
        .cam_scl_0(cam_scl_0),
        .cam_sda_0(cam_sda_0),
        .cam_vsync_0(cam_vsync_0),
        .clk_100MHz(clk_100MHz),
        .clk_out2_0(clk_out2_0),
        .reset_rtl_0(reset_rtl_0));
endmodule
