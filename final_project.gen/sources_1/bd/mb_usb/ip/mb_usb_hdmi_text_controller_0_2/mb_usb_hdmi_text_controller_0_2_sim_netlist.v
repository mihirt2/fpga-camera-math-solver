// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Apr 21 15:57:16 2026
// Host        : Levono_MihirT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ishur/final_project/final_project.gen/sources_1/bd/mb_usb/ip/mb_usb_hdmi_text_controller_0_2/mb_usb_hdmi_text_controller_0_2_sim_netlist.v
// Design      : mb_usb_hdmi_text_controller_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mb_usb_hdmi_text_controller_0_2,hdmi_text_controller_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "hdmi_text_controller_v1_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module mb_usb_hdmi_text_controller_0_2
   (hdmi_clk_n,
    hdmi_clk_p,
    hdmi_tx_n,
    hdmi_tx_p,
    axi_aclk,
    axi_aresetn,
    axi_awaddr,
    axi_awprot,
    axi_awvalid,
    axi_awready,
    axi_wdata,
    axi_wstrb,
    axi_wvalid,
    axi_wready,
    axi_bresp,
    axi_bvalid,
    axi_bready,
    axi_araddr,
    axi_arprot,
    axi_arvalid,
    axi_arready,
    axi_rdata,
    axi_rresp,
    axi_rvalid,
    axi_rready,
    cam_pclk,
    cam_wr_addr,
    cam_wr_data,
    cam_we);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 hdmi_clk_n CLK, xilinx.com:interface:hdmi:2.0 HDMI TMDS_CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME hdmi_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output hdmi_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 hdmi_clk_p CLK, xilinx.com:interface:hdmi:2.0 HDMI TMDS_CLK_P" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME hdmi_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output hdmi_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 HDMI TMDS_DATA_N" *) output [2:0]hdmi_tx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 HDMI TMDS_DATA_P" *) output [2:0]hdmi_tx_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_CLK, ASSOCIATED_BUSIF AXI, ASSOCIATED_RESET axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWADDR" *) input [15:0]axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWPROT" *) input [2:0]axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWVALID" *) input axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI AWREADY" *) output axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WDATA" *) input [31:0]axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WSTRB" *) input [3:0]axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WVALID" *) input axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI WREADY" *) output axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI BRESP" *) output [1:0]axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI BVALID" *) output axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI BREADY" *) input axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARADDR" *) input [15:0]axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARPROT" *) input [2:0]axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARVALID" *) input axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI ARREADY" *) output axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RDATA" *) output [31:0]axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RRESP" *) output [1:0]axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RVALID" *) output axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input axi_rready;
  input cam_pclk;
  input [16:0]cam_wr_addr;
  input [15:0]cam_wr_data;
  input cam_we;

  wire \<const0> ;
  (* IBUF_LOW_PWR *) wire axi_aclk;
  wire [15:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready;
  wire axi_arvalid;
  wire [15:0]axi_awaddr;
  wire axi_awready;
  wire axi_awvalid;
  wire axi_bready;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire axi_rvalid;
  wire [31:0]axi_wdata;
  wire axi_wready;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire cam_pclk;
  wire cam_we;
  wire [16:0]cam_wr_addr;
  wire [15:0]cam_wr_data;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire hdmi_clk_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire hdmi_clk_p;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]hdmi_tx_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]hdmi_tx_p;

  assign axi_bresp[1] = \<const0> ;
  assign axi_bresp[0] = \<const0> ;
  assign axi_rresp[1] = \<const0> ;
  assign axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  mb_usb_hdmi_text_controller_0_2_hdmi_text_controller_v1_0 inst
       (.axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr[11:2]),
        .axi_aresetn(axi_aresetn),
        .axi_arready(axi_arready),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr[11:2]),
        .axi_awready(axi_awready),
        .axi_awvalid(axi_awvalid),
        .axi_bready(axi_bready),
        .axi_bvalid(axi_bvalid),
        .axi_rdata(axi_rdata),
        .axi_rready(axi_rready),
        .axi_rvalid(axi_rvalid),
        .axi_wdata(axi_wdata),
        .axi_wready(axi_wready),
        .axi_wstrb(axi_wstrb),
        .axi_wvalid(axi_wvalid),
        .cam_pclk(cam_pclk),
        .cam_we(cam_we),
        .cam_wr_addr(cam_wr_addr),
        .cam_wr_data(cam_wr_data[15:12]),
        .hdmi_clk_n(hdmi_clk_n),
        .hdmi_clk_p(hdmi_clk_p),
        .hdmi_tx_n(hdmi_tx_n),
        .hdmi_tx_p(hdmi_tx_p));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0" *) 
module mb_usb_hdmi_text_controller_0_2_clk_wiz_0
   (clk_out1,
    clk_out2,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out2;
  wire locked;
  wire reset;

  mb_usb_hdmi_text_controller_0_2_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .locked(locked),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module mb_usb_hdmi_text_controller_0_2_clk_wiz_0_clk_wiz
   (clk_out1,
    clk_out2,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  output clk_out2;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clk_out2;
  wire clk_out2_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire locked;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .CCIO_EN("TRUE"),
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk_out2_clk_wiz_0),
        .O(clk_out2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(40.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(8),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_out2_clk_wiz_0),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

(* ORIG_REF_NAME = "encode" *) 
module mb_usb_hdmi_text_controller_0_2_encode
   (vde_reg,
    ade_reg,
    ade_reg_qq,
    ade_reg_qq_reg_0,
    ade_reg_reg_0,
    D,
    c0_reg_reg_0,
    vde_reg_reg_0,
    c0_reg_reg_1,
    Q,
    pix_clk,
    data_o,
    \dout_reg[9]_0 ,
    \dout_reg[9]_1 ,
    \dout_reg[8]_0 ,
    c0_reg,
    AR);
  output vde_reg;
  output ade_reg;
  output ade_reg_qq;
  output ade_reg_qq_reg_0;
  output ade_reg_reg_0;
  output [1:0]D;
  output c0_reg_reg_0;
  output vde_reg_reg_0;
  output c0_reg_reg_1;
  output [9:0]Q;
  input pix_clk;
  input [13:0]data_o;
  input \dout_reg[9]_0 ;
  input \dout_reg[9]_1 ;
  input \dout_reg[8]_0 ;
  input c0_reg;
  input [0:0]AR;

  wire [0:0]AR;
  wire [1:0]D;
  wire [9:0]Q;
  wire ade_q;
  wire ade_reg;
  wire ade_reg_q;
  wire ade_reg_qq;
  wire ade_reg_qq_reg_0;
  wire ade_reg_reg_0;
  wire [3:2]adin_q;
  wire \adin_reg_reg_n_0_[3] ;
  wire c0_q;
  wire c0_reg;
  wire c0_reg_0;
  wire c0_reg_reg_0;
  wire c0_reg_reg_1;
  wire c1_q;
  wire c1_reg;
  wire [4:1]cnt;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[1]_i_2_n_0 ;
  wire \cnt[1]_i_3_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[2]_i_2_n_0 ;
  wire \cnt[2]_i_3__1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt[3]_i_3_n_0 ;
  wire \cnt[3]_i_4_n_0 ;
  wire \cnt[3]_i_5_n_0 ;
  wire \cnt[3]_i_6_n_0 ;
  wire \cnt[3]_i_7__1_n_0 ;
  wire \cnt[3]_i_8_n_0 ;
  wire \cnt[4]_i_10_n_0 ;
  wire \cnt[4]_i_11_n_0 ;
  wire \cnt[4]_i_12_n_0 ;
  wire \cnt[4]_i_13_n_0 ;
  wire \cnt[4]_i_14__1_n_0 ;
  wire \cnt[4]_i_15_n_0 ;
  wire \cnt[4]_i_16_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[4]_i_2_n_0 ;
  wire \cnt[4]_i_3_n_0 ;
  wire \cnt[4]_i_4_n_0 ;
  wire \cnt[4]_i_5_n_0 ;
  wire \cnt[4]_i_6_n_0 ;
  wire \cnt[4]_i_7_n_0 ;
  wire \cnt[4]_i_8_n_0 ;
  wire \cnt[4]_i_9_n_0 ;
  wire [13:0]data_o;
  wire \dout[0]_i_1_n_0 ;
  wire \dout[0]_i_2__0_n_0 ;
  wire \dout[0]_i_3_n_0 ;
  wire \dout[0]_i_4_n_0 ;
  wire \dout[1]_i_1_n_0 ;
  wire \dout[1]_i_2__0_n_0 ;
  wire \dout[1]_i_3_n_0 ;
  wire \dout[2]_i_1_n_0 ;
  wire \dout[2]_i_2__1_n_0 ;
  wire \dout[3]_i_1_n_0 ;
  wire \dout[3]_i_2_n_0 ;
  wire \dout[3]_i_3_n_0 ;
  wire \dout[4]_i_1_n_0 ;
  wire \dout[4]_i_2__0_n_0 ;
  wire \dout[4]_i_3_n_0 ;
  wire \dout[4]_i_4_n_0 ;
  wire \dout[5]_i_1_n_0 ;
  wire \dout[5]_i_2__0_n_0 ;
  wire \dout[5]_i_3__0_n_0 ;
  wire \dout[6]_i_1_n_0 ;
  wire \dout[6]_i_2_n_0 ;
  wire \dout[6]_i_3__0_n_0 ;
  wire \dout[6]_i_4_n_0 ;
  wire \dout[7]_i_1_n_0 ;
  wire \dout[7]_i_2__1_n_0 ;
  wire \dout[7]_i_3__0_n_0 ;
  wire \dout[8]_i_1__1_n_0 ;
  wire \dout[8]_i_2__0_n_0 ;
  wire \dout[9]_i_1_n_0 ;
  wire \dout[9]_i_2_n_0 ;
  wire \dout[9]_i_3_n_0 ;
  wire \dout[9]_i_4_n_0 ;
  wire \dout_reg[8]_0 ;
  wire \dout_reg[9]_0 ;
  wire \dout_reg[9]_1 ;
  wire [3:1]n0q_m;
  wire [3:1]n0q_m0;
  wire \n0q_m[3]_i_2_n_0 ;
  wire \n0q_m[3]_i_3_n_0 ;
  wire \n0q_m[3]_i_4_n_0 ;
  wire \n0q_m[3]_i_5_n_0 ;
  wire [3:0]n1d;
  wire [3:0]n1d0;
  wire \n1d[0]_i_2_n_0 ;
  wire \n1d[1]_i_2_n_0 ;
  wire \n1d[2]_i_2_n_0 ;
  wire \n1d[3]_i_2_n_0 ;
  wire \n1d[3]_i_3_n_0 ;
  wire \n1d[3]_i_4_n_0 ;
  wire [3:1]n1q_m;
  wire [3:1]n1q_m0;
  wire \n1q_m[2]_i_1_n_0 ;
  wire \n1q_m[2]_i_2_n_0 ;
  wire \n1q_m[2]_i_3_n_0 ;
  wire \n1q_m[3]_i_2_n_0 ;
  wire \n1q_m[3]_i_3_n_0 ;
  wire \n1q_m[3]_i_4_n_0 ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire p_0_in_1;
  wire p_1_in;
  wire pix_clk;
  wire q_m_1;
  wire q_m_2;
  wire q_m_3;
  wire q_m_4;
  wire q_m_6;
  wire q_m_7;
  wire \q_m_reg[5]_i_1_n_0 ;
  wire \q_m_reg[7]_i_2_n_0 ;
  wire \q_m_reg[7]_i_3_n_0 ;
  wire \q_m_reg[8]_i_1_n_0 ;
  wire \q_m_reg_reg_n_0_[0] ;
  wire \q_m_reg_reg_n_0_[1] ;
  wire \q_m_reg_reg_n_0_[2] ;
  wire \q_m_reg_reg_n_0_[3] ;
  wire \q_m_reg_reg_n_0_[4] ;
  wire \q_m_reg_reg_n_0_[5] ;
  wire \q_m_reg_reg_n_0_[6] ;
  wire \q_m_reg_reg_n_0_[7] ;
  wire vde_q;
  wire vde_reg;
  wire vde_reg_reg_0;
  wire \vdin_q_reg_n_0_[0] ;

  FDRE ade_q_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[0]),
        .Q(ade_q),
        .R(1'b0));
  FDRE ade_reg_q_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(ade_reg),
        .Q(ade_reg_q),
        .R(1'b0));
  FDRE ade_reg_qq_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(ade_reg_q),
        .Q(ade_reg_qq),
        .R(1'b0));
  FDRE ade_reg_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(ade_q),
        .Q(ade_reg),
        .R(1'b0));
  FDRE \adin_q_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[4]),
        .Q(adin_q[2]),
        .R(1'b0));
  FDRE \adin_q_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[5]),
        .Q(adin_q[3]),
        .R(1'b0));
  FDRE \adin_reg_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(adin_q[2]),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \adin_reg_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(adin_q[3]),
        .Q(\adin_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE c0_q_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[3]),
        .Q(c0_q),
        .R(1'b0));
  FDRE c0_reg_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(c0_q),
        .Q(c0_reg_0),
        .R(1'b0));
  FDRE c1_q_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[2]),
        .Q(c1_q),
        .R(1'b0));
  FDRE c1_reg_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(c1_q),
        .Q(c1_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0A0A8228A0A08228)) 
    \cnt[1]_i_1 
       (.I0(vde_reg),
        .I1(\cnt[4]_i_3_n_0 ),
        .I2(cnt[1]),
        .I3(\cnt[1]_i_2_n_0 ),
        .I4(\cnt[4]_i_5_n_0 ),
        .I5(\cnt[1]_i_3_n_0 ),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \cnt[1]_i_2 
       (.I0(n0q_m[1]),
        .I1(p_0_in),
        .I2(n1q_m[1]),
        .O(\cnt[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_3 
       (.I0(n1q_m[1]),
        .I1(n0q_m[1]),
        .O(\cnt[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \cnt[2]_i_1 
       (.I0(vde_reg),
        .I1(\cnt[2]_i_2_n_0 ),
        .I2(\cnt[4]_i_5_n_0 ),
        .I3(\cnt[2]_i_3__1_n_0 ),
        .O(\cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6C9CC9C6636C39C9)) 
    \cnt[2]_i_2 
       (.I0(\cnt[4]_i_3_n_0 ),
        .I1(\cnt[3]_i_8_n_0 ),
        .I2(cnt[1]),
        .I3(n0q_m[1]),
        .I4(p_0_in),
        .I5(n1q_m[1]),
        .O(\cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAA6996AA)) 
    \cnt[2]_i_3__1 
       (.I0(\cnt[3]_i_8_n_0 ),
        .I1(cnt[1]),
        .I2(p_0_in),
        .I3(n0q_m[1]),
        .I4(n1q_m[1]),
        .O(\cnt[2]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h02A2A202A20202A2)) 
    \cnt[3]_i_1 
       (.I0(vde_reg),
        .I1(\cnt[3]_i_2_n_0 ),
        .I2(\cnt[4]_i_5_n_0 ),
        .I3(\cnt[3]_i_3_n_0 ),
        .I4(\cnt[3]_i_4_n_0 ),
        .I5(\cnt[3]_i_5_n_0 ),
        .O(\cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \cnt[3]_i_2 
       (.I0(\cnt[4]_i_13_n_0 ),
        .I1(\cnt[3]_i_6_n_0 ),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(\cnt[4]_i_7_n_0 ),
        .I4(\cnt[3]_i_7__1_n_0 ),
        .I5(\cnt[4]_i_8_n_0 ),
        .O(\cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt[3]_i_3 
       (.I0(cnt[3]),
        .I1(n0q_m[3]),
        .I2(n1q_m[3]),
        .O(\cnt[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB28E)) 
    \cnt[3]_i_4 
       (.I0(cnt[2]),
        .I1(n0q_m[2]),
        .I2(n1q_m[2]),
        .I3(p_0_in),
        .O(\cnt[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFEBF0820)) 
    \cnt[3]_i_5 
       (.I0(cnt[1]),
        .I1(p_0_in),
        .I2(n0q_m[1]),
        .I3(n1q_m[1]),
        .I4(\cnt[3]_i_8_n_0 ),
        .O(\cnt[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996696996966996)) 
    \cnt[3]_i_6 
       (.I0(n1q_m[3]),
        .I1(n0q_m[3]),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .I4(n1q_m[2]),
        .I5(n0q_m[2]),
        .O(\cnt[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    \cnt[3]_i_7__1 
       (.I0(n1q_m[3]),
        .I1(n0q_m[3]),
        .I2(cnt[3]),
        .I3(n1q_m[2]),
        .I4(n0q_m[2]),
        .O(\cnt[3]_i_7__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \cnt[3]_i_8 
       (.I0(cnt[2]),
        .I1(n0q_m[2]),
        .I2(n1q_m[2]),
        .O(\cnt[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \cnt[4]_i_1 
       (.I0(vde_reg),
        .I1(\cnt[4]_i_2_n_0 ),
        .I2(\cnt[4]_i_3_n_0 ),
        .I3(\cnt[4]_i_4_n_0 ),
        .I4(\cnt[4]_i_5_n_0 ),
        .I5(\cnt[4]_i_6_n_0 ),
        .O(\cnt[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[4]_i_10 
       (.I0(n1q_m[3]),
        .I1(n0q_m[3]),
        .O(\cnt[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cnt[4]_i_11 
       (.I0(n1q_m[3]),
        .I1(n0q_m[3]),
        .I2(n1q_m[2]),
        .I3(n0q_m[2]),
        .O(\cnt[4]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[4]_i_12 
       (.I0(n1q_m[2]),
        .I1(n0q_m[2]),
        .O(\cnt[4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFEF8E08)) 
    \cnt[4]_i_13 
       (.I0(cnt[1]),
        .I1(p_0_in),
        .I2(n1q_m[1]),
        .I3(n0q_m[1]),
        .I4(\cnt[3]_i_8_n_0 ),
        .O(\cnt[4]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \cnt[4]_i_14__1 
       (.I0(n0q_m[2]),
        .I1(n1q_m[2]),
        .I2(cnt[2]),
        .O(\cnt[4]_i_14__1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \cnt[4]_i_15 
       (.I0(n0q_m[2]),
        .I1(n1q_m[2]),
        .I2(n1q_m[1]),
        .I3(n0q_m[1]),
        .I4(n1q_m[3]),
        .I5(n0q_m[3]),
        .O(\cnt[4]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h5965A96A)) 
    \cnt[4]_i_16 
       (.I0(cnt[4]),
        .I1(p_0_in),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(cnt[3]),
        .O(\cnt[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8288EBEE7D771411)) 
    \cnt[4]_i_2 
       (.I0(\cnt[4]_i_7_n_0 ),
        .I1(\cnt[3]_i_3_n_0 ),
        .I2(n1q_m[2]),
        .I3(n0q_m[2]),
        .I4(\cnt[4]_i_8_n_0 ),
        .I5(\cnt[4]_i_9_n_0 ),
        .O(\cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6565656564666564)) 
    \cnt[4]_i_3 
       (.I0(cnt[4]),
        .I1(\cnt[4]_i_10_n_0 ),
        .I2(\cnt[4]_i_11_n_0 ),
        .I3(n1q_m[1]),
        .I4(n0q_m[1]),
        .I5(\cnt[4]_i_12_n_0 ),
        .O(\cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9A595965596565A6)) 
    \cnt[4]_i_4 
       (.I0(cnt[4]),
        .I1(\cnt[4]_i_13_n_0 ),
        .I2(n1q_m[3]),
        .I3(n0q_m[3]),
        .I4(cnt[3]),
        .I5(\cnt[4]_i_14__1_n_0 ),
        .O(\cnt[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \cnt[4]_i_5 
       (.I0(\cnt[4]_i_15_n_0 ),
        .I1(cnt[2]),
        .I2(cnt[4]),
        .I3(cnt[1]),
        .I4(cnt[3]),
        .O(\cnt[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h555596699669AAAA)) 
    \cnt[4]_i_6 
       (.I0(\cnt[4]_i_16_n_0 ),
        .I1(n1q_m[3]),
        .I2(n0q_m[3]),
        .I3(cnt[3]),
        .I4(\cnt[3]_i_5_n_0 ),
        .I5(\cnt[3]_i_4_n_0 ),
        .O(\cnt[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h52157A57)) 
    \cnt[4]_i_7 
       (.I0(\cnt[3]_i_8_n_0 ),
        .I1(n1q_m[1]),
        .I2(p_0_in),
        .I3(n0q_m[1]),
        .I4(cnt[1]),
        .O(\cnt[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF6F660F6)) 
    \cnt[4]_i_8 
       (.I0(n0q_m[2]),
        .I1(n1q_m[2]),
        .I2(cnt[2]),
        .I3(n0q_m[1]),
        .I4(p_0_in),
        .O(\cnt[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h7510EF758AEF108A)) 
    \cnt[4]_i_9 
       (.I0(cnt[3]),
        .I1(n1q_m[2]),
        .I2(n0q_m[2]),
        .I3(n0q_m[3]),
        .I4(n1q_m[3]),
        .I5(cnt[4]),
        .O(\cnt[4]_i_9_n_0 ));
  FDCE \cnt_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(cnt[4]));
  LUT4 #(
    .INIT(16'hEBAA)) 
    \dout[0]_i_1 
       (.I0(\dout[0]_i_2__0_n_0 ),
        .I1(\dout[9]_i_2_n_0 ),
        .I2(\q_m_reg_reg_n_0_[0] ),
        .I3(vde_reg),
        .O(\dout[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA000220AA008AA8)) 
    \dout[0]_i_2__0 
       (.I0(\dout[4]_i_4_n_0 ),
        .I1(c1_reg),
        .I2(\dout[0]_i_3_n_0 ),
        .I3(c0_reg_0),
        .I4(ade_reg_reg_0),
        .I5(\dout[0]_i_4_n_0 ),
        .O(\dout[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00F10000)) 
    \dout[0]_i_3 
       (.I0(data_o[0]),
        .I1(ade_reg_qq),
        .I2(ade_reg),
        .I3(\adin_reg_reg_n_0_[3] ),
        .I4(p_1_in),
        .O(\dout[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5501FF03)) 
    \dout[0]_i_4 
       (.I0(p_1_in),
        .I1(data_o[0]),
        .I2(ade_reg_qq),
        .I3(ade_reg),
        .I4(\adin_reg_reg_n_0_[3] ),
        .O(\dout[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h87B4FFFF87B40000)) 
    \dout[1]_i_1 
       (.I0(p_0_in),
        .I1(\cnt[4]_i_5_n_0 ),
        .I2(\q_m_reg_reg_n_0_[1] ),
        .I3(\cnt[4]_i_3_n_0 ),
        .I4(vde_reg),
        .I5(\dout[1]_i_2__0_n_0 ),
        .O(\dout[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    \dout[1]_i_2__0 
       (.I0(ade_reg_qq),
        .I1(data_o[0]),
        .I2(ade_reg),
        .I3(c0_reg_0),
        .I4(data_o[1]),
        .I5(\dout[1]_i_3_n_0 ),
        .O(\dout[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h623362001F001FFF)) 
    \dout[1]_i_3 
       (.I0(\adin_reg_reg_n_0_[3] ),
        .I1(c1_reg),
        .I2(p_1_in),
        .I3(ade_reg),
        .I4(ade_reg_qq_reg_0),
        .I5(c0_reg_0),
        .O(\dout[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9F90)) 
    \dout[2]_i_1 
       (.I0(\q_m_reg_reg_n_0_[2] ),
        .I1(\dout[9]_i_2_n_0 ),
        .I2(vde_reg),
        .I3(\dout[2]_i_2__1_n_0 ),
        .O(\dout[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0064FFEB)) 
    \dout[2]_i_2__1 
       (.I0(\dout[6]_i_4_n_0 ),
        .I1(\dout[6]_i_3__0_n_0 ),
        .I2(c1_reg),
        .I3(ade_reg_reg_0),
        .I4(c0_reg_0),
        .I5(data_o[1]),
        .O(\dout[2]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \dout[3]_i_1 
       (.I0(\q_m_reg_reg_n_0_[3] ),
        .I1(\dout[9]_i_2_n_0 ),
        .I2(vde_reg),
        .I3(\dout[3]_i_2_n_0 ),
        .O(\dout[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100070)) 
    \dout[3]_i_2 
       (.I0(c1_reg),
        .I1(\dout[6]_i_3__0_n_0 ),
        .I2(ade_reg),
        .I3(p_1_in),
        .I4(c0_reg_0),
        .I5(\dout[3]_i_3_n_0 ),
        .O(\dout[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBABFBAAFAAAFAAB)) 
    \dout[3]_i_3 
       (.I0(data_o[1]),
        .I1(\dout[6]_i_4_n_0 ),
        .I2(ade_reg_reg_0),
        .I3(c0_reg_0),
        .I4(c1_reg),
        .I5(\dout[6]_i_3__0_n_0 ),
        .O(\dout[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF44F4444)) 
    \dout[4]_i_1 
       (.I0(\dout[4]_i_2__0_n_0 ),
        .I1(\dout[4]_i_3_n_0 ),
        .I2(\q_m_reg_reg_n_0_[4] ),
        .I3(\dout[9]_i_2_n_0 ),
        .I4(vde_reg),
        .O(\dout[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBFBFFFB33333333)) 
    \dout[4]_i_2__0 
       (.I0(ade_reg_reg_0),
        .I1(\dout[4]_i_4_n_0 ),
        .I2(c1_reg),
        .I3(\dout[6]_i_3__0_n_0 ),
        .I4(p_1_in),
        .I5(c0_reg_0),
        .O(\dout[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF190019FF)) 
    \dout[4]_i_3 
       (.I0(c1_reg),
        .I1(\adin_reg_reg_n_0_[3] ),
        .I2(p_1_in),
        .I3(ade_reg),
        .I4(ade_reg_qq_reg_0),
        .I5(c0_reg_0),
        .O(\dout[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \dout[4]_i_4 
       (.I0(vde_reg),
        .I1(data_o[1]),
        .O(\dout[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF44F4444)) 
    \dout[5]_i_1 
       (.I0(\dout[5]_i_2__0_n_0 ),
        .I1(\dout[5]_i_3__0_n_0 ),
        .I2(\q_m_reg_reg_n_0_[5] ),
        .I3(\dout[9]_i_2_n_0 ),
        .I4(vde_reg),
        .O(\dout[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA85955A4F9085555)) 
    \dout[5]_i_2__0 
       (.I0(c0_reg_0),
        .I1(ade_reg_qq_reg_0),
        .I2(ade_reg),
        .I3(\adin_reg_reg_n_0_[3] ),
        .I4(c1_reg),
        .I5(p_1_in),
        .O(\dout[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFEE)) 
    \dout[5]_i_3 
       (.I0(vde_reg),
        .I1(data_o[1]),
        .I2(ade_reg),
        .I3(data_o[0]),
        .I4(ade_reg_qq),
        .I5(c0_reg),
        .O(vde_reg_reg_0));
  LUT6 #(
    .INIT(64'h1111111111111110)) 
    \dout[5]_i_3__0 
       (.I0(data_o[1]),
        .I1(vde_reg),
        .I2(c0_reg_0),
        .I3(ade_reg),
        .I4(data_o[0]),
        .I5(ade_reg_qq),
        .O(\dout[5]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h9F90)) 
    \dout[6]_i_1 
       (.I0(\q_m_reg_reg_n_0_[6] ),
        .I1(\dout[9]_i_2_n_0 ),
        .I2(vde_reg),
        .I3(\dout[6]_i_2_n_0 ),
        .O(\dout[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBEBABFBEBBBBBE)) 
    \dout[6]_i_2 
       (.I0(data_o[1]),
        .I1(c0_reg_0),
        .I2(ade_reg_reg_0),
        .I3(\dout[6]_i_3__0_n_0 ),
        .I4(\dout[6]_i_4_n_0 ),
        .I5(c1_reg),
        .O(\dout[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4445)) 
    \dout[6]_i_3__0 
       (.I0(\adin_reg_reg_n_0_[3] ),
        .I1(ade_reg),
        .I2(ade_reg_qq),
        .I3(data_o[0]),
        .O(\dout[6]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h4445)) 
    \dout[6]_i_4 
       (.I0(p_1_in),
        .I1(ade_reg),
        .I2(ade_reg_qq),
        .I3(data_o[0]),
        .O(\dout[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h9F9F9F90)) 
    \dout[7]_i_1 
       (.I0(\q_m_reg_reg_n_0_[7] ),
        .I1(\dout[9]_i_2_n_0 ),
        .I2(vde_reg),
        .I3(\dout[7]_i_2__1_n_0 ),
        .I4(\dout[7]_i_3__0_n_0 ),
        .O(\dout[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA808A80854A4F4F4)) 
    \dout[7]_i_2__1 
       (.I0(c1_reg),
        .I1(ade_reg_qq_reg_0),
        .I2(ade_reg),
        .I3(\adin_reg_reg_n_0_[3] ),
        .I4(p_1_in),
        .I5(c0_reg_0),
        .O(\dout[7]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \dout[7]_i_3 
       (.I0(c0_reg),
        .I1(ade_reg_qq),
        .I2(data_o[0]),
        .I3(ade_reg),
        .O(c0_reg_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFF8F888888)) 
    \dout[7]_i_3__0 
       (.I0(c0_reg_0),
        .I1(ade_reg_reg_0),
        .I2(p_1_in),
        .I3(c1_reg),
        .I4(ade_reg),
        .I5(data_o[1]),
        .O(\dout[7]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hAE00AEAE)) 
    \dout[8]_i_1 
       (.I0(c0_reg_reg_0),
        .I1(ade_reg),
        .I2(\dout_reg[9]_1 ),
        .I3(\dout_reg[8]_0 ),
        .I4(vde_reg),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAA00AA03AA03AA03)) 
    \dout[8]_i_1__1 
       (.I0(p_0_in),
        .I1(\dout[8]_i_2__0_n_0 ),
        .I2(data_o[1]),
        .I3(vde_reg),
        .I4(c0_reg_0),
        .I5(ade_reg_reg_0),
        .O(\dout[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFCFCFFFFFFFD)) 
    \dout[8]_i_2 
       (.I0(c0_reg),
        .I1(vde_reg),
        .I2(data_o[1]),
        .I3(data_o[0]),
        .I4(ade_reg_qq),
        .I5(ade_reg),
        .O(c0_reg_reg_0));
  LUT6 #(
    .INIT(64'hE2E200E2EE2E0CEE)) 
    \dout[8]_i_2__0 
       (.I0(ade_reg_qq_reg_0),
        .I1(ade_reg),
        .I2(\adin_reg_reg_n_0_[3] ),
        .I3(c1_reg),
        .I4(c0_reg_0),
        .I5(p_1_in),
        .O(\dout[8]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \dout[8]_i_3 
       (.I0(ade_reg),
        .I1(data_o[0]),
        .I2(ade_reg_qq),
        .O(ade_reg_reg_0));
  LUT4 #(
    .INIT(16'h7477)) 
    \dout[9]_i_1 
       (.I0(\dout[9]_i_2_n_0 ),
        .I1(vde_reg),
        .I2(data_o[1]),
        .I3(\dout[9]_i_3_n_0 ),
        .O(\dout[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h555500005555FFC0)) 
    \dout[9]_i_1__0 
       (.I0(\dout_reg[9]_0 ),
        .I1(\dout_reg[9]_1 ),
        .I2(ade_reg),
        .I3(\dout[9]_i_4_n_0 ),
        .I4(vde_reg),
        .I5(data_o[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \dout[9]_i_2 
       (.I0(p_0_in),
        .I1(\cnt[4]_i_5_n_0 ),
        .I2(\cnt[4]_i_3_n_0 ),
        .O(\dout[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h01F00DF0CDFC0130)) 
    \dout[9]_i_3 
       (.I0(ade_reg_qq_reg_0),
        .I1(ade_reg),
        .I2(c1_reg),
        .I3(c0_reg_0),
        .I4(p_1_in),
        .I5(\adin_reg_reg_n_0_[3] ),
        .O(\dout[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \dout[9]_i_4 
       (.I0(ade_reg_qq),
        .I1(data_o[0]),
        .I2(ade_reg),
        .I3(c0_reg),
        .O(\dout[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \dout[9]_i_4__0 
       (.I0(ade_reg_qq),
        .I1(data_o[0]),
        .O(ade_reg_qq_reg_0));
  FDCE \dout_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \dout_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \dout_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \dout_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \dout_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE \dout_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE \dout_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE \dout_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[7]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE \dout_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[8]_i_1__1_n_0 ),
        .Q(Q[8]));
  FDCE \dout_reg[9] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[9]_i_1_n_0 ),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h9996699996669996)) 
    \n0q_m[1]_i_1 
       (.I0(\n1q_m[2]_i_2_n_0 ),
        .I1(\n1q_m[2]_i_3_n_0 ),
        .I2(\n0q_m[3]_i_3_n_0 ),
        .I3(\n0q_m[3]_i_2_n_0 ),
        .I4(\vdin_q_reg_n_0_[0] ),
        .I5(\n0q_m[3]_i_4_n_0 ),
        .O(n0q_m0[1]));
  LUT6 #(
    .INIT(64'h2000FBB2FBB2DFFF)) 
    \n0q_m[2]_i_1 
       (.I0(\n0q_m[3]_i_4_n_0 ),
        .I1(\vdin_q_reg_n_0_[0] ),
        .I2(\n0q_m[3]_i_2_n_0 ),
        .I3(\n0q_m[3]_i_3_n_0 ),
        .I4(\n1q_m[2]_i_3_n_0 ),
        .I5(\n1q_m[2]_i_2_n_0 ),
        .O(n0q_m0[2]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \n0q_m[3]_i_1 
       (.I0(\n1q_m[2]_i_3_n_0 ),
        .I1(\n1q_m[2]_i_2_n_0 ),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(\n0q_m[3]_i_2_n_0 ),
        .I4(\n0q_m[3]_i_3_n_0 ),
        .I5(\n0q_m[3]_i_4_n_0 ),
        .O(n0q_m0[3]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \n0q_m[3]_i_2 
       (.I0(p_0_in3_in),
        .I1(p_0_in2_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .I5(\n0q_m[3]_i_5_n_0 ),
        .O(\n0q_m[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \n0q_m[3]_i_3 
       (.I0(p_0_in0_in),
        .I1(\q_m_reg[7]_i_3_n_0 ),
        .I2(p_0_in1_in),
        .I3(\q_m_reg[7]_i_2_n_0 ),
        .I4(p_0_in_1),
        .O(\n0q_m[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n0q_m[3]_i_4 
       (.I0(\vdin_q_reg_n_0_[0] ),
        .I1(p_0_in5_in),
        .I2(p_0_in3_in),
        .O(\n0q_m[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555566666A66)) 
    \n0q_m[3]_i_5 
       (.I0(p_0_in0_in),
        .I1(n1d[2]),
        .I2(n1d[0]),
        .I3(\vdin_q_reg_n_0_[0] ),
        .I4(n1d[1]),
        .I5(n1d[3]),
        .O(\n0q_m[3]_i_5_n_0 ));
  FDRE \n0q_m_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n0q_m0[1]),
        .Q(n0q_m[1]),
        .R(1'b0));
  FDRE \n0q_m_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n0q_m0[2]),
        .Q(n0q_m[2]),
        .R(1'b0));
  FDRE \n0q_m_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n0q_m0[3]),
        .Q(n0q_m[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d[0]_i_1 
       (.I0(data_o[6]),
        .I1(data_o[13]),
        .I2(\n1d[0]_i_2_n_0 ),
        .I3(data_o[8]),
        .I4(data_o[7]),
        .I5(data_o[9]),
        .O(n1d0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[0]_i_2 
       (.I0(data_o[12]),
        .I1(data_o[10]),
        .I2(data_o[11]),
        .O(\n1d[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[1]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[1]_i_2_n_0 ),
        .I2(\n1d[3]_i_3_n_0 ),
        .O(n1d0[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d[1]_i_2 
       (.I0(data_o[9]),
        .I1(data_o[8]),
        .I2(data_o[7]),
        .I3(data_o[12]),
        .I4(data_o[11]),
        .I5(data_o[10]),
        .O(\n1d[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d[2]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(\n1d[2]_i_2_n_0 ),
        .I3(data_o[10]),
        .I4(data_o[11]),
        .I5(data_o[12]),
        .O(n1d0[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[2]_i_2 
       (.I0(data_o[7]),
        .I1(data_o[8]),
        .I2(data_o[9]),
        .O(\n1d[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d[3]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(data_o[9]),
        .I3(data_o[8]),
        .I4(data_o[7]),
        .I5(\n1d[3]_i_4_n_0 ),
        .O(n1d0[3]));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d[3]_i_2 
       (.I0(data_o[8]),
        .I1(data_o[7]),
        .I2(data_o[9]),
        .I3(data_o[6]),
        .I4(data_o[13]),
        .I5(\n1d[0]_i_2_n_0 ),
        .O(\n1d[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d[3]_i_3 
       (.I0(data_o[13]),
        .I1(data_o[6]),
        .I2(data_o[11]),
        .I3(data_o[10]),
        .I4(data_o[12]),
        .O(\n1d[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[3]_i_4 
       (.I0(data_o[10]),
        .I1(data_o[11]),
        .I2(data_o[12]),
        .O(\n1d[3]_i_4_n_0 ));
  FDRE \n1d_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n1d0[0]),
        .Q(n1d[0]),
        .R(1'b0));
  FDRE \n1d_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n1d0[1]),
        .Q(n1d[1]),
        .R(1'b0));
  FDRE \n1d_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n1d0[2]),
        .Q(n1d[2]),
        .R(1'b0));
  FDRE \n1d_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n1d0[3]),
        .Q(n1d[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \n1q_m[1]_i_1 
       (.I0(\n1q_m[2]_i_3_n_0 ),
        .I1(\n1q_m[2]_i_2_n_0 ),
        .I2(\n1q_m[3]_i_3_n_0 ),
        .I3(\n1q_m[3]_i_4_n_0 ),
        .O(n1q_m0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7EE8)) 
    \n1q_m[2]_i_1 
       (.I0(\n1q_m[3]_i_4_n_0 ),
        .I1(\n1q_m[2]_i_2_n_0 ),
        .I2(\n1q_m[2]_i_3_n_0 ),
        .I3(\n1q_m[3]_i_3_n_0 ),
        .O(\n1q_m[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE11E1EE178878778)) 
    \n1q_m[2]_i_2 
       (.I0(p_0_in0_in),
        .I1(\q_m_reg[7]_i_2_n_0 ),
        .I2(q_m_2),
        .I3(p_0_in2_in),
        .I4(p_0_in3_in),
        .I5(p_0_in1_in),
        .O(\n1q_m[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB42D4BD2)) 
    \n1q_m[2]_i_3 
       (.I0(\q_m_reg[7]_i_2_n_0 ),
        .I1(p_0_in3_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .O(\n1q_m[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \n1q_m[3]_i_1 
       (.I0(\n1q_m[3]_i_2_n_0 ),
        .I1(\n1q_m[3]_i_3_n_0 ),
        .I2(\n1q_m[3]_i_4_n_0 ),
        .O(n1q_m0[3]));
  LUT6 #(
    .INIT(64'h8228882222888228)) 
    \n1q_m[3]_i_2 
       (.I0(\n1q_m[2]_i_2_n_0 ),
        .I1(p_0_in5_in),
        .I2(p_0_in4_in),
        .I3(\vdin_q_reg_n_0_[0] ),
        .I4(p_0_in3_in),
        .I5(\q_m_reg[7]_i_2_n_0 ),
        .O(\n1q_m[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3CC3AAAAAAAA3CC3)) 
    \n1q_m[3]_i_3 
       (.I0(\vdin_q_reg_n_0_[0] ),
        .I1(p_0_in0_in),
        .I2(\q_m_reg[7]_i_2_n_0 ),
        .I3(\q_m_reg[7]_i_3_n_0 ),
        .I4(p_0_in1_in),
        .I5(p_0_in_1),
        .O(\n1q_m[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h90060690)) 
    \n1q_m[3]_i_4 
       (.I0(p_0_in_1),
        .I1(p_0_in1_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in3_in),
        .I4(p_0_in5_in),
        .O(\n1q_m[3]_i_4_n_0 ));
  FDRE \n1q_m_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n1q_m0[1]),
        .Q(n1q_m[1]),
        .R(1'b0));
  FDRE \n1q_m_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1q_m[2]_i_1_n_0 ),
        .Q(n1q_m[2]),
        .R(1'b0));
  FDRE \n1q_m_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(n1q_m0[3]),
        .Q(n1q_m[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFA800570055FFAA)) 
    \q_m_reg[1]_i_1 
       (.I0(n1d[2]),
        .I1(n1d[0]),
        .I2(n1d[1]),
        .I3(n1d[3]),
        .I4(p_0_in5_in),
        .I5(\vdin_q_reg_n_0_[0] ),
        .O(q_m_1));
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[2]_i_1 
       (.I0(\vdin_q_reg_n_0_[0] ),
        .I1(p_0_in4_in),
        .I2(p_0_in5_in),
        .O(q_m_2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[3]_i_1 
       (.I0(p_0_in5_in),
        .I1(p_0_in4_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in3_in),
        .I4(\q_m_reg[7]_i_2_n_0 ),
        .O(q_m_3));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[4]_i_1 
       (.I0(p_0_in3_in),
        .I1(p_0_in2_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .O(q_m_4));
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[5]_i_1 
       (.I0(\q_m_reg[7]_i_2_n_0 ),
        .I1(q_m_2),
        .I2(p_0_in2_in),
        .I3(p_0_in3_in),
        .I4(p_0_in1_in),
        .O(\q_m_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[6]_i_1 
       (.I0(p_0_in1_in),
        .I1(p_0_in3_in),
        .I2(p_0_in2_in),
        .I3(q_m_2),
        .I4(p_0_in0_in),
        .O(q_m_6));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[7]_i_1 
       (.I0(p_0_in_1),
        .I1(\q_m_reg[7]_i_2_n_0 ),
        .I2(p_0_in1_in),
        .I3(\q_m_reg[7]_i_3_n_0 ),
        .I4(p_0_in0_in),
        .O(q_m_7));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFEFAAAA)) 
    \q_m_reg[7]_i_2 
       (.I0(n1d[3]),
        .I1(n1d[1]),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(n1d[0]),
        .I4(n1d[2]),
        .O(\q_m_reg[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[7]_i_3 
       (.I0(p_0_in5_in),
        .I1(p_0_in4_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in2_in),
        .I4(p_0_in3_in),
        .O(\q_m_reg[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00005575)) 
    \q_m_reg[8]_i_1 
       (.I0(n1d[2]),
        .I1(n1d[0]),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(n1d[1]),
        .I4(n1d[3]),
        .O(\q_m_reg[8]_i_1_n_0 ));
  FDRE \q_m_reg_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\vdin_q_reg_n_0_[0] ),
        .Q(\q_m_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_1),
        .Q(\q_m_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_2),
        .Q(\q_m_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_3),
        .Q(\q_m_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_4),
        .Q(\q_m_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[5]_i_1_n_0 ),
        .Q(\q_m_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_6),
        .Q(\q_m_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_7),
        .Q(\q_m_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[8]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE vde_q_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[1]),
        .Q(vde_q),
        .R(1'b0));
  FDRE vde_reg_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(vde_q),
        .Q(vde_reg),
        .R(1'b0));
  FDRE \vdin_q_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[6]),
        .Q(\vdin_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \vdin_q_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[7]),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE \vdin_q_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[8]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \vdin_q_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[9]),
        .Q(p_0_in3_in),
        .R(1'b0));
  FDRE \vdin_q_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[10]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \vdin_q_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[11]),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE \vdin_q_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[12]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \vdin_q_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[13]),
        .Q(p_0_in_1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "encode" *) 
module mb_usb_hdmi_text_controller_0_2_encode__parameterized0
   (c0_reg,
    \q_m_reg_reg[8]_0 ,
    \q_m_reg_reg[8]_1 ,
    \adin_reg_reg[1]_0 ,
    Q,
    data_i,
    pix_clk,
    vde_reg,
    data_o,
    \dout_reg[4]_0 ,
    ade_reg,
    \dout_reg[0]_0 ,
    \dout_reg[3]_0 ,
    ade_reg_qq,
    AR,
    D);
  output c0_reg;
  output \q_m_reg_reg[8]_0 ;
  output \q_m_reg_reg[8]_1 ;
  output \adin_reg_reg[1]_0 ;
  output [9:0]Q;
  input [0:0]data_i;
  input pix_clk;
  input vde_reg;
  input [13:0]data_o;
  input \dout_reg[4]_0 ;
  input ade_reg;
  input \dout_reg[0]_0 ;
  input \dout_reg[3]_0 ;
  input ade_reg_qq;
  input [0:0]AR;
  input [1:0]D;

  wire [0:0]AR;
  wire [1:0]D;
  wire [9:0]Q;
  wire ade_reg;
  wire ade_reg_qq;
  wire \adin_q_reg_n_0_[0] ;
  wire \adin_q_reg_n_0_[1] ;
  wire \adin_q_reg_n_0_[2] ;
  wire \adin_q_reg_n_0_[3] ;
  wire \adin_reg_reg[1]_0 ;
  wire \adin_reg_reg_n_0_[0] ;
  wire \adin_reg_reg_n_0_[1] ;
  wire \adin_reg_reg_n_0_[2] ;
  wire \adin_reg_reg_n_0_[3] ;
  wire c0_q_reg_srl2_n_0;
  wire c0_reg;
  wire [4:1]cnt;
  wire \cnt[1]_i_1__0_n_0 ;
  wire \cnt[1]_i_2__0_n_0 ;
  wire \cnt[1]_i_3__0_n_0 ;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[2]_i_2__1_n_0 ;
  wire \cnt[2]_i_3_n_0 ;
  wire \cnt[3]_i_1__0_n_0 ;
  wire \cnt[3]_i_2__0_n_0 ;
  wire \cnt[3]_i_3__0_n_0 ;
  wire \cnt[3]_i_4__0_n_0 ;
  wire \cnt[3]_i_5__0_n_0 ;
  wire \cnt[3]_i_6__1_n_0 ;
  wire \cnt[3]_i_7_n_0 ;
  wire \cnt[4]_i_10__0_n_0 ;
  wire \cnt[4]_i_11__0_n_0 ;
  wire \cnt[4]_i_12__0_n_0 ;
  wire \cnt[4]_i_13__0_n_0 ;
  wire \cnt[4]_i_14_n_0 ;
  wire \cnt[4]_i_15__0_n_0 ;
  wire \cnt[4]_i_16__0_n_0 ;
  wire \cnt[4]_i_17_n_0 ;
  wire \cnt[4]_i_18__0_n_0 ;
  wire \cnt[4]_i_1__0_n_0 ;
  wire \cnt[4]_i_2__0_n_0 ;
  wire \cnt[4]_i_3__0_n_0 ;
  wire \cnt[4]_i_4__0_n_0 ;
  wire \cnt[4]_i_5__0_n_0 ;
  wire \cnt[4]_i_6__0_n_0 ;
  wire \cnt[4]_i_7__0_n_0 ;
  wire \cnt[4]_i_8__0_n_0 ;
  wire \cnt[4]_i_9__0_n_0 ;
  wire [0:0]data_i;
  wire [13:0]data_o;
  wire \dout[0]_i_1__0_n_0 ;
  wire \dout[0]_i_2_n_0 ;
  wire \dout[1]_i_1__0_n_0 ;
  wire \dout[1]_i_2_n_0 ;
  wire \dout[2]_i_1__0_n_0 ;
  wire \dout[2]_i_2_n_0 ;
  wire \dout[3]_i_1__0_n_0 ;
  wire \dout[3]_i_2__0_n_0 ;
  wire \dout[4]_i_1__0_n_0 ;
  wire \dout[4]_i_2_n_0 ;
  wire \dout[5]_i_1__0_n_0 ;
  wire \dout[5]_i_2_n_0 ;
  wire \dout[6]_i_1__0_n_0 ;
  wire \dout[6]_i_2__0_n_0 ;
  wire \dout[6]_i_3_n_0 ;
  wire \dout[7]_i_1__0_n_0 ;
  wire \dout[7]_i_2_n_0 ;
  wire \dout_reg[0]_0 ;
  wire \dout_reg[3]_0 ;
  wire \dout_reg[4]_0 ;
  wire \n0q_m[1]_i_1__0_n_0 ;
  wire \n0q_m[2]_i_1__0_n_0 ;
  wire \n0q_m[3]_i_1__0_n_0 ;
  wire \n0q_m[3]_i_2__0_n_0 ;
  wire \n0q_m[3]_i_3__0_n_0 ;
  wire \n0q_m[3]_i_4__0_n_0 ;
  wire \n0q_m[3]_i_5__0_n_0 ;
  wire \n0q_m_reg_n_0_[1] ;
  wire \n0q_m_reg_n_0_[2] ;
  wire \n0q_m_reg_n_0_[3] ;
  wire [3:0]n1d;
  wire \n1d[0]_i_1_n_0 ;
  wire \n1d[0]_i_2_n_0 ;
  wire \n1d[1]_i_1_n_0 ;
  wire \n1d[1]_i_2_n_0 ;
  wire \n1d[2]_i_1_n_0 ;
  wire \n1d[2]_i_2_n_0 ;
  wire \n1d[3]_i_1_n_0 ;
  wire \n1d[3]_i_2_n_0 ;
  wire \n1d[3]_i_3_n_0 ;
  wire \n1d[3]_i_4_n_0 ;
  wire \n1q_m[1]_i_1__0_n_0 ;
  wire \n1q_m[2]_i_1__0_n_0 ;
  wire \n1q_m[2]_i_2__0_n_0 ;
  wire \n1q_m[2]_i_3__0_n_0 ;
  wire \n1q_m[3]_i_1__0_n_0 ;
  wire \n1q_m[3]_i_2__0_n_0 ;
  wire \n1q_m[3]_i_3__0_n_0 ;
  wire \n1q_m[3]_i_4__0_n_0 ;
  wire \n1q_m_reg_n_0_[1] ;
  wire \n1q_m_reg_n_0_[2] ;
  wire \n1q_m_reg_n_0_[3] ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire pix_clk;
  wire q_m_1;
  wire q_m_2;
  wire q_m_3;
  wire q_m_4;
  wire q_m_6;
  wire \q_m_reg[5]_i_1__0_n_0 ;
  wire \q_m_reg[7]_i_1__0_n_0 ;
  wire \q_m_reg[7]_i_2__0_n_0 ;
  wire \q_m_reg[7]_i_3__0_n_0 ;
  wire \q_m_reg[8]_i_1__0_n_0 ;
  wire \q_m_reg_reg[8]_0 ;
  wire \q_m_reg_reg[8]_1 ;
  wire \q_m_reg_reg_n_0_[0] ;
  wire \q_m_reg_reg_n_0_[1] ;
  wire \q_m_reg_reg_n_0_[2] ;
  wire \q_m_reg_reg_n_0_[3] ;
  wire \q_m_reg_reg_n_0_[4] ;
  wire \q_m_reg_reg_n_0_[5] ;
  wire \q_m_reg_reg_n_0_[6] ;
  wire \q_m_reg_reg_n_0_[7] ;
  wire vde_reg;
  wire \vdin_q_reg_n_0_[0] ;

  FDRE \adin_q_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[2]),
        .Q(\adin_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \adin_q_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[3]),
        .Q(\adin_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \adin_q_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[4]),
        .Q(\adin_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \adin_q_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[5]),
        .Q(\adin_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \adin_reg_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\adin_q_reg_n_0_[0] ),
        .Q(\adin_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \adin_reg_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\adin_q_reg_n_0_[1] ),
        .Q(\adin_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \adin_reg_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\adin_q_reg_n_0_[2] ),
        .Q(\adin_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \adin_reg_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\adin_q_reg_n_0_[3] ),
        .Q(\adin_reg_reg_n_0_[3] ),
        .R(1'b0));
  (* srl_name = "\inst/vga_to_hdmi /\inst/encg/c0_q_reg_srl2 " *) 
  SRL16E c0_q_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i),
        .Q(c0_q_reg_srl2_n_0));
  FDRE c0_reg_reg
       (.C(pix_clk),
        .CE(1'b1),
        .D(c0_q_reg_srl2_n_0),
        .Q(c0_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA0280A280A28A028)) 
    \cnt[1]_i_1__0 
       (.I0(vde_reg),
        .I1(\cnt[1]_i_2__0_n_0 ),
        .I2(cnt[1]),
        .I3(\cnt[4]_i_3__0_n_0 ),
        .I4(\cnt[4]_i_5__0_n_0 ),
        .I5(\cnt[1]_i_3__0_n_0 ),
        .O(\cnt[1]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_2__0 
       (.I0(\n1q_m_reg_n_0_[1] ),
        .I1(\n0q_m_reg_n_0_[1] ),
        .O(\cnt[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \cnt[1]_i_3__0 
       (.I0(\n0q_m_reg_n_0_[1] ),
        .I1(\q_m_reg_reg[8]_0 ),
        .I2(\n1q_m_reg_n_0_[1] ),
        .O(\cnt[1]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \cnt[2]_i_1__0 
       (.I0(vde_reg),
        .I1(\cnt[2]_i_2__1_n_0 ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt[2]_i_3_n_0 ),
        .O(\cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hAA6996AA)) 
    \cnt[2]_i_2__1 
       (.I0(\cnt[3]_i_6__1_n_0 ),
        .I1(cnt[1]),
        .I2(\q_m_reg_reg[8]_0 ),
        .I3(\n0q_m_reg_n_0_[1] ),
        .I4(\n1q_m_reg_n_0_[1] ),
        .O(\cnt[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h6C9CC9C6636C39C9)) 
    \cnt[2]_i_3 
       (.I0(\cnt[4]_i_5__0_n_0 ),
        .I1(\cnt[3]_i_6__1_n_0 ),
        .I2(cnt[1]),
        .I3(\n0q_m_reg_n_0_[1] ),
        .I4(\q_m_reg_reg[8]_0 ),
        .I5(\n1q_m_reg_n_0_[1] ),
        .O(\cnt[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    \cnt[3]_i_1__0 
       (.I0(vde_reg),
        .I1(\cnt[3]_i_2__0_n_0 ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt[3]_i_3__0_n_0 ),
        .I4(\cnt[4]_i_5__0_n_0 ),
        .I5(\cnt[3]_i_4__0_n_0 ),
        .O(\cnt[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9A5995A965A66A56)) 
    \cnt[3]_i_2__0 
       (.I0(\cnt[4]_i_8__0_n_0 ),
        .I1(cnt[2]),
        .I2(\n0q_m_reg_n_0_[2] ),
        .I3(\n1q_m_reg_n_0_[2] ),
        .I4(\q_m_reg_reg[8]_0 ),
        .I5(\cnt[4]_i_13__0_n_0 ),
        .O(\cnt[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \cnt[3]_i_3__0 
       (.I0(\cnt[4]_i_12__0_n_0 ),
        .I1(\cnt[3]_i_5__0_n_0 ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(cnt[3]),
        .I5(\cnt[4]_i_14_n_0 ),
        .O(\cnt[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h13013713ECFEC8EC)) 
    \cnt[3]_i_4__0 
       (.I0(cnt[1]),
        .I1(\cnt[3]_i_6__1_n_0 ),
        .I2(\q_m_reg_reg[8]_0 ),
        .I3(\n1q_m_reg_n_0_[1] ),
        .I4(\n0q_m_reg_n_0_[1] ),
        .I5(\cnt[3]_i_7_n_0 ),
        .O(\cnt[3]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[3]_i_5__0 
       (.I0(\n0q_m_reg_n_0_[2] ),
        .I1(\n1q_m_reg_n_0_[2] ),
        .O(\cnt[3]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \cnt[3]_i_6__1 
       (.I0(cnt[2]),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(\n1q_m_reg_n_0_[2] ),
        .O(\cnt[3]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h6996696996966996)) 
    \cnt[3]_i_7 
       (.I0(\n1q_m_reg_n_0_[3] ),
        .I1(\n0q_m_reg_n_0_[3] ),
        .I2(cnt[3]),
        .I3(cnt[2]),
        .I4(\n1q_m_reg_n_0_[2] ),
        .I5(\n0q_m_reg_n_0_[2] ),
        .O(\cnt[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \cnt[4]_i_10__0 
       (.I0(\n0q_m_reg_n_0_[3] ),
        .I1(\n1q_m_reg_n_0_[3] ),
        .I2(\n1q_m_reg_n_0_[1] ),
        .I3(\n0q_m_reg_n_0_[1] ),
        .I4(\n1q_m_reg_n_0_[2] ),
        .I5(\n0q_m_reg_n_0_[2] ),
        .O(\cnt[4]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'h4F04FB4FB0FB04B0)) 
    \cnt[4]_i_11__0 
       (.I0(\n1q_m_reg_n_0_[2] ),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(cnt[3]),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(\n1q_m_reg_n_0_[3] ),
        .I5(cnt[4]),
        .O(\cnt[4]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h52157A57)) 
    \cnt[4]_i_12__0 
       (.I0(\cnt[3]_i_6__1_n_0 ),
        .I1(\n1q_m_reg_n_0_[1] ),
        .I2(\q_m_reg_reg[8]_0 ),
        .I3(\n0q_m_reg_n_0_[1] ),
        .I4(cnt[1]),
        .O(\cnt[4]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt[4]_i_13__0 
       (.I0(cnt[3]),
        .I1(\n0q_m_reg_n_0_[3] ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .O(\cnt[4]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hF6F660F6)) 
    \cnt[4]_i_14 
       (.I0(\n0q_m_reg_n_0_[2] ),
        .I1(\n1q_m_reg_n_0_[2] ),
        .I2(cnt[2]),
        .I3(\n0q_m_reg_n_0_[1] ),
        .I4(\q_m_reg_reg[8]_0 ),
        .O(\cnt[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF2FFFFF2222FF2F)) 
    \cnt[4]_i_15__0 
       (.I0(\n1q_m_reg_n_0_[3] ),
        .I1(\n0q_m_reg_n_0_[3] ),
        .I2(\n0q_m_reg_n_0_[1] ),
        .I3(\n1q_m_reg_n_0_[1] ),
        .I4(\n0q_m_reg_n_0_[2] ),
        .I5(\n1q_m_reg_n_0_[2] ),
        .O(\cnt[4]_i_15__0_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \cnt[4]_i_16__0 
       (.I0(\n1q_m_reg_n_0_[1] ),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(\n0q_m_reg_n_0_[2] ),
        .I3(\n1q_m_reg_n_0_[2] ),
        .I4(\n0q_m_reg_n_0_[3] ),
        .I5(\n1q_m_reg_n_0_[3] ),
        .O(\cnt[4]_i_16__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFBB220)) 
    \cnt[4]_i_17 
       (.I0(cnt[1]),
        .I1(\n1q_m_reg_n_0_[1] ),
        .I2(\q_m_reg_reg[8]_0 ),
        .I3(\n0q_m_reg_n_0_[1] ),
        .I4(\cnt[3]_i_6__1_n_0 ),
        .O(\cnt[4]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \cnt[4]_i_18__0 
       (.I0(\n0q_m_reg_n_0_[2] ),
        .I1(\n1q_m_reg_n_0_[2] ),
        .I2(cnt[2]),
        .O(\cnt[4]_i_18__0_n_0 ));
  LUT6 #(
    .INIT(64'h020202A2A2A202A2)) 
    \cnt[4]_i_1__0 
       (.I0(vde_reg),
        .I1(\cnt[4]_i_2__0_n_0 ),
        .I2(\cnt[4]_i_3__0_n_0 ),
        .I3(\cnt[4]_i_4__0_n_0 ),
        .I4(\cnt[4]_i_5__0_n_0 ),
        .I5(\cnt[4]_i_6__0_n_0 ),
        .O(\cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h555596699669AAAA)) 
    \cnt[4]_i_2__0 
       (.I0(\cnt[4]_i_7__0_n_0 ),
        .I1(\n1q_m_reg_n_0_[3] ),
        .I2(\n0q_m_reg_n_0_[3] ),
        .I3(cnt[3]),
        .I4(\cnt[4]_i_8__0_n_0 ),
        .I5(\cnt[4]_i_9__0_n_0 ),
        .O(\cnt[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h55555554)) 
    \cnt[4]_i_3__0 
       (.I0(\cnt[4]_i_10__0_n_0 ),
        .I1(cnt[2]),
        .I2(cnt[4]),
        .I3(cnt[1]),
        .I4(cnt[3]),
        .O(\cnt[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h95995955A9AA9A99)) 
    \cnt[4]_i_4__0 
       (.I0(\cnt[4]_i_11__0_n_0 ),
        .I1(\cnt[4]_i_12__0_n_0 ),
        .I2(\n1q_m_reg_n_0_[2] ),
        .I3(\n0q_m_reg_n_0_[2] ),
        .I4(\cnt[4]_i_13__0_n_0 ),
        .I5(\cnt[4]_i_14_n_0 ),
        .O(\cnt[4]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h47C477F7)) 
    \cnt[4]_i_5__0 
       (.I0(\cnt[4]_i_15__0_n_0 ),
        .I1(cnt[4]),
        .I2(\n0q_m_reg_n_0_[3] ),
        .I3(\n1q_m_reg_n_0_[3] ),
        .I4(\cnt[4]_i_16__0_n_0 ),
        .O(\cnt[4]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h8E18187171E7E78E)) 
    \cnt[4]_i_6__0 
       (.I0(\cnt[4]_i_17_n_0 ),
        .I1(\cnt[4]_i_18__0_n_0 ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(cnt[3]),
        .I5(cnt[4]),
        .O(\cnt[4]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h5965A96A)) 
    \cnt[4]_i_7__0 
       (.I0(cnt[4]),
        .I1(\q_m_reg_reg[8]_0 ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(cnt[3]),
        .O(\cnt[4]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFEBF0820)) 
    \cnt[4]_i_8__0 
       (.I0(cnt[1]),
        .I1(\q_m_reg_reg[8]_0 ),
        .I2(\n0q_m_reg_n_0_[1] ),
        .I3(\n1q_m_reg_n_0_[1] ),
        .I4(\cnt[3]_i_6__1_n_0 ),
        .O(\cnt[4]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hB28E)) 
    \cnt[4]_i_9__0 
       (.I0(cnt[2]),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(\n1q_m_reg_n_0_[2] ),
        .I3(\q_m_reg_reg[8]_0 ),
        .O(\cnt[4]_i_9__0_n_0 ));
  FDCE \cnt_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[1]_i_1__0_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[3]_i_1__0_n_0 ),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[4]_i_1__0_n_0 ),
        .Q(cnt[4]));
  LUT4 #(
    .INIT(16'hA22A)) 
    \dout[0]_i_1__0 
       (.I0(\dout[0]_i_2_n_0 ),
        .I1(vde_reg),
        .I2(\q_m_reg_reg_n_0_[0] ),
        .I3(\q_m_reg_reg[8]_1 ),
        .O(\dout[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEFAAABEAAAAAAAA)) 
    \dout[0]_i_2 
       (.I0(\dout_reg[0]_0 ),
        .I1(\adin_reg_reg_n_0_[2] ),
        .I2(\adin_reg_reg_n_0_[0] ),
        .I3(\adin_reg_reg_n_0_[1] ),
        .I4(\adin_reg_reg_n_0_[3] ),
        .I5(ade_reg),
        .O(\dout[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA22A)) 
    \dout[1]_i_1__0 
       (.I0(\dout[1]_i_2_n_0 ),
        .I1(vde_reg),
        .I2(\q_m_reg_reg_n_0_[1] ),
        .I3(\q_m_reg_reg[8]_1 ),
        .O(\dout[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFEAABEAABAAAEEAA)) 
    \dout[1]_i_2 
       (.I0(\dout_reg[0]_0 ),
        .I1(\adin_reg_reg_n_0_[0] ),
        .I2(\adin_reg_reg_n_0_[2] ),
        .I3(ade_reg),
        .I4(\adin_reg_reg_n_0_[3] ),
        .I5(\adin_reg_reg_n_0_[1] ),
        .O(\dout[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF00F1111)) 
    \dout[2]_i_1__0 
       (.I0(\dout[2]_i_2_n_0 ),
        .I1(data_o[1]),
        .I2(\q_m_reg_reg_n_0_[2] ),
        .I3(\q_m_reg_reg[8]_1 ),
        .I4(vde_reg),
        .O(\dout[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h98B4FFFF98B40000)) 
    \dout[2]_i_2 
       (.I0(\adin_reg_reg_n_0_[3] ),
        .I1(\adin_reg_reg_n_0_[2] ),
        .I2(\adin_reg_reg_n_0_[0] ),
        .I3(\adin_reg_reg_n_0_[1] ),
        .I4(ade_reg),
        .I5(\dout[6]_i_3_n_0 ),
        .O(\dout[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF00F1111)) 
    \dout[3]_i_1__0 
       (.I0(\dout[3]_i_2__0_n_0 ),
        .I1(data_o[1]),
        .I2(\q_m_reg_reg_n_0_[3] ),
        .I3(\q_m_reg_reg[8]_1 ),
        .I4(vde_reg),
        .O(\dout[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DFD7D775)) 
    \dout[3]_i_2__0 
       (.I0(ade_reg),
        .I1(\adin_reg_reg_n_0_[3] ),
        .I2(\adin_reg_reg_n_0_[2] ),
        .I3(\adin_reg_reg_n_0_[1] ),
        .I4(\adin_reg_reg_n_0_[0] ),
        .I5(\dout_reg[3]_0 ),
        .O(\dout[3]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hA22A)) 
    \dout[4]_i_1__0 
       (.I0(\dout[4]_i_2_n_0 ),
        .I1(vde_reg),
        .I2(\q_m_reg_reg_n_0_[4] ),
        .I3(\q_m_reg_reg[8]_1 ),
        .O(\dout[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAEEFAAAABEABAAAA)) 
    \dout[4]_i_2 
       (.I0(\dout_reg[4]_0 ),
        .I1(\adin_reg_reg_n_0_[0] ),
        .I2(\adin_reg_reg_n_0_[1] ),
        .I3(\adin_reg_reg_n_0_[3] ),
        .I4(ade_reg),
        .I5(\adin_reg_reg_n_0_[2] ),
        .O(\dout[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA22A)) 
    \dout[5]_i_1__0 
       (.I0(\dout[5]_i_2_n_0 ),
        .I1(vde_reg),
        .I2(\q_m_reg_reg_n_0_[5] ),
        .I3(\q_m_reg_reg[8]_1 ),
        .O(\dout[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF288222A0)) 
    \dout[5]_i_2 
       (.I0(ade_reg),
        .I1(\adin_reg_reg_n_0_[3] ),
        .I2(\adin_reg_reg_n_0_[0] ),
        .I3(\adin_reg_reg_n_0_[1] ),
        .I4(\adin_reg_reg_n_0_[2] ),
        .I5(\dout_reg[0]_0 ),
        .O(\dout[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF00F1111)) 
    \dout[6]_i_1__0 
       (.I0(\dout[6]_i_2__0_n_0 ),
        .I1(data_o[1]),
        .I2(\q_m_reg_reg_n_0_[6] ),
        .I3(\q_m_reg_reg[8]_1 ),
        .I4(vde_reg),
        .O(\dout[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h4669FFFF46690000)) 
    \dout[6]_i_2__0 
       (.I0(\adin_reg_reg_n_0_[3] ),
        .I1(\adin_reg_reg_n_0_[2] ),
        .I2(\adin_reg_reg_n_0_[1] ),
        .I3(\adin_reg_reg_n_0_[0] ),
        .I4(ade_reg),
        .I5(\dout[6]_i_3_n_0 ),
        .O(\dout[6]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \dout[6]_i_3 
       (.I0(c0_reg),
        .I1(data_o[0]),
        .I2(ade_reg_qq),
        .O(\dout[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF00F1111)) 
    \dout[7]_i_1__0 
       (.I0(\dout[7]_i_2_n_0 ),
        .I1(data_o[1]),
        .I2(\q_m_reg_reg_n_0_[7] ),
        .I3(\q_m_reg_reg[8]_1 ),
        .I4(vde_reg),
        .O(\dout[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1445040455555555)) 
    \dout[7]_i_2 
       (.I0(\dout_reg[3]_0 ),
        .I1(\adin_reg_reg_n_0_[0] ),
        .I2(\adin_reg_reg_n_0_[1] ),
        .I3(\adin_reg_reg_n_0_[3] ),
        .I4(\adin_reg_reg_n_0_[2] ),
        .I5(ade_reg),
        .O(\dout[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \dout[9]_i_2__0 
       (.I0(\cnt[4]_i_5__0_n_0 ),
        .I1(\cnt[4]_i_3__0_n_0 ),
        .I2(\q_m_reg_reg[8]_0 ),
        .O(\q_m_reg_reg[8]_1 ));
  LUT4 #(
    .INIT(16'hD09F)) 
    \dout[9]_i_3__0 
       (.I0(\adin_reg_reg_n_0_[1] ),
        .I1(\adin_reg_reg_n_0_[0] ),
        .I2(\adin_reg_reg_n_0_[3] ),
        .I3(\adin_reg_reg_n_0_[2] ),
        .O(\adin_reg_reg[1]_0 ));
  FDCE \dout_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE \dout_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[1]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDCE \dout_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[2]_i_1__0_n_0 ),
        .Q(Q[2]));
  FDCE \dout_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[3]_i_1__0_n_0 ),
        .Q(Q[3]));
  FDCE \dout_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[4]_i_1__0_n_0 ),
        .Q(Q[4]));
  FDCE \dout_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[5]_i_1__0_n_0 ),
        .Q(Q[5]));
  FDCE \dout_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[6]_i_1__0_n_0 ),
        .Q(Q[6]));
  FDCE \dout_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[7]_i_1__0_n_0 ),
        .Q(Q[7]));
  FDCE \dout_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[8]));
  FDCE \dout_reg[9] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h9996699996669996)) 
    \n0q_m[1]_i_1__0 
       (.I0(\n1q_m[2]_i_2__0_n_0 ),
        .I1(\n1q_m[2]_i_3__0_n_0 ),
        .I2(\n0q_m[3]_i_3__0_n_0 ),
        .I3(\n0q_m[3]_i_2__0_n_0 ),
        .I4(\vdin_q_reg_n_0_[0] ),
        .I5(\n0q_m[3]_i_4__0_n_0 ),
        .O(\n0q_m[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2000FBB2FBB2DFFF)) 
    \n0q_m[2]_i_1__0 
       (.I0(\n0q_m[3]_i_4__0_n_0 ),
        .I1(\vdin_q_reg_n_0_[0] ),
        .I2(\n0q_m[3]_i_2__0_n_0 ),
        .I3(\n0q_m[3]_i_3__0_n_0 ),
        .I4(\n1q_m[2]_i_3__0_n_0 ),
        .I5(\n1q_m[2]_i_2__0_n_0 ),
        .O(\n0q_m[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \n0q_m[3]_i_1__0 
       (.I0(\n1q_m[2]_i_3__0_n_0 ),
        .I1(\n1q_m[2]_i_2__0_n_0 ),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(\n0q_m[3]_i_2__0_n_0 ),
        .I4(\n0q_m[3]_i_3__0_n_0 ),
        .I5(\n0q_m[3]_i_4__0_n_0 ),
        .O(\n0q_m[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \n0q_m[3]_i_2__0 
       (.I0(p_0_in3_in),
        .I1(p_0_in2_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .I5(\n0q_m[3]_i_5__0_n_0 ),
        .O(\n0q_m[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \n0q_m[3]_i_3__0 
       (.I0(p_0_in0_in),
        .I1(\q_m_reg[7]_i_3__0_n_0 ),
        .I2(p_0_in1_in),
        .I3(\q_m_reg[7]_i_2__0_n_0 ),
        .I4(p_0_in),
        .O(\n0q_m[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n0q_m[3]_i_4__0 
       (.I0(\vdin_q_reg_n_0_[0] ),
        .I1(p_0_in5_in),
        .I2(p_0_in3_in),
        .O(\n0q_m[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555566666A66)) 
    \n0q_m[3]_i_5__0 
       (.I0(p_0_in0_in),
        .I1(n1d[2]),
        .I2(n1d[0]),
        .I3(\vdin_q_reg_n_0_[0] ),
        .I4(n1d[1]),
        .I5(n1d[3]),
        .O(\n0q_m[3]_i_5__0_n_0 ));
  FDRE \n0q_m_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n0q_m[1]_i_1__0_n_0 ),
        .Q(\n0q_m_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n0q_m_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n0q_m[2]_i_1__0_n_0 ),
        .Q(\n0q_m_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n0q_m_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n0q_m[3]_i_1__0_n_0 ),
        .Q(\n0q_m_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d[0]_i_1 
       (.I0(data_o[6]),
        .I1(data_o[13]),
        .I2(\n1d[0]_i_2_n_0 ),
        .I3(data_o[8]),
        .I4(data_o[7]),
        .I5(data_o[9]),
        .O(\n1d[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[0]_i_2 
       (.I0(data_o[12]),
        .I1(data_o[10]),
        .I2(data_o[11]),
        .O(\n1d[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[1]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[1]_i_2_n_0 ),
        .I2(\n1d[3]_i_3_n_0 ),
        .O(\n1d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d[1]_i_2 
       (.I0(data_o[9]),
        .I1(data_o[8]),
        .I2(data_o[7]),
        .I3(data_o[12]),
        .I4(data_o[11]),
        .I5(data_o[10]),
        .O(\n1d[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d[2]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(\n1d[2]_i_2_n_0 ),
        .I3(data_o[10]),
        .I4(data_o[11]),
        .I5(data_o[12]),
        .O(\n1d[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[2]_i_2 
       (.I0(data_o[7]),
        .I1(data_o[8]),
        .I2(data_o[9]),
        .O(\n1d[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d[3]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(data_o[9]),
        .I3(data_o[8]),
        .I4(data_o[7]),
        .I5(\n1d[3]_i_4_n_0 ),
        .O(\n1d[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d[3]_i_2 
       (.I0(data_o[8]),
        .I1(data_o[7]),
        .I2(data_o[9]),
        .I3(data_o[6]),
        .I4(data_o[13]),
        .I5(\n1d[0]_i_2_n_0 ),
        .O(\n1d[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d[3]_i_3 
       (.I0(data_o[13]),
        .I1(data_o[6]),
        .I2(data_o[11]),
        .I3(data_o[10]),
        .I4(data_o[12]),
        .O(\n1d[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[3]_i_4 
       (.I0(data_o[10]),
        .I1(data_o[11]),
        .I2(data_o[12]),
        .O(\n1d[3]_i_4_n_0 ));
  FDRE \n1d_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[0]_i_1_n_0 ),
        .Q(n1d[0]),
        .R(1'b0));
  FDRE \n1d_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[1]_i_1_n_0 ),
        .Q(n1d[1]),
        .R(1'b0));
  FDRE \n1d_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[2]_i_1_n_0 ),
        .Q(n1d[2]),
        .R(1'b0));
  FDRE \n1d_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[3]_i_1_n_0 ),
        .Q(n1d[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \n1q_m[1]_i_1__0 
       (.I0(\n1q_m[2]_i_3__0_n_0 ),
        .I1(\n1q_m[2]_i_2__0_n_0 ),
        .I2(\n1q_m[3]_i_3__0_n_0 ),
        .I3(\n1q_m[3]_i_4__0_n_0 ),
        .O(\n1q_m[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7EE8)) 
    \n1q_m[2]_i_1__0 
       (.I0(\n1q_m[3]_i_4__0_n_0 ),
        .I1(\n1q_m[2]_i_2__0_n_0 ),
        .I2(\n1q_m[2]_i_3__0_n_0 ),
        .I3(\n1q_m[3]_i_3__0_n_0 ),
        .O(\n1q_m[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hE11E1EE178878778)) 
    \n1q_m[2]_i_2__0 
       (.I0(p_0_in0_in),
        .I1(\q_m_reg[7]_i_2__0_n_0 ),
        .I2(q_m_2),
        .I3(p_0_in2_in),
        .I4(p_0_in3_in),
        .I5(p_0_in1_in),
        .O(\n1q_m[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hB42D4BD2)) 
    \n1q_m[2]_i_3__0 
       (.I0(\q_m_reg[7]_i_2__0_n_0 ),
        .I1(p_0_in3_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .O(\n1q_m[2]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \n1q_m[3]_i_1__0 
       (.I0(\n1q_m[3]_i_2__0_n_0 ),
        .I1(\n1q_m[3]_i_3__0_n_0 ),
        .I2(\n1q_m[3]_i_4__0_n_0 ),
        .O(\n1q_m[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8228882222888228)) 
    \n1q_m[3]_i_2__0 
       (.I0(\n1q_m[2]_i_2__0_n_0 ),
        .I1(p_0_in5_in),
        .I2(p_0_in4_in),
        .I3(\vdin_q_reg_n_0_[0] ),
        .I4(p_0_in3_in),
        .I5(\q_m_reg[7]_i_2__0_n_0 ),
        .O(\n1q_m[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h3CC3AAAAAAAA3CC3)) 
    \n1q_m[3]_i_3__0 
       (.I0(\vdin_q_reg_n_0_[0] ),
        .I1(p_0_in0_in),
        .I2(\q_m_reg[7]_i_2__0_n_0 ),
        .I3(\q_m_reg[7]_i_3__0_n_0 ),
        .I4(p_0_in1_in),
        .I5(p_0_in),
        .O(\n1q_m[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h90060690)) 
    \n1q_m[3]_i_4__0 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in3_in),
        .I4(p_0_in5_in),
        .O(\n1q_m[3]_i_4__0_n_0 ));
  FDRE \n1q_m_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1q_m[1]_i_1__0_n_0 ),
        .Q(\n1q_m_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1q_m_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1q_m[2]_i_1__0_n_0 ),
        .Q(\n1q_m_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1q_m_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1q_m[3]_i_1__0_n_0 ),
        .Q(\n1q_m_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFA800570055FFAA)) 
    \q_m_reg[1]_i_1__0 
       (.I0(n1d[2]),
        .I1(n1d[0]),
        .I2(n1d[1]),
        .I3(n1d[3]),
        .I4(p_0_in5_in),
        .I5(\vdin_q_reg_n_0_[0] ),
        .O(q_m_1));
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[2]_i_1__0 
       (.I0(\vdin_q_reg_n_0_[0] ),
        .I1(p_0_in4_in),
        .I2(p_0_in5_in),
        .O(q_m_2));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[3]_i_1__0 
       (.I0(p_0_in5_in),
        .I1(p_0_in4_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in3_in),
        .I4(\q_m_reg[7]_i_2__0_n_0 ),
        .O(q_m_3));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[4]_i_1__0 
       (.I0(p_0_in3_in),
        .I1(p_0_in2_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .O(q_m_4));
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[5]_i_1__0 
       (.I0(\q_m_reg[7]_i_2__0_n_0 ),
        .I1(q_m_2),
        .I2(p_0_in2_in),
        .I3(p_0_in3_in),
        .I4(p_0_in1_in),
        .O(\q_m_reg[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[6]_i_1__0 
       (.I0(p_0_in1_in),
        .I1(p_0_in3_in),
        .I2(p_0_in2_in),
        .I3(q_m_2),
        .I4(p_0_in0_in),
        .O(q_m_6));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[7]_i_1__0 
       (.I0(p_0_in),
        .I1(\q_m_reg[7]_i_2__0_n_0 ),
        .I2(p_0_in1_in),
        .I3(\q_m_reg[7]_i_3__0_n_0 ),
        .I4(p_0_in0_in),
        .O(\q_m_reg[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFFEFAAAA)) 
    \q_m_reg[7]_i_2__0 
       (.I0(n1d[3]),
        .I1(n1d[1]),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(n1d[0]),
        .I4(n1d[2]),
        .O(\q_m_reg[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[7]_i_3__0 
       (.I0(p_0_in5_in),
        .I1(p_0_in4_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in2_in),
        .I4(p_0_in3_in),
        .O(\q_m_reg[7]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00005575)) 
    \q_m_reg[8]_i_1__0 
       (.I0(n1d[2]),
        .I1(n1d[0]),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(n1d[1]),
        .I4(n1d[3]),
        .O(\q_m_reg[8]_i_1__0_n_0 ));
  FDRE \q_m_reg_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\vdin_q_reg_n_0_[0] ),
        .Q(\q_m_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_1),
        .Q(\q_m_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_2),
        .Q(\q_m_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_3),
        .Q(\q_m_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_4),
        .Q(\q_m_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[5]_i_1__0_n_0 ),
        .Q(\q_m_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_6),
        .Q(\q_m_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[7]_i_1__0_n_0 ),
        .Q(\q_m_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[8]_i_1__0_n_0 ),
        .Q(\q_m_reg_reg[8]_0 ),
        .R(1'b0));
  FDRE \vdin_q_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[6]),
        .Q(\vdin_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \vdin_q_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[7]),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE \vdin_q_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[8]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \vdin_q_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[9]),
        .Q(p_0_in3_in),
        .R(1'b0));
  FDRE \vdin_q_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[10]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \vdin_q_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[11]),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE \vdin_q_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[12]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \vdin_q_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[13]),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "encode" *) 
module mb_usb_hdmi_text_controller_0_2_encode__parameterized1
   (AR,
    Q,
    pix_clk,
    ade_reg,
    data_o,
    \dout_reg[0]_0 ,
    vde_reg,
    \dout_reg[5]_0 ,
    rst,
    pix_clk_locked);
  output [0:0]AR;
  output [9:0]Q;
  input pix_clk;
  input ade_reg;
  input [12:0]data_o;
  input \dout_reg[0]_0 ;
  input vde_reg;
  input \dout_reg[5]_0 ;
  input rst;
  input pix_clk_locked;

  wire [0:0]AR;
  wire [9:0]Q;
  wire ade_reg;
  wire \adin_q_reg_n_0_[0] ;
  wire \adin_q_reg_n_0_[1] ;
  wire \adin_q_reg_n_0_[2] ;
  wire \adin_q_reg_n_0_[3] ;
  wire \adin_reg_reg_n_0_[0] ;
  wire \adin_reg_reg_n_0_[1] ;
  wire \adin_reg_reg_n_0_[2] ;
  wire \adin_reg_reg_n_0_[3] ;
  wire [4:1]cnt;
  wire \cnt[1]_i_1__1_n_0 ;
  wire \cnt[1]_i_2__1_n_0 ;
  wire \cnt[1]_i_3__1_n_0 ;
  wire \cnt[2]_i_1__1_n_0 ;
  wire \cnt[2]_i_2__0_n_0 ;
  wire \cnt[2]_i_3__0_n_0 ;
  wire \cnt[3]_i_1__1_n_0 ;
  wire \cnt[3]_i_2__1_n_0 ;
  wire \cnt[3]_i_3__1_n_0 ;
  wire \cnt[3]_i_4__1_n_0 ;
  wire \cnt[3]_i_5__1_n_0 ;
  wire \cnt[3]_i_6__0_n_0 ;
  wire \cnt[3]_i_7__0_n_0 ;
  wire \cnt[4]_i_10__1_n_0 ;
  wire \cnt[4]_i_11__1_n_0 ;
  wire \cnt[4]_i_12__1_n_0 ;
  wire \cnt[4]_i_13__1_n_0 ;
  wire \cnt[4]_i_14__0_n_0 ;
  wire \cnt[4]_i_15__1_n_0 ;
  wire \cnt[4]_i_16__1_n_0 ;
  wire \cnt[4]_i_17__0_n_0 ;
  wire \cnt[4]_i_18_n_0 ;
  wire \cnt[4]_i_1__1_n_0 ;
  wire \cnt[4]_i_2__1_n_0 ;
  wire \cnt[4]_i_3__1_n_0 ;
  wire \cnt[4]_i_4__1_n_0 ;
  wire \cnt[4]_i_5__1_n_0 ;
  wire \cnt[4]_i_6__1_n_0 ;
  wire \cnt[4]_i_7__1_n_0 ;
  wire \cnt[4]_i_8__1_n_0 ;
  wire \cnt[4]_i_9__1_n_0 ;
  wire [12:0]data_o;
  wire \dout[0]_i_1__1_n_0 ;
  wire \dout[0]_i_2__1_n_0 ;
  wire \dout[1]_i_1__1_n_0 ;
  wire \dout[1]_i_2__1_n_0 ;
  wire \dout[2]_i_1__1_n_0 ;
  wire \dout[2]_i_2__0_n_0 ;
  wire \dout[3]_i_1__1_n_0 ;
  wire \dout[3]_i_2__1_n_0 ;
  wire \dout[4]_i_1__1_n_0 ;
  wire \dout[4]_i_2__1_n_0 ;
  wire \dout[5]_i_1__1_n_0 ;
  wire \dout[5]_i_2__1_n_0 ;
  wire \dout[6]_i_1__1_n_0 ;
  wire \dout[6]_i_2__1_n_0 ;
  wire \dout[7]_i_1__1_n_0 ;
  wire \dout[7]_i_2__0_n_0 ;
  wire \dout[8]_i_1__0_n_0 ;
  wire \dout[9]_i_1__1_n_0 ;
  wire \dout[9]_i_2__1_n_0 ;
  wire \dout[9]_i_3__1_n_0 ;
  wire \dout_reg[0]_0 ;
  wire \dout_reg[5]_0 ;
  wire \n0q_m[1]_i_1__1_n_0 ;
  wire \n0q_m[2]_i_1__1_n_0 ;
  wire \n0q_m[3]_i_1__1_n_0 ;
  wire \n0q_m[3]_i_2__1_n_0 ;
  wire \n0q_m[3]_i_3__1_n_0 ;
  wire \n0q_m[3]_i_4__1_n_0 ;
  wire \n0q_m[3]_i_5__1_n_0 ;
  wire \n0q_m_reg_n_0_[1] ;
  wire \n0q_m_reg_n_0_[2] ;
  wire \n0q_m_reg_n_0_[3] ;
  wire [3:0]n1d;
  wire \n1d[0]_i_1_n_0 ;
  wire \n1d[0]_i_2_n_0 ;
  wire \n1d[1]_i_1_n_0 ;
  wire \n1d[1]_i_2_n_0 ;
  wire \n1d[2]_i_1_n_0 ;
  wire \n1d[2]_i_2_n_0 ;
  wire \n1d[3]_i_1_n_0 ;
  wire \n1d[3]_i_2_n_0 ;
  wire \n1d[3]_i_3_n_0 ;
  wire \n1d[3]_i_4_n_0 ;
  wire \n1q_m[1]_i_1__1_n_0 ;
  wire \n1q_m[2]_i_1__1_n_0 ;
  wire \n1q_m[2]_i_2__1_n_0 ;
  wire \n1q_m[2]_i_3__1_n_0 ;
  wire \n1q_m[3]_i_1__1_n_0 ;
  wire \n1q_m[3]_i_2__1_n_0 ;
  wire \n1q_m[3]_i_3__1_n_0 ;
  wire \n1q_m[3]_i_4__1_n_0 ;
  wire \n1q_m_reg_n_0_[1] ;
  wire \n1q_m_reg_n_0_[2] ;
  wire \n1q_m_reg_n_0_[3] ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire pix_clk;
  wire pix_clk_locked;
  wire q_m_1;
  wire q_m_2;
  wire q_m_3;
  wire q_m_4;
  wire q_m_6;
  wire \q_m_reg[5]_i_1__1_n_0 ;
  wire \q_m_reg[7]_i_1__1_n_0 ;
  wire \q_m_reg[7]_i_2__1_n_0 ;
  wire \q_m_reg[7]_i_3__1_n_0 ;
  wire \q_m_reg[8]_i_1__1_n_0 ;
  wire \q_m_reg_reg_n_0_[0] ;
  wire \q_m_reg_reg_n_0_[1] ;
  wire \q_m_reg_reg_n_0_[2] ;
  wire \q_m_reg_reg_n_0_[3] ;
  wire \q_m_reg_reg_n_0_[4] ;
  wire \q_m_reg_reg_n_0_[5] ;
  wire \q_m_reg_reg_n_0_[6] ;
  wire \q_m_reg_reg_n_0_[7] ;
  wire \q_m_reg_reg_n_0_[8] ;
  wire rst;
  wire vde_reg;
  wire \vdin_q_reg_n_0_[0] ;

  FDRE \adin_q_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[1]),
        .Q(\adin_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \adin_q_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[2]),
        .Q(\adin_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \adin_q_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[3]),
        .Q(\adin_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \adin_q_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[4]),
        .Q(\adin_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \adin_reg_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\adin_q_reg_n_0_[0] ),
        .Q(\adin_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \adin_reg_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\adin_q_reg_n_0_[1] ),
        .Q(\adin_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \adin_reg_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\adin_q_reg_n_0_[2] ),
        .Q(\adin_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \adin_reg_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\adin_q_reg_n_0_[3] ),
        .Q(\adin_reg_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0A0A8228A0A08228)) 
    \cnt[1]_i_1__1 
       (.I0(vde_reg),
        .I1(\cnt[4]_i_3__1_n_0 ),
        .I2(cnt[1]),
        .I3(\cnt[1]_i_2__1_n_0 ),
        .I4(\cnt[4]_i_5__1_n_0 ),
        .I5(\cnt[1]_i_3__1_n_0 ),
        .O(\cnt[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \cnt[1]_i_2__1 
       (.I0(\n0q_m_reg_n_0_[1] ),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .I2(\n1q_m_reg_n_0_[1] ),
        .O(\cnt[1]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_3__1 
       (.I0(\n1q_m_reg_n_0_[1] ),
        .I1(\n0q_m_reg_n_0_[1] ),
        .O(\cnt[1]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \cnt[2]_i_1__1 
       (.I0(vde_reg),
        .I1(\cnt[2]_i_2__0_n_0 ),
        .I2(\cnt[4]_i_5__1_n_0 ),
        .I3(\cnt[2]_i_3__0_n_0 ),
        .O(\cnt[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h936336399C93C636)) 
    \cnt[2]_i_2__0 
       (.I0(\cnt[4]_i_3__1_n_0 ),
        .I1(\cnt[3]_i_6__0_n_0 ),
        .I2(cnt[1]),
        .I3(\n0q_m_reg_n_0_[1] ),
        .I4(\q_m_reg_reg_n_0_[8] ),
        .I5(\n1q_m_reg_n_0_[1] ),
        .O(\cnt[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h56955965)) 
    \cnt[2]_i_3__0 
       (.I0(\cnt[3]_i_6__0_n_0 ),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .I2(\n1q_m_reg_n_0_[1] ),
        .I3(\n0q_m_reg_n_0_[1] ),
        .I4(cnt[1]),
        .O(\cnt[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \cnt[3]_i_1__1 
       (.I0(vde_reg),
        .I1(\cnt[3]_i_2__1_n_0 ),
        .I2(\cnt[4]_i_3__1_n_0 ),
        .I3(\cnt[3]_i_3__1_n_0 ),
        .I4(\cnt[4]_i_5__1_n_0 ),
        .I5(\cnt[3]_i_4__1_n_0 ),
        .O(\cnt[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \cnt[3]_i_2__1 
       (.I0(\cnt[4]_i_7__1_n_0 ),
        .I1(\cnt[3]_i_5__1_n_0 ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(cnt[3]),
        .I5(\cnt[4]_i_8__1_n_0 ),
        .O(\cnt[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h71F700108E08FFEF)) 
    \cnt[3]_i_3__1 
       (.I0(cnt[1]),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .I2(\n1q_m_reg_n_0_[1] ),
        .I3(\n0q_m_reg_n_0_[1] ),
        .I4(\cnt[3]_i_6__0_n_0 ),
        .I5(\cnt[3]_i_7__0_n_0 ),
        .O(\cnt[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h65A66A569A5995A9)) 
    \cnt[3]_i_4__1 
       (.I0(\cnt[4]_i_17__0_n_0 ),
        .I1(cnt[2]),
        .I2(\n0q_m_reg_n_0_[2] ),
        .I3(\n1q_m_reg_n_0_[2] ),
        .I4(\q_m_reg_reg_n_0_[8] ),
        .I5(\cnt[4]_i_9__1_n_0 ),
        .O(\cnt[3]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[3]_i_5__1 
       (.I0(\n0q_m_reg_n_0_[2] ),
        .I1(\n1q_m_reg_n_0_[2] ),
        .O(\cnt[3]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt[3]_i_6__0 
       (.I0(cnt[2]),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(\n1q_m_reg_n_0_[2] ),
        .O(\cnt[3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h6969966996699696)) 
    \cnt[3]_i_7__0 
       (.I0(\n1q_m_reg_n_0_[3] ),
        .I1(\n0q_m_reg_n_0_[3] ),
        .I2(cnt[3]),
        .I3(\n1q_m_reg_n_0_[2] ),
        .I4(\n0q_m_reg_n_0_[2] ),
        .I5(cnt[2]),
        .O(\cnt[3]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hB0FB04B04F04FB4F)) 
    \cnt[4]_i_10__1 
       (.I0(\n1q_m_reg_n_0_[2] ),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(cnt[3]),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(\n1q_m_reg_n_0_[3] ),
        .I5(cnt[4]),
        .O(\cnt[4]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF2FFFFF2222FF2F)) 
    \cnt[4]_i_11__1 
       (.I0(\n1q_m_reg_n_0_[3] ),
        .I1(\n0q_m_reg_n_0_[3] ),
        .I2(\n0q_m_reg_n_0_[1] ),
        .I3(\n1q_m_reg_n_0_[1] ),
        .I4(\n0q_m_reg_n_0_[2] ),
        .I5(\n1q_m_reg_n_0_[2] ),
        .O(\cnt[4]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    \cnt[4]_i_12__1 
       (.I0(\n1q_m_reg_n_0_[1] ),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(\n0q_m_reg_n_0_[3] ),
        .I3(\n1q_m_reg_n_0_[3] ),
        .I4(\n0q_m_reg_n_0_[2] ),
        .I5(\n1q_m_reg_n_0_[2] ),
        .O(\cnt[4]_i_12__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hB220FFFB)) 
    \cnt[4]_i_13__1 
       (.I0(cnt[1]),
        .I1(\n1q_m_reg_n_0_[1] ),
        .I2(\q_m_reg_reg_n_0_[8] ),
        .I3(\n0q_m_reg_n_0_[1] ),
        .I4(\cnt[3]_i_6__0_n_0 ),
        .O(\cnt[4]_i_13__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \cnt[4]_i_14__0 
       (.I0(cnt[2]),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(\n1q_m_reg_n_0_[2] ),
        .O(\cnt[4]_i_14__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \cnt[4]_i_15__1 
       (.I0(\n0q_m_reg_n_0_[3] ),
        .I1(\n1q_m_reg_n_0_[3] ),
        .I2(\n1q_m_reg_n_0_[1] ),
        .I3(\n0q_m_reg_n_0_[1] ),
        .I4(\n1q_m_reg_n_0_[2] ),
        .I5(\n0q_m_reg_n_0_[2] ),
        .O(\cnt[4]_i_15__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h5965A96A)) 
    \cnt[4]_i_16__1 
       (.I0(cnt[4]),
        .I1(\q_m_reg_reg_n_0_[8] ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(cnt[3]),
        .O(\cnt[4]_i_16__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hE7FF0024)) 
    \cnt[4]_i_17__0 
       (.I0(\q_m_reg_reg_n_0_[8] ),
        .I1(\n1q_m_reg_n_0_[1] ),
        .I2(\n0q_m_reg_n_0_[1] ),
        .I3(cnt[1]),
        .I4(\cnt[3]_i_6__0_n_0 ),
        .O(\cnt[4]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hB28E)) 
    \cnt[4]_i_18 
       (.I0(cnt[2]),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(\n1q_m_reg_n_0_[2] ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .O(\cnt[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h000002A2AAAA02A2)) 
    \cnt[4]_i_1__1 
       (.I0(vde_reg),
        .I1(\cnt[4]_i_2__1_n_0 ),
        .I2(\cnt[4]_i_3__1_n_0 ),
        .I3(\cnt[4]_i_4__1_n_0 ),
        .I4(\cnt[4]_i_5__1_n_0 ),
        .I5(\cnt[4]_i_6__1_n_0 ),
        .O(\cnt[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2B2BB22BD4D44DD4)) 
    \cnt[4]_i_2__1 
       (.I0(\cnt[4]_i_7__1_n_0 ),
        .I1(\cnt[4]_i_8__1_n_0 ),
        .I2(\cnt[4]_i_9__1_n_0 ),
        .I3(\n0q_m_reg_n_0_[2] ),
        .I4(\n1q_m_reg_n_0_[2] ),
        .I5(\cnt[4]_i_10__1_n_0 ),
        .O(\cnt[4]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h47C477F7)) 
    \cnt[4]_i_3__1 
       (.I0(\cnt[4]_i_11__1_n_0 ),
        .I1(cnt[4]),
        .I2(\n0q_m_reg_n_0_[3] ),
        .I3(\n1q_m_reg_n_0_[3] ),
        .I4(\cnt[4]_i_12__1_n_0 ),
        .O(\cnt[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h8E18187171E7E78E)) 
    \cnt[4]_i_4__1 
       (.I0(\cnt[4]_i_13__1_n_0 ),
        .I1(\cnt[4]_i_14__0_n_0 ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .I3(\n0q_m_reg_n_0_[3] ),
        .I4(cnt[3]),
        .I5(cnt[4]),
        .O(\cnt[4]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \cnt[4]_i_5__1 
       (.I0(\cnt[4]_i_15__1_n_0 ),
        .I1(cnt[2]),
        .I2(cnt[4]),
        .I3(cnt[1]),
        .I4(cnt[3]),
        .O(\cnt[4]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h96695555AAAA9669)) 
    \cnt[4]_i_6__1 
       (.I0(\cnt[4]_i_16__1_n_0 ),
        .I1(\n1q_m_reg_n_0_[3] ),
        .I2(\n0q_m_reg_n_0_[3] ),
        .I3(cnt[3]),
        .I4(\cnt[4]_i_17__0_n_0 ),
        .I5(\cnt[4]_i_18_n_0 ),
        .O(\cnt[4]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h7D595918)) 
    \cnt[4]_i_7__1 
       (.I0(\cnt[3]_i_6__0_n_0 ),
        .I1(\n0q_m_reg_n_0_[1] ),
        .I2(\q_m_reg_reg_n_0_[8] ),
        .I3(\n1q_m_reg_n_0_[1] ),
        .I4(cnt[1]),
        .O(\cnt[4]_i_7__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h41D74141)) 
    \cnt[4]_i_8__1 
       (.I0(cnt[2]),
        .I1(\n0q_m_reg_n_0_[2] ),
        .I2(\n1q_m_reg_n_0_[2] ),
        .I3(\q_m_reg_reg_n_0_[8] ),
        .I4(\n0q_m_reg_n_0_[1] ),
        .O(\cnt[4]_i_8__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt[4]_i_9__1 
       (.I0(cnt[3]),
        .I1(\n0q_m_reg_n_0_[3] ),
        .I2(\n1q_m_reg_n_0_[3] ),
        .O(\cnt[4]_i_9__1_n_0 ));
  FDCE \cnt_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[1]_i_1__1_n_0 ),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[2]_i_1__1_n_0 ),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[3]_i_1__1_n_0 ),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\cnt[4]_i_1__1_n_0 ),
        .Q(cnt[4]));
  LUT6 #(
    .INIT(64'hFF0000FF01010101)) 
    \dout[0]_i_1__1 
       (.I0(\dout[0]_i_2__1_n_0 ),
        .I1(data_o[0]),
        .I2(\dout_reg[0]_0 ),
        .I3(\q_m_reg_reg_n_0_[0] ),
        .I4(\dout[9]_i_2__1_n_0 ),
        .I5(vde_reg),
        .O(\dout[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h2A2A208A)) 
    \dout[0]_i_2__1 
       (.I0(ade_reg),
        .I1(\adin_reg_reg_n_0_[3] ),
        .I2(\adin_reg_reg_n_0_[2] ),
        .I3(\adin_reg_reg_n_0_[0] ),
        .I4(\adin_reg_reg_n_0_[1] ),
        .O(\dout[0]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hF00F2222)) 
    \dout[1]_i_1__1 
       (.I0(\dout[1]_i_2__1_n_0 ),
        .I1(data_o[0]),
        .I2(\q_m_reg_reg_n_0_[1] ),
        .I3(\dout[9]_i_2__1_n_0 ),
        .I4(vde_reg),
        .O(\dout[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hBC58FFFFBC580000)) 
    \dout[1]_i_2__1 
       (.I0(\adin_reg_reg_n_0_[3] ),
        .I1(\adin_reg_reg_n_0_[2] ),
        .I2(\adin_reg_reg_n_0_[0] ),
        .I3(\adin_reg_reg_n_0_[1] ),
        .I4(ade_reg),
        .I5(\dout_reg[5]_0 ),
        .O(\dout[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FFFEFEFEFE)) 
    \dout[2]_i_1__1 
       (.I0(data_o[0]),
        .I1(\dout_reg[0]_0 ),
        .I2(\dout[2]_i_2__0_n_0 ),
        .I3(\dout[9]_i_2__1_n_0 ),
        .I4(\q_m_reg_reg_n_0_[2] ),
        .I5(vde_reg),
        .O(\dout[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h674B0000)) 
    \dout[2]_i_2__0 
       (.I0(\adin_reg_reg_n_0_[3] ),
        .I1(\adin_reg_reg_n_0_[2] ),
        .I2(\adin_reg_reg_n_0_[0] ),
        .I3(\adin_reg_reg_n_0_[1] ),
        .I4(ade_reg),
        .O(\dout[2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hF00FDDDD)) 
    \dout[3]_i_1__1 
       (.I0(\dout[3]_i_2__1_n_0 ),
        .I1(data_o[0]),
        .I2(\dout[9]_i_2__1_n_0 ),
        .I3(\q_m_reg_reg_n_0_[3] ),
        .I4(vde_reg),
        .O(\dout[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hE81EFFFF)) 
    \dout[3]_i_2__1 
       (.I0(\adin_reg_reg_n_0_[0] ),
        .I1(\adin_reg_reg_n_0_[1] ),
        .I2(\adin_reg_reg_n_0_[2] ),
        .I3(\adin_reg_reg_n_0_[3] ),
        .I4(ade_reg),
        .O(\dout[3]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hF00F1111)) 
    \dout[4]_i_1__1 
       (.I0(\dout[4]_i_2__1_n_0 ),
        .I1(data_o[0]),
        .I2(\q_m_reg_reg_n_0_[4] ),
        .I3(\dout[9]_i_2__1_n_0 ),
        .I4(vde_reg),
        .O(\dout[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hA28220A8)) 
    \dout[4]_i_2__1 
       (.I0(ade_reg),
        .I1(\adin_reg_reg_n_0_[0] ),
        .I2(\adin_reg_reg_n_0_[1] ),
        .I3(\adin_reg_reg_n_0_[2] ),
        .I4(\adin_reg_reg_n_0_[3] ),
        .O(\dout[4]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hF00F2222)) 
    \dout[5]_i_1__1 
       (.I0(\dout[5]_i_2__1_n_0 ),
        .I1(data_o[0]),
        .I2(\q_m_reg_reg_n_0_[5] ),
        .I3(\dout[9]_i_2__1_n_0 ),
        .I4(vde_reg),
        .O(\dout[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h695CFFFF695C0000)) 
    \dout[5]_i_2__1 
       (.I0(\adin_reg_reg_n_0_[3] ),
        .I1(\adin_reg_reg_n_0_[0] ),
        .I2(\adin_reg_reg_n_0_[1] ),
        .I3(\adin_reg_reg_n_0_[2] ),
        .I4(ade_reg),
        .I5(\dout_reg[5]_0 ),
        .O(\dout[5]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000FFFEFEFEFE)) 
    \dout[6]_i_1__1 
       (.I0(data_o[0]),
        .I1(\dout_reg[0]_0 ),
        .I2(\dout[6]_i_2__1_n_0 ),
        .I3(\dout[9]_i_2__1_n_0 ),
        .I4(\q_m_reg_reg_n_0_[6] ),
        .I5(vde_reg),
        .O(\dout[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hA88202A8)) 
    \dout[6]_i_2__1 
       (.I0(ade_reg),
        .I1(\adin_reg_reg_n_0_[0] ),
        .I2(\adin_reg_reg_n_0_[1] ),
        .I3(\adin_reg_reg_n_0_[2] ),
        .I4(\adin_reg_reg_n_0_[3] ),
        .O(\dout[6]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hF00FDDDD)) 
    \dout[7]_i_1__1 
       (.I0(\dout[7]_i_2__0_n_0 ),
        .I1(data_o[0]),
        .I2(\dout[9]_i_2__1_n_0 ),
        .I3(\q_m_reg_reg_n_0_[7] ),
        .I4(vde_reg),
        .O(\dout[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h75D5FF75)) 
    \dout[7]_i_2__0 
       (.I0(ade_reg),
        .I1(\adin_reg_reg_n_0_[3] ),
        .I2(\adin_reg_reg_n_0_[2] ),
        .I3(\adin_reg_reg_n_0_[0] ),
        .I4(\adin_reg_reg_n_0_[1] ),
        .O(\dout[7]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hA0A3)) 
    \dout[8]_i_1__0 
       (.I0(\q_m_reg_reg_n_0_[8] ),
        .I1(\dout[9]_i_3__1_n_0 ),
        .I2(vde_reg),
        .I3(data_o[0]),
        .O(\dout[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h55FF55FC)) 
    \dout[9]_i_1__1 
       (.I0(\dout[9]_i_2__1_n_0 ),
        .I1(\dout[9]_i_3__1_n_0 ),
        .I2(data_o[0]),
        .I3(vde_reg),
        .I4(\dout_reg[0]_0 ),
        .O(\dout[9]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \dout[9]_i_2__1 
       (.I0(\q_m_reg_reg_n_0_[8] ),
        .I1(\cnt[4]_i_5__1_n_0 ),
        .I2(\cnt[4]_i_3__1_n_0 ),
        .O(\dout[9]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hD09000F0)) 
    \dout[9]_i_3__1 
       (.I0(\adin_reg_reg_n_0_[1] ),
        .I1(\adin_reg_reg_n_0_[0] ),
        .I2(ade_reg),
        .I3(\adin_reg_reg_n_0_[2] ),
        .I4(\adin_reg_reg_n_0_[3] ),
        .O(\dout[9]_i_3__1_n_0 ));
  FDCE \dout_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[0]_i_1__1_n_0 ),
        .Q(Q[0]));
  FDCE \dout_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[1]_i_1__1_n_0 ),
        .Q(Q[1]));
  FDCE \dout_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[2]_i_1__1_n_0 ),
        .Q(Q[2]));
  FDCE \dout_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[3]_i_1__1_n_0 ),
        .Q(Q[3]));
  FDCE \dout_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[4]_i_1__1_n_0 ),
        .Q(Q[4]));
  FDCE \dout_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[5]_i_1__1_n_0 ),
        .Q(Q[5]));
  FDCE \dout_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[6]_i_1__1_n_0 ),
        .Q(Q[6]));
  FDCE \dout_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[7]_i_1__1_n_0 ),
        .Q(Q[7]));
  FDCE \dout_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[8]_i_1__0_n_0 ),
        .Q(Q[8]));
  FDCE \dout_reg[9] 
       (.C(pix_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\dout[9]_i_1__1_n_0 ),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h9996699996669996)) 
    \n0q_m[1]_i_1__1 
       (.I0(\n1q_m[2]_i_2__1_n_0 ),
        .I1(\n1q_m[2]_i_3__1_n_0 ),
        .I2(\n0q_m[3]_i_3__1_n_0 ),
        .I3(\n0q_m[3]_i_2__1_n_0 ),
        .I4(\vdin_q_reg_n_0_[0] ),
        .I5(\n0q_m[3]_i_4__1_n_0 ),
        .O(\n0q_m[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FBB2FBB2DFFF)) 
    \n0q_m[2]_i_1__1 
       (.I0(\n0q_m[3]_i_4__1_n_0 ),
        .I1(\vdin_q_reg_n_0_[0] ),
        .I2(\n0q_m[3]_i_2__1_n_0 ),
        .I3(\n0q_m[3]_i_3__1_n_0 ),
        .I4(\n1q_m[2]_i_3__1_n_0 ),
        .I5(\n1q_m[2]_i_2__1_n_0 ),
        .O(\n0q_m[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \n0q_m[3]_i_1__1 
       (.I0(\n1q_m[2]_i_3__1_n_0 ),
        .I1(\n1q_m[2]_i_2__1_n_0 ),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(\n0q_m[3]_i_2__1_n_0 ),
        .I4(\n0q_m[3]_i_3__1_n_0 ),
        .I5(\n0q_m[3]_i_4__1_n_0 ),
        .O(\n0q_m[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \n0q_m[3]_i_2__1 
       (.I0(p_0_in3_in),
        .I1(p_0_in2_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .I5(\n0q_m[3]_i_5__1_n_0 ),
        .O(\n0q_m[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \n0q_m[3]_i_3__1 
       (.I0(p_0_in0_in),
        .I1(\q_m_reg[7]_i_3__1_n_0 ),
        .I2(p_0_in1_in),
        .I3(\q_m_reg[7]_i_2__1_n_0 ),
        .I4(p_0_in),
        .O(\n0q_m[3]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n0q_m[3]_i_4__1 
       (.I0(\vdin_q_reg_n_0_[0] ),
        .I1(p_0_in5_in),
        .I2(p_0_in3_in),
        .O(\n0q_m[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555566666A66)) 
    \n0q_m[3]_i_5__1 
       (.I0(p_0_in0_in),
        .I1(n1d[2]),
        .I2(n1d[0]),
        .I3(\vdin_q_reg_n_0_[0] ),
        .I4(n1d[1]),
        .I5(n1d[3]),
        .O(\n0q_m[3]_i_5__1_n_0 ));
  FDRE \n0q_m_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n0q_m[1]_i_1__1_n_0 ),
        .Q(\n0q_m_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n0q_m_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n0q_m[2]_i_1__1_n_0 ),
        .Q(\n0q_m_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n0q_m_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n0q_m[3]_i_1__1_n_0 ),
        .Q(\n0q_m_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d[0]_i_1 
       (.I0(data_o[5]),
        .I1(data_o[12]),
        .I2(\n1d[0]_i_2_n_0 ),
        .I3(data_o[7]),
        .I4(data_o[6]),
        .I5(data_o[8]),
        .O(\n1d[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[0]_i_2 
       (.I0(data_o[11]),
        .I1(data_o[9]),
        .I2(data_o[10]),
        .O(\n1d[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d[1]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[1]_i_2_n_0 ),
        .I2(\n1d[3]_i_3_n_0 ),
        .O(\n1d[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d[1]_i_2 
       (.I0(data_o[8]),
        .I1(data_o[7]),
        .I2(data_o[6]),
        .I3(data_o[11]),
        .I4(data_o[10]),
        .I5(data_o[9]),
        .O(\n1d[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d[2]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(\n1d[2]_i_2_n_0 ),
        .I3(data_o[9]),
        .I4(data_o[10]),
        .I5(data_o[11]),
        .O(\n1d[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[2]_i_2 
       (.I0(data_o[6]),
        .I1(data_o[7]),
        .I2(data_o[8]),
        .O(\n1d[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d[3]_i_1 
       (.I0(\n1d[3]_i_2_n_0 ),
        .I1(\n1d[3]_i_3_n_0 ),
        .I2(data_o[8]),
        .I3(data_o[7]),
        .I4(data_o[6]),
        .I5(\n1d[3]_i_4_n_0 ),
        .O(\n1d[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d[3]_i_2 
       (.I0(data_o[7]),
        .I1(data_o[6]),
        .I2(data_o[8]),
        .I3(data_o[5]),
        .I4(data_o[12]),
        .I5(\n1d[0]_i_2_n_0 ),
        .O(\n1d[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d[3]_i_3 
       (.I0(data_o[12]),
        .I1(data_o[5]),
        .I2(data_o[10]),
        .I3(data_o[9]),
        .I4(data_o[11]),
        .O(\n1d[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d[3]_i_4 
       (.I0(data_o[9]),
        .I1(data_o[10]),
        .I2(data_o[11]),
        .O(\n1d[3]_i_4_n_0 ));
  FDRE \n1d_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[0]_i_1_n_0 ),
        .Q(n1d[0]),
        .R(1'b0));
  FDRE \n1d_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[1]_i_1_n_0 ),
        .Q(n1d[1]),
        .R(1'b0));
  FDRE \n1d_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[2]_i_1_n_0 ),
        .Q(n1d[2]),
        .R(1'b0));
  FDRE \n1d_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1d[3]_i_1_n_0 ),
        .Q(n1d[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \n1q_m[1]_i_1__1 
       (.I0(\n1q_m[2]_i_3__1_n_0 ),
        .I1(\n1q_m[2]_i_2__1_n_0 ),
        .I2(\n1q_m[3]_i_3__1_n_0 ),
        .I3(\n1q_m[3]_i_4__1_n_0 ),
        .O(\n1q_m[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h7EE8)) 
    \n1q_m[2]_i_1__1 
       (.I0(\n1q_m[3]_i_4__1_n_0 ),
        .I1(\n1q_m[2]_i_2__1_n_0 ),
        .I2(\n1q_m[2]_i_3__1_n_0 ),
        .I3(\n1q_m[3]_i_3__1_n_0 ),
        .O(\n1q_m[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hE11E1EE178878778)) 
    \n1q_m[2]_i_2__1 
       (.I0(p_0_in0_in),
        .I1(\q_m_reg[7]_i_2__1_n_0 ),
        .I2(q_m_2),
        .I3(p_0_in2_in),
        .I4(p_0_in3_in),
        .I5(p_0_in1_in),
        .O(\n1q_m[2]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hB42D4BD2)) 
    \n1q_m[2]_i_3__1 
       (.I0(\q_m_reg[7]_i_2__1_n_0 ),
        .I1(p_0_in3_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .O(\n1q_m[2]_i_3__1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \n1q_m[3]_i_1__1 
       (.I0(\n1q_m[3]_i_2__1_n_0 ),
        .I1(\n1q_m[3]_i_3__1_n_0 ),
        .I2(\n1q_m[3]_i_4__1_n_0 ),
        .O(\n1q_m[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8228882222888228)) 
    \n1q_m[3]_i_2__1 
       (.I0(\n1q_m[2]_i_2__1_n_0 ),
        .I1(p_0_in5_in),
        .I2(p_0_in4_in),
        .I3(\vdin_q_reg_n_0_[0] ),
        .I4(p_0_in3_in),
        .I5(\q_m_reg[7]_i_2__1_n_0 ),
        .O(\n1q_m[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h3CC3AAAAAAAA3CC3)) 
    \n1q_m[3]_i_3__1 
       (.I0(\vdin_q_reg_n_0_[0] ),
        .I1(p_0_in0_in),
        .I2(\q_m_reg[7]_i_2__1_n_0 ),
        .I3(\q_m_reg[7]_i_3__1_n_0 ),
        .I4(p_0_in1_in),
        .I5(p_0_in),
        .O(\n1q_m[3]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h90060690)) 
    \n1q_m[3]_i_4__1 
       (.I0(p_0_in),
        .I1(p_0_in1_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in3_in),
        .I4(p_0_in5_in),
        .O(\n1q_m[3]_i_4__1_n_0 ));
  FDRE \n1q_m_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1q_m[1]_i_1__1_n_0 ),
        .Q(\n1q_m_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1q_m_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1q_m[2]_i_1__1_n_0 ),
        .Q(\n1q_m_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1q_m_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\n1q_m[3]_i_1__1_n_0 ),
        .Q(\n1q_m_reg_n_0_[3] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    oserdes_m_i_1
       (.I0(rst),
        .I1(pix_clk_locked),
        .O(AR));
  LUT6 #(
    .INIT(64'hFFA800570055FFAA)) 
    \q_m_reg[1]_i_1__1 
       (.I0(n1d[2]),
        .I1(n1d[0]),
        .I2(n1d[1]),
        .I3(n1d[3]),
        .I4(p_0_in5_in),
        .I5(\vdin_q_reg_n_0_[0] ),
        .O(q_m_1));
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_reg[2]_i_1__1 
       (.I0(\vdin_q_reg_n_0_[0] ),
        .I1(p_0_in4_in),
        .I2(p_0_in5_in),
        .O(q_m_2));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[3]_i_1__1 
       (.I0(p_0_in5_in),
        .I1(p_0_in4_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in3_in),
        .I4(\q_m_reg[7]_i_2__1_n_0 ),
        .O(q_m_3));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[4]_i_1__1 
       (.I0(p_0_in3_in),
        .I1(p_0_in2_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in4_in),
        .I4(p_0_in5_in),
        .O(q_m_4));
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[5]_i_1__1 
       (.I0(\q_m_reg[7]_i_2__1_n_0 ),
        .I1(q_m_2),
        .I2(p_0_in2_in),
        .I3(p_0_in3_in),
        .I4(p_0_in1_in),
        .O(\q_m_reg[5]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_reg[6]_i_1__1 
       (.I0(p_0_in1_in),
        .I1(p_0_in3_in),
        .I2(p_0_in2_in),
        .I3(q_m_2),
        .I4(p_0_in0_in),
        .O(q_m_6));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[7]_i_1__1 
       (.I0(p_0_in),
        .I1(\q_m_reg[7]_i_2__1_n_0 ),
        .I2(p_0_in1_in),
        .I3(\q_m_reg[7]_i_3__1_n_0 ),
        .I4(p_0_in0_in),
        .O(\q_m_reg[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFEFAAAA)) 
    \q_m_reg[7]_i_2__1 
       (.I0(n1d[3]),
        .I1(n1d[1]),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(n1d[0]),
        .I4(n1d[2]),
        .O(\q_m_reg[7]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_reg[7]_i_3__1 
       (.I0(p_0_in5_in),
        .I1(p_0_in4_in),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(p_0_in2_in),
        .I4(p_0_in3_in),
        .O(\q_m_reg[7]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00005575)) 
    \q_m_reg[8]_i_1__1 
       (.I0(n1d[2]),
        .I1(n1d[0]),
        .I2(\vdin_q_reg_n_0_[0] ),
        .I3(n1d[1]),
        .I4(n1d[3]),
        .O(\q_m_reg[8]_i_1__1_n_0 ));
  FDRE \q_m_reg_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\vdin_q_reg_n_0_[0] ),
        .Q(\q_m_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_1),
        .Q(\q_m_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_2),
        .Q(\q_m_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_3),
        .Q(\q_m_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_4),
        .Q(\q_m_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[5]_i_1__1_n_0 ),
        .Q(\q_m_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(q_m_6),
        .Q(\q_m_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[7]_i_1__1_n_0 ),
        .Q(\q_m_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q_m_reg_reg[8] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(\q_m_reg[8]_i_1__1_n_0 ),
        .Q(\q_m_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \vdin_q_reg[0] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[5]),
        .Q(\vdin_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \vdin_q_reg[1] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[6]),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE \vdin_q_reg[2] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[7]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \vdin_q_reg[3] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[8]),
        .Q(p_0_in3_in),
        .R(1'b0));
  FDRE \vdin_q_reg[4] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[9]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \vdin_q_reg[5] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[10]),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE \vdin_q_reg[6] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[11]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \vdin_q_reg[7] 
       (.C(pix_clk),
        .CE(1'b1),
        .D(data_o[12]),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hdmi_text_controller_v1_0" *) 
module mb_usb_hdmi_text_controller_0_2_hdmi_text_controller_v1_0
   (hdmi_clk_p,
    hdmi_clk_n,
    hdmi_tx_p,
    hdmi_tx_n,
    axi_wready,
    axi_awready,
    axi_arready,
    axi_rdata,
    axi_rvalid,
    axi_bvalid,
    cam_we,
    cam_wr_addr,
    axi_aclk,
    cam_pclk,
    cam_wr_data,
    axi_awaddr,
    axi_wdata,
    axi_wstrb,
    axi_wvalid,
    axi_awvalid,
    axi_araddr,
    axi_arvalid,
    axi_aresetn,
    axi_bready,
    axi_rready);
  output hdmi_clk_p;
  output hdmi_clk_n;
  output [2:0]hdmi_tx_p;
  output [2:0]hdmi_tx_n;
  output axi_wready;
  output axi_awready;
  output axi_arready;
  output [31:0]axi_rdata;
  output axi_rvalid;
  output axi_bvalid;
  input cam_we;
  input [16:0]cam_wr_addr;
  input axi_aclk;
  input cam_pclk;
  input [3:0]cam_wr_data;
  input [9:0]axi_awaddr;
  input [31:0]axi_wdata;
  input [3:0]axi_wstrb;
  input axi_wvalid;
  input axi_awvalid;
  input [9:0]axi_araddr;
  input axi_arvalid;
  input axi_aresetn;
  input axi_bready;
  input axi_rready;

  wire axi_aclk;
  wire [9:0]axi_araddr;
  wire axi_aresetn;
  wire axi_arready;
  wire axi_arvalid;
  wire [9:0]axi_awaddr;
  wire axi_awready;
  wire axi_awvalid;
  wire axi_bready;
  wire axi_bvalid;
  wire [31:0]axi_rdata;
  wire axi_rready;
  wire axi_rvalid;
  wire [31:0]axi_wdata;
  wire axi_wready;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire cam_fb_mux_sel_b_pos_0__4_i_4_n_0;
  wire cam_fb_mux_sel_b_pos_0__4_i_5_n_0;
  wire cam_fb_mux_sel_b_pos_0__4_i_6_n_0;
  wire cam_fb_mux_sel_b_pos_0__4_i_7_n_0;
  wire cam_fb_mux_sel_b_pos_0__4_i_8_n_0;
  wire cam_fb_reg_0_4_i_10_n_0;
  wire cam_fb_reg_0_4_i_11_n_0;
  wire cam_fb_reg_0_4_i_12_n_0;
  wire cam_fb_reg_0_4_i_1_n_0;
  wire cam_fb_reg_0_4_i_5_n_0;
  wire cam_fb_reg_0_4_i_7_n_0;
  wire cam_fb_reg_0_4_i_8_n_0;
  wire cam_fb_reg_0_4_i_9_n_0;
  wire cam_fb_reg_0_4_n_0;
  wire cam_fb_reg_0_4_n_1;
  wire cam_fb_reg_0_5_i_1_n_0;
  wire cam_fb_reg_0_5_n_0;
  wire cam_fb_reg_0_5_n_1;
  wire cam_fb_reg_0_6_i_1_n_0;
  wire cam_fb_reg_0_6_n_0;
  wire cam_fb_reg_0_6_n_1;
  wire cam_fb_reg_0_7_i_1_n_0;
  wire cam_fb_reg_0_7_n_0;
  wire cam_fb_reg_0_7_n_1;
  wire cam_fb_reg_1_4_i_1_n_0;
  wire cam_fb_reg_1_4_n_35;
  wire cam_fb_reg_1_4_n_67;
  wire cam_fb_reg_1_5_i_1_n_0;
  wire cam_fb_reg_1_5_n_35;
  wire cam_fb_reg_1_5_n_67;
  wire cam_fb_reg_1_6_i_1_n_0;
  wire cam_fb_reg_1_6_n_35;
  wire cam_fb_reg_1_6_n_67;
  wire cam_fb_reg_1_7_i_1_n_0;
  wire cam_fb_reg_1_7_n_35;
  wire cam_fb_reg_1_7_n_67;
  wire cam_fb_reg_2_4_i_2_n_0;
  wire cam_fb_reg_2_4_n_0;
  wire cam_fb_reg_2_4_n_1;
  wire cam_fb_reg_2_5_i_1_n_0;
  wire cam_fb_reg_2_5_n_0;
  wire cam_fb_reg_2_5_n_1;
  wire cam_fb_reg_2_6_i_1_n_0;
  wire cam_fb_reg_2_6_n_0;
  wire cam_fb_reg_2_6_n_1;
  wire cam_fb_reg_2_7_i_1_n_0;
  wire cam_fb_reg_2_7_n_0;
  wire cam_fb_reg_2_7_n_1;
  wire cam_fb_reg_3_4_i_1_n_0;
  wire cam_fb_reg_3_4_n_35;
  wire cam_fb_reg_3_4_n_67;
  wire cam_fb_reg_3_5_i_1_n_0;
  wire cam_fb_reg_3_5_n_35;
  wire cam_fb_reg_3_5_n_67;
  wire cam_fb_reg_3_6_i_1_n_0;
  wire cam_fb_reg_3_6_n_35;
  wire cam_fb_reg_3_6_n_67;
  wire cam_fb_reg_3_7_i_1_n_0;
  wire cam_fb_reg_3_7_n_35;
  wire cam_fb_reg_3_7_n_67;
  wire cam_fb_reg_4_4_n_0;
  wire cam_fb_reg_4_4_n_1;
  wire cam_fb_reg_4_5_n_0;
  wire cam_fb_reg_4_5_n_1;
  wire cam_fb_reg_4_6_n_0;
  wire cam_fb_reg_4_6_n_1;
  wire cam_fb_reg_4_7_n_0;
  wire cam_fb_reg_4_7_n_1;
  wire cam_fb_reg_5_4_n_35;
  wire cam_fb_reg_5_4_n_67;
  wire cam_fb_reg_5_5_n_35;
  wire cam_fb_reg_5_5_n_67;
  wire cam_fb_reg_5_6_n_35;
  wire cam_fb_reg_5_6_n_67;
  wire cam_fb_reg_5_7_n_35;
  wire cam_fb_reg_5_7_n_67;
  wire cam_fb_reg_6_4_n_0;
  wire cam_fb_reg_6_4_n_1;
  wire cam_fb_reg_6_5_n_0;
  wire cam_fb_reg_6_5_n_1;
  wire cam_fb_reg_6_6_n_0;
  wire cam_fb_reg_6_6_n_1;
  wire cam_fb_reg_6_7_n_0;
  wire cam_fb_reg_6_7_n_1;
  wire cam_fb_reg_7_4_n_35;
  wire cam_fb_reg_7_4_n_67;
  wire cam_fb_reg_7_5_n_35;
  wire cam_fb_reg_7_5_n_67;
  wire cam_fb_reg_7_6_n_35;
  wire cam_fb_reg_7_6_n_67;
  wire cam_fb_reg_7_7_n_35;
  wire cam_fb_reg_7_7_n_67;
  wire cam_fb_reg_8_4_i_1_n_0;
  wire cam_fb_reg_8_4_n_0;
  wire cam_fb_reg_8_4_n_1;
  wire cam_fb_reg_8_5_n_0;
  wire cam_fb_reg_8_5_n_1;
  wire cam_fb_reg_8_6_n_0;
  wire cam_fb_reg_8_6_n_1;
  wire cam_fb_reg_8_7_n_0;
  wire cam_fb_reg_8_7_n_1;
  wire cam_fb_reg_9_4_n_35;
  wire cam_fb_reg_9_4_n_67;
  wire cam_fb_reg_9_5_n_35;
  wire cam_fb_reg_9_5_n_67;
  wire cam_fb_reg_9_6_n_35;
  wire cam_fb_reg_9_6_n_67;
  wire cam_fb_reg_9_7_n_35;
  wire cam_fb_reg_9_7_n_67;
  wire cam_fb_reg_mux_sel_b_pos_0__4_n_0;
  wire cam_fb_reg_mux_sel_b_pos_1__4_n_0;
  wire cam_fb_reg_mux_sel_b_pos_2__4_n_0;
  wire cam_pclk;
  wire [18:7]cam_rd_addr;
  wire cam_we;
  wire [16:0]cam_wr_addr;
  wire [3:0]cam_wr_data;
  wire clk_125MHz;
  wire clk_25MHz;
  wire [9:0]color_reg;
  wire [9:1]drawX;
  wire \frame_counter[0]_i_3_n_0 ;
  wire [31:0]frame_counter_meta;
  wire [31:0]frame_counter_reg;
  wire \frame_counter_reg[0]_i_2_n_0 ;
  wire \frame_counter_reg[0]_i_2_n_1 ;
  wire \frame_counter_reg[0]_i_2_n_2 ;
  wire \frame_counter_reg[0]_i_2_n_3 ;
  wire \frame_counter_reg[0]_i_2_n_4 ;
  wire \frame_counter_reg[0]_i_2_n_5 ;
  wire \frame_counter_reg[0]_i_2_n_6 ;
  wire \frame_counter_reg[0]_i_2_n_7 ;
  wire \frame_counter_reg[12]_i_1_n_0 ;
  wire \frame_counter_reg[12]_i_1_n_1 ;
  wire \frame_counter_reg[12]_i_1_n_2 ;
  wire \frame_counter_reg[12]_i_1_n_3 ;
  wire \frame_counter_reg[12]_i_1_n_4 ;
  wire \frame_counter_reg[12]_i_1_n_5 ;
  wire \frame_counter_reg[12]_i_1_n_6 ;
  wire \frame_counter_reg[12]_i_1_n_7 ;
  wire \frame_counter_reg[16]_i_1_n_0 ;
  wire \frame_counter_reg[16]_i_1_n_1 ;
  wire \frame_counter_reg[16]_i_1_n_2 ;
  wire \frame_counter_reg[16]_i_1_n_3 ;
  wire \frame_counter_reg[16]_i_1_n_4 ;
  wire \frame_counter_reg[16]_i_1_n_5 ;
  wire \frame_counter_reg[16]_i_1_n_6 ;
  wire \frame_counter_reg[16]_i_1_n_7 ;
  wire \frame_counter_reg[20]_i_1_n_0 ;
  wire \frame_counter_reg[20]_i_1_n_1 ;
  wire \frame_counter_reg[20]_i_1_n_2 ;
  wire \frame_counter_reg[20]_i_1_n_3 ;
  wire \frame_counter_reg[20]_i_1_n_4 ;
  wire \frame_counter_reg[20]_i_1_n_5 ;
  wire \frame_counter_reg[20]_i_1_n_6 ;
  wire \frame_counter_reg[20]_i_1_n_7 ;
  wire \frame_counter_reg[24]_i_1_n_0 ;
  wire \frame_counter_reg[24]_i_1_n_1 ;
  wire \frame_counter_reg[24]_i_1_n_2 ;
  wire \frame_counter_reg[24]_i_1_n_3 ;
  wire \frame_counter_reg[24]_i_1_n_4 ;
  wire \frame_counter_reg[24]_i_1_n_5 ;
  wire \frame_counter_reg[24]_i_1_n_6 ;
  wire \frame_counter_reg[24]_i_1_n_7 ;
  wire \frame_counter_reg[28]_i_1_n_1 ;
  wire \frame_counter_reg[28]_i_1_n_2 ;
  wire \frame_counter_reg[28]_i_1_n_3 ;
  wire \frame_counter_reg[28]_i_1_n_4 ;
  wire \frame_counter_reg[28]_i_1_n_5 ;
  wire \frame_counter_reg[28]_i_1_n_6 ;
  wire \frame_counter_reg[28]_i_1_n_7 ;
  wire \frame_counter_reg[4]_i_1_n_0 ;
  wire \frame_counter_reg[4]_i_1_n_1 ;
  wire \frame_counter_reg[4]_i_1_n_2 ;
  wire \frame_counter_reg[4]_i_1_n_3 ;
  wire \frame_counter_reg[4]_i_1_n_4 ;
  wire \frame_counter_reg[4]_i_1_n_5 ;
  wire \frame_counter_reg[4]_i_1_n_6 ;
  wire \frame_counter_reg[4]_i_1_n_7 ;
  wire \frame_counter_reg[8]_i_1_n_0 ;
  wire \frame_counter_reg[8]_i_1_n_1 ;
  wire \frame_counter_reg[8]_i_1_n_2 ;
  wire \frame_counter_reg[8]_i_1_n_3 ;
  wire \frame_counter_reg[8]_i_1_n_4 ;
  wire \frame_counter_reg[8]_i_1_n_5 ;
  wire \frame_counter_reg[8]_i_1_n_6 ;
  wire \frame_counter_reg[8]_i_1_n_7 ;
  wire [31:0]frame_counter_sync;
  wire hdmi_clk_n;
  wire hdmi_clk_p;
  wire hdmi_text_controller_v1_0_AXI_inst_n_17;
  wire hdmi_text_controller_v1_0_AXI_inst_n_18;
  wire hdmi_text_controller_v1_0_AXI_inst_n_29;
  wire hdmi_text_controller_v1_0_AXI_inst_n_30;
  wire hdmi_text_controller_v1_0_AXI_inst_n_31;
  wire hdmi_text_controller_v1_0_AXI_inst_n_32;
  wire hdmi_text_controller_v1_0_AXI_inst_n_33;
  wire hdmi_text_controller_v1_0_AXI_inst_n_34;
  wire hdmi_text_controller_v1_0_AXI_inst_n_35;
  wire hdmi_text_controller_v1_0_AXI_inst_n_36;
  wire hdmi_text_controller_v1_0_AXI_inst_n_37;
  wire hdmi_text_controller_v1_0_AXI_inst_n_38;
  wire hdmi_text_controller_v1_0_AXI_inst_n_39;
  wire [2:0]hdmi_tx_n;
  wire [2:0]hdmi_tx_p;
  wire hsync;
  wire locked;
  wire [9:0]p_0_in;
  wire [3:0]red;
  wire [9:0]reg_data_out;
  wire reset_ah;
  wire vde;
  wire vde_r;
  wire vga_n_15;
  wire vga_n_16;
  wire vga_n_17;
  wire vga_n_18;
  wire vga_n_19;
  wire vga_n_2;
  wire vga_n_40;
  wire vga_n_41;
  wire vga_n_42;
  wire vga_n_43;
  wire vga_n_44;
  wire vga_n_45;
  wire vga_n_46;
  wire vga_n_47;
  wire vga_n_58;
  wire vga_to_hdmi_i_10_n_0;
  wire vga_to_hdmi_i_7_n_0;
  wire vga_to_hdmi_i_8_n_0;
  wire vga_to_hdmi_i_9_n_0;
  wire [9:0]vram_addr;
  wire [31:0]vram_rdata;
  wire vram_we;
  wire vsync;
  wire vsync_p;
  wire NLW_cam_fb_reg_0_4_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_0_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_0_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_0_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_0_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_0_5_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_0_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_0_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_0_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_0_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_0_6_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_0_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_0_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_0_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_0_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_0_7_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_0_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_0_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_0_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_0_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_1_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_1_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_1_4_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_1_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_1_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_1_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_1_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_1_4_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_1_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_1_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_1_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_1_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_1_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_1_4_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_1_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_1_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_1_5_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_1_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_1_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_1_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_1_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_1_5_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_1_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_1_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_1_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_1_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_1_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_1_5_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_1_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_1_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_1_6_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_1_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_1_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_1_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_1_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_1_6_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_1_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_1_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_1_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_1_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_1_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_1_6_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_1_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_1_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_1_7_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_1_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_1_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_1_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_1_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_1_7_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_1_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_1_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_1_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_1_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_1_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_1_7_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_2_4_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_2_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_2_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_2_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_2_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_2_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_2_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_2_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_2_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_2_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_2_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_2_4_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_2_5_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_2_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_2_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_2_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_2_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_2_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_2_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_2_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_2_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_2_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_2_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_2_5_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_2_6_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_2_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_2_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_2_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_2_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_2_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_2_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_2_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_2_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_2_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_2_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_2_6_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_2_7_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_2_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_2_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_2_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_2_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_2_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_2_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_2_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_2_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_2_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_2_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_2_7_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_3_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_3_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_3_4_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_3_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_3_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_3_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_3_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_3_4_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_3_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_3_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_3_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_3_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_3_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_3_4_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_3_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_3_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_3_5_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_3_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_3_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_3_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_3_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_3_5_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_3_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_3_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_3_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_3_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_3_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_3_5_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_3_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_3_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_3_6_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_3_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_3_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_3_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_3_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_3_6_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_3_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_3_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_3_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_3_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_3_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_3_6_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_3_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_3_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_3_7_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_3_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_3_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_3_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_3_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_3_7_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_3_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_3_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_3_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_3_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_3_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_3_7_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_4_4_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_4_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_4_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_4_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_4_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_4_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_4_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_4_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_4_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_4_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_4_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_4_4_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_4_5_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_4_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_4_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_4_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_4_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_4_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_4_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_4_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_4_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_4_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_4_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_4_5_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_4_6_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_4_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_4_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_4_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_4_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_4_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_4_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_4_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_4_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_4_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_4_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_4_6_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_4_7_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_4_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_4_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_4_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_4_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_4_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_4_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_4_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_4_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_4_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_4_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_4_7_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_5_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_5_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_5_4_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_5_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_5_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_5_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_5_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_5_4_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_5_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_5_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_5_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_5_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_5_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_5_4_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_5_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_5_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_5_5_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_5_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_5_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_5_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_5_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_5_5_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_5_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_5_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_5_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_5_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_5_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_5_5_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_5_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_5_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_5_6_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_5_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_5_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_5_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_5_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_5_6_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_5_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_5_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_5_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_5_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_5_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_5_6_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_5_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_5_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_5_7_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_5_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_5_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_5_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_5_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_5_7_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_5_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_5_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_5_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_5_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_5_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_5_7_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_6_4_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_6_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_6_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_6_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_6_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_6_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_6_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_6_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_6_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_6_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_6_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_6_4_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_6_5_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_6_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_6_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_6_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_6_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_6_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_6_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_6_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_6_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_6_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_6_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_6_5_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_6_6_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_6_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_6_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_6_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_6_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_6_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_6_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_6_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_6_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_6_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_6_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_6_6_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_6_7_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_6_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_6_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_6_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_6_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_6_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_6_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_6_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_6_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_6_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_6_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_6_7_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_7_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_7_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_7_4_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_7_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_7_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_7_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_7_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_7_4_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_7_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_7_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_7_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_7_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_7_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_7_4_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_7_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_7_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_7_5_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_7_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_7_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_7_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_7_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_7_5_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_7_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_7_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_7_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_7_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_7_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_7_5_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_7_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_7_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_7_6_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_7_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_7_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_7_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_7_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_7_6_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_7_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_7_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_7_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_7_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_7_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_7_6_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_7_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_7_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_7_7_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_7_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_7_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_7_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_7_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_7_7_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_7_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_7_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_7_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_7_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_7_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_7_7_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_8_4_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_8_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_8_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_8_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_8_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_8_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_8_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_8_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_8_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_8_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_8_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_8_4_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_8_5_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_8_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_8_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_8_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_8_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_8_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_8_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_8_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_8_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_8_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_8_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_8_5_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_8_6_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_8_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_8_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_8_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_8_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_8_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_8_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_8_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_8_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_8_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_8_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_8_6_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_8_7_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_8_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_8_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_8_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_8_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_8_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_8_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_cam_fb_reg_8_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_8_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_8_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_8_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_8_7_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_9_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_9_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_9_4_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_9_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_9_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_9_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_9_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_9_4_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_9_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_9_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_9_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_9_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_9_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_9_4_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_9_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_9_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_9_5_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_9_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_9_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_9_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_9_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_9_5_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_9_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_9_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_9_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_9_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_9_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_9_5_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_9_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_9_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_9_6_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_9_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_9_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_9_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_9_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_9_6_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_9_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_9_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_9_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_9_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_9_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_9_6_RDADDRECC_UNCONNECTED;
  wire NLW_cam_fb_reg_9_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_cam_fb_reg_9_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_cam_fb_reg_9_7_DBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_9_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_9_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_cam_fb_reg_9_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_9_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_cam_fb_reg_9_7_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_9_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_cam_fb_reg_9_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_9_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_cam_fb_reg_9_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_cam_fb_reg_9_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_cam_fb_reg_9_7_RDADDRECC_UNCONNECTED;
  wire [3:3]\NLW_frame_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire NLW_vram_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_vram_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_vram_reg_DBITERR_UNCONNECTED;
  wire NLW_vram_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_vram_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_vram_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_vram_reg_DOADO_UNCONNECTED;
  wire [3:0]NLW_vram_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_vram_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_vram_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_vram_reg_RDADDRECC_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    cam_fb_mux_sel_b_pos_0__4_i_4
       (.I0(p_0_in[7]),
        .I1(p_0_in[9]),
        .O(cam_fb_mux_sel_b_pos_0__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cam_fb_mux_sel_b_pos_0__4_i_5
       (.I0(p_0_in[6]),
        .I1(p_0_in[8]),
        .O(cam_fb_mux_sel_b_pos_0__4_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cam_fb_mux_sel_b_pos_0__4_i_6
       (.I0(p_0_in[5]),
        .I1(p_0_in[7]),
        .O(cam_fb_mux_sel_b_pos_0__4_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cam_fb_mux_sel_b_pos_0__4_i_7
       (.I0(p_0_in[4]),
        .I1(p_0_in[6]),
        .O(cam_fb_mux_sel_b_pos_0__4_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cam_fb_mux_sel_b_pos_0__4_i_8
       (.I0(p_0_in[3]),
        .I1(p_0_in[5]),
        .O(cam_fb_mux_sel_b_pos_0__4_i_8_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_0_4" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_0_4
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_0_4_n_0),
        .CASCADEOUTB(cam_fb_reg_0_4_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_0_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_0_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_0_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_fb_reg_0_4_i_1_n_0),
        .ENBWREN(vga_n_2),
        .INJECTDBITERR(NLW_cam_fb_reg_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_0_4_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_0_4_i_5_n_0,cam_fb_reg_0_4_i_5_n_0,cam_fb_reg_0_4_i_5_n_0,cam_fb_reg_0_4_i_5_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    cam_fb_reg_0_4_i_1
       (.I0(cam_wr_addr[16]),
        .O(cam_fb_reg_0_4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cam_fb_reg_0_4_i_10
       (.I0(p_0_in[2]),
        .I1(p_0_in[4]),
        .O(cam_fb_reg_0_4_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cam_fb_reg_0_4_i_11
       (.I0(p_0_in[1]),
        .I1(p_0_in[3]),
        .O(cam_fb_reg_0_4_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cam_fb_reg_0_4_i_12
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .O(cam_fb_reg_0_4_i_12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    cam_fb_reg_0_4_i_5
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_0_4_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cam_fb_reg_0_4_i_7
       (.I0(vga_n_18),
        .I1(drawX[9]),
        .O(cam_fb_reg_0_4_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cam_fb_reg_0_4_i_8
       (.I0(vga_n_19),
        .I1(drawX[8]),
        .O(cam_fb_reg_0_4_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cam_fb_reg_0_4_i_9
       (.I0(p_0_in[0]),
        .I1(drawX[7]),
        .O(cam_fb_reg_0_4_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_0_5
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_0_5_n_0),
        .CASCADEOUTB(cam_fb_reg_0_5_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_0_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_0_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_0_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_fb_reg_0_4_i_1_n_0),
        .ENBWREN(vga_n_2),
        .INJECTDBITERR(NLW_cam_fb_reg_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_0_5_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_0_5_i_1_n_0,cam_fb_reg_0_5_i_1_n_0,cam_fb_reg_0_5_i_1_n_0,cam_fb_reg_0_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    cam_fb_reg_0_5_i_1
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_0_5_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_0_6" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_0_6
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_0_6_n_0),
        .CASCADEOUTB(cam_fb_reg_0_6_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_0_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_0_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_0_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_fb_reg_0_4_i_1_n_0),
        .ENBWREN(vga_n_2),
        .INJECTDBITERR(NLW_cam_fb_reg_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_0_6_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_0_6_i_1_n_0,cam_fb_reg_0_6_i_1_n_0,cam_fb_reg_0_6_i_1_n_0,cam_fb_reg_0_6_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    cam_fb_reg_0_6_i_1
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_0_6_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_0_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_0_7
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_0_7_n_0),
        .CASCADEOUTB(cam_fb_reg_0_7_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_0_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_0_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_0_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_fb_reg_0_4_i_1_n_0),
        .ENBWREN(vga_n_2),
        .INJECTDBITERR(NLW_cam_fb_reg_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_0_7_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_0_7_i_1_n_0,cam_fb_reg_0_7_i_1_n_0,cam_fb_reg_0_7_i_1_n_0,cam_fb_reg_0_7_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    cam_fb_reg_0_7_i_1
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_0_7_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_1_4" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_1_4
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(cam_fb_reg_0_4_n_0),
        .CASCADEINB(cam_fb_reg_0_4_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_1_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_1_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_1_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_1_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_1_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_1_4_DOADO_UNCONNECTED[31:1],cam_fb_reg_1_4_n_35}),
        .DOBDO({NLW_cam_fb_reg_1_4_DOBDO_UNCONNECTED[31:1],cam_fb_reg_1_4_n_67}),
        .DOPADOP(NLW_cam_fb_reg_1_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_1_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_1_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_fb_reg_0_4_i_1_n_0),
        .ENBWREN(vga_n_2),
        .INJECTDBITERR(NLW_cam_fb_reg_1_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_1_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_1_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_1_4_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_1_4_i_1_n_0,cam_fb_reg_1_4_i_1_n_0,cam_fb_reg_1_4_i_1_n_0,cam_fb_reg_1_4_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    cam_fb_reg_1_4_i_1
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_1_4_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_1_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_1_5
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(cam_fb_reg_0_5_n_0),
        .CASCADEINB(cam_fb_reg_0_5_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_1_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_1_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_1_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_1_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_1_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_1_5_DOADO_UNCONNECTED[31:1],cam_fb_reg_1_5_n_35}),
        .DOBDO({NLW_cam_fb_reg_1_5_DOBDO_UNCONNECTED[31:1],cam_fb_reg_1_5_n_67}),
        .DOPADOP(NLW_cam_fb_reg_1_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_1_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_1_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_fb_reg_0_4_i_1_n_0),
        .ENBWREN(vga_n_2),
        .INJECTDBITERR(NLW_cam_fb_reg_1_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_1_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_1_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_1_5_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_1_5_i_1_n_0,cam_fb_reg_1_5_i_1_n_0,cam_fb_reg_1_5_i_1_n_0,cam_fb_reg_1_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    cam_fb_reg_1_5_i_1
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_1_5_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_1_6" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_1_6
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(cam_fb_reg_0_6_n_0),
        .CASCADEINB(cam_fb_reg_0_6_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_1_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_1_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_1_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_1_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_1_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_1_6_DOADO_UNCONNECTED[31:1],cam_fb_reg_1_6_n_35}),
        .DOBDO({NLW_cam_fb_reg_1_6_DOBDO_UNCONNECTED[31:1],cam_fb_reg_1_6_n_67}),
        .DOPADOP(NLW_cam_fb_reg_1_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_1_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_1_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_fb_reg_0_4_i_1_n_0),
        .ENBWREN(vga_n_2),
        .INJECTDBITERR(NLW_cam_fb_reg_1_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_1_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_1_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_1_6_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_1_6_i_1_n_0,cam_fb_reg_1_6_i_1_n_0,cam_fb_reg_1_6_i_1_n_0,cam_fb_reg_1_6_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    cam_fb_reg_1_6_i_1
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_1_6_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_1_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_1_7
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(cam_fb_reg_0_7_n_0),
        .CASCADEINB(cam_fb_reg_0_7_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_1_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_1_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_1_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_1_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_1_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_1_7_DOADO_UNCONNECTED[31:1],cam_fb_reg_1_7_n_35}),
        .DOBDO({NLW_cam_fb_reg_1_7_DOBDO_UNCONNECTED[31:1],cam_fb_reg_1_7_n_67}),
        .DOPADOP(NLW_cam_fb_reg_1_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_1_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_1_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_fb_reg_0_4_i_1_n_0),
        .ENBWREN(vga_n_2),
        .INJECTDBITERR(NLW_cam_fb_reg_1_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_1_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_1_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_1_7_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_1_7_i_1_n_0,cam_fb_reg_1_7_i_1_n_0,cam_fb_reg_1_7_i_1_n_0,cam_fb_reg_1_7_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h2)) 
    cam_fb_reg_1_7_i_1
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_1_7_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_2_4" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "65536" *) 
  (* ram_addr_end = "98303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_2_4
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_2_4_n_0),
        .CASCADEOUTB(cam_fb_reg_2_4_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_2_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_2_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_2_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_2_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_2_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_2_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_2_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_2_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_wr_addr[16]),
        .ENBWREN(vga_n_15),
        .INJECTDBITERR(NLW_cam_fb_reg_2_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_2_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_2_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_2_4_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_2_4_i_2_n_0,cam_fb_reg_2_4_i_2_n_0,cam_fb_reg_2_4_i_2_n_0,cam_fb_reg_2_4_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    cam_fb_reg_2_4_i_2
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_2_4_i_2_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_2_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "65536" *) 
  (* ram_addr_end = "98303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_2_5
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_2_5_n_0),
        .CASCADEOUTB(cam_fb_reg_2_5_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_2_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_2_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_2_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_2_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_2_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_2_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_2_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_2_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_wr_addr[16]),
        .ENBWREN(vga_n_15),
        .INJECTDBITERR(NLW_cam_fb_reg_2_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_2_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_2_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_2_5_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_2_5_i_1_n_0,cam_fb_reg_2_5_i_1_n_0,cam_fb_reg_2_5_i_1_n_0,cam_fb_reg_2_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    cam_fb_reg_2_5_i_1
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_2_5_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_2_6" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "65536" *) 
  (* ram_addr_end = "98303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_2_6
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_2_6_n_0),
        .CASCADEOUTB(cam_fb_reg_2_6_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_2_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_2_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_2_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_2_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_2_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_2_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_2_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_2_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_wr_addr[16]),
        .ENBWREN(vga_n_15),
        .INJECTDBITERR(NLW_cam_fb_reg_2_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_2_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_2_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_2_6_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_2_6_i_1_n_0,cam_fb_reg_2_6_i_1_n_0,cam_fb_reg_2_6_i_1_n_0,cam_fb_reg_2_6_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    cam_fb_reg_2_6_i_1
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_2_6_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_2_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "65536" *) 
  (* ram_addr_end = "98303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_2_7
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_2_7_n_0),
        .CASCADEOUTB(cam_fb_reg_2_7_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_2_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_2_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_2_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_2_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_2_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_2_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_2_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_2_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_wr_addr[16]),
        .ENBWREN(vga_n_15),
        .INJECTDBITERR(NLW_cam_fb_reg_2_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_2_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_2_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_2_7_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_2_7_i_1_n_0,cam_fb_reg_2_7_i_1_n_0,cam_fb_reg_2_7_i_1_n_0,cam_fb_reg_2_7_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    cam_fb_reg_2_7_i_1
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_2_7_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_3_4" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "98304" *) 
  (* ram_addr_end = "131071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_3_4
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(cam_fb_reg_2_4_n_0),
        .CASCADEINB(cam_fb_reg_2_4_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_3_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_3_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_3_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_3_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_3_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_3_4_DOADO_UNCONNECTED[31:1],cam_fb_reg_3_4_n_35}),
        .DOBDO({NLW_cam_fb_reg_3_4_DOBDO_UNCONNECTED[31:1],cam_fb_reg_3_4_n_67}),
        .DOPADOP(NLW_cam_fb_reg_3_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_3_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_3_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_wr_addr[16]),
        .ENBWREN(vga_n_15),
        .INJECTDBITERR(NLW_cam_fb_reg_3_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_3_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_3_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_3_4_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_3_4_i_1_n_0,cam_fb_reg_3_4_i_1_n_0,cam_fb_reg_3_4_i_1_n_0,cam_fb_reg_3_4_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    cam_fb_reg_3_4_i_1
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_3_4_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "98304" *) 
  (* ram_addr_end = "131071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_3_5
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(cam_fb_reg_2_5_n_0),
        .CASCADEINB(cam_fb_reg_2_5_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_3_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_3_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_3_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_3_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_3_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_3_5_DOADO_UNCONNECTED[31:1],cam_fb_reg_3_5_n_35}),
        .DOBDO({NLW_cam_fb_reg_3_5_DOBDO_UNCONNECTED[31:1],cam_fb_reg_3_5_n_67}),
        .DOPADOP(NLW_cam_fb_reg_3_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_3_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_3_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_wr_addr[16]),
        .ENBWREN(vga_n_15),
        .INJECTDBITERR(NLW_cam_fb_reg_3_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_3_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_3_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_3_5_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_3_5_i_1_n_0,cam_fb_reg_3_5_i_1_n_0,cam_fb_reg_3_5_i_1_n_0,cam_fb_reg_3_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    cam_fb_reg_3_5_i_1
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_3_5_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_3_6" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "98304" *) 
  (* ram_addr_end = "131071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_3_6
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(cam_fb_reg_2_6_n_0),
        .CASCADEINB(cam_fb_reg_2_6_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_3_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_3_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_3_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_3_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_3_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_3_6_DOADO_UNCONNECTED[31:1],cam_fb_reg_3_6_n_35}),
        .DOBDO({NLW_cam_fb_reg_3_6_DOBDO_UNCONNECTED[31:1],cam_fb_reg_3_6_n_67}),
        .DOPADOP(NLW_cam_fb_reg_3_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_3_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_3_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_wr_addr[16]),
        .ENBWREN(vga_n_15),
        .INJECTDBITERR(NLW_cam_fb_reg_3_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_3_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_3_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_3_6_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_3_6_i_1_n_0,cam_fb_reg_3_6_i_1_n_0,cam_fb_reg_3_6_i_1_n_0,cam_fb_reg_3_6_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    cam_fb_reg_3_6_i_1
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_3_6_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_3_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "98304" *) 
  (* ram_addr_end = "131071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_3_7
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(cam_fb_reg_2_7_n_0),
        .CASCADEINB(cam_fb_reg_2_7_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_3_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_3_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_3_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_3_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_3_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_3_7_DOADO_UNCONNECTED[31:1],cam_fb_reg_3_7_n_35}),
        .DOBDO({NLW_cam_fb_reg_3_7_DOBDO_UNCONNECTED[31:1],cam_fb_reg_3_7_n_67}),
        .DOPADOP(NLW_cam_fb_reg_3_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_3_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_3_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(cam_wr_addr[16]),
        .ENBWREN(vga_n_15),
        .INJECTDBITERR(NLW_cam_fb_reg_3_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_3_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_3_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_3_7_SBITERR_UNCONNECTED),
        .WEA({cam_fb_reg_3_7_i_1_n_0,cam_fb_reg_3_7_i_1_n_0,cam_fb_reg_3_7_i_1_n_0,cam_fb_reg_3_7_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    cam_fb_reg_3_7_i_1
       (.I0(cam_we),
        .I1(cam_wr_addr[16]),
        .O(cam_fb_reg_3_7_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_4_4" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "131072" *) 
  (* ram_addr_end = "163839" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_4_4
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_4_4_n_0),
        .CASCADEOUTB(cam_fb_reg_4_4_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_4_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_4_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_4_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_4_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_4_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_4_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_4_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_4_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_16),
        .INJECTDBITERR(NLW_cam_fb_reg_4_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_4_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_4_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_4_4_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_4_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "131072" *) 
  (* ram_addr_end = "163839" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_4_5
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_4_5_n_0),
        .CASCADEOUTB(cam_fb_reg_4_5_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_4_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_4_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_4_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_4_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_4_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_4_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_4_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_4_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_16),
        .INJECTDBITERR(NLW_cam_fb_reg_4_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_4_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_4_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_4_5_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_4_6" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "131072" *) 
  (* ram_addr_end = "163839" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_4_6
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_4_6_n_0),
        .CASCADEOUTB(cam_fb_reg_4_6_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_4_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_4_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_4_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_4_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_4_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_4_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_4_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_4_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_16),
        .INJECTDBITERR(NLW_cam_fb_reg_4_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_4_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_4_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_4_6_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_4_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "131072" *) 
  (* ram_addr_end = "163839" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_4_7
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_4_7_n_0),
        .CASCADEOUTB(cam_fb_reg_4_7_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_4_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_4_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_4_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_4_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_4_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_4_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_4_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_4_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_16),
        .INJECTDBITERR(NLW_cam_fb_reg_4_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_4_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_4_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_4_7_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_5_4" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "163840" *) 
  (* ram_addr_end = "196607" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_5_4
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(cam_fb_reg_4_4_n_0),
        .CASCADEINB(cam_fb_reg_4_4_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_5_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_5_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_5_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_5_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_5_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_5_4_DOADO_UNCONNECTED[31:1],cam_fb_reg_5_4_n_35}),
        .DOBDO({NLW_cam_fb_reg_5_4_DOBDO_UNCONNECTED[31:1],cam_fb_reg_5_4_n_67}),
        .DOPADOP(NLW_cam_fb_reg_5_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_5_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_5_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_16),
        .INJECTDBITERR(NLW_cam_fb_reg_5_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_5_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_5_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_5_4_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_5_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "163840" *) 
  (* ram_addr_end = "196607" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_5_5
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(cam_fb_reg_4_5_n_0),
        .CASCADEINB(cam_fb_reg_4_5_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_5_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_5_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_5_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_5_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_5_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_5_5_DOADO_UNCONNECTED[31:1],cam_fb_reg_5_5_n_35}),
        .DOBDO({NLW_cam_fb_reg_5_5_DOBDO_UNCONNECTED[31:1],cam_fb_reg_5_5_n_67}),
        .DOPADOP(NLW_cam_fb_reg_5_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_5_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_5_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_16),
        .INJECTDBITERR(NLW_cam_fb_reg_5_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_5_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_5_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_5_5_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_5_6" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "163840" *) 
  (* ram_addr_end = "196607" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_5_6
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(cam_fb_reg_4_6_n_0),
        .CASCADEINB(cam_fb_reg_4_6_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_5_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_5_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_5_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_5_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_5_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_5_6_DOADO_UNCONNECTED[31:1],cam_fb_reg_5_6_n_35}),
        .DOBDO({NLW_cam_fb_reg_5_6_DOBDO_UNCONNECTED[31:1],cam_fb_reg_5_6_n_67}),
        .DOPADOP(NLW_cam_fb_reg_5_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_5_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_5_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_16),
        .INJECTDBITERR(NLW_cam_fb_reg_5_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_5_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_5_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_5_6_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_5_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "163840" *) 
  (* ram_addr_end = "196607" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_5_7
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(cam_fb_reg_4_7_n_0),
        .CASCADEINB(cam_fb_reg_4_7_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_5_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_5_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_5_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_5_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_5_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_5_7_DOADO_UNCONNECTED[31:1],cam_fb_reg_5_7_n_35}),
        .DOBDO({NLW_cam_fb_reg_5_7_DOBDO_UNCONNECTED[31:1],cam_fb_reg_5_7_n_67}),
        .DOPADOP(NLW_cam_fb_reg_5_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_5_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_5_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_16),
        .INJECTDBITERR(NLW_cam_fb_reg_5_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_5_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_5_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_5_7_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_6_4" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "196608" *) 
  (* ram_addr_end = "229375" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_6_4
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_6_4_n_0),
        .CASCADEOUTB(cam_fb_reg_6_4_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_6_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_6_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_6_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_6_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_6_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_6_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_6_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_6_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_17),
        .INJECTDBITERR(NLW_cam_fb_reg_6_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_6_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_6_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_6_4_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_6_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "196608" *) 
  (* ram_addr_end = "229375" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_6_5
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_6_5_n_0),
        .CASCADEOUTB(cam_fb_reg_6_5_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_6_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_6_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_6_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_6_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_6_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_6_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_6_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_6_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_17),
        .INJECTDBITERR(NLW_cam_fb_reg_6_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_6_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_6_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_6_5_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_6_6" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "196608" *) 
  (* ram_addr_end = "229375" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_6_6
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_6_6_n_0),
        .CASCADEOUTB(cam_fb_reg_6_6_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_6_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_6_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_6_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_6_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_6_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_6_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_6_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_6_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_17),
        .INJECTDBITERR(NLW_cam_fb_reg_6_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_6_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_6_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_6_6_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_6_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "196608" *) 
  (* ram_addr_end = "229375" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_6_7
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_6_7_n_0),
        .CASCADEOUTB(cam_fb_reg_6_7_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_6_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_6_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_6_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_6_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_6_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_6_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_6_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_6_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_17),
        .INJECTDBITERR(NLW_cam_fb_reg_6_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_6_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_6_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_6_7_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_7_4" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "229376" *) 
  (* ram_addr_end = "262143" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_7_4
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(cam_fb_reg_6_4_n_0),
        .CASCADEINB(cam_fb_reg_6_4_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_7_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_7_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_7_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_7_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_7_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_7_4_DOADO_UNCONNECTED[31:1],cam_fb_reg_7_4_n_35}),
        .DOBDO({NLW_cam_fb_reg_7_4_DOBDO_UNCONNECTED[31:1],cam_fb_reg_7_4_n_67}),
        .DOPADOP(NLW_cam_fb_reg_7_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_7_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_7_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_17),
        .INJECTDBITERR(NLW_cam_fb_reg_7_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_7_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_7_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_7_4_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_7_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "229376" *) 
  (* ram_addr_end = "262143" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_7_5
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(cam_fb_reg_6_5_n_0),
        .CASCADEINB(cam_fb_reg_6_5_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_7_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_7_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_7_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_7_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_7_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_7_5_DOADO_UNCONNECTED[31:1],cam_fb_reg_7_5_n_35}),
        .DOBDO({NLW_cam_fb_reg_7_5_DOBDO_UNCONNECTED[31:1],cam_fb_reg_7_5_n_67}),
        .DOPADOP(NLW_cam_fb_reg_7_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_7_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_7_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_17),
        .INJECTDBITERR(NLW_cam_fb_reg_7_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_7_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_7_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_7_5_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_7_6" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "229376" *) 
  (* ram_addr_end = "262143" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_7_6
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(cam_fb_reg_6_6_n_0),
        .CASCADEINB(cam_fb_reg_6_6_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_7_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_7_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_7_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_7_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_7_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_7_6_DOADO_UNCONNECTED[31:1],cam_fb_reg_7_6_n_35}),
        .DOBDO({NLW_cam_fb_reg_7_6_DOBDO_UNCONNECTED[31:1],cam_fb_reg_7_6_n_67}),
        .DOPADOP(NLW_cam_fb_reg_7_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_7_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_7_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_17),
        .INJECTDBITERR(NLW_cam_fb_reg_7_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_7_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_7_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_7_6_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_7_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "229376" *) 
  (* ram_addr_end = "262143" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_7_7
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(cam_fb_reg_6_7_n_0),
        .CASCADEINB(cam_fb_reg_6_7_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_7_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_7_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_7_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_7_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_7_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_7_7_DOADO_UNCONNECTED[31:1],cam_fb_reg_7_7_n_35}),
        .DOBDO({NLW_cam_fb_reg_7_7_DOBDO_UNCONNECTED[31:1],cam_fb_reg_7_7_n_67}),
        .DOPADOP(NLW_cam_fb_reg_7_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_7_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_7_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(vga_n_17),
        .INJECTDBITERR(NLW_cam_fb_reg_7_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_7_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_7_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_7_7_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_8_4" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "262144" *) 
  (* ram_addr_end = "294911" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_8_4
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_8_4_n_0),
        .CASCADEOUTB(cam_fb_reg_8_4_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_8_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_8_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_8_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_8_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_8_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_8_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_8_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_8_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(cam_fb_reg_8_4_i_1_n_0),
        .INJECTDBITERR(NLW_cam_fb_reg_8_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_8_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_8_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_8_4_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h02)) 
    cam_fb_reg_8_4_i_1
       (.I0(cam_rd_addr[18]),
        .I1(cam_rd_addr[16]),
        .I2(cam_rd_addr[17]),
        .O(cam_fb_reg_8_4_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_8_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "262144" *) 
  (* ram_addr_end = "294911" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_8_5
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_8_5_n_0),
        .CASCADEOUTB(cam_fb_reg_8_5_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_8_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_8_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_8_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_8_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_8_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_8_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_8_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_8_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(cam_fb_reg_8_4_i_1_n_0),
        .INJECTDBITERR(NLW_cam_fb_reg_8_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_8_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_8_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_8_5_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_8_6" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "262144" *) 
  (* ram_addr_end = "294911" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_8_6
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_8_6_n_0),
        .CASCADEOUTB(cam_fb_reg_8_6_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_8_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_8_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_8_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_8_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_8_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_8_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_8_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_8_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(cam_fb_reg_8_4_i_1_n_0),
        .INJECTDBITERR(NLW_cam_fb_reg_8_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_8_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_8_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_8_6_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_8_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "262144" *) 
  (* ram_addr_end = "294911" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_8_7
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(cam_fb_reg_8_7_n_0),
        .CASCADEOUTB(cam_fb_reg_8_7_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_8_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_8_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_8_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_cam_fb_reg_8_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_cam_fb_reg_8_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_cam_fb_reg_8_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_8_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_8_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(cam_fb_reg_8_4_i_1_n_0),
        .INJECTDBITERR(NLW_cam_fb_reg_8_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_8_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_8_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_8_7_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_9_4" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "294912" *) 
  (* ram_addr_end = "327679" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_9_4
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(cam_fb_reg_8_4_n_0),
        .CASCADEINB(cam_fb_reg_8_4_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_9_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_9_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_9_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_9_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_9_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_9_4_DOADO_UNCONNECTED[31:1],cam_fb_reg_9_4_n_35}),
        .DOBDO({NLW_cam_fb_reg_9_4_DOBDO_UNCONNECTED[31:1],cam_fb_reg_9_4_n_67}),
        .DOPADOP(NLW_cam_fb_reg_9_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_9_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_9_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(cam_fb_reg_8_4_i_1_n_0),
        .INJECTDBITERR(NLW_cam_fb_reg_9_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_9_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_9_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_9_4_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_9_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "294912" *) 
  (* ram_addr_end = "327679" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_9_5
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],drawX[6],vga_n_40,drawX[4:3],vga_n_41,vga_n_42,vga_n_43}),
        .CASCADEINA(cam_fb_reg_8_5_n_0),
        .CASCADEINB(cam_fb_reg_8_5_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_9_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_9_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_9_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_9_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_9_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_9_5_DOADO_UNCONNECTED[31:1],cam_fb_reg_9_5_n_35}),
        .DOBDO({NLW_cam_fb_reg_9_5_DOBDO_UNCONNECTED[31:1],cam_fb_reg_9_5_n_67}),
        .DOPADOP(NLW_cam_fb_reg_9_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_9_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_9_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(cam_fb_reg_8_4_i_1_n_0),
        .INJECTDBITERR(NLW_cam_fb_reg_9_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_9_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_9_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_9_5_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_9_6" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "294912" *) 
  (* ram_addr_end = "327679" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_9_6
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(cam_fb_reg_8_6_n_0),
        .CASCADEINB(cam_fb_reg_8_6_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_9_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_9_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_9_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_9_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_9_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_9_6_DOADO_UNCONNECTED[31:1],cam_fb_reg_9_6_n_35}),
        .DOBDO({NLW_cam_fb_reg_9_6_DOBDO_UNCONNECTED[31:1],cam_fb_reg_9_6_n_67}),
        .DOPADOP(NLW_cam_fb_reg_9_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_9_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_9_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(cam_fb_reg_8_4_i_1_n_0),
        .INJECTDBITERR(NLW_cam_fb_reg_9_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_9_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_9_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_9_6_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2457600" *) 
  (* RTL_RAM_NAME = "inst/cam_fb_reg_9_7" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "294912" *) 
  (* ram_addr_end = "327679" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    cam_fb_reg_9_7
       (.ADDRARDADDR(cam_wr_addr[15:0]),
        .ADDRBWRADDR({cam_rd_addr[15:7],vga_n_44,drawX[5],vga_n_45,vga_n_46,drawX[2:1],vga_n_47}),
        .CASCADEINA(cam_fb_reg_8_7_n_0),
        .CASCADEINB(cam_fb_reg_8_7_n_1),
        .CASCADEOUTA(NLW_cam_fb_reg_9_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_cam_fb_reg_9_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(clk_25MHz),
        .DBITERR(NLW_cam_fb_reg_9_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cam_wr_data[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_9_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_cam_fb_reg_9_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_cam_fb_reg_9_7_DOADO_UNCONNECTED[31:1],cam_fb_reg_9_7_n_35}),
        .DOBDO({NLW_cam_fb_reg_9_7_DOBDO_UNCONNECTED[31:1],cam_fb_reg_9_7_n_67}),
        .DOPADOP(NLW_cam_fb_reg_9_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_cam_fb_reg_9_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_cam_fb_reg_9_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(cam_fb_reg_8_4_i_1_n_0),
        .INJECTDBITERR(NLW_cam_fb_reg_9_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_cam_fb_reg_9_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_cam_fb_reg_9_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_cam_fb_reg_9_7_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE cam_fb_reg_mux_sel_b_pos_0__4
       (.C(clk_25MHz),
        .CE(1'b1),
        .D(cam_rd_addr[18]),
        .Q(cam_fb_reg_mux_sel_b_pos_0__4_n_0),
        .R(1'b0));
  FDRE cam_fb_reg_mux_sel_b_pos_1__4
       (.C(clk_25MHz),
        .CE(1'b1),
        .D(cam_rd_addr[17]),
        .Q(cam_fb_reg_mux_sel_b_pos_1__4_n_0),
        .R(1'b0));
  FDRE cam_fb_reg_mux_sel_b_pos_2__4
       (.C(clk_25MHz),
        .CE(1'b1),
        .D(cam_rd_addr[16]),
        .Q(cam_fb_reg_mux_sel_b_pos_2__4_n_0),
        .R(1'b0));
  mb_usb_hdmi_text_controller_0_2_clk_wiz_0 clk_wiz
       (.clk_in1(axi_aclk),
        .clk_out1(clk_25MHz),
        .clk_out2(clk_125MHz),
        .locked(locked),
        .reset(reset_ah));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_counter[0]_i_3 
       (.I0(frame_counter_reg[0]),
        .O(\frame_counter[0]_i_3_n_0 ));
  FDCE \frame_counter_meta_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[0]),
        .Q(frame_counter_meta[0]));
  FDCE \frame_counter_meta_reg[10] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[10]),
        .Q(frame_counter_meta[10]));
  FDCE \frame_counter_meta_reg[11] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[11]),
        .Q(frame_counter_meta[11]));
  FDCE \frame_counter_meta_reg[12] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[12]),
        .Q(frame_counter_meta[12]));
  FDCE \frame_counter_meta_reg[13] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[13]),
        .Q(frame_counter_meta[13]));
  FDCE \frame_counter_meta_reg[14] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[14]),
        .Q(frame_counter_meta[14]));
  FDCE \frame_counter_meta_reg[15] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[15]),
        .Q(frame_counter_meta[15]));
  FDCE \frame_counter_meta_reg[16] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[16]),
        .Q(frame_counter_meta[16]));
  FDCE \frame_counter_meta_reg[17] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[17]),
        .Q(frame_counter_meta[17]));
  FDCE \frame_counter_meta_reg[18] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[18]),
        .Q(frame_counter_meta[18]));
  FDCE \frame_counter_meta_reg[19] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[19]),
        .Q(frame_counter_meta[19]));
  FDCE \frame_counter_meta_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[1]),
        .Q(frame_counter_meta[1]));
  FDCE \frame_counter_meta_reg[20] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[20]),
        .Q(frame_counter_meta[20]));
  FDCE \frame_counter_meta_reg[21] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[21]),
        .Q(frame_counter_meta[21]));
  FDCE \frame_counter_meta_reg[22] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[22]),
        .Q(frame_counter_meta[22]));
  FDCE \frame_counter_meta_reg[23] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[23]),
        .Q(frame_counter_meta[23]));
  FDCE \frame_counter_meta_reg[24] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[24]),
        .Q(frame_counter_meta[24]));
  FDCE \frame_counter_meta_reg[25] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[25]),
        .Q(frame_counter_meta[25]));
  FDCE \frame_counter_meta_reg[26] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[26]),
        .Q(frame_counter_meta[26]));
  FDCE \frame_counter_meta_reg[27] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[27]),
        .Q(frame_counter_meta[27]));
  FDCE \frame_counter_meta_reg[28] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[28]),
        .Q(frame_counter_meta[28]));
  FDCE \frame_counter_meta_reg[29] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[29]),
        .Q(frame_counter_meta[29]));
  FDCE \frame_counter_meta_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[2]),
        .Q(frame_counter_meta[2]));
  FDCE \frame_counter_meta_reg[30] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[30]),
        .Q(frame_counter_meta[30]));
  FDCE \frame_counter_meta_reg[31] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[31]),
        .Q(frame_counter_meta[31]));
  FDCE \frame_counter_meta_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[3]),
        .Q(frame_counter_meta[3]));
  FDCE \frame_counter_meta_reg[4] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[4]),
        .Q(frame_counter_meta[4]));
  FDCE \frame_counter_meta_reg[5] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[5]),
        .Q(frame_counter_meta[5]));
  FDCE \frame_counter_meta_reg[6] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[6]),
        .Q(frame_counter_meta[6]));
  FDCE \frame_counter_meta_reg[7] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[7]),
        .Q(frame_counter_meta[7]));
  FDCE \frame_counter_meta_reg[8] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[8]),
        .Q(frame_counter_meta[8]));
  FDCE \frame_counter_meta_reg[9] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_reg[9]),
        .Q(frame_counter_meta[9]));
  FDCE \frame_counter_reg[0] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[0]_i_2_n_7 ),
        .Q(frame_counter_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\frame_counter_reg[0]_i_2_n_0 ,\frame_counter_reg[0]_i_2_n_1 ,\frame_counter_reg[0]_i_2_n_2 ,\frame_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frame_counter_reg[0]_i_2_n_4 ,\frame_counter_reg[0]_i_2_n_5 ,\frame_counter_reg[0]_i_2_n_6 ,\frame_counter_reg[0]_i_2_n_7 }),
        .S({frame_counter_reg[3:1],\frame_counter[0]_i_3_n_0 }));
  FDCE \frame_counter_reg[10] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[8]_i_1_n_5 ),
        .Q(frame_counter_reg[10]));
  FDCE \frame_counter_reg[11] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[8]_i_1_n_4 ),
        .Q(frame_counter_reg[11]));
  FDCE \frame_counter_reg[12] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[12]_i_1_n_7 ),
        .Q(frame_counter_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[12]_i_1 
       (.CI(\frame_counter_reg[8]_i_1_n_0 ),
        .CO({\frame_counter_reg[12]_i_1_n_0 ,\frame_counter_reg[12]_i_1_n_1 ,\frame_counter_reg[12]_i_1_n_2 ,\frame_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[12]_i_1_n_4 ,\frame_counter_reg[12]_i_1_n_5 ,\frame_counter_reg[12]_i_1_n_6 ,\frame_counter_reg[12]_i_1_n_7 }),
        .S(frame_counter_reg[15:12]));
  FDCE \frame_counter_reg[13] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[12]_i_1_n_6 ),
        .Q(frame_counter_reg[13]));
  FDCE \frame_counter_reg[14] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[12]_i_1_n_5 ),
        .Q(frame_counter_reg[14]));
  FDCE \frame_counter_reg[15] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[12]_i_1_n_4 ),
        .Q(frame_counter_reg[15]));
  FDCE \frame_counter_reg[16] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[16]_i_1_n_7 ),
        .Q(frame_counter_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[16]_i_1 
       (.CI(\frame_counter_reg[12]_i_1_n_0 ),
        .CO({\frame_counter_reg[16]_i_1_n_0 ,\frame_counter_reg[16]_i_1_n_1 ,\frame_counter_reg[16]_i_1_n_2 ,\frame_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[16]_i_1_n_4 ,\frame_counter_reg[16]_i_1_n_5 ,\frame_counter_reg[16]_i_1_n_6 ,\frame_counter_reg[16]_i_1_n_7 }),
        .S(frame_counter_reg[19:16]));
  FDCE \frame_counter_reg[17] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[16]_i_1_n_6 ),
        .Q(frame_counter_reg[17]));
  FDCE \frame_counter_reg[18] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[16]_i_1_n_5 ),
        .Q(frame_counter_reg[18]));
  FDCE \frame_counter_reg[19] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[16]_i_1_n_4 ),
        .Q(frame_counter_reg[19]));
  FDCE \frame_counter_reg[1] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[0]_i_2_n_6 ),
        .Q(frame_counter_reg[1]));
  FDCE \frame_counter_reg[20] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[20]_i_1_n_7 ),
        .Q(frame_counter_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[20]_i_1 
       (.CI(\frame_counter_reg[16]_i_1_n_0 ),
        .CO({\frame_counter_reg[20]_i_1_n_0 ,\frame_counter_reg[20]_i_1_n_1 ,\frame_counter_reg[20]_i_1_n_2 ,\frame_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[20]_i_1_n_4 ,\frame_counter_reg[20]_i_1_n_5 ,\frame_counter_reg[20]_i_1_n_6 ,\frame_counter_reg[20]_i_1_n_7 }),
        .S(frame_counter_reg[23:20]));
  FDCE \frame_counter_reg[21] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[20]_i_1_n_6 ),
        .Q(frame_counter_reg[21]));
  FDCE \frame_counter_reg[22] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[20]_i_1_n_5 ),
        .Q(frame_counter_reg[22]));
  FDCE \frame_counter_reg[23] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[20]_i_1_n_4 ),
        .Q(frame_counter_reg[23]));
  FDCE \frame_counter_reg[24] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[24]_i_1_n_7 ),
        .Q(frame_counter_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[24]_i_1 
       (.CI(\frame_counter_reg[20]_i_1_n_0 ),
        .CO({\frame_counter_reg[24]_i_1_n_0 ,\frame_counter_reg[24]_i_1_n_1 ,\frame_counter_reg[24]_i_1_n_2 ,\frame_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[24]_i_1_n_4 ,\frame_counter_reg[24]_i_1_n_5 ,\frame_counter_reg[24]_i_1_n_6 ,\frame_counter_reg[24]_i_1_n_7 }),
        .S(frame_counter_reg[27:24]));
  FDCE \frame_counter_reg[25] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[24]_i_1_n_6 ),
        .Q(frame_counter_reg[25]));
  FDCE \frame_counter_reg[26] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[24]_i_1_n_5 ),
        .Q(frame_counter_reg[26]));
  FDCE \frame_counter_reg[27] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[24]_i_1_n_4 ),
        .Q(frame_counter_reg[27]));
  FDCE \frame_counter_reg[28] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[28]_i_1_n_7 ),
        .Q(frame_counter_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[28]_i_1 
       (.CI(\frame_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_frame_counter_reg[28]_i_1_CO_UNCONNECTED [3],\frame_counter_reg[28]_i_1_n_1 ,\frame_counter_reg[28]_i_1_n_2 ,\frame_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[28]_i_1_n_4 ,\frame_counter_reg[28]_i_1_n_5 ,\frame_counter_reg[28]_i_1_n_6 ,\frame_counter_reg[28]_i_1_n_7 }),
        .S(frame_counter_reg[31:28]));
  FDCE \frame_counter_reg[29] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[28]_i_1_n_6 ),
        .Q(frame_counter_reg[29]));
  FDCE \frame_counter_reg[2] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[0]_i_2_n_5 ),
        .Q(frame_counter_reg[2]));
  FDCE \frame_counter_reg[30] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[28]_i_1_n_5 ),
        .Q(frame_counter_reg[30]));
  FDCE \frame_counter_reg[31] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[28]_i_1_n_4 ),
        .Q(frame_counter_reg[31]));
  FDCE \frame_counter_reg[3] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[0]_i_2_n_4 ),
        .Q(frame_counter_reg[3]));
  FDCE \frame_counter_reg[4] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[4]_i_1_n_7 ),
        .Q(frame_counter_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[4]_i_1 
       (.CI(\frame_counter_reg[0]_i_2_n_0 ),
        .CO({\frame_counter_reg[4]_i_1_n_0 ,\frame_counter_reg[4]_i_1_n_1 ,\frame_counter_reg[4]_i_1_n_2 ,\frame_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[4]_i_1_n_4 ,\frame_counter_reg[4]_i_1_n_5 ,\frame_counter_reg[4]_i_1_n_6 ,\frame_counter_reg[4]_i_1_n_7 }),
        .S(frame_counter_reg[7:4]));
  FDCE \frame_counter_reg[5] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[4]_i_1_n_6 ),
        .Q(frame_counter_reg[5]));
  FDCE \frame_counter_reg[6] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[4]_i_1_n_5 ),
        .Q(frame_counter_reg[6]));
  FDCE \frame_counter_reg[7] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[4]_i_1_n_4 ),
        .Q(frame_counter_reg[7]));
  FDCE \frame_counter_reg[8] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[8]_i_1_n_7 ),
        .Q(frame_counter_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_counter_reg[8]_i_1 
       (.CI(\frame_counter_reg[4]_i_1_n_0 ),
        .CO({\frame_counter_reg[8]_i_1_n_0 ,\frame_counter_reg[8]_i_1_n_1 ,\frame_counter_reg[8]_i_1_n_2 ,\frame_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[8]_i_1_n_4 ,\frame_counter_reg[8]_i_1_n_5 ,\frame_counter_reg[8]_i_1_n_6 ,\frame_counter_reg[8]_i_1_n_7 }),
        .S(frame_counter_reg[11:8]));
  FDCE \frame_counter_reg[9] 
       (.C(clk_25MHz),
        .CE(vga_n_58),
        .CLR(reset_ah),
        .D(\frame_counter_reg[8]_i_1_n_6 ),
        .Q(frame_counter_reg[9]));
  FDCE \frame_counter_sync_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[0]),
        .Q(frame_counter_sync[0]));
  FDCE \frame_counter_sync_reg[10] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[10]),
        .Q(frame_counter_sync[10]));
  FDCE \frame_counter_sync_reg[11] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[11]),
        .Q(frame_counter_sync[11]));
  FDCE \frame_counter_sync_reg[12] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[12]),
        .Q(frame_counter_sync[12]));
  FDCE \frame_counter_sync_reg[13] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[13]),
        .Q(frame_counter_sync[13]));
  FDCE \frame_counter_sync_reg[14] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[14]),
        .Q(frame_counter_sync[14]));
  FDCE \frame_counter_sync_reg[15] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[15]),
        .Q(frame_counter_sync[15]));
  FDCE \frame_counter_sync_reg[16] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[16]),
        .Q(frame_counter_sync[16]));
  FDCE \frame_counter_sync_reg[17] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[17]),
        .Q(frame_counter_sync[17]));
  FDCE \frame_counter_sync_reg[18] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[18]),
        .Q(frame_counter_sync[18]));
  FDCE \frame_counter_sync_reg[19] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[19]),
        .Q(frame_counter_sync[19]));
  FDCE \frame_counter_sync_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[1]),
        .Q(frame_counter_sync[1]));
  FDCE \frame_counter_sync_reg[20] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[20]),
        .Q(frame_counter_sync[20]));
  FDCE \frame_counter_sync_reg[21] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[21]),
        .Q(frame_counter_sync[21]));
  FDCE \frame_counter_sync_reg[22] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[22]),
        .Q(frame_counter_sync[22]));
  FDCE \frame_counter_sync_reg[23] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[23]),
        .Q(frame_counter_sync[23]));
  FDCE \frame_counter_sync_reg[24] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[24]),
        .Q(frame_counter_sync[24]));
  FDCE \frame_counter_sync_reg[25] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[25]),
        .Q(frame_counter_sync[25]));
  FDCE \frame_counter_sync_reg[26] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[26]),
        .Q(frame_counter_sync[26]));
  FDCE \frame_counter_sync_reg[27] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[27]),
        .Q(frame_counter_sync[27]));
  FDCE \frame_counter_sync_reg[28] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[28]),
        .Q(frame_counter_sync[28]));
  FDCE \frame_counter_sync_reg[29] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[29]),
        .Q(frame_counter_sync[29]));
  FDCE \frame_counter_sync_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[2]),
        .Q(frame_counter_sync[2]));
  FDCE \frame_counter_sync_reg[30] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[30]),
        .Q(frame_counter_sync[30]));
  FDCE \frame_counter_sync_reg[31] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[31]),
        .Q(frame_counter_sync[31]));
  FDCE \frame_counter_sync_reg[3] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[3]),
        .Q(frame_counter_sync[3]));
  FDCE \frame_counter_sync_reg[4] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[4]),
        .Q(frame_counter_sync[4]));
  FDCE \frame_counter_sync_reg[5] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[5]),
        .Q(frame_counter_sync[5]));
  FDCE \frame_counter_sync_reg[6] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[6]),
        .Q(frame_counter_sync[6]));
  FDCE \frame_counter_sync_reg[7] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[7]),
        .Q(frame_counter_sync[7]));
  FDCE \frame_counter_sync_reg[8] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[8]),
        .Q(frame_counter_sync[8]));
  FDCE \frame_counter_sync_reg[9] 
       (.C(axi_aclk),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(frame_counter_meta[9]),
        .Q(frame_counter_sync[9]));
  mb_usb_hdmi_text_controller_0_2_hdmi_text_controller_v1_0_AXI hdmi_text_controller_v1_0_AXI_inst
       (.ADDRARDADDR(vram_addr),
        .D(reg_data_out),
        .DOBDO(vram_rdata),
        .Q(color_reg),
        .axi_aclk(axi_aclk),
        .axi_araddr(axi_araddr),
        .\axi_araddr[2]_0 (hdmi_text_controller_v1_0_AXI_inst_n_29),
        .axi_araddr_2_sp_1(hdmi_text_controller_v1_0_AXI_inst_n_18),
        .axi_araddr_7_sp_1(hdmi_text_controller_v1_0_AXI_inst_n_17),
        .axi_aresetn(axi_aresetn),
        .axi_arready(axi_arready),
        .axi_arvalid(axi_arvalid),
        .axi_awaddr(axi_awaddr),
        .axi_awready(axi_awready),
        .axi_awvalid(axi_awvalid),
        .axi_bready(axi_bready),
        .axi_bvalid(axi_bvalid),
        .axi_rdata(axi_rdata),
        .\axi_rdata_reg[31]_0 (frame_counter_sync[31:10]),
        .axi_rready(axi_rready),
        .axi_rvalid(axi_rvalid),
        .axi_wdata(axi_wdata),
        .axi_wready(axi_wready),
        .axi_wstrb(axi_wstrb),
        .axi_wvalid(axi_wvalid),
        .reset_ah(reset_ah),
        .vram_reg(hdmi_text_controller_v1_0_AXI_inst_n_30),
        .vram_reg_0(hdmi_text_controller_v1_0_AXI_inst_n_31),
        .vram_reg_1(hdmi_text_controller_v1_0_AXI_inst_n_32),
        .vram_reg_2(hdmi_text_controller_v1_0_AXI_inst_n_33),
        .vram_reg_3(hdmi_text_controller_v1_0_AXI_inst_n_34),
        .vram_reg_4(hdmi_text_controller_v1_0_AXI_inst_n_35),
        .vram_reg_5(hdmi_text_controller_v1_0_AXI_inst_n_36),
        .vram_reg_6(hdmi_text_controller_v1_0_AXI_inst_n_37),
        .vram_reg_7(hdmi_text_controller_v1_0_AXI_inst_n_38),
        .vram_reg_8(hdmi_text_controller_v1_0_AXI_inst_n_39),
        .vram_we(vram_we));
  FDRE vde_r_reg
       (.C(clk_25MHz),
        .CE(1'b1),
        .D(vde),
        .Q(vde_r),
        .R(1'b0));
  mb_usb_hdmi_text_controller_0_2_vga_controller vga
       (.ADDRBWRADDR({vga_n_40,vga_n_41,vga_n_42,vga_n_43}),
        .D(reg_data_out),
        .DI({vga_n_18,vga_n_19,p_0_in[0]}),
        .Q(p_0_in[9:1]),
        .S({cam_fb_reg_0_4_i_10_n_0,cam_fb_reg_0_4_i_11_n_0,cam_fb_reg_0_4_i_12_n_0}),
        .axi_araddr(axi_araddr[0]),
        .\axi_rdata_reg[0] (hdmi_text_controller_v1_0_AXI_inst_n_30),
        .\axi_rdata_reg[0]_0 (hdmi_text_controller_v1_0_AXI_inst_n_18),
        .\axi_rdata_reg[0]_1 (hdmi_text_controller_v1_0_AXI_inst_n_29),
        .\axi_rdata_reg[0]_2 (hdmi_text_controller_v1_0_AXI_inst_n_17),
        .\axi_rdata_reg[1] (hdmi_text_controller_v1_0_AXI_inst_n_31),
        .\axi_rdata_reg[2] (hdmi_text_controller_v1_0_AXI_inst_n_32),
        .\axi_rdata_reg[3] (hdmi_text_controller_v1_0_AXI_inst_n_33),
        .\axi_rdata_reg[4] (hdmi_text_controller_v1_0_AXI_inst_n_34),
        .\axi_rdata_reg[5] (hdmi_text_controller_v1_0_AXI_inst_n_35),
        .\axi_rdata_reg[6] (hdmi_text_controller_v1_0_AXI_inst_n_36),
        .\axi_rdata_reg[7] (hdmi_text_controller_v1_0_AXI_inst_n_37),
        .\axi_rdata_reg[8] (hdmi_text_controller_v1_0_AXI_inst_n_38),
        .\axi_rdata_reg[9] (color_reg),
        .\axi_rdata_reg[9]_0 (frame_counter_sync[9:0]),
        .\axi_rdata_reg[9]_1 (hdmi_text_controller_v1_0_AXI_inst_n_39),
        .cam_fb_reg_0_4({cam_fb_reg_0_4_i_7_n_0,cam_fb_reg_0_4_i_8_n_0,cam_fb_reg_0_4_i_9_n_0}),
        .cam_fb_reg_mux_sel_b_pos_0__4({cam_fb_mux_sel_b_pos_0__4_i_5_n_0,cam_fb_mux_sel_b_pos_0__4_i_6_n_0,cam_fb_mux_sel_b_pos_0__4_i_7_n_0,cam_fb_mux_sel_b_pos_0__4_i_8_n_0}),
        .cam_fb_reg_mux_sel_b_pos_0__4_0(cam_fb_mux_sel_b_pos_0__4_i_4_n_0),
        .cam_fb_reg_mux_sel_b_pos_0__4_i_1_0(vga_n_2),
        .cam_fb_reg_mux_sel_b_pos_0__4_i_1_1(vga_n_15),
        .cam_fb_reg_mux_sel_b_pos_0__4_i_1_2(vga_n_16),
        .cam_fb_reg_mux_sel_b_pos_0__4_i_1_3(vga_n_17),
        .cam_rd_addr(cam_rd_addr),
        .clk_out1(clk_25MHz),
        .\hc_reg[6]_rep_0 ({vga_n_44,vga_n_45,vga_n_46,vga_n_47}),
        .\hc_reg[9]_0 (drawX),
        .hsync(hsync),
        .reset_ah(reset_ah),
        .vde(vde),
        .vs_reg_0(vga_n_58),
        .vsync(vsync),
        .vsync_p(vsync_p));
  (* CHECK_LICENSE_TYPE = "hdmi_tx_0,hdmi_tx_v1_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "hdmi_tx_v1_0,Vivado 2022.2" *) 
  mb_usb_hdmi_text_controller_0_2_hdmi_tx_0 vga_to_hdmi
       (.TMDS_CLK_N(hdmi_clk_n),
        .TMDS_CLK_P(hdmi_clk_p),
        .TMDS_DATA_N(hdmi_tx_n),
        .TMDS_DATA_P(hdmi_tx_p),
        .ade(1'b0),
        .aux0_din({1'b0,1'b0,1'b0,1'b0}),
        .aux1_din({1'b0,1'b0,1'b0,1'b0}),
        .aux2_din({1'b0,1'b0,1'b0,1'b0}),
        .blue({1'b0,1'b0,1'b0,1'b0}),
        .green({1'b0,1'b0,1'b0,1'b0}),
        .hsync(hsync),
        .pix_clk(clk_25MHz),
        .pix_clk_locked(locked),
        .pix_clkx5(clk_125MHz),
        .red(red),
        .rst(reset_ah),
        .vde(vde),
        .vsync(vsync));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    vga_to_hdmi_i_10
       (.I0(cam_fb_reg_7_4_n_67),
        .I1(cam_fb_reg_5_4_n_67),
        .I2(cam_fb_reg_mux_sel_b_pos_1__4_n_0),
        .I3(cam_fb_reg_3_4_n_67),
        .I4(cam_fb_reg_mux_sel_b_pos_2__4_n_0),
        .I5(cam_fb_reg_1_4_n_67),
        .O(vga_to_hdmi_i_10_n_0));
  LUT6 #(
    .INIT(64'h0808080808A80808)) 
    vga_to_hdmi_i_2
       (.I0(vde_r),
        .I1(vga_to_hdmi_i_7_n_0),
        .I2(cam_fb_reg_mux_sel_b_pos_0__4_n_0),
        .I3(cam_fb_reg_mux_sel_b_pos_1__4_n_0),
        .I4(cam_fb_reg_9_7_n_67),
        .I5(cam_fb_reg_mux_sel_b_pos_2__4_n_0),
        .O(red[3]));
  LUT6 #(
    .INIT(64'h0808080808A80808)) 
    vga_to_hdmi_i_3
       (.I0(vde_r),
        .I1(vga_to_hdmi_i_8_n_0),
        .I2(cam_fb_reg_mux_sel_b_pos_0__4_n_0),
        .I3(cam_fb_reg_mux_sel_b_pos_1__4_n_0),
        .I4(cam_fb_reg_9_6_n_67),
        .I5(cam_fb_reg_mux_sel_b_pos_2__4_n_0),
        .O(red[2]));
  LUT6 #(
    .INIT(64'h0808080808A80808)) 
    vga_to_hdmi_i_4
       (.I0(vde_r),
        .I1(vga_to_hdmi_i_9_n_0),
        .I2(cam_fb_reg_mux_sel_b_pos_0__4_n_0),
        .I3(cam_fb_reg_mux_sel_b_pos_1__4_n_0),
        .I4(cam_fb_reg_9_5_n_67),
        .I5(cam_fb_reg_mux_sel_b_pos_2__4_n_0),
        .O(red[1]));
  LUT6 #(
    .INIT(64'h0808080808A80808)) 
    vga_to_hdmi_i_5
       (.I0(vde_r),
        .I1(vga_to_hdmi_i_10_n_0),
        .I2(cam_fb_reg_mux_sel_b_pos_0__4_n_0),
        .I3(cam_fb_reg_mux_sel_b_pos_1__4_n_0),
        .I4(cam_fb_reg_9_4_n_67),
        .I5(cam_fb_reg_mux_sel_b_pos_2__4_n_0),
        .O(red[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    vga_to_hdmi_i_7
       (.I0(cam_fb_reg_7_7_n_67),
        .I1(cam_fb_reg_5_7_n_67),
        .I2(cam_fb_reg_mux_sel_b_pos_1__4_n_0),
        .I3(cam_fb_reg_3_7_n_67),
        .I4(cam_fb_reg_mux_sel_b_pos_2__4_n_0),
        .I5(cam_fb_reg_1_7_n_67),
        .O(vga_to_hdmi_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    vga_to_hdmi_i_8
       (.I0(cam_fb_reg_7_6_n_67),
        .I1(cam_fb_reg_5_6_n_67),
        .I2(cam_fb_reg_mux_sel_b_pos_1__4_n_0),
        .I3(cam_fb_reg_3_6_n_67),
        .I4(cam_fb_reg_mux_sel_b_pos_2__4_n_0),
        .I5(cam_fb_reg_1_6_n_67),
        .O(vga_to_hdmi_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    vga_to_hdmi_i_9
       (.I0(cam_fb_reg_7_5_n_67),
        .I1(cam_fb_reg_5_5_n_67),
        .I2(cam_fb_reg_mux_sel_b_pos_1__4_n_0),
        .I3(cam_fb_reg_3_5_n_67),
        .I4(cam_fb_reg_mux_sel_b_pos_2__4_n_0),
        .I5(cam_fb_reg_1_5_n_67),
        .O(vga_to_hdmi_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "19200" *) 
  (* RTL_RAM_NAME = "inst/vram_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "599" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_01(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_02(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_03(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_04(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_05(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_06(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_07(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_08(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_09(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_0A(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_0B(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_0C(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_0D(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_0E(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_0F(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_10(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_11(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_12(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_13(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_14(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_15(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_16(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_17(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_18(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_19(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_1A(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_1B(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_1C(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_1D(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_1E(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_1F(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_20(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_21(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_22(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_23(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_24(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_25(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_26(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_27(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_28(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_29(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_2A(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_2B(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_2C(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_2D(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_2E(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_2F(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_30(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_31(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_32(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_33(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_34(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_35(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_36(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_37(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_38(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_39(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3A(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3B(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3C(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3D(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3E(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_3F(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_40(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_41(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_42(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_43(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_44(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_45(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_46(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_47(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_48(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_49(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_4A(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    vram_reg
       (.ADDRARDADDR({1'b1,vram_addr,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,vram_addr,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_vram_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_vram_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(axi_aclk),
        .CLKBWRCLK(axi_aclk),
        .DBITERR(NLW_vram_reg_DBITERR_UNCONNECTED),
        .DIADI(axi_wdata),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_vram_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO(vram_rdata),
        .DOPADOP(NLW_vram_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_vram_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_vram_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(vram_we),
        .ENBWREN(1'b1),
        .INJECTDBITERR(NLW_vram_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_vram_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_vram_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_vram_reg_SBITERR_UNCONNECTED),
        .WEA(axi_wstrb),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDCE vsync_p_reg
       (.C(clk_25MHz),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(vsync),
        .Q(vsync_p));
endmodule

(* ORIG_REF_NAME = "hdmi_text_controller_v1_0_AXI" *) 
module mb_usb_hdmi_text_controller_0_2_hdmi_text_controller_v1_0_AXI
   (axi_wready,
    reset_ah,
    axi_awready,
    axi_arready,
    axi_bvalid,
    axi_rvalid,
    ADDRARDADDR,
    vram_we,
    axi_araddr_7_sp_1,
    axi_araddr_2_sp_1,
    Q,
    \axi_araddr[2]_0 ,
    vram_reg,
    vram_reg_0,
    vram_reg_1,
    vram_reg_2,
    vram_reg_3,
    vram_reg_4,
    vram_reg_5,
    vram_reg_6,
    vram_reg_7,
    vram_reg_8,
    axi_rdata,
    axi_aclk,
    axi_wvalid,
    axi_awvalid,
    axi_araddr,
    axi_wstrb,
    D,
    DOBDO,
    \axi_rdata_reg[31]_0 ,
    axi_aresetn,
    axi_bready,
    axi_arvalid,
    axi_rready,
    axi_awaddr,
    axi_wdata);
  output axi_wready;
  output reset_ah;
  output axi_awready;
  output axi_arready;
  output axi_bvalid;
  output axi_rvalid;
  output [9:0]ADDRARDADDR;
  output vram_we;
  output axi_araddr_7_sp_1;
  output axi_araddr_2_sp_1;
  output [9:0]Q;
  output \axi_araddr[2]_0 ;
  output vram_reg;
  output vram_reg_0;
  output vram_reg_1;
  output vram_reg_2;
  output vram_reg_3;
  output vram_reg_4;
  output vram_reg_5;
  output vram_reg_6;
  output vram_reg_7;
  output vram_reg_8;
  output [31:0]axi_rdata;
  input axi_aclk;
  input axi_wvalid;
  input axi_awvalid;
  input [9:0]axi_araddr;
  input [3:0]axi_wstrb;
  input [9:0]D;
  input [31:0]DOBDO;
  input [21:0]\axi_rdata_reg[31]_0 ;
  input axi_aresetn;
  input axi_bready;
  input axi_arvalid;
  input axi_rready;
  input [9:0]axi_awaddr;
  input [31:0]axi_wdata;

  wire [9:0]ADDRARDADDR;
  wire [9:0]D;
  wire [31:0]DOBDO;
  wire [9:0]Q;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_aclk;
  wire [9:0]axi_araddr;
  wire \axi_araddr[2]_0 ;
  wire axi_araddr_2_sn_1;
  wire axi_araddr_7_sn_1;
  wire axi_aresetn;
  wire axi_arready;
  wire axi_arready0;
  wire axi_arvalid;
  wire [9:0]axi_awaddr;
  wire axi_awready;
  wire axi_awready0;
  wire axi_awvalid;
  wire axi_bready;
  wire axi_bvalid;
  wire axi_bvalid_i_1_n_0;
  wire [31:0]axi_rdata;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire [21:0]\axi_rdata_reg[31]_0 ;
  wire axi_rready;
  wire axi_rvalid;
  wire axi_rvalid_i_1_n_0;
  wire [31:0]axi_wdata;
  wire axi_wready;
  wire axi_wready0;
  wire [3:0]axi_wstrb;
  wire axi_wvalid;
  wire [31:10]color_reg;
  wire \color_reg[31]_i_2_n_0 ;
  wire \color_reg[31]_i_3_n_0 ;
  wire [31:7]p_1_in;
  wire [31:10]reg_data_out;
  wire reset_ah;
  wire slv_reg_rden__0;
  wire vram_reg;
  wire vram_reg_0;
  wire vram_reg_1;
  wire vram_reg_2;
  wire vram_reg_3;
  wire vram_reg_4;
  wire vram_reg_5;
  wire vram_reg_6;
  wire vram_reg_7;
  wire vram_reg_8;
  wire vram_reg_i_12_n_0;
  wire vram_reg_i_13_n_0;
  wire vram_reg_i_14_n_0;
  wire vram_reg_i_15_n_0;
  wire vram_reg_i_16_n_0;
  wire vram_reg_i_17_n_0;
  wire vram_reg_i_18_n_0;
  wire vram_reg_i_19_n_0;
  wire vram_reg_i_20_n_0;
  wire vram_reg_i_21_n_0;
  wire vram_reg_i_22_n_0;
  wire vram_we;
  wire [9:0]wr_index;

  assign axi_araddr_2_sp_1 = axi_araddr_2_sn_1;
  assign axi_araddr_7_sp_1 = axi_araddr_7_sn_1;
  LUT6 #(
    .INIT(64'hF0FFFFFF88888888)) 
    aw_en_i_1
       (.I0(axi_bready),
        .I1(axi_bvalid),
        .I2(axi_awready),
        .I3(axi_awvalid),
        .I4(axi_wvalid),
        .I5(aw_en_reg_n_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(reset_ah));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(axi_arvalid),
        .I1(axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready),
        .R(reset_ah));
  FDRE \axi_awaddr_reg[10] 
       (.C(axi_aclk),
        .CE(axi_awready0),
        .D(axi_awaddr[8]),
        .Q(wr_index[8]),
        .R(reset_ah));
  FDRE \axi_awaddr_reg[11] 
       (.C(axi_aclk),
        .CE(axi_awready0),
        .D(axi_awaddr[9]),
        .Q(wr_index[9]),
        .R(reset_ah));
  FDRE \axi_awaddr_reg[2] 
       (.C(axi_aclk),
        .CE(axi_awready0),
        .D(axi_awaddr[0]),
        .Q(wr_index[0]),
        .R(reset_ah));
  FDRE \axi_awaddr_reg[3] 
       (.C(axi_aclk),
        .CE(axi_awready0),
        .D(axi_awaddr[1]),
        .Q(wr_index[1]),
        .R(reset_ah));
  FDRE \axi_awaddr_reg[4] 
       (.C(axi_aclk),
        .CE(axi_awready0),
        .D(axi_awaddr[2]),
        .Q(wr_index[2]),
        .R(reset_ah));
  FDRE \axi_awaddr_reg[5] 
       (.C(axi_aclk),
        .CE(axi_awready0),
        .D(axi_awaddr[3]),
        .Q(wr_index[3]),
        .R(reset_ah));
  FDRE \axi_awaddr_reg[6] 
       (.C(axi_aclk),
        .CE(axi_awready0),
        .D(axi_awaddr[4]),
        .Q(wr_index[4]),
        .R(reset_ah));
  FDRE \axi_awaddr_reg[7] 
       (.C(axi_aclk),
        .CE(axi_awready0),
        .D(axi_awaddr[5]),
        .Q(wr_index[5]),
        .R(reset_ah));
  FDRE \axi_awaddr_reg[8] 
       (.C(axi_aclk),
        .CE(axi_awready0),
        .D(axi_awaddr[6]),
        .Q(wr_index[6]),
        .R(reset_ah));
  FDRE \axi_awaddr_reg[9] 
       (.C(axi_aclk),
        .CE(axi_awready0),
        .D(axi_awaddr[7]),
        .Q(wr_index[7]),
        .R(reset_ah));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_1
       (.I0(axi_awready),
        .I1(axi_awvalid),
        .I2(axi_wvalid),
        .I3(aw_en_reg_n_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready),
        .R(reset_ah));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(axi_bready),
        .I1(axi_bvalid),
        .I2(axi_wvalid),
        .I3(axi_awvalid),
        .I4(axi_awready),
        .I5(axi_wready),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid),
        .R(reset_ah));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[0]_i_3 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[0]),
        .O(vram_reg));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[10]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[10]),
        .I4(\axi_rdata_reg[31]_0 [0]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[11]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[11]),
        .I4(\axi_rdata_reg[31]_0 [1]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[12]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[12]),
        .I4(\axi_rdata_reg[31]_0 [2]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[13]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[13]),
        .I4(\axi_rdata_reg[31]_0 [3]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[14]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[14]),
        .I4(\axi_rdata_reg[31]_0 [4]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[15]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[15]),
        .I4(\axi_rdata_reg[31]_0 [5]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[16]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[16]),
        .I4(\axi_rdata_reg[31]_0 [6]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[17]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[17]),
        .I4(\axi_rdata_reg[31]_0 [7]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[18]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[18]),
        .I4(\axi_rdata_reg[31]_0 [8]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[19]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[19]),
        .I4(\axi_rdata_reg[31]_0 [9]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[1]_i_3 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[1]),
        .O(vram_reg_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[20]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[20]),
        .I4(\axi_rdata_reg[31]_0 [10]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[21]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[21]),
        .I4(\axi_rdata_reg[31]_0 [11]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[22]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[22]),
        .I4(\axi_rdata_reg[31]_0 [12]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[23]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[23]),
        .I4(\axi_rdata_reg[31]_0 [13]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[24]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[24]),
        .I4(\axi_rdata_reg[31]_0 [14]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[25]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[25]),
        .I4(\axi_rdata_reg[31]_0 [15]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[26]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[26]),
        .I4(\axi_rdata_reg[31]_0 [16]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[27]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[27]),
        .I4(\axi_rdata_reg[31]_0 [17]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[28]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[28]),
        .I4(\axi_rdata_reg[31]_0 [18]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[29]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[29]),
        .I4(\axi_rdata_reg[31]_0 [19]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[2]_i_3 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[2]),
        .O(vram_reg_1));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[30]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[30]),
        .I4(\axi_rdata_reg[31]_0 [20]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_rdata[31]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[31]),
        .I2(axi_araddr_2_sn_1),
        .I3(color_reg[31]),
        .I4(\axi_rdata_reg[31]_0 [21]),
        .I5(\axi_araddr[2]_0 ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'h0000004FFFFFFFFF)) 
    \axi_rdata[31]_i_2 
       (.I0(axi_araddr[5]),
        .I1(\axi_rdata[31]_i_5_n_0 ),
        .I2(axi_araddr[6]),
        .I3(axi_araddr[7]),
        .I4(axi_araddr[8]),
        .I5(axi_araddr[9]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[31]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(axi_araddr[0]),
        .O(axi_araddr_2_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[31]_i_4 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(axi_araddr[0]),
        .O(\axi_araddr[2]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \axi_rdata[31]_i_5 
       (.I0(axi_araddr[3]),
        .I1(axi_araddr[4]),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \axi_rdata[31]_i_6 
       (.I0(\axi_rdata[31]_i_7_n_0 ),
        .I1(axi_araddr[5]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[1]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \axi_rdata[31]_i_7 
       (.I0(axi_araddr[8]),
        .I1(axi_araddr[9]),
        .I2(axi_araddr[7]),
        .I3(axi_araddr[6]),
        .O(\axi_rdata[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[3]_i_3 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[3]),
        .O(vram_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[4]_i_3 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[4]),
        .O(vram_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[5]_i_3 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[5]),
        .O(vram_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[6]_i_3 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[6]),
        .O(vram_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[7]_i_3 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[7]),
        .O(vram_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[8]_i_3 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[8]),
        .O(vram_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_rdata[9]_i_3 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(DOBDO[9]),
        .O(vram_reg_8));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \axi_rdata[9]_i_4 
       (.I0(\axi_rdata[31]_i_7_n_0 ),
        .I1(axi_araddr[5]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[4]),
        .I4(axi_araddr[3]),
        .I5(axi_araddr[1]),
        .O(axi_araddr_7_sn_1));
  FDRE \axi_rdata_reg[0] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(D[0]),
        .Q(axi_rdata[0]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[10] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(axi_rdata[10]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[11] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(axi_rdata[11]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[12] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(axi_rdata[12]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[13] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(axi_rdata[13]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[14] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(axi_rdata[14]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[15] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(axi_rdata[15]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[16] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(axi_rdata[16]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[17] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(axi_rdata[17]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[18] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(axi_rdata[18]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[19] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(axi_rdata[19]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[1] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(D[1]),
        .Q(axi_rdata[1]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[20] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(axi_rdata[20]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[21] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(axi_rdata[21]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[22] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(axi_rdata[22]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[23] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(axi_rdata[23]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[24] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(axi_rdata[24]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[25] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(axi_rdata[25]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[26] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(axi_rdata[26]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[27] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(axi_rdata[27]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[28] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(axi_rdata[28]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[29] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(axi_rdata[29]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[2] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(D[2]),
        .Q(axi_rdata[2]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[30] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(axi_rdata[30]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[31] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(axi_rdata[31]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[3] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(D[3]),
        .Q(axi_rdata[3]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[4] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(D[4]),
        .Q(axi_rdata[4]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[5] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(D[5]),
        .Q(axi_rdata[5]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[6] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(D[6]),
        .Q(axi_rdata[6]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[7] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(D[7]),
        .Q(axi_rdata[7]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[8] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(D[8]),
        .Q(axi_rdata[8]),
        .R(reset_ah));
  FDRE \axi_rdata_reg[9] 
       (.C(axi_aclk),
        .CE(slv_reg_rden__0),
        .D(D[9]),
        .Q(axi_rdata[9]),
        .R(reset_ah));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arvalid),
        .I1(axi_arready),
        .I2(axi_rvalid),
        .I3(axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid),
        .R(reset_ah));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(axi_wvalid),
        .I2(axi_awvalid),
        .I3(axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready),
        .R(reset_ah));
  LUT2 #(
    .INIT(4'h8)) 
    \color_reg[15]_i_1 
       (.I0(\color_reg[31]_i_2_n_0 ),
        .I1(axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \color_reg[23]_i_1 
       (.I0(\color_reg[31]_i_2_n_0 ),
        .I1(axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \color_reg[31]_i_1 
       (.I0(\color_reg[31]_i_2_n_0 ),
        .I1(axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \color_reg[31]_i_2 
       (.I0(wr_index[0]),
        .I1(wr_index[1]),
        .I2(vram_reg_i_18_n_0),
        .I3(wr_index[2]),
        .I4(wr_index[5]),
        .I5(\color_reg[31]_i_3_n_0 ),
        .O(\color_reg[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \color_reg[31]_i_3 
       (.I0(wr_index[8]),
        .I1(wr_index[7]),
        .I2(axi_wvalid),
        .I3(axi_awvalid),
        .I4(axi_awready),
        .I5(axi_wready),
        .O(\color_reg[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \color_reg[7]_i_1 
       (.I0(\color_reg[31]_i_2_n_0 ),
        .I1(axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \color_reg_reg[0] 
       (.C(axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[0]),
        .Q(Q[0]),
        .R(reset_ah));
  FDRE \color_reg_reg[10] 
       (.C(axi_aclk),
        .CE(p_1_in[15]),
        .D(axi_wdata[10]),
        .Q(color_reg[10]),
        .R(reset_ah));
  FDRE \color_reg_reg[11] 
       (.C(axi_aclk),
        .CE(p_1_in[15]),
        .D(axi_wdata[11]),
        .Q(color_reg[11]),
        .R(reset_ah));
  FDRE \color_reg_reg[12] 
       (.C(axi_aclk),
        .CE(p_1_in[15]),
        .D(axi_wdata[12]),
        .Q(color_reg[12]),
        .R(reset_ah));
  FDRE \color_reg_reg[13] 
       (.C(axi_aclk),
        .CE(p_1_in[15]),
        .D(axi_wdata[13]),
        .Q(color_reg[13]),
        .R(reset_ah));
  FDRE \color_reg_reg[14] 
       (.C(axi_aclk),
        .CE(p_1_in[15]),
        .D(axi_wdata[14]),
        .Q(color_reg[14]),
        .R(reset_ah));
  FDRE \color_reg_reg[15] 
       (.C(axi_aclk),
        .CE(p_1_in[15]),
        .D(axi_wdata[15]),
        .Q(color_reg[15]),
        .R(reset_ah));
  FDRE \color_reg_reg[16] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[16]),
        .Q(color_reg[16]),
        .R(reset_ah));
  FDRE \color_reg_reg[17] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[17]),
        .Q(color_reg[17]),
        .R(reset_ah));
  FDRE \color_reg_reg[18] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[18]),
        .Q(color_reg[18]),
        .R(reset_ah));
  FDRE \color_reg_reg[19] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[19]),
        .Q(color_reg[19]),
        .R(reset_ah));
  FDRE \color_reg_reg[1] 
       (.C(axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[1]),
        .Q(Q[1]),
        .R(reset_ah));
  FDRE \color_reg_reg[20] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[20]),
        .Q(color_reg[20]),
        .R(reset_ah));
  FDRE \color_reg_reg[21] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[21]),
        .Q(color_reg[21]),
        .R(reset_ah));
  FDRE \color_reg_reg[22] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[22]),
        .Q(color_reg[22]),
        .R(reset_ah));
  FDRE \color_reg_reg[23] 
       (.C(axi_aclk),
        .CE(p_1_in[23]),
        .D(axi_wdata[23]),
        .Q(color_reg[23]),
        .R(reset_ah));
  FDRE \color_reg_reg[24] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[24]),
        .Q(color_reg[24]),
        .R(reset_ah));
  FDRE \color_reg_reg[25] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[25]),
        .Q(color_reg[25]),
        .R(reset_ah));
  FDRE \color_reg_reg[26] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[26]),
        .Q(color_reg[26]),
        .R(reset_ah));
  FDRE \color_reg_reg[27] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[27]),
        .Q(color_reg[27]),
        .R(reset_ah));
  FDRE \color_reg_reg[28] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[28]),
        .Q(color_reg[28]),
        .R(reset_ah));
  FDRE \color_reg_reg[29] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[29]),
        .Q(color_reg[29]),
        .R(reset_ah));
  FDRE \color_reg_reg[2] 
       (.C(axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[2]),
        .Q(Q[2]),
        .R(reset_ah));
  FDRE \color_reg_reg[30] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[30]),
        .Q(color_reg[30]),
        .R(reset_ah));
  FDRE \color_reg_reg[31] 
       (.C(axi_aclk),
        .CE(p_1_in[31]),
        .D(axi_wdata[31]),
        .Q(color_reg[31]),
        .R(reset_ah));
  FDRE \color_reg_reg[3] 
       (.C(axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[3]),
        .Q(Q[3]),
        .R(reset_ah));
  FDRE \color_reg_reg[4] 
       (.C(axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[4]),
        .Q(Q[4]),
        .R(reset_ah));
  FDRE \color_reg_reg[5] 
       (.C(axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[5]),
        .Q(Q[5]),
        .R(reset_ah));
  FDRE \color_reg_reg[6] 
       (.C(axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[6]),
        .Q(Q[6]),
        .R(reset_ah));
  FDRE \color_reg_reg[7] 
       (.C(axi_aclk),
        .CE(p_1_in[7]),
        .D(axi_wdata[7]),
        .Q(Q[7]),
        .R(reset_ah));
  FDRE \color_reg_reg[8] 
       (.C(axi_aclk),
        .CE(p_1_in[15]),
        .D(axi_wdata[8]),
        .Q(Q[8]),
        .R(reset_ah));
  FDRE \color_reg_reg[9] 
       (.C(axi_aclk),
        .CE(p_1_in[15]),
        .D(axi_wdata[9]),
        .Q(Q[9]),
        .R(reset_ah));
  LUT3 #(
    .INIT(8'h08)) 
    slv_reg_rden
       (.I0(axi_arready),
        .I1(axi_arvalid),
        .I2(axi_rvalid),
        .O(slv_reg_rden__0));
  LUT1 #(
    .INIT(2'h1)) 
    vga_to_hdmi_i_1
       (.I0(axi_aresetn),
        .O(reset_ah));
  LUT6 #(
    .INIT(64'h0000000001FF03FF)) 
    vram_reg_i_1
       (.I0(wr_index[6]),
        .I1(wr_index[7]),
        .I2(wr_index[8]),
        .I3(wr_index[9]),
        .I4(vram_reg_i_12_n_0),
        .I5(vram_reg_i_13_n_0),
        .O(vram_we));
  LUT4 #(
    .INIT(16'hF888)) 
    vram_reg_i_10
       (.I0(axi_araddr[1]),
        .I1(vram_reg_i_21_n_0),
        .I2(wr_index[1]),
        .I3(vram_we),
        .O(ADDRARDADDR[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    vram_reg_i_11
       (.I0(axi_araddr[0]),
        .I1(vram_reg_i_21_n_0),
        .I2(wr_index[0]),
        .I3(vram_we),
        .O(ADDRARDADDR[0]));
  LUT3 #(
    .INIT(8'hEA)) 
    vram_reg_i_12
       (.I0(wr_index[5]),
        .I1(wr_index[4]),
        .I2(wr_index[3]),
        .O(vram_reg_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    vram_reg_i_13
       (.I0(axi_wready),
        .I1(axi_awready),
        .I2(axi_awvalid),
        .I3(axi_wvalid),
        .O(vram_reg_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    vram_reg_i_14
       (.I0(wr_index[7]),
        .I1(wr_index[8]),
        .O(vram_reg_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h88888000)) 
    vram_reg_i_15
       (.I0(wr_index[9]),
        .I1(wr_index[6]),
        .I2(wr_index[3]),
        .I3(wr_index[4]),
        .I4(wr_index[5]),
        .O(vram_reg_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFFA8)) 
    vram_reg_i_16
       (.I0(wr_index[9]),
        .I1(wr_index[7]),
        .I2(wr_index[8]),
        .I3(vram_reg_i_13_n_0),
        .O(vram_reg_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    vram_reg_i_17
       (.I0(wr_index[6]),
        .I1(wr_index[7]),
        .I2(wr_index[8]),
        .I3(wr_index[9]),
        .O(vram_reg_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    vram_reg_i_18
       (.I0(wr_index[9]),
        .I1(wr_index[6]),
        .I2(wr_index[4]),
        .I3(wr_index[3]),
        .O(vram_reg_i_18_n_0));
  LUT6 #(
    .INIT(64'hF4F40000FFF40000)) 
    vram_reg_i_19
       (.I0(vram_reg_i_13_n_0),
        .I1(vram_reg_i_17_n_0),
        .I2(axi_araddr[4]),
        .I3(vram_reg_i_22_n_0),
        .I4(wr_index[4]),
        .I5(wr_index[3]),
        .O(vram_reg_i_19_n_0));
  LUT6 #(
    .INIT(64'hAAAAAABFAA00AA00)) 
    vram_reg_i_2
       (.I0(axi_araddr[9]),
        .I1(vram_reg_i_12_n_0),
        .I2(wr_index[6]),
        .I3(vram_reg_i_13_n_0),
        .I4(vram_reg_i_14_n_0),
        .I5(wr_index[9]),
        .O(ADDRARDADDR[9]));
  LUT6 #(
    .INIT(64'hF4F40000FFF40000)) 
    vram_reg_i_20
       (.I0(vram_reg_i_13_n_0),
        .I1(vram_reg_i_17_n_0),
        .I2(axi_araddr[3]),
        .I3(vram_reg_i_22_n_0),
        .I4(wr_index[3]),
        .I5(wr_index[4]),
        .O(vram_reg_i_20_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEA000000)) 
    vram_reg_i_21
       (.I0(wr_index[5]),
        .I1(wr_index[4]),
        .I2(wr_index[3]),
        .I3(wr_index[6]),
        .I4(wr_index[9]),
        .I5(vram_reg_i_16_n_0),
        .O(vram_reg_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    vram_reg_i_22
       (.I0(vram_reg_i_13_n_0),
        .I1(wr_index[7]),
        .I2(wr_index[8]),
        .I3(wr_index[5]),
        .O(vram_reg_i_22_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFEE000C000C)) 
    vram_reg_i_3
       (.I0(vram_reg_i_15_n_0),
        .I1(wr_index[8]),
        .I2(wr_index[9]),
        .I3(vram_reg_i_13_n_0),
        .I4(wr_index[7]),
        .I5(axi_araddr[8]),
        .O(ADDRARDADDR[8]));
  LUT6 #(
    .INIT(64'hFFFEFFEE000C000C)) 
    vram_reg_i_4
       (.I0(vram_reg_i_15_n_0),
        .I1(wr_index[7]),
        .I2(wr_index[9]),
        .I3(vram_reg_i_13_n_0),
        .I4(wr_index[8]),
        .I5(axi_araddr[7]),
        .O(ADDRARDADDR[7]));
  LUT6 #(
    .INIT(64'hAAACAAACAA8CAACC)) 
    vram_reg_i_5
       (.I0(axi_araddr[6]),
        .I1(wr_index[6]),
        .I2(wr_index[9]),
        .I3(vram_reg_i_13_n_0),
        .I4(vram_reg_i_12_n_0),
        .I5(vram_reg_i_14_n_0),
        .O(ADDRARDADDR[6]));
  LUT6 #(
    .INIT(64'hFFFFFAFA30003000)) 
    vram_reg_i_6
       (.I0(vram_reg_i_16_n_0),
        .I1(vram_reg_i_13_n_0),
        .I2(wr_index[5]),
        .I3(vram_reg_i_17_n_0),
        .I4(vram_reg_i_18_n_0),
        .I5(axi_araddr[5]),
        .O(ADDRARDADDR[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA8000)) 
    vram_reg_i_7
       (.I0(axi_araddr[4]),
        .I1(wr_index[5]),
        .I2(wr_index[6]),
        .I3(wr_index[9]),
        .I4(vram_reg_i_16_n_0),
        .I5(vram_reg_i_19_n_0),
        .O(ADDRARDADDR[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA8000)) 
    vram_reg_i_8
       (.I0(axi_araddr[3]),
        .I1(wr_index[5]),
        .I2(wr_index[6]),
        .I3(wr_index[9]),
        .I4(vram_reg_i_16_n_0),
        .I5(vram_reg_i_20_n_0),
        .O(ADDRARDADDR[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    vram_reg_i_9
       (.I0(axi_araddr[2]),
        .I1(vram_reg_i_21_n_0),
        .I2(wr_index[2]),
        .I3(vram_we),
        .O(ADDRARDADDR[2]));
endmodule

(* CHECK_LICENSE_TYPE = "hdmi_tx_0,hdmi_tx_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "hdmi_tx_0" *) (* X_CORE_INFO = "hdmi_tx_v1_0,Vivado 2022.2" *) 
module mb_usb_hdmi_text_controller_0_2_hdmi_tx_0
   (pix_clk,
    pix_clkx5,
    pix_clk_locked,
    rst,
    red,
    green,
    blue,
    hsync,
    vsync,
    vde,
    aux0_din,
    aux1_din,
    aux2_din,
    ade,
    TMDS_CLK_P,
    TMDS_CLK_N,
    TMDS_DATA_P,
    TMDS_DATA_N);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pix_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pix_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input pix_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pix_clkx5 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pix_clkx5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input pix_clkx5;
  input pix_clk_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [3:0]red;
  input [3:0]green;
  input [3:0]blue;
  input hsync;
  input vsync;
  input vde;
  input [3:0]aux0_din;
  input [3:0]aux1_din;
  input [3:0]aux2_din;
  input ade;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 hdmi_tx TMDS_CLK_P" *) output TMDS_CLK_P;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 hdmi_tx TMDS_CLK_N" *) output TMDS_CLK_N;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 hdmi_tx TMDS_DATA_P" *) output [2:0]TMDS_DATA_P;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 hdmi_tx TMDS_DATA_N" *) output [2:0]TMDS_DATA_N;

  wire TMDS_CLK_N;
  wire TMDS_CLK_P;
  wire [2:0]TMDS_DATA_N;
  wire [2:0]TMDS_DATA_P;
  wire hsync;
  wire pix_clk;
  wire pix_clk_locked;
  wire pix_clkx5;
  wire [3:0]red;
  wire rst;
  wire vde;
  wire vsync;

  mb_usb_hdmi_text_controller_0_2_hdmi_tx_v1_0 inst
       (.TMDS_CLK_N(TMDS_CLK_N),
        .TMDS_CLK_P(TMDS_CLK_P),
        .TMDS_DATA_N(TMDS_DATA_N),
        .TMDS_DATA_P(TMDS_DATA_P),
        .data_i({red,hsync,vsync,vde}),
        .pix_clk(pix_clk),
        .pix_clk_locked(pix_clk_locked),
        .pix_clkx5(pix_clkx5),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "hdmi_tx_v1_0" *) 
module mb_usb_hdmi_text_controller_0_2_hdmi_tx_v1_0
   (TMDS_DATA_P,
    TMDS_DATA_N,
    TMDS_CLK_P,
    TMDS_CLK_N,
    data_i,
    pix_clk,
    pix_clkx5,
    rst,
    pix_clk_locked);
  output [2:0]TMDS_DATA_P;
  output [2:0]TMDS_DATA_N;
  output TMDS_CLK_P;
  output TMDS_CLK_N;
  input [6:0]data_i;
  input pix_clk;
  input pix_clkx5;
  input rst;
  input pix_clk_locked;

  wire TMDSINT_0;
  wire TMDSINT_1;
  wire TMDSINT_2;
  wire TMDS_CLK_N;
  wire TMDS_CLK_P;
  wire [2:0]TMDS_DATA_N;
  wire [2:0]TMDS_DATA_P;
  wire ade_reg;
  wire ade_reg_qq;
  wire [3:2]aux0_dly;
  wire [3:0]aux1_dly;
  wire [3:0]aux2_dly;
  wire [7:0]blue_dly;
  wire c0_reg;
  wire [6:0]data_i;
  wire encb_n_3;
  wire encb_n_4;
  wire encb_n_5;
  wire encb_n_6;
  wire encb_n_7;
  wire encb_n_8;
  wire encb_n_9;
  wire encg_n_1;
  wire encg_n_2;
  wire encg_n_3;
  wire [7:0]green_dly;
  wire hsync_dly;
  wire pix_clk;
  wire pix_clk_locked;
  wire pix_clkx5;
  wire [7:0]red_dly;
  wire rst;
  wire rst_i;
  wire srldly_0_n_37;
  wire [9:0]tmds_blue;
  wire [9:0]tmds_green;
  wire [9:0]tmds_red;
  wire tmdsclk;
  wire vde_dly;
  wire vde_reg;
  wire vsync_dly;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS OBUFDS_B
       (.I(TMDSINT_0),
        .O(TMDS_DATA_P[0]),
        .OB(TMDS_DATA_N[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS OBUFDS_CLK
       (.I(tmdsclk),
        .O(TMDS_CLK_P),
        .OB(TMDS_CLK_N));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS OBUFDS_G
       (.I(TMDSINT_1),
        .O(TMDS_DATA_P[1]),
        .OB(TMDS_DATA_N[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS OBUFDS_R
       (.I(TMDSINT_2),
        .O(TMDS_DATA_P[2]),
        .OB(TMDS_DATA_N[2]));
  mb_usb_hdmi_text_controller_0_2_encode encb
       (.AR(rst_i),
        .D({encb_n_5,encb_n_6}),
        .Q(tmds_blue),
        .ade_reg(ade_reg),
        .ade_reg_qq(ade_reg_qq),
        .ade_reg_qq_reg_0(encb_n_3),
        .ade_reg_reg_0(encb_n_4),
        .c0_reg(c0_reg),
        .c0_reg_reg_0(encb_n_7),
        .c0_reg_reg_1(encb_n_9),
        .data_o({blue_dly,aux0_dly,hsync_dly,vsync_dly,vde_dly,srldly_0_n_37}),
        .\dout_reg[8]_0 (encg_n_1),
        .\dout_reg[9]_0 (encg_n_2),
        .\dout_reg[9]_1 (encg_n_3),
        .pix_clk(pix_clk),
        .vde_reg(vde_reg),
        .vde_reg_reg_0(encb_n_8));
  mb_usb_hdmi_text_controller_0_2_encode__parameterized0 encg
       (.AR(rst_i),
        .D({encb_n_5,encb_n_6}),
        .Q(tmds_green),
        .ade_reg(ade_reg),
        .ade_reg_qq(ade_reg_qq),
        .\adin_reg_reg[1]_0 (encg_n_3),
        .c0_reg(c0_reg),
        .data_i(data_i[0]),
        .data_o({green_dly,aux1_dly,vde_dly,srldly_0_n_37}),
        .\dout_reg[0]_0 (encb_n_8),
        .\dout_reg[3]_0 (encb_n_9),
        .\dout_reg[4]_0 (encb_n_7),
        .pix_clk(pix_clk),
        .\q_m_reg_reg[8]_0 (encg_n_1),
        .\q_m_reg_reg[8]_1 (encg_n_2),
        .vde_reg(vde_reg));
  mb_usb_hdmi_text_controller_0_2_encode__parameterized1 encr
       (.AR(rst_i),
        .Q(tmds_red),
        .ade_reg(ade_reg),
        .data_o({red_dly,aux2_dly,vde_dly}),
        .\dout_reg[0]_0 (encb_n_4),
        .\dout_reg[5]_0 (encb_n_3),
        .pix_clk(pix_clk),
        .pix_clk_locked(pix_clk_locked),
        .rst(rst),
        .vde_reg(vde_reg));
  mb_usb_hdmi_text_controller_0_2_serdes_10_to_1 serial_b
       (.AR(rst_i),
        .datain(tmds_blue),
        .iob_data_out(TMDSINT_0),
        .pix_clk(pix_clk),
        .pix_clkx5(pix_clkx5));
  mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_0 serial_clk
       (.AR(rst_i),
        .iob_data_out(tmdsclk),
        .pix_clk(pix_clk),
        .pix_clkx5(pix_clkx5));
  mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_1 serial_g
       (.AR(rst_i),
        .datain(tmds_green),
        .iob_data_out(TMDSINT_1),
        .pix_clk(pix_clk),
        .pix_clkx5(pix_clkx5));
  mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_2 serial_r
       (.AR(rst_i),
        .datain(tmds_red),
        .iob_data_out(TMDSINT_2),
        .pix_clk(pix_clk),
        .pix_clkx5(pix_clkx5));
  mb_usb_hdmi_text_controller_0_2_srldelay srldly_0
       (.data_i(data_i),
        .data_o({blue_dly,green_dly,red_dly,aux0_dly,aux1_dly,aux2_dly,hsync_dly,vsync_dly,vde_dly,srldly_0_n_37}),
        .pix_clk(pix_clk));
endmodule

(* ORIG_REF_NAME = "serdes_10_to_1" *) 
module mb_usb_hdmi_text_controller_0_2_serdes_10_to_1
   (iob_data_out,
    pix_clkx5,
    pix_clk,
    datain,
    AR);
  output iob_data_out;
  input pix_clkx5;
  input pix_clk;
  input [9:0]datain;
  input [0:0]AR;

  wire [0:0]AR;
  wire [9:0]datain;
  wire iob_data_out;
  wire pix_clk;
  wire pix_clkx5;
  wire slave_shift_out1;
  wire slave_shift_out2;
  wire NLW_oserdes_m_OFB_UNCONNECTED;
  wire NLW_oserdes_m_SHIFTOUT1_UNCONNECTED;
  wire NLW_oserdes_m_SHIFTOUT2_UNCONNECTED;
  wire NLW_oserdes_m_TBYTEOUT_UNCONNECTED;
  wire NLW_oserdes_m_TFB_UNCONNECTED;
  wire NLW_oserdes_m_TQ_UNCONNECTED;
  wire NLW_oserdes_s_OFB_UNCONNECTED;
  wire NLW_oserdes_s_OQ_UNCONNECTED;
  wire NLW_oserdes_s_TBYTEOUT_UNCONNECTED;
  wire NLW_oserdes_s_TFB_UNCONNECTED;
  wire NLW_oserdes_s_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    oserdes_m
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(datain[0]),
        .D2(datain[1]),
        .D3(datain[2]),
        .D4(datain[3]),
        .D5(datain[4]),
        .D6(datain[5]),
        .D7(datain[6]),
        .D8(datain[7]),
        .OCE(1'b1),
        .OFB(NLW_oserdes_m_OFB_UNCONNECTED),
        .OQ(iob_data_out),
        .RST(AR),
        .SHIFTIN1(slave_shift_out1),
        .SHIFTIN2(slave_shift_out2),
        .SHIFTOUT1(NLW_oserdes_m_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_oserdes_m_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_oserdes_m_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_oserdes_m_TFB_UNCONNECTED),
        .TQ(NLW_oserdes_m_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    oserdes_s
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(datain[8]),
        .D4(datain[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_oserdes_s_OFB_UNCONNECTED),
        .OQ(NLW_oserdes_s_OQ_UNCONNECTED),
        .RST(AR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(slave_shift_out1),
        .SHIFTOUT2(slave_shift_out2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_oserdes_s_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_oserdes_s_TFB_UNCONNECTED),
        .TQ(NLW_oserdes_s_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serdes_10_to_1" *) 
module mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_0
   (iob_data_out,
    pix_clkx5,
    pix_clk,
    AR);
  output iob_data_out;
  input pix_clkx5;
  input pix_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire iob_data_out;
  wire pix_clk;
  wire pix_clkx5;
  wire slave_shift_out1;
  wire slave_shift_out2;
  wire NLW_oserdes_m_OFB_UNCONNECTED;
  wire NLW_oserdes_m_SHIFTOUT1_UNCONNECTED;
  wire NLW_oserdes_m_SHIFTOUT2_UNCONNECTED;
  wire NLW_oserdes_m_TBYTEOUT_UNCONNECTED;
  wire NLW_oserdes_m_TFB_UNCONNECTED;
  wire NLW_oserdes_m_TQ_UNCONNECTED;
  wire NLW_oserdes_s_OFB_UNCONNECTED;
  wire NLW_oserdes_s_OQ_UNCONNECTED;
  wire NLW_oserdes_s_TBYTEOUT_UNCONNECTED;
  wire NLW_oserdes_s_TFB_UNCONNECTED;
  wire NLW_oserdes_s_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    oserdes_m
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b1),
        .D7(1'b1),
        .D8(1'b1),
        .OCE(1'b1),
        .OFB(NLW_oserdes_m_OFB_UNCONNECTED),
        .OQ(iob_data_out),
        .RST(AR),
        .SHIFTIN1(slave_shift_out1),
        .SHIFTIN2(slave_shift_out2),
        .SHIFTOUT1(NLW_oserdes_m_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_oserdes_m_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_oserdes_m_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_oserdes_m_TFB_UNCONNECTED),
        .TQ(NLW_oserdes_m_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    oserdes_s
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b1),
        .D4(1'b1),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_oserdes_s_OFB_UNCONNECTED),
        .OQ(NLW_oserdes_s_OQ_UNCONNECTED),
        .RST(AR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(slave_shift_out1),
        .SHIFTOUT2(slave_shift_out2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_oserdes_s_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_oserdes_s_TFB_UNCONNECTED),
        .TQ(NLW_oserdes_s_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serdes_10_to_1" *) 
module mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_1
   (iob_data_out,
    pix_clkx5,
    pix_clk,
    datain,
    AR);
  output iob_data_out;
  input pix_clkx5;
  input pix_clk;
  input [9:0]datain;
  input [0:0]AR;

  wire [0:0]AR;
  wire [9:0]datain;
  wire iob_data_out;
  wire pix_clk;
  wire pix_clkx5;
  wire slave_shift_out1;
  wire slave_shift_out2;
  wire NLW_oserdes_m_OFB_UNCONNECTED;
  wire NLW_oserdes_m_SHIFTOUT1_UNCONNECTED;
  wire NLW_oserdes_m_SHIFTOUT2_UNCONNECTED;
  wire NLW_oserdes_m_TBYTEOUT_UNCONNECTED;
  wire NLW_oserdes_m_TFB_UNCONNECTED;
  wire NLW_oserdes_m_TQ_UNCONNECTED;
  wire NLW_oserdes_s_OFB_UNCONNECTED;
  wire NLW_oserdes_s_OQ_UNCONNECTED;
  wire NLW_oserdes_s_TBYTEOUT_UNCONNECTED;
  wire NLW_oserdes_s_TFB_UNCONNECTED;
  wire NLW_oserdes_s_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    oserdes_m
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(datain[0]),
        .D2(datain[1]),
        .D3(datain[2]),
        .D4(datain[3]),
        .D5(datain[4]),
        .D6(datain[5]),
        .D7(datain[6]),
        .D8(datain[7]),
        .OCE(1'b1),
        .OFB(NLW_oserdes_m_OFB_UNCONNECTED),
        .OQ(iob_data_out),
        .RST(AR),
        .SHIFTIN1(slave_shift_out1),
        .SHIFTIN2(slave_shift_out2),
        .SHIFTOUT1(NLW_oserdes_m_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_oserdes_m_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_oserdes_m_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_oserdes_m_TFB_UNCONNECTED),
        .TQ(NLW_oserdes_m_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    oserdes_s
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(datain[8]),
        .D4(datain[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_oserdes_s_OFB_UNCONNECTED),
        .OQ(NLW_oserdes_s_OQ_UNCONNECTED),
        .RST(AR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(slave_shift_out1),
        .SHIFTOUT2(slave_shift_out2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_oserdes_s_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_oserdes_s_TFB_UNCONNECTED),
        .TQ(NLW_oserdes_s_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "serdes_10_to_1" *) 
module mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_2
   (iob_data_out,
    pix_clkx5,
    pix_clk,
    datain,
    AR);
  output iob_data_out;
  input pix_clkx5;
  input pix_clk;
  input [9:0]datain;
  input [0:0]AR;

  wire [0:0]AR;
  wire [9:0]datain;
  wire iob_data_out;
  wire pix_clk;
  wire pix_clkx5;
  wire slave_shift_out1;
  wire slave_shift_out2;
  wire NLW_oserdes_m_OFB_UNCONNECTED;
  wire NLW_oserdes_m_SHIFTOUT1_UNCONNECTED;
  wire NLW_oserdes_m_SHIFTOUT2_UNCONNECTED;
  wire NLW_oserdes_m_TBYTEOUT_UNCONNECTED;
  wire NLW_oserdes_m_TFB_UNCONNECTED;
  wire NLW_oserdes_m_TQ_UNCONNECTED;
  wire NLW_oserdes_s_OFB_UNCONNECTED;
  wire NLW_oserdes_s_OQ_UNCONNECTED;
  wire NLW_oserdes_s_TBYTEOUT_UNCONNECTED;
  wire NLW_oserdes_s_TFB_UNCONNECTED;
  wire NLW_oserdes_s_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    oserdes_m
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(datain[0]),
        .D2(datain[1]),
        .D3(datain[2]),
        .D4(datain[3]),
        .D5(datain[4]),
        .D6(datain[5]),
        .D7(datain[6]),
        .D8(datain[7]),
        .OCE(1'b1),
        .OFB(NLW_oserdes_m_OFB_UNCONNECTED),
        .OQ(iob_data_out),
        .RST(AR),
        .SHIFTIN1(slave_shift_out1),
        .SHIFTIN2(slave_shift_out2),
        .SHIFTOUT1(NLW_oserdes_m_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_oserdes_m_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_oserdes_m_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_oserdes_m_TFB_UNCONNECTED),
        .TQ(NLW_oserdes_m_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    oserdes_s
       (.CLK(pix_clkx5),
        .CLKDIV(pix_clk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(datain[8]),
        .D4(datain[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_oserdes_s_OFB_UNCONNECTED),
        .OQ(NLW_oserdes_s_OQ_UNCONNECTED),
        .RST(AR),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(slave_shift_out1),
        .SHIFTOUT2(slave_shift_out2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_oserdes_s_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_oserdes_s_TFB_UNCONNECTED),
        .TQ(NLW_oserdes_s_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "srldelay" *) 
module mb_usb_hdmi_text_controller_0_2_srldelay
   (data_o,
    pix_clk,
    data_i);
  output [37:0]data_o;
  input pix_clk;
  input [6:0]data_i;

  wire [6:0]data_i;
  wire [37:0]data_o;
  wire pix_clk;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[0].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[0].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[10].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[10].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[11].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[11].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[14].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[14].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[15].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[15].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[16].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[16].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[17].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[17].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[18].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[18].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[16]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[19].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[19].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[1].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[1].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[0]),
        .Q(data_o[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[20].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[20].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[3]),
        .Q(data_o[18]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[21].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[21].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[4]),
        .Q(data_o[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[22].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[22].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[5]),
        .Q(data_o[20]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[23].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[23].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[6]),
        .Q(data_o[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[24].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[24].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[22]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[25].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[25].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[26].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[26].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[24]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[27].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[27].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[28].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[28].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[3]),
        .Q(data_o[26]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[29].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[29].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[4]),
        .Q(data_o[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[2].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[2].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[1]),
        .Q(data_o[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[30].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[30].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[5]),
        .Q(data_o[28]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[31].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[31].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[6]),
        .Q(data_o[29]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[32].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[32].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[30]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[33].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[33].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[31]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[34].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[34].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[32]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[35].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[35].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[33]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[36].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[36].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[3]),
        .Q(data_o[34]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[37].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[37].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[4]),
        .Q(data_o[35]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[38].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[38].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[5]),
        .Q(data_o[36]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[39].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[39].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[6]),
        .Q(data_o[37]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[3].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[3].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(data_i[2]),
        .Q(data_o[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[4].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[4].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[5].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[5].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[6].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[6].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[7].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[7].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[8].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[8].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl " *) 
  (* srl_name = "\inst/vga_to_hdmi /\inst/srldly_0/srl[9].srl16_i " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \srl[9].srl16_i 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(pix_clk),
        .D(1'b0),
        .Q(data_o[9]));
endmodule

(* ORIG_REF_NAME = "vga_controller" *) 
module mb_usb_hdmi_text_controller_0_2_vga_controller
   (hsync,
    vsync,
    cam_fb_reg_mux_sel_b_pos_0__4_i_1_0,
    cam_rd_addr,
    cam_fb_reg_mux_sel_b_pos_0__4_i_1_1,
    cam_fb_reg_mux_sel_b_pos_0__4_i_1_2,
    cam_fb_reg_mux_sel_b_pos_0__4_i_1_3,
    DI,
    Q,
    vde,
    \hc_reg[9]_0 ,
    ADDRBWRADDR,
    \hc_reg[6]_rep_0 ,
    D,
    vs_reg_0,
    clk_out1,
    reset_ah,
    S,
    cam_fb_reg_mux_sel_b_pos_0__4,
    cam_fb_reg_mux_sel_b_pos_0__4_0,
    cam_fb_reg_0_4,
    \axi_rdata_reg[0] ,
    \axi_rdata_reg[0]_0 ,
    \axi_rdata_reg[9] ,
    \axi_rdata_reg[9]_0 ,
    \axi_rdata_reg[0]_1 ,
    \axi_rdata_reg[0]_2 ,
    axi_araddr,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[2] ,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[5] ,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[7] ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[9]_1 ,
    vsync_p);
  output hsync;
  output vsync;
  output cam_fb_reg_mux_sel_b_pos_0__4_i_1_0;
  output [11:0]cam_rd_addr;
  output cam_fb_reg_mux_sel_b_pos_0__4_i_1_1;
  output cam_fb_reg_mux_sel_b_pos_0__4_i_1_2;
  output cam_fb_reg_mux_sel_b_pos_0__4_i_1_3;
  output [2:0]DI;
  output [8:0]Q;
  output vde;
  output [8:0]\hc_reg[9]_0 ;
  output [3:0]ADDRBWRADDR;
  output [3:0]\hc_reg[6]_rep_0 ;
  output [9:0]D;
  output vs_reg_0;
  input clk_out1;
  input reset_ah;
  input [2:0]S;
  input [3:0]cam_fb_reg_mux_sel_b_pos_0__4;
  input [0:0]cam_fb_reg_mux_sel_b_pos_0__4_0;
  input [2:0]cam_fb_reg_0_4;
  input \axi_rdata_reg[0] ;
  input \axi_rdata_reg[0]_0 ;
  input [9:0]\axi_rdata_reg[9] ;
  input [9:0]\axi_rdata_reg[9]_0 ;
  input \axi_rdata_reg[0]_1 ;
  input \axi_rdata_reg[0]_2 ;
  input [0:0]axi_araddr;
  input \axi_rdata_reg[1] ;
  input \axi_rdata_reg[2] ;
  input \axi_rdata_reg[3] ;
  input \axi_rdata_reg[4] ;
  input \axi_rdata_reg[5] ;
  input \axi_rdata_reg[6] ;
  input \axi_rdata_reg[7] ;
  input \axi_rdata_reg[8] ;
  input \axi_rdata_reg[9]_1 ;
  input vsync_p;

  wire [3:0]ADDRBWRADDR;
  wire [9:0]D;
  wire [2:0]DI;
  wire [8:0]Q;
  wire [2:0]S;
  wire [0:0]axi_araddr;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[0]_1 ;
  wire \axi_rdata_reg[0]_2 ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[2] ;
  wire \axi_rdata_reg[3] ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[6] ;
  wire \axi_rdata_reg[7] ;
  wire \axi_rdata_reg[8] ;
  wire [9:0]\axi_rdata_reg[9] ;
  wire [9:0]\axi_rdata_reg[9]_0 ;
  wire \axi_rdata_reg[9]_1 ;
  wire [2:0]cam_fb_reg_0_4;
  wire cam_fb_reg_0_4_i_3_n_0;
  wire cam_fb_reg_0_4_i_3_n_1;
  wire cam_fb_reg_0_4_i_3_n_2;
  wire cam_fb_reg_0_4_i_3_n_3;
  wire cam_fb_reg_0_4_i_4_n_0;
  wire cam_fb_reg_0_4_i_4_n_1;
  wire cam_fb_reg_0_4_i_4_n_2;
  wire cam_fb_reg_0_4_i_4_n_3;
  wire cam_fb_reg_0_4_i_6_n_0;
  wire cam_fb_reg_0_4_i_6_n_1;
  wire cam_fb_reg_0_4_i_6_n_2;
  wire cam_fb_reg_0_4_i_6_n_3;
  wire cam_fb_reg_0_4_i_6_n_4;
  wire cam_fb_reg_0_4_i_6_n_5;
  wire [3:0]cam_fb_reg_mux_sel_b_pos_0__4;
  wire [0:0]cam_fb_reg_mux_sel_b_pos_0__4_0;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_1_0;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_1_1;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_1_2;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_1_3;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_1_n_1;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_1_n_2;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_1_n_3;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_2;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_3;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_5;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_6;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_7;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_0;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_1;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_2;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_3;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_4;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_5;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_6;
  wire cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_7;
  wire [11:0]cam_rd_addr;
  wire clk_out1;
  wire [0:0]drawX;
  wire [9:0]hc;
  wire \hc[0]_rep__0_i_1_n_0 ;
  wire \hc[0]_rep_i_1_n_0 ;
  wire \hc[1]_rep_i_1_n_0 ;
  wire \hc[2]_rep_i_1_n_0 ;
  wire \hc[3]_rep_i_1_n_0 ;
  wire \hc[4]_rep_i_1_n_0 ;
  wire \hc[5]_rep_i_1_n_0 ;
  wire \hc[6]_rep_i_1_n_0 ;
  wire \hc[9]_i_2_n_0 ;
  wire [3:0]\hc_reg[6]_rep_0 ;
  wire [8:0]\hc_reg[9]_0 ;
  wire hs_i_1_n_0;
  wire hs_i_2_n_0;
  wire hsync;
  wire reset_ah;
  wire vc;
  wire \vc[0]_i_1_n_0 ;
  wire \vc[1]_i_1_n_0 ;
  wire \vc[2]_i_1_n_0 ;
  wire \vc[3]_i_1_n_0 ;
  wire \vc[3]_i_2_n_0 ;
  wire \vc[4]_i_1_n_0 ;
  wire \vc[5]_i_1_n_0 ;
  wire \vc[6]_i_1_n_0 ;
  wire \vc[7]_i_1_n_0 ;
  wire \vc[8]_i_1_n_0 ;
  wire \vc[8]_i_2_n_0 ;
  wire \vc[9]_i_2_n_0 ;
  wire \vc[9]_i_3_n_0 ;
  wire vde;
  wire vga_to_hdmi_i_11_n_0;
  wire vs_i_1_n_0;
  wire vs_i_2_n_0;
  wire vs_reg_0;
  wire vsync;
  wire vsync_p;
  wire [3:3]NLW_cam_fb_reg_mux_sel_b_pos_0__4_i_1_CO_UNCONNECTED;
  wire [3:2]NLW_cam_fb_reg_mux_sel_b_pos_0__4_i_2_CO_UNCONNECTED;
  wire [3:3]NLW_cam_fb_reg_mux_sel_b_pos_0__4_i_2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0] ),
        .I2(\axi_rdata_reg[0]_0 ),
        .I3(\axi_rdata_reg[9] [0]),
        .I4(\axi_rdata_reg[9]_0 [0]),
        .I5(\axi_rdata_reg[0]_1 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(DI[0]),
        .I1(\hc_reg[6]_rep_0 [0]),
        .I2(\axi_rdata_reg[0]_2 ),
        .I3(axi_araddr),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1] ),
        .I2(\axi_rdata_reg[0]_0 ),
        .I3(\axi_rdata_reg[9] [1]),
        .I4(\axi_rdata_reg[9]_0 [1]),
        .I5(\axi_rdata_reg[0]_1 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(Q[0]),
        .I1(\hc_reg[9]_0 [0]),
        .I2(\axi_rdata_reg[0]_2 ),
        .I3(axi_araddr),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata_reg[2] ),
        .I2(\axi_rdata_reg[0]_0 ),
        .I3(\axi_rdata_reg[9] [2]),
        .I4(\axi_rdata_reg[9]_0 [2]),
        .I5(\axi_rdata_reg[0]_1 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(Q[1]),
        .I1(ADDRBWRADDR[2]),
        .I2(\axi_rdata_reg[0]_2 ),
        .I3(axi_araddr),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata_reg[3] ),
        .I2(\axi_rdata_reg[0]_0 ),
        .I3(\axi_rdata_reg[9] [3]),
        .I4(\axi_rdata_reg[9]_0 [3]),
        .I5(\axi_rdata_reg[0]_1 ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(Q[2]),
        .I1(\hc_reg[9]_0 [2]),
        .I2(\axi_rdata_reg[0]_2 ),
        .I3(axi_araddr),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata_reg[4] ),
        .I2(\axi_rdata_reg[0]_0 ),
        .I3(\axi_rdata_reg[9] [4]),
        .I4(\axi_rdata_reg[9]_0 [4]),
        .I5(\axi_rdata_reg[0]_1 ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(Q[3]),
        .I1(\hc_reg[9]_0 [3]),
        .I2(\axi_rdata_reg[0]_2 ),
        .I3(axi_araddr),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata_reg[5] ),
        .I2(\axi_rdata_reg[0]_0 ),
        .I3(\axi_rdata_reg[9] [5]),
        .I4(\axi_rdata_reg[9]_0 [5]),
        .I5(\axi_rdata_reg[0]_1 ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(Q[4]),
        .I1(ADDRBWRADDR[3]),
        .I2(\axi_rdata_reg[0]_2 ),
        .I3(axi_araddr),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata_reg[6] ),
        .I2(\axi_rdata_reg[0]_0 ),
        .I3(\axi_rdata_reg[9] [6]),
        .I4(\axi_rdata_reg[9]_0 [6]),
        .I5(\axi_rdata_reg[0]_1 ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(Q[5]),
        .I1(\hc_reg[9]_0 [5]),
        .I2(\axi_rdata_reg[0]_2 ),
        .I3(axi_araddr),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata_reg[7] ),
        .I2(\axi_rdata_reg[0]_0 ),
        .I3(\axi_rdata_reg[9] [7]),
        .I4(\axi_rdata_reg[9]_0 [7]),
        .I5(\axi_rdata_reg[0]_1 ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(Q[6]),
        .I1(\hc_reg[9]_0 [6]),
        .I2(\axi_rdata_reg[0]_2 ),
        .I3(axi_araddr),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata_reg[8] ),
        .I2(\axi_rdata_reg[0]_0 ),
        .I3(\axi_rdata_reg[9] [8]),
        .I4(\axi_rdata_reg[9]_0 [8]),
        .I5(\axi_rdata_reg[0]_1 ),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(Q[7]),
        .I1(\hc_reg[9]_0 [7]),
        .I2(\axi_rdata_reg[0]_2 ),
        .I3(axi_araddr),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata_reg[9]_1 ),
        .I2(\axi_rdata_reg[0]_0 ),
        .I3(\axi_rdata_reg[9] [9]),
        .I4(\axi_rdata_reg[9]_0 [9]),
        .I5(\axi_rdata_reg[0]_1 ),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(Q[8]),
        .I1(\hc_reg[9]_0 [8]),
        .I2(\axi_rdata_reg[0]_2 ),
        .I3(axi_araddr),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    cam_fb_reg_0_4_i_2
       (.I0(cam_rd_addr[11]),
        .I1(cam_rd_addr[9]),
        .I2(cam_rd_addr[10]),
        .O(cam_fb_reg_mux_sel_b_pos_0__4_i_1_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cam_fb_reg_0_4_i_3
       (.CI(cam_fb_reg_0_4_i_4_n_0),
        .CO({cam_fb_reg_0_4_i_3_n_0,cam_fb_reg_0_4_i_3_n_1,cam_fb_reg_0_4_i_3_n_2,cam_fb_reg_0_4_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cam_rd_addr[7:4]),
        .S({cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_5,cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_6,cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_7,cam_fb_reg_0_4_i_6_n_4}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cam_fb_reg_0_4_i_4
       (.CI(1'b0),
        .CO({cam_fb_reg_0_4_i_4_n_0,cam_fb_reg_0_4_i_4_n_1,cam_fb_reg_0_4_i_4_n_2,cam_fb_reg_0_4_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,DI}),
        .O(cam_rd_addr[3:0]),
        .S({cam_fb_reg_0_4_i_6_n_5,cam_fb_reg_0_4}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cam_fb_reg_0_4_i_6
       (.CI(1'b0),
        .CO({cam_fb_reg_0_4_i_6_n_0,cam_fb_reg_0_4_i_6_n_1,cam_fb_reg_0_4_i_6_n_2,cam_fb_reg_0_4_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({Q[1:0],DI[0],1'b0}),
        .O({cam_fb_reg_0_4_i_6_n_4,cam_fb_reg_0_4_i_6_n_5,DI[2:1]}),
        .S({S,Q[0]}));
  LUT3 #(
    .INIT(8'h02)) 
    cam_fb_reg_2_4_i_1
       (.I0(cam_rd_addr[9]),
        .I1(cam_rd_addr[10]),
        .I2(cam_rd_addr[11]),
        .O(cam_fb_reg_mux_sel_b_pos_0__4_i_1_1));
  LUT3 #(
    .INIT(8'h02)) 
    cam_fb_reg_4_4_i_1
       (.I0(cam_rd_addr[10]),
        .I1(cam_rd_addr[9]),
        .I2(cam_rd_addr[11]),
        .O(cam_fb_reg_mux_sel_b_pos_0__4_i_1_2));
  LUT3 #(
    .INIT(8'h40)) 
    cam_fb_reg_6_4_i_1
       (.I0(cam_rd_addr[11]),
        .I1(cam_rd_addr[9]),
        .I2(cam_rd_addr[10]),
        .O(cam_fb_reg_mux_sel_b_pos_0__4_i_1_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cam_fb_reg_mux_sel_b_pos_0__4_i_1
       (.CI(cam_fb_reg_0_4_i_3_n_0),
        .CO({NLW_cam_fb_reg_mux_sel_b_pos_0__4_i_1_CO_UNCONNECTED[3],cam_fb_reg_mux_sel_b_pos_0__4_i_1_n_1,cam_fb_reg_mux_sel_b_pos_0__4_i_1_n_2,cam_fb_reg_mux_sel_b_pos_0__4_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(cam_rd_addr[11:8]),
        .S({cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_5,cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_6,cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_7,cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_4}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cam_fb_reg_mux_sel_b_pos_0__4_i_2
       (.CI(cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_0),
        .CO({NLW_cam_fb_reg_mux_sel_b_pos_0__4_i_2_CO_UNCONNECTED[3:2],cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_2,cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[6]}),
        .O({NLW_cam_fb_reg_mux_sel_b_pos_0__4_i_2_O_UNCONNECTED[3],cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_5,cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_6,cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_7}),
        .S({1'b0,Q[8:7],cam_fb_reg_mux_sel_b_pos_0__4_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cam_fb_reg_mux_sel_b_pos_0__4_i_3
       (.CI(cam_fb_reg_0_4_i_6_n_0),
        .CO({cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_0,cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_1,cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_2,cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[5:2]),
        .O({cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_4,cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_5,cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_6,cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_7}),
        .S(cam_fb_reg_mux_sel_b_pos_0__4));
  LUT2 #(
    .INIT(4'h2)) 
    \frame_counter[0]_i_1 
       (.I0(vsync),
        .I1(vsync_p),
        .O(vs_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hc[0]_i_1 
       (.I0(drawX),
        .O(hc[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \hc[0]_rep__0_i_1 
       (.I0(drawX),
        .O(\hc[0]_rep__0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hc[0]_rep_i_1 
       (.I0(drawX),
        .O(\hc[0]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hc[1]_i_1 
       (.I0(drawX),
        .I1(\hc_reg[9]_0 [0]),
        .O(hc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \hc[1]_rep_i_1 
       (.I0(drawX),
        .I1(\hc_reg[9]_0 [0]),
        .O(\hc[1]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \hc[2]_i_1 
       (.I0(\hc_reg[9]_0 [0]),
        .I1(drawX),
        .I2(\hc_reg[9]_0 [1]),
        .O(hc[2]));
  LUT3 #(
    .INIT(8'h78)) 
    \hc[2]_rep_i_1 
       (.I0(ADDRBWRADDR[1]),
        .I1(drawX),
        .I2(\hc_reg[9]_0 [1]),
        .O(\hc[2]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hc[3]_i_1 
       (.I0(ADDRBWRADDR[2]),
        .I1(drawX),
        .I2(ADDRBWRADDR[1]),
        .I3(\hc_reg[9]_0 [2]),
        .O(hc[3]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \hc[3]_rep_i_1 
       (.I0(\hc_reg[9]_0 [1]),
        .I1(ADDRBWRADDR[0]),
        .I2(\hc_reg[9]_0 [0]),
        .I3(\hc_reg[9]_0 [2]),
        .O(\hc[3]_rep_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hc[4]_i_1 
       (.I0(\hc_reg[9]_0 [2]),
        .I1(ADDRBWRADDR[1]),
        .I2(\hc_reg[6]_rep_0 [0]),
        .I3(\hc_reg[9]_0 [1]),
        .I4(\hc_reg[6]_rep_0 [2]),
        .O(hc[4]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hc[4]_rep_i_1 
       (.I0(\hc_reg[9]_0 [2]),
        .I1(\hc_reg[9]_0 [0]),
        .I2(ADDRBWRADDR[0]),
        .I3(\hc_reg[9]_0 [1]),
        .I4(\hc_reg[6]_rep_0 [2]),
        .O(\hc[4]_rep_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA55515555)) 
    \hc[5]_i_1 
       (.I0(\hc[9]_i_2_n_0 ),
        .I1(\hc_reg[9]_0 [7]),
        .I2(\hc_reg[9]_0 [6]),
        .I3(\hc_reg[9]_0 [5]),
        .I4(\hc_reg[9]_0 [8]),
        .I5(\hc_reg[9]_0 [4]),
        .O(hc[5]));
  LUT6 #(
    .INIT(64'hAAAAAAAA55515555)) 
    \hc[5]_rep_i_1 
       (.I0(\hc[9]_i_2_n_0 ),
        .I1(\hc_reg[9]_0 [7]),
        .I2(\hc_reg[9]_0 [6]),
        .I3(\hc_reg[9]_0 [5]),
        .I4(\hc_reg[9]_0 [8]),
        .I5(\hc_reg[9]_0 [4]),
        .O(\hc[5]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \hc[6]_i_1 
       (.I0(\hc_reg[9]_0 [4]),
        .I1(\hc[9]_i_2_n_0 ),
        .I2(\hc_reg[9]_0 [5]),
        .O(hc[6]));
  LUT3 #(
    .INIT(8'hD2)) 
    \hc[6]_rep_i_1 
       (.I0(\hc_reg[9]_0 [4]),
        .I1(\hc[9]_i_2_n_0 ),
        .I2(\hc_reg[9]_0 [5]),
        .O(\hc[6]_rep_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \hc[7]_i_1 
       (.I0(\hc_reg[9]_0 [5]),
        .I1(\hc[9]_i_2_n_0 ),
        .I2(ADDRBWRADDR[3]),
        .I3(\hc_reg[9]_0 [6]),
        .O(hc[7]));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    \hc[8]_i_1 
       (.I0(\hc_reg[9]_0 [8]),
        .I1(\hc_reg[9]_0 [7]),
        .I2(ADDRBWRADDR[3]),
        .I3(\hc_reg[9]_0 [5]),
        .I4(\hc_reg[9]_0 [6]),
        .I5(\hc[9]_i_2_n_0 ),
        .O(hc[8]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAA2)) 
    \hc[9]_i_1 
       (.I0(\hc_reg[9]_0 [8]),
        .I1(\hc_reg[9]_0 [7]),
        .I2(\hc[9]_i_2_n_0 ),
        .I3(ADDRBWRADDR[3]),
        .I4(\hc_reg[9]_0 [6]),
        .I5(\hc_reg[9]_0 [5]),
        .O(hc[9]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \hc[9]_i_2 
       (.I0(\hc_reg[9]_0 [2]),
        .I1(ADDRBWRADDR[1]),
        .I2(ADDRBWRADDR[0]),
        .I3(\hc_reg[9]_0 [1]),
        .I4(\hc_reg[9]_0 [3]),
        .O(\hc[9]_i_2_n_0 ));
  (* ORIG_CELL_NAME = "hc_reg[0]" *) 
  FDCE \hc_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(hc[0]),
        .Q(drawX));
  (* ORIG_CELL_NAME = "hc_reg[0]" *) 
  FDCE \hc_reg[0]_rep 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(\hc[0]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[0]));
  (* ORIG_CELL_NAME = "hc_reg[0]" *) 
  FDCE \hc_reg[0]_rep__0 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(\hc[0]_rep__0_i_1_n_0 ),
        .Q(\hc_reg[6]_rep_0 [0]));
  (* ORIG_CELL_NAME = "hc_reg[1]" *) 
  FDCE \hc_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(hc[1]),
        .Q(\hc_reg[9]_0 [0]));
  (* ORIG_CELL_NAME = "hc_reg[1]" *) 
  FDCE \hc_reg[1]_rep 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(\hc[1]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[1]));
  (* ORIG_CELL_NAME = "hc_reg[2]" *) 
  FDCE \hc_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(hc[2]),
        .Q(\hc_reg[9]_0 [1]));
  (* ORIG_CELL_NAME = "hc_reg[2]" *) 
  FDCE \hc_reg[2]_rep 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(\hc[2]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[2]));
  (* ORIG_CELL_NAME = "hc_reg[3]" *) 
  FDCE \hc_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(hc[3]),
        .Q(\hc_reg[9]_0 [2]));
  (* ORIG_CELL_NAME = "hc_reg[3]" *) 
  FDCE \hc_reg[3]_rep 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(\hc[3]_rep_i_1_n_0 ),
        .Q(\hc_reg[6]_rep_0 [1]));
  (* ORIG_CELL_NAME = "hc_reg[4]" *) 
  FDCE \hc_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(hc[4]),
        .Q(\hc_reg[9]_0 [3]));
  (* ORIG_CELL_NAME = "hc_reg[4]" *) 
  FDCE \hc_reg[4]_rep 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(\hc[4]_rep_i_1_n_0 ),
        .Q(\hc_reg[6]_rep_0 [2]));
  (* ORIG_CELL_NAME = "hc_reg[5]" *) 
  FDCE \hc_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(hc[5]),
        .Q(\hc_reg[9]_0 [4]));
  (* ORIG_CELL_NAME = "hc_reg[5]" *) 
  FDCE \hc_reg[5]_rep 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(\hc[5]_rep_i_1_n_0 ),
        .Q(ADDRBWRADDR[3]));
  (* ORIG_CELL_NAME = "hc_reg[6]" *) 
  FDCE \hc_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(hc[6]),
        .Q(\hc_reg[9]_0 [5]));
  (* ORIG_CELL_NAME = "hc_reg[6]" *) 
  FDCE \hc_reg[6]_rep 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(\hc[6]_rep_i_1_n_0 ),
        .Q(\hc_reg[6]_rep_0 [3]));
  FDCE \hc_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(hc[7]),
        .Q(\hc_reg[9]_0 [6]));
  FDCE \hc_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(hc[8]),
        .Q(\hc_reg[9]_0 [7]));
  FDCE \hc_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(hc[9]),
        .Q(\hc_reg[9]_0 [8]));
  LUT6 #(
    .INIT(64'hFFFFFFFF81FFFFFF)) 
    hs_i_1
       (.I0(\hc_reg[9]_0 [5]),
        .I1(ADDRBWRADDR[3]),
        .I2(hs_i_2_n_0),
        .I3(\hc_reg[9]_0 [6]),
        .I4(\hc_reg[9]_0 [8]),
        .I5(\hc_reg[9]_0 [7]),
        .O(hs_i_1_n_0));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    hs_i_2
       (.I0(\hc_reg[9]_0 [3]),
        .I1(\hc_reg[6]_rep_0 [1]),
        .I2(ADDRBWRADDR[1]),
        .I3(\hc_reg[6]_rep_0 [0]),
        .I4(ADDRBWRADDR[2]),
        .O(hs_i_2_n_0));
  FDCE hs_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(hs_i_1_n_0),
        .Q(hsync));
  LUT6 #(
    .INIT(64'h0000FFFF0000DFFF)) 
    \vc[0]_i_1 
       (.I0(Q[8]),
        .I1(\vc[3]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(DI[0]),
        .I5(Q[0]),
        .O(\vc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vc[1]_i_1 
       (.I0(DI[0]),
        .I1(Q[0]),
        .O(\vc[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3333CCCCCCCCC4CC)) 
    \vc[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\vc[3]_i_2_n_0 ),
        .I3(Q[8]),
        .I4(Q[0]),
        .I5(DI[0]),
        .O(\vc[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6666CCCCCCCCC4CC)) 
    \vc[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\vc[3]_i_2_n_0 ),
        .I3(Q[8]),
        .I4(Q[0]),
        .I5(DI[0]),
        .O(\vc[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \vc[3]_i_2 
       (.I0(Q[3]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(Q[4]),
        .O(\vc[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vc[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(DI[0]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(\vc[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vc[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(DI[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\vc[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \vc[6]_i_1 
       (.I0(Q[4]),
        .I1(\vc[8]_i_2_n_0 ),
        .I2(Q[5]),
        .O(\vc[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \vc[7]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\vc[8]_i_2_n_0 ),
        .I3(Q[6]),
        .O(\vc[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \vc[8]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(\vc[8]_i_2_n_0 ),
        .I4(Q[7]),
        .O(\vc[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \vc[8]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(DI[0]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(\vc[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \vc[9]_i_1 
       (.I0(ADDRBWRADDR[3]),
        .I1(\hc_reg[9]_0 [8]),
        .I2(\hc_reg[9]_0 [5]),
        .I3(\hc_reg[9]_0 [6]),
        .I4(\hc_reg[9]_0 [7]),
        .I5(\hc[9]_i_2_n_0 ),
        .O(vc));
  LUT6 #(
    .INIT(64'hBFAAFFAAFFAABFAA)) 
    \vc[9]_i_2 
       (.I0(\vc[9]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[8]),
        .I4(DI[0]),
        .I5(Q[0]),
        .O(\vc[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF0505CCCC0505)) 
    \vc[9]_i_3 
       (.I0(\vc[8]_i_2_n_0 ),
        .I1(\vc[3]_i_2_n_0 ),
        .I2(vga_to_hdmi_i_11_n_0),
        .I3(Q[3]),
        .I4(Q[8]),
        .I5(DI[0]),
        .O(\vc[9]_i_3_n_0 ));
  FDCE \vc_reg[0] 
       (.C(clk_out1),
        .CE(vc),
        .CLR(reset_ah),
        .D(\vc[0]_i_1_n_0 ),
        .Q(DI[0]));
  FDCE \vc_reg[1] 
       (.C(clk_out1),
        .CE(vc),
        .CLR(reset_ah),
        .D(\vc[1]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \vc_reg[2] 
       (.C(clk_out1),
        .CE(vc),
        .CLR(reset_ah),
        .D(\vc[2]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \vc_reg[3] 
       (.C(clk_out1),
        .CE(vc),
        .CLR(reset_ah),
        .D(\vc[3]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \vc_reg[4] 
       (.C(clk_out1),
        .CE(vc),
        .CLR(reset_ah),
        .D(\vc[4]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \vc_reg[5] 
       (.C(clk_out1),
        .CE(vc),
        .CLR(reset_ah),
        .D(\vc[5]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE \vc_reg[6] 
       (.C(clk_out1),
        .CE(vc),
        .CLR(reset_ah),
        .D(\vc[6]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE \vc_reg[7] 
       (.C(clk_out1),
        .CE(vc),
        .CLR(reset_ah),
        .D(\vc[7]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE \vc_reg[8] 
       (.C(clk_out1),
        .CE(vc),
        .CLR(reset_ah),
        .D(\vc[8]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE \vc_reg[9] 
       (.C(clk_out1),
        .CE(vc),
        .CLR(reset_ah),
        .D(\vc[9]_i_2_n_0 ),
        .Q(Q[8]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    vga_to_hdmi_i_11
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[7]),
        .O(vga_to_hdmi_i_11_n_0));
  LUT5 #(
    .INIT(32'h01550000)) 
    vga_to_hdmi_i_6
       (.I0(Q[8]),
        .I1(\hc_reg[9]_0 [7]),
        .I2(\hc_reg[9]_0 [6]),
        .I3(\hc_reg[9]_0 [8]),
        .I4(vga_to_hdmi_i_11_n_0),
        .O(vde));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFF)) 
    vs_i_1
       (.I0(Q[1]),
        .I1(vs_i_2_n_0),
        .I2(Q[8]),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(DI[0]),
        .O(vs_i_1_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    vs_i_2
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[2]),
        .O(vs_i_2_n_0));
  FDCE vs_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(reset_ah),
        .D(vs_i_1_n_0),
        .Q(vsync));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
