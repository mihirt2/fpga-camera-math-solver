// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Apr 21 20:04:39 2026
// Host        : Levono_MihirT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ishur/final_project/final_project.gen/sources_1/bd/mb_usb/ip/mb_usb_camera_controller_0_2/mb_usb_camera_controller_0_2_sim_netlist.v
// Design      : mb_usb_camera_controller_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mb_usb_camera_controller_0_2,camera_controller_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "camera_controller_v1_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module mb_usb_camera_controller_0_2
   (s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    cam_sda,
    cam_scl,
    cam_pclk,
    cam_vsync,
    cam_href,
    cam_d,
    cam_pclk_out,
    cam_pwdn,
    cam_reset_n,
    bram_addr,
    bram_wrdata,
    bram_we);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_RESET s00_axi_aresetn, ASSOCIATED_BUSIF AXI4-Lite, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite AWADDR" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI4-Lite RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI4-Lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  inout cam_sda;
  output cam_scl;
  input cam_pclk;
  input cam_vsync;
  input cam_href;
  input [7:0]cam_d;
  output cam_pclk_out;
  output cam_pwdn;
  output cam_reset_n;
  output [16:0]bram_addr;
  output [7:0]bram_wrdata;
  output bram_we;

  wire \<const0> ;
  wire \<const1> ;
  wire [16:0]bram_addr;
  wire \bram_addr[16]_INST_0_i_1_n_0 ;
  wire bram_we;
  wire [7:0]bram_wrdata;
  wire [7:0]cam_d;
  wire cam_href;
  wire cam_pclk;
  wire cam_pwdn;
  wire cam_scl;
  wire cam_sda;
  wire cam_vsync;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \u_axi_slave/hw_reset ;
  wire \u_axi_slave/u_capture/we_next ;

  assign cam_pclk_out = cam_pclk;
  assign cam_reset_n = \<const1> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDCE \bram_addr[16]_INST_0_i_1 
       (.C(cam_pclk),
        .CE(\u_axi_slave/u_capture/we_next ),
        .CLR(\u_axi_slave/hw_reset ),
        .D(1'b1),
        .Q(\bram_addr[16]_INST_0_i_1_n_0 ));
  mb_usb_camera_controller_0_2_camera_controller_v1_0 inst
       (.bram_addr(bram_addr),
        .bram_we(bram_we),
        .bram_wrdata(bram_wrdata),
        .cam_d(cam_d),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_pwdn(cam_pwdn),
        .cam_scl(cam_scl),
        .cam_sda(cam_sda),
        .cam_vsync(cam_vsync),
        .hw_reset(\u_axi_slave/hw_reset ),
        .\pixel_addr_sync1_reg[0] (\bram_addr[16]_INST_0_i_1_n_0 ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .we_next(\u_axi_slave/u_capture/we_next ));
endmodule

(* ORIG_REF_NAME = "OV7670_config_rom" *) 
module mb_usb_camera_controller_0_2_OV7670_config_rom
   (\rom_addr_counter_reg[7] ,
    \FSM_onehot_curr_state_reg[1] ,
    Q,
    sda_drive_low_reg,
    write_byte_counter,
    sda_drive_low_reg_0,
    sda_drive_low_i_2_0,
    sda_drive_low_reg_i_7_0,
    sda_drive_low_reg_i_7_1,
    sda_drive_low_reg_1,
    sda_drive_low_reg_2,
    sda_drive_low_reg_3,
    sda_drive_low_reg_4,
    s00_axi_aclk);
  output \rom_addr_counter_reg[7] ;
  output \FSM_onehot_curr_state_reg[1] ;
  input [7:0]Q;
  input [1:0]sda_drive_low_reg;
  input [1:0]write_byte_counter;
  input sda_drive_low_reg_0;
  input sda_drive_low_i_2_0;
  input sda_drive_low_reg_i_7_0;
  input sda_drive_low_reg_i_7_1;
  input sda_drive_low_reg_1;
  input sda_drive_low_reg_2;
  input sda_drive_low_reg_3;
  input sda_drive_low_reg_4;
  input s00_axi_aclk;

  wire \FSM_onehot_curr_state_reg[1] ;
  wire [7:0]Q;
  wire \dout_reg_n_0_[0] ;
  wire \dout_reg_n_0_[1] ;
  wire \dout_reg_n_0_[2] ;
  wire \dout_reg_n_0_[3] ;
  wire \dout_reg_n_0_[4] ;
  wire \dout_reg_n_0_[5] ;
  wire \dout_reg_n_0_[6] ;
  wire \dout_reg_n_0_[7] ;
  wire g0_b0_n_0;
  wire g0_b10_n_0;
  wire g0_b11_n_0;
  wire g0_b12_n_0;
  wire g0_b13_n_0;
  wire g0_b14_n_0;
  wire g0_b15_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire g0_b7_n_0;
  wire g0_b8_n_0;
  wire g0_b9_n_0;
  wire [7:0]reg_addr;
  wire \rom_addr_counter_reg[7] ;
  wire s00_axi_aclk;
  wire sda_drive_low_i_10_n_0;
  wire sda_drive_low_i_11_n_0;
  wire sda_drive_low_i_2_0;
  wire sda_drive_low_i_2_n_0;
  wire sda_drive_low_i_8_n_0;
  wire sda_drive_low_i_9_n_0;
  wire [1:0]sda_drive_low_reg;
  wire sda_drive_low_reg_0;
  wire sda_drive_low_reg_1;
  wire sda_drive_low_reg_2;
  wire sda_drive_low_reg_3;
  wire sda_drive_low_reg_4;
  wire sda_drive_low_reg_i_5_n_0;
  wire sda_drive_low_reg_i_7_0;
  wire sda_drive_low_reg_i_7_1;
  wire sda_drive_low_reg_i_7_n_0;
  wire [1:0]write_byte_counter;

  LUT3 #(
    .INIT(8'hFE)) 
    \dout[15]_i_1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .O(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b0_n_0),
        .Q(\dout_reg_n_0_[0] ),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b10_n_0),
        .Q(reg_addr[2]),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b11_n_0),
        .Q(reg_addr[3]),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b12_n_0),
        .Q(reg_addr[4]),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b13_n_0),
        .Q(reg_addr[5]),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b14_n_0),
        .Q(reg_addr[6]),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b15_n_0),
        .Q(reg_addr[7]),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b1_n_0),
        .Q(\dout_reg_n_0_[1] ),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b2_n_0),
        .Q(\dout_reg_n_0_[2] ),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b3_n_0),
        .Q(\dout_reg_n_0_[3] ),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b4_n_0),
        .Q(\dout_reg_n_0_[4] ),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b5_n_0),
        .Q(\dout_reg_n_0_[5] ),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b6_n_0),
        .Q(\dout_reg_n_0_[6] ),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b7_n_0),
        .Q(\dout_reg_n_0_[7] ),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b8_n_0),
        .Q(reg_addr[0]),
        .S(\rom_addr_counter_reg[7] ));
  FDSE \dout_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(g0_b9_n_0),
        .Q(reg_addr[1]),
        .S(\rom_addr_counter_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFE07FA00)) 
    g0_b0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFE3DD000)) 
    g0_b1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFF41EC72)) 
    g0_b10
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFEDA1132)) 
    g0_b11
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFF5F072F)) 
    g0_b12
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFE84F922)) 
    g0_b13
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFE800082)) 
    g0_b14
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFE001802)) 
    g0_b15
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFE003B00)) 
    g0_b2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFE340400)) 
    g0_b3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFE116402)) 
    g0_b4
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFE14C202)) 
    g0_b5
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFE148202)) 
    g0_b6
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFE00A203)) 
    g0_b7
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFA95A0A)) 
    g0_b8
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFE759327)) 
    g0_b9
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b9_n_0));
  LUT6 #(
    .INIT(64'hFAFAFEFFFAFAF200)) 
    sda_drive_low_i_1
       (.I0(sda_drive_low_i_2_n_0),
        .I1(sda_drive_low_reg_1),
        .I2(sda_drive_low_reg[0]),
        .I3(sda_drive_low_reg_2),
        .I4(sda_drive_low_reg_3),
        .I5(sda_drive_low_reg_4),
        .O(\FSM_onehot_curr_state_reg[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_drive_low_i_10
       (.I0(\dout_reg_n_0_[3] ),
        .I1(\dout_reg_n_0_[2] ),
        .I2(sda_drive_low_reg_i_7_0),
        .I3(\dout_reg_n_0_[1] ),
        .I4(sda_drive_low_reg_i_7_1),
        .I5(\dout_reg_n_0_[0] ),
        .O(sda_drive_low_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_drive_low_i_11
       (.I0(\dout_reg_n_0_[7] ),
        .I1(\dout_reg_n_0_[6] ),
        .I2(sda_drive_low_reg_i_7_0),
        .I3(\dout_reg_n_0_[5] ),
        .I4(sda_drive_low_reg_i_7_1),
        .I5(\dout_reg_n_0_[4] ),
        .O(sda_drive_low_i_11_n_0));
  LUT6 #(
    .INIT(64'hAAAA0020AAAA0A20)) 
    sda_drive_low_i_2
       (.I0(sda_drive_low_reg[1]),
        .I1(sda_drive_low_reg_i_5_n_0),
        .I2(write_byte_counter[0]),
        .I3(write_byte_counter[1]),
        .I4(sda_drive_low_reg_0),
        .I5(sda_drive_low_reg_i_7_n_0),
        .O(sda_drive_low_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_drive_low_i_8
       (.I0(reg_addr[3]),
        .I1(reg_addr[2]),
        .I2(sda_drive_low_reg_i_7_0),
        .I3(reg_addr[1]),
        .I4(sda_drive_low_reg_i_7_1),
        .I5(reg_addr[0]),
        .O(sda_drive_low_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_drive_low_i_9
       (.I0(reg_addr[7]),
        .I1(reg_addr[6]),
        .I2(sda_drive_low_reg_i_7_0),
        .I3(reg_addr[5]),
        .I4(sda_drive_low_reg_i_7_1),
        .I5(reg_addr[4]),
        .O(sda_drive_low_i_9_n_0));
  MUXF7 sda_drive_low_reg_i_5
       (.I0(sda_drive_low_i_8_n_0),
        .I1(sda_drive_low_i_9_n_0),
        .O(sda_drive_low_reg_i_5_n_0),
        .S(sda_drive_low_i_2_0));
  MUXF7 sda_drive_low_reg_i_7
       (.I0(sda_drive_low_i_10_n_0),
        .I1(sda_drive_low_i_11_n_0),
        .O(sda_drive_low_reg_i_7_n_0),
        .S(sda_drive_low_i_2_0));
endmodule

(* ORIG_REF_NAME = "cam_init" *) 
module mb_usb_camera_controller_0_2_cam_init
   (cam_scl,
    cam_sda,
    \slv_reg0_reg[2] ,
    D,
    auto_init_start_reg,
    \FSM_onehot_curr_state_reg[0]_0 ,
    s00_axi_aclk,
    Q,
    s00_axi_aresetn,
    auto_init_start_reg_0,
    auto_init_start_reg_1,
    auto_init_start_reg_2,
    \axi_rdata_reg[0] ,
    sel0,
    frame_count_reg,
    \axi_rdata_reg[0]_0 ,
    boot_init_done);
  output cam_scl;
  output cam_sda;
  output \slv_reg0_reg[2] ;
  output [0:0]D;
  output auto_init_start_reg;
  input \FSM_onehot_curr_state_reg[0]_0 ;
  input s00_axi_aclk;
  input [2:0]Q;
  input s00_axi_aresetn;
  input auto_init_start_reg_0;
  input auto_init_start_reg_1;
  input auto_init_start_reg_2;
  input [0:0]\axi_rdata_reg[0] ;
  input [2:0]sel0;
  input [0:0]frame_count_reg;
  input [0:0]\axi_rdata_reg[0]_0 ;
  input boot_init_done;

  wire [0:0]D;
  wire \FSM_onehot_curr_state[0]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[1]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[1]_i_2_n_0 ;
  wire \FSM_onehot_curr_state[2]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[2]_i_2_n_0 ;
  wire \FSM_onehot_curr_state[2]_i_3_n_0 ;
  wire \FSM_onehot_curr_state[3]_i_1_n_0 ;
  wire \FSM_onehot_curr_state[3]_i_2_n_0 ;
  wire \FSM_onehot_curr_state[4]_i_2_n_0 ;
  wire \FSM_onehot_curr_state_reg[0]_0 ;
  wire \FSM_onehot_curr_state_reg_n_0_[0] ;
  wire \FSM_onehot_curr_state_reg_n_0_[1] ;
  wire \FSM_onehot_curr_state_reg_n_0_[2] ;
  wire \FSM_onehot_curr_state_reg_n_0_[3] ;
  wire \FSM_onehot_curr_state_reg_n_0_[4] ;
  wire [2:0]Q;
  wire auto_init_start_reg;
  wire auto_init_start_reg_0;
  wire auto_init_start_reg_1;
  wire auto_init_start_reg_2;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire [0:0]\axi_rdata_reg[0] ;
  wire [0:0]\axi_rdata_reg[0]_0 ;
  wire boot_init_done;
  wire cam_scl;
  wire cam_sda;
  wire camera_rom_n_0;
  wire camera_rom_n_1;
  wire curr_state;
  wire [0:0]frame_count_reg;
  wire hi_z_i_1_n_0;
  wire hi_z_reg_n_0;
  wire init_done;
  wire [6:0]p_0_in__0;
  wire rom_addr_counter;
  wire \rom_addr_counter[0]_i_1_n_0 ;
  wire \rom_addr_counter[1]_i_1_n_0 ;
  wire \rom_addr_counter[2]_i_1_n_0 ;
  wire \rom_addr_counter[3]_i_1_n_0 ;
  wire \rom_addr_counter[4]_i_1_n_0 ;
  wire \rom_addr_counter[5]_i_1_n_0 ;
  wire \rom_addr_counter[6]_i_1_n_0 ;
  wire \rom_addr_counter[6]_i_2_n_0 ;
  wire \rom_addr_counter[7]_i_2_n_0 ;
  wire \rom_addr_counter[7]_i_3_n_0 ;
  wire \rom_addr_counter_reg_n_0_[0] ;
  wire \rom_addr_counter_reg_n_0_[1] ;
  wire \rom_addr_counter_reg_n_0_[2] ;
  wire \rom_addr_counter_reg_n_0_[3] ;
  wire \rom_addr_counter_reg_n_0_[4] ;
  wire \rom_addr_counter_reg_n_0_[5] ;
  wire \rom_addr_counter_reg_n_0_[6] ;
  wire \rom_addr_counter_reg_n_0_[7] ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \scl_div_cnt[6]_i_1_n_0 ;
  wire \scl_div_cnt[6]_i_3_n_0 ;
  wire [6:0]scl_div_cnt_reg;
  wire scl_i_2_n_0;
  wire scl_i_3_n_0;
  wire scl_i_4_n_0;
  wire scl_i_5_n_0;
  wire scl_i_6_n_0;
  wire sda_drive_low_i_3_n_0;
  wire sda_drive_low_i_4_n_0;
  wire sda_drive_low_i_6_n_0;
  wire sda_drive_low_reg_n_0;
  wire [2:0]sel0;
  wire \slv_reg0_reg[2] ;
  wire write_bit_counter;
  wire \write_bit_counter[0]_i_1_n_0 ;
  wire \write_bit_counter[1]_i_1_n_0 ;
  wire \write_bit_counter[2]_i_1_n_0 ;
  wire \write_bit_counter[2]_i_2_n_0 ;
  wire \write_bit_counter_reg_n_0_[0] ;
  wire \write_bit_counter_reg_n_0_[1] ;
  wire \write_bit_counter_reg_n_0_[2] ;
  wire [1:0]write_byte_counter;
  wire \write_byte_counter[0]_i_1_n_0 ;
  wire \write_byte_counter[1]_i_1_n_0 ;
  wire write_flag_i_1_n_0;
  wire \write_phase_counter[0]_i_1_n_0 ;
  wire \write_phase_counter[1]_i_1_n_0 ;
  wire \write_phase_counter_reg_n_0_[0] ;
  wire \write_phase_counter_reg_n_0_[1] ;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h888F8888)) 
    \FSM_onehot_curr_state[0]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_curr_state[1]_i_2_n_0 ),
        .I2(auto_init_start_reg_2),
        .I3(Q[1]),
        .I4(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .O(\FSM_onehot_curr_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \FSM_onehot_curr_state[1]_i_1 
       (.I0(\FSM_onehot_curr_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I2(auto_init_start_reg_2),
        .I3(Q[1]),
        .I4(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .O(\FSM_onehot_curr_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \FSM_onehot_curr_state[1]_i_2 
       (.I0(\rom_addr_counter_reg_n_0_[2] ),
        .I1(\rom_addr_counter_reg_n_0_[4] ),
        .I2(\rom_addr_counter_reg_n_0_[3] ),
        .I3(\rom_addr_counter_reg_n_0_[0] ),
        .I4(\rom_addr_counter_reg_n_0_[1] ),
        .I5(camera_rom_n_0),
        .O(\FSM_onehot_curr_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4444F4FF)) 
    \FSM_onehot_curr_state[2]_i_1 
       (.I0(\FSM_onehot_curr_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I2(write_byte_counter[0]),
        .I3(write_byte_counter[1]),
        .I4(\FSM_onehot_curr_state[2]_i_3_n_0 ),
        .I5(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .O(\FSM_onehot_curr_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_onehot_curr_state[2]_i_2 
       (.I0(\write_phase_counter_reg_n_0_[1] ),
        .I1(\write_phase_counter_reg_n_0_[0] ),
        .I2(\write_bit_counter_reg_n_0_[0] ),
        .I3(\write_bit_counter_reg_n_0_[1] ),
        .I4(\write_bit_counter_reg_n_0_[2] ),
        .O(\FSM_onehot_curr_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_onehot_curr_state[2]_i_3 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I1(\write_phase_counter_reg_n_0_[1] ),
        .I2(\write_phase_counter_reg_n_0_[0] ),
        .O(\FSM_onehot_curr_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2222222E22222222)) 
    \FSM_onehot_curr_state[3]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_curr_state[3]_i_2_n_0 ),
        .I2(\write_bit_counter_reg_n_0_[0] ),
        .I3(\write_bit_counter_reg_n_0_[1] ),
        .I4(\write_bit_counter_reg_n_0_[2] ),
        .I5(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(\FSM_onehot_curr_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_curr_state[3]_i_2 
       (.I0(\write_phase_counter_reg_n_0_[0] ),
        .I1(\write_phase_counter_reg_n_0_[1] ),
        .O(\FSM_onehot_curr_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \FSM_onehot_curr_state[4]_i_1 
       (.I0(scl_i_5_n_0),
        .I1(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .O(curr_state));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_onehot_curr_state[4]_i_2 
       (.I0(write_byte_counter[0]),
        .I1(write_byte_counter[1]),
        .I2(\write_phase_counter_reg_n_0_[0] ),
        .I3(\write_phase_counter_reg_n_0_[1] ),
        .I4(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .O(\FSM_onehot_curr_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "s_ack:01000,s_write:00100,s_stop:10000,s_start:00010,s_idle:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_curr_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(curr_state),
        .D(\FSM_onehot_curr_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .S(\FSM_onehot_curr_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "s_ack:01000,s_write:00100,s_stop:10000,s_start:00010,s_idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(curr_state),
        .D(\FSM_onehot_curr_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "s_ack:01000,s_write:00100,s_stop:10000,s_start:00010,s_idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(curr_state),
        .D(\FSM_onehot_curr_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "s_ack:01000,s_write:00100,s_stop:10000,s_start:00010,s_idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(curr_state),
        .D(\FSM_onehot_curr_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "s_ack:01000,s_write:00100,s_stop:10000,s_start:00010,s_idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_curr_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(curr_state),
        .D(\FSM_onehot_curr_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000040044440400)) 
    auto_init_start_i_1
       (.I0(Q[2]),
        .I1(s00_axi_aresetn),
        .I2(auto_init_start_reg_0),
        .I3(auto_init_start_reg_1),
        .I4(auto_init_start_reg_2),
        .I5(init_done),
        .O(\slv_reg0_reg[2] ));
  LUT5 #(
    .INIT(32'h33003B08)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[0]_i_2_n_0 ),
        .I4(sel0[0]),
        .O(D));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(frame_count_reg),
        .I1(\axi_rdata_reg[0]_0 ),
        .I2(sel0[1]),
        .I3(init_done),
        .I4(sel0[0]),
        .I5(Q[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    boot_init_done_i_1
       (.I0(auto_init_start_reg_2),
        .I1(init_done),
        .I2(boot_init_done),
        .O(auto_init_start_reg));
  LUT2 #(
    .INIT(4'h1)) 
    cam_sda_INST_0
       (.I0(sda_drive_low_reg_n_0),
        .I1(hi_z_reg_n_0),
        .O(cam_sda));
  mb_usb_camera_controller_0_2_OV7670_config_rom camera_rom
       (.\FSM_onehot_curr_state_reg[1] (camera_rom_n_1),
        .Q({\rom_addr_counter_reg_n_0_[7] ,\rom_addr_counter_reg_n_0_[6] ,\rom_addr_counter_reg_n_0_[5] ,\rom_addr_counter_reg_n_0_[4] ,\rom_addr_counter_reg_n_0_[3] ,\rom_addr_counter_reg_n_0_[2] ,\rom_addr_counter_reg_n_0_[1] ,\rom_addr_counter_reg_n_0_[0] }),
        .\rom_addr_counter_reg[7] (camera_rom_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .sda_drive_low_i_2_0(\write_bit_counter_reg_n_0_[2] ),
        .sda_drive_low_reg({\FSM_onehot_curr_state_reg_n_0_[2] ,\FSM_onehot_curr_state_reg_n_0_[1] }),
        .sda_drive_low_reg_0(sda_drive_low_i_6_n_0),
        .sda_drive_low_reg_1(sda_drive_low_i_3_n_0),
        .sda_drive_low_reg_2(scl_i_5_n_0),
        .sda_drive_low_reg_3(sda_drive_low_i_4_n_0),
        .sda_drive_low_reg_4(sda_drive_low_reg_n_0),
        .sda_drive_low_reg_i_7_0(\write_bit_counter_reg_n_0_[1] ),
        .sda_drive_low_reg_i_7_1(\write_bit_counter_reg_n_0_[0] ),
        .write_byte_counter(write_byte_counter));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    hi_z_i_1
       (.I0(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I1(rom_addr_counter),
        .I2(sda_drive_low_i_4_n_0),
        .I3(hi_z_reg_n_0),
        .O(hi_z_i_1_n_0));
  FDRE hi_z_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(hi_z_i_1_n_0),
        .Q(hi_z_reg_n_0),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rom_addr_counter[0]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I1(\rom_addr_counter_reg_n_0_[0] ),
        .O(\rom_addr_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \rom_addr_counter[1]_i_1 
       (.I0(\rom_addr_counter_reg_n_0_[1] ),
        .I1(\rom_addr_counter_reg_n_0_[0] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .O(\rom_addr_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rom_addr_counter[2]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I1(\rom_addr_counter_reg_n_0_[0] ),
        .I2(\rom_addr_counter_reg_n_0_[1] ),
        .I3(\rom_addr_counter_reg_n_0_[2] ),
        .O(\rom_addr_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \rom_addr_counter[3]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I1(\rom_addr_counter_reg_n_0_[1] ),
        .I2(\rom_addr_counter_reg_n_0_[0] ),
        .I3(\rom_addr_counter_reg_n_0_[2] ),
        .I4(\rom_addr_counter_reg_n_0_[3] ),
        .O(\rom_addr_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \rom_addr_counter[4]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I1(\rom_addr_counter_reg_n_0_[2] ),
        .I2(\rom_addr_counter_reg_n_0_[0] ),
        .I3(\rom_addr_counter_reg_n_0_[1] ),
        .I4(\rom_addr_counter_reg_n_0_[3] ),
        .I5(\rom_addr_counter_reg_n_0_[4] ),
        .O(\rom_addr_counter[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \rom_addr_counter[5]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I1(\rom_addr_counter_reg_n_0_[4] ),
        .I2(\rom_addr_counter_reg_n_0_[3] ),
        .I3(\rom_addr_counter[6]_i_2_n_0 ),
        .I4(\rom_addr_counter_reg_n_0_[5] ),
        .O(\rom_addr_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF400000000000)) 
    \rom_addr_counter[6]_i_1 
       (.I0(\rom_addr_counter[6]_i_2_n_0 ),
        .I1(\rom_addr_counter_reg_n_0_[3] ),
        .I2(\rom_addr_counter_reg_n_0_[4] ),
        .I3(\rom_addr_counter_reg_n_0_[5] ),
        .I4(\rom_addr_counter_reg_n_0_[6] ),
        .I5(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .O(\rom_addr_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \rom_addr_counter[6]_i_2 
       (.I0(\rom_addr_counter_reg_n_0_[1] ),
        .I1(\rom_addr_counter_reg_n_0_[0] ),
        .I2(\rom_addr_counter_reg_n_0_[2] ),
        .O(\rom_addr_counter[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \rom_addr_counter[7]_i_1 
       (.I0(scl_i_5_n_0),
        .I1(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .O(rom_addr_counter));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \rom_addr_counter[7]_i_2 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I1(\rom_addr_counter_reg_n_0_[6] ),
        .I2(\rom_addr_counter[7]_i_3_n_0 ),
        .I3(\rom_addr_counter_reg_n_0_[7] ),
        .O(\rom_addr_counter[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rom_addr_counter[7]_i_3 
       (.I0(\rom_addr_counter_reg_n_0_[1] ),
        .I1(\rom_addr_counter_reg_n_0_[0] ),
        .I2(\rom_addr_counter_reg_n_0_[2] ),
        .I3(\rom_addr_counter_reg_n_0_[3] ),
        .I4(\rom_addr_counter_reg_n_0_[4] ),
        .I5(\rom_addr_counter_reg_n_0_[5] ),
        .O(\rom_addr_counter[7]_i_3_n_0 ));
  FDRE \rom_addr_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rom_addr_counter),
        .D(\rom_addr_counter[0]_i_1_n_0 ),
        .Q(\rom_addr_counter_reg_n_0_[0] ),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  FDRE \rom_addr_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rom_addr_counter),
        .D(\rom_addr_counter[1]_i_1_n_0 ),
        .Q(\rom_addr_counter_reg_n_0_[1] ),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  FDRE \rom_addr_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rom_addr_counter),
        .D(\rom_addr_counter[2]_i_1_n_0 ),
        .Q(\rom_addr_counter_reg_n_0_[2] ),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  FDRE \rom_addr_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rom_addr_counter),
        .D(\rom_addr_counter[3]_i_1_n_0 ),
        .Q(\rom_addr_counter_reg_n_0_[3] ),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  FDRE \rom_addr_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(rom_addr_counter),
        .D(\rom_addr_counter[4]_i_1_n_0 ),
        .Q(\rom_addr_counter_reg_n_0_[4] ),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  FDRE \rom_addr_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(rom_addr_counter),
        .D(\rom_addr_counter[5]_i_1_n_0 ),
        .Q(\rom_addr_counter_reg_n_0_[5] ),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  FDRE \rom_addr_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(rom_addr_counter),
        .D(\rom_addr_counter[6]_i_1_n_0 ),
        .Q(\rom_addr_counter_reg_n_0_[6] ),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  FDRE \rom_addr_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(rom_addr_counter),
        .D(\rom_addr_counter[7]_i_2_n_0 ),
        .Q(\rom_addr_counter_reg_n_0_[7] ),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \scl_div_cnt[0]_i_1 
       (.I0(scl_div_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \scl_div_cnt[1]_i_1 
       (.I0(scl_div_cnt_reg[0]),
        .I1(scl_div_cnt_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \scl_div_cnt[2]_i_1 
       (.I0(scl_div_cnt_reg[2]),
        .I1(scl_div_cnt_reg[1]),
        .I2(scl_div_cnt_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \scl_div_cnt[3]_i_1 
       (.I0(scl_div_cnt_reg[3]),
        .I1(scl_div_cnt_reg[0]),
        .I2(scl_div_cnt_reg[1]),
        .I3(scl_div_cnt_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \scl_div_cnt[4]_i_1 
       (.I0(scl_div_cnt_reg[4]),
        .I1(scl_div_cnt_reg[2]),
        .I2(scl_div_cnt_reg[1]),
        .I3(scl_div_cnt_reg[0]),
        .I4(scl_div_cnt_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \scl_div_cnt[5]_i_1 
       (.I0(scl_div_cnt_reg[5]),
        .I1(scl_div_cnt_reg[3]),
        .I2(scl_div_cnt_reg[0]),
        .I3(scl_div_cnt_reg[1]),
        .I4(scl_div_cnt_reg[2]),
        .I5(scl_div_cnt_reg[4]),
        .O(p_0_in__0[5]));
  LUT3 #(
    .INIT(8'hEF)) 
    \scl_div_cnt[6]_i_1 
       (.I0(scl_i_5_n_0),
        .I1(Q[2]),
        .I2(s00_axi_aresetn),
        .O(\scl_div_cnt[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \scl_div_cnt[6]_i_2 
       (.I0(scl_div_cnt_reg[6]),
        .I1(\scl_div_cnt[6]_i_3_n_0 ),
        .I2(scl_div_cnt_reg[5]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \scl_div_cnt[6]_i_3 
       (.I0(scl_div_cnt_reg[4]),
        .I1(scl_div_cnt_reg[2]),
        .I2(scl_div_cnt_reg[1]),
        .I3(scl_div_cnt_reg[0]),
        .I4(scl_div_cnt_reg[3]),
        .O(\scl_div_cnt[6]_i_3_n_0 ));
  FDRE \scl_div_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(scl_div_cnt_reg[0]),
        .R(\scl_div_cnt[6]_i_1_n_0 ));
  FDRE \scl_div_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(scl_div_cnt_reg[1]),
        .R(\scl_div_cnt[6]_i_1_n_0 ));
  FDRE \scl_div_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(scl_div_cnt_reg[2]),
        .R(\scl_div_cnt[6]_i_1_n_0 ));
  FDRE \scl_div_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(scl_div_cnt_reg[3]),
        .R(\scl_div_cnt[6]_i_1_n_0 ));
  FDRE \scl_div_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(scl_div_cnt_reg[4]),
        .R(\scl_div_cnt[6]_i_1_n_0 ));
  FDRE \scl_div_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(scl_div_cnt_reg[5]),
        .R(\scl_div_cnt[6]_i_1_n_0 ));
  FDRE \scl_div_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(scl_div_cnt_reg[6]),
        .R(\scl_div_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF333B0000)) 
    scl_i_2
       (.I0(\write_phase_counter_reg_n_0_[1] ),
        .I1(scl_i_3_n_0),
        .I2(\write_phase_counter_reg_n_0_[0] ),
        .I3(scl_i_4_n_0),
        .I4(scl_i_5_n_0),
        .I5(cam_scl),
        .O(scl_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    scl_i_3
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[1] ),
        .O(scl_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    scl_i_4
       (.I0(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .O(scl_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    scl_i_5
       (.I0(scl_div_cnt_reg[3]),
        .I1(scl_div_cnt_reg[5]),
        .I2(scl_div_cnt_reg[0]),
        .I3(scl_i_6_n_0),
        .O(scl_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    scl_i_6
       (.I0(scl_div_cnt_reg[1]),
        .I1(scl_div_cnt_reg[2]),
        .I2(scl_div_cnt_reg[6]),
        .I3(scl_div_cnt_reg[4]),
        .O(scl_i_6_n_0));
  FDSE scl_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(scl_i_2_n_0),
        .Q(cam_scl),
        .S(\FSM_onehot_curr_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    sda_drive_low_i_3
       (.I0(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .O(sda_drive_low_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h20202000)) 
    sda_drive_low_i_4
       (.I0(scl_i_5_n_0),
        .I1(\write_phase_counter_reg_n_0_[1] ),
        .I2(\write_phase_counter_reg_n_0_[0] ),
        .I3(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .O(sda_drive_low_i_4_n_0));
  LUT5 #(
    .INIT(32'h99099099)) 
    sda_drive_low_i_6
       (.I0(write_byte_counter[0]),
        .I1(write_byte_counter[1]),
        .I2(\write_bit_counter_reg_n_0_[1] ),
        .I3(\write_bit_counter_reg_n_0_[0] ),
        .I4(\write_bit_counter_reg_n_0_[2] ),
        .O(sda_drive_low_i_6_n_0));
  FDRE sda_drive_low_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(camera_rom_n_1),
        .Q(sda_drive_low_reg_n_0),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hEEFFFE00)) 
    \write_bit_counter[0]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I3(write_bit_counter),
        .I4(\write_bit_counter_reg_n_0_[0] ),
        .O(\write_bit_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFFFFEFEE0000)) 
    \write_bit_counter[1]_i_1 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I2(\write_bit_counter_reg_n_0_[0] ),
        .I3(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I4(write_bit_counter),
        .I5(\write_bit_counter_reg_n_0_[1] ),
        .O(\write_bit_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE0FFFFFF100000)) 
    \write_bit_counter[2]_i_1 
       (.I0(\write_bit_counter_reg_n_0_[1] ),
        .I1(\write_bit_counter_reg_n_0_[0] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I3(\write_bit_counter[2]_i_2_n_0 ),
        .I4(write_bit_counter),
        .I5(\write_bit_counter_reg_n_0_[2] ),
        .O(\write_bit_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \write_bit_counter[2]_i_2 
       (.I0(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .O(\write_bit_counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8888888888888)) 
    \write_bit_counter[2]_i_3 
       (.I0(scl_i_5_n_0),
        .I1(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I4(\write_phase_counter_reg_n_0_[1] ),
        .I5(\write_phase_counter_reg_n_0_[0] ),
        .O(write_bit_counter));
  FDSE \write_bit_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\write_bit_counter[0]_i_1_n_0 ),
        .Q(\write_bit_counter_reg_n_0_[0] ),
        .S(\FSM_onehot_curr_state_reg[0]_0 ));
  FDSE \write_bit_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\write_bit_counter[1]_i_1_n_0 ),
        .Q(\write_bit_counter_reg_n_0_[1] ),
        .S(\FSM_onehot_curr_state_reg[0]_0 ));
  FDSE \write_bit_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\write_bit_counter[2]_i_1_n_0 ),
        .Q(\write_bit_counter_reg_n_0_[2] ),
        .S(\FSM_onehot_curr_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h15555555C8888888)) 
    \write_byte_counter[0]_i_1 
       (.I0(rom_addr_counter),
        .I1(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I2(\write_phase_counter_reg_n_0_[1] ),
        .I3(\write_phase_counter_reg_n_0_[0] ),
        .I4(scl_i_5_n_0),
        .I5(write_byte_counter[0]),
        .O(\write_byte_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h53737373A0808080)) 
    \write_byte_counter[1]_i_1 
       (.I0(write_byte_counter[0]),
        .I1(rom_addr_counter),
        .I2(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_curr_state[3]_i_2_n_0 ),
        .I4(scl_i_5_n_0),
        .I5(write_byte_counter[1]),
        .O(\write_byte_counter[1]_i_1_n_0 ));
  FDRE \write_byte_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\write_byte_counter[0]_i_1_n_0 ),
        .Q(write_byte_counter[0]),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  FDRE \write_byte_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\write_byte_counter[1]_i_1_n_0 ),
        .Q(write_byte_counter[1]),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFF08080808080808)) 
    write_flag_i_1
       (.I0(init_done),
        .I1(s00_axi_aresetn),
        .I2(Q[2]),
        .I3(scl_i_5_n_0),
        .I4(\FSM_onehot_curr_state[1]_i_2_n_0 ),
        .I5(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .O(write_flag_i_1_n_0));
  FDRE write_flag_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(write_flag_i_1_n_0),
        .Q(init_done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h55555557A8A8A8A8)) 
    \write_phase_counter[0]_i_1 
       (.I0(scl_i_5_n_0),
        .I1(\FSM_onehot_curr_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_curr_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I5(\write_phase_counter_reg_n_0_[0] ),
        .O(\write_phase_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h373737F708080808)) 
    \write_phase_counter[1]_i_1 
       (.I0(\write_phase_counter_reg_n_0_[0] ),
        .I1(scl_i_5_n_0),
        .I2(scl_i_4_n_0),
        .I3(\FSM_onehot_curr_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_curr_state_reg_n_0_[0] ),
        .I5(\write_phase_counter_reg_n_0_[1] ),
        .O(\write_phase_counter[1]_i_1_n_0 ));
  FDRE \write_phase_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\write_phase_counter[0]_i_1_n_0 ),
        .Q(\write_phase_counter_reg_n_0_[0] ),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
  FDRE \write_phase_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\write_phase_counter[1]_i_1_n_0 ),
        .Q(\write_phase_counter_reg_n_0_[1] ),
        .R(\FSM_onehot_curr_state_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "camera_controller_v1_0" *) 
module mb_usb_camera_controller_0_2_camera_controller_v1_0
   (s00_axi_rvalid,
    s00_axi_arready,
    cam_pwdn,
    bram_addr,
    cam_sda,
    hw_reset,
    we_next,
    bram_wrdata,
    bram_we,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_rdata,
    cam_scl,
    s00_axi_bvalid,
    s00_axi_arvalid,
    s00_axi_aresetn,
    \pixel_addr_sync1_reg[0] ,
    s00_axi_aclk,
    cam_pclk,
    cam_d,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    cam_vsync,
    cam_href,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_rvalid;
  output s00_axi_arready;
  output cam_pwdn;
  output [16:0]bram_addr;
  output cam_sda;
  output hw_reset;
  output we_next;
  output [7:0]bram_wrdata;
  output bram_we;
  output s00_axi_awready;
  output s00_axi_wready;
  output [31:0]s00_axi_rdata;
  output cam_scl;
  output s00_axi_bvalid;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input \pixel_addr_sync1_reg[0] ;
  input s00_axi_aclk;
  input cam_pclk;
  input [7:0]cam_d;
  input [2:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input cam_vsync;
  input cam_href;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [16:0]bram_addr;
  wire bram_we;
  wire [7:0]bram_wrdata;
  wire [7:0]cam_d;
  wire cam_href;
  wire cam_pclk;
  wire cam_pwdn;
  wire cam_pwdn_INST_0_i_1_n_0;
  wire cam_pwdn_INST_0_i_2_n_0;
  wire cam_pwdn_INST_0_i_3_n_0;
  wire cam_scl;
  wire cam_sda;
  wire cam_vsync;
  wire hw_reset;
  wire hw_reset0;
  wire \pixel_addr_sync1_reg[0] ;
  wire \pwdn_timer[0]_i_1_n_0 ;
  wire \pwdn_timer[0]_i_3_n_0 ;
  wire \pwdn_timer[0]_i_4_n_0 ;
  wire \pwdn_timer[0]_i_5_n_0 ;
  wire \pwdn_timer[0]_i_6_n_0 ;
  wire [23:6]pwdn_timer_reg;
  wire \pwdn_timer_reg[0]_i_2_n_0 ;
  wire \pwdn_timer_reg[0]_i_2_n_1 ;
  wire \pwdn_timer_reg[0]_i_2_n_2 ;
  wire \pwdn_timer_reg[0]_i_2_n_3 ;
  wire \pwdn_timer_reg[0]_i_2_n_4 ;
  wire \pwdn_timer_reg[0]_i_2_n_5 ;
  wire \pwdn_timer_reg[0]_i_2_n_6 ;
  wire \pwdn_timer_reg[0]_i_2_n_7 ;
  wire \pwdn_timer_reg[12]_i_1_n_0 ;
  wire \pwdn_timer_reg[12]_i_1_n_1 ;
  wire \pwdn_timer_reg[12]_i_1_n_2 ;
  wire \pwdn_timer_reg[12]_i_1_n_3 ;
  wire \pwdn_timer_reg[12]_i_1_n_4 ;
  wire \pwdn_timer_reg[12]_i_1_n_5 ;
  wire \pwdn_timer_reg[12]_i_1_n_6 ;
  wire \pwdn_timer_reg[12]_i_1_n_7 ;
  wire \pwdn_timer_reg[16]_i_1_n_0 ;
  wire \pwdn_timer_reg[16]_i_1_n_1 ;
  wire \pwdn_timer_reg[16]_i_1_n_2 ;
  wire \pwdn_timer_reg[16]_i_1_n_3 ;
  wire \pwdn_timer_reg[16]_i_1_n_4 ;
  wire \pwdn_timer_reg[16]_i_1_n_5 ;
  wire \pwdn_timer_reg[16]_i_1_n_6 ;
  wire \pwdn_timer_reg[16]_i_1_n_7 ;
  wire \pwdn_timer_reg[20]_i_1_n_1 ;
  wire \pwdn_timer_reg[20]_i_1_n_2 ;
  wire \pwdn_timer_reg[20]_i_1_n_3 ;
  wire \pwdn_timer_reg[20]_i_1_n_4 ;
  wire \pwdn_timer_reg[20]_i_1_n_5 ;
  wire \pwdn_timer_reg[20]_i_1_n_6 ;
  wire \pwdn_timer_reg[20]_i_1_n_7 ;
  wire \pwdn_timer_reg[4]_i_1_n_0 ;
  wire \pwdn_timer_reg[4]_i_1_n_1 ;
  wire \pwdn_timer_reg[4]_i_1_n_2 ;
  wire \pwdn_timer_reg[4]_i_1_n_3 ;
  wire \pwdn_timer_reg[4]_i_1_n_4 ;
  wire \pwdn_timer_reg[4]_i_1_n_5 ;
  wire \pwdn_timer_reg[4]_i_1_n_6 ;
  wire \pwdn_timer_reg[4]_i_1_n_7 ;
  wire \pwdn_timer_reg[8]_i_1_n_0 ;
  wire \pwdn_timer_reg[8]_i_1_n_1 ;
  wire \pwdn_timer_reg[8]_i_1_n_2 ;
  wire \pwdn_timer_reg[8]_i_1_n_3 ;
  wire \pwdn_timer_reg[8]_i_1_n_4 ;
  wire \pwdn_timer_reg[8]_i_1_n_5 ;
  wire \pwdn_timer_reg[8]_i_1_n_6 ;
  wire \pwdn_timer_reg[8]_i_1_n_7 ;
  wire \pwdn_timer_reg_n_0_[0] ;
  wire \pwdn_timer_reg_n_0_[1] ;
  wire \pwdn_timer_reg_n_0_[2] ;
  wire \pwdn_timer_reg_n_0_[3] ;
  wire \pwdn_timer_reg_n_0_[4] ;
  wire \pwdn_timer_reg_n_0_[5] ;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire we_next;
  wire [3:3]\NLW_pwdn_timer_reg[20]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00045555)) 
    cam_pwdn_INST_0
       (.I0(pwdn_timer_reg[23]),
        .I1(cam_pwdn_INST_0_i_1_n_0),
        .I2(pwdn_timer_reg[21]),
        .I3(pwdn_timer_reg[20]),
        .I4(pwdn_timer_reg[22]),
        .O(cam_pwdn));
  LUT6 #(
    .INIT(64'h0001FFFFFFFFFFFF)) 
    cam_pwdn_INST_0_i_1
       (.I0(cam_pwdn_INST_0_i_2_n_0),
        .I1(pwdn_timer_reg[15]),
        .I2(pwdn_timer_reg[16]),
        .I3(pwdn_timer_reg[17]),
        .I4(pwdn_timer_reg[19]),
        .I5(pwdn_timer_reg[18]),
        .O(cam_pwdn_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hA8AA)) 
    cam_pwdn_INST_0_i_2
       (.I0(pwdn_timer_reg[14]),
        .I1(pwdn_timer_reg[13]),
        .I2(pwdn_timer_reg[12]),
        .I3(cam_pwdn_INST_0_i_3_n_0),
        .O(cam_pwdn_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h5555555557FFFFFF)) 
    cam_pwdn_INST_0_i_3
       (.I0(pwdn_timer_reg[11]),
        .I1(pwdn_timer_reg[6]),
        .I2(pwdn_timer_reg[7]),
        .I3(pwdn_timer_reg[8]),
        .I4(pwdn_timer_reg[9]),
        .I5(pwdn_timer_reg[10]),
        .O(cam_pwdn_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h10111111FFFFFFFF)) 
    \pwdn_timer[0]_i_1 
       (.I0(pwdn_timer_reg[22]),
        .I1(pwdn_timer_reg[21]),
        .I2(\pwdn_timer[0]_i_3_n_0 ),
        .I3(pwdn_timer_reg[19]),
        .I4(pwdn_timer_reg[20]),
        .I5(pwdn_timer_reg[23]),
        .O(\pwdn_timer[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000555D)) 
    \pwdn_timer[0]_i_3 
       (.I0(pwdn_timer_reg[15]),
        .I1(\pwdn_timer[0]_i_5_n_0 ),
        .I2(pwdn_timer_reg[13]),
        .I3(pwdn_timer_reg[14]),
        .I4(\pwdn_timer[0]_i_6_n_0 ),
        .I5(pwdn_timer_reg[18]),
        .O(\pwdn_timer[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pwdn_timer[0]_i_4 
       (.I0(\pwdn_timer_reg_n_0_[0] ),
        .O(\pwdn_timer[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555555557FFFFFF)) 
    \pwdn_timer[0]_i_5 
       (.I0(pwdn_timer_reg[12]),
        .I1(pwdn_timer_reg[8]),
        .I2(pwdn_timer_reg[7]),
        .I3(pwdn_timer_reg[9]),
        .I4(pwdn_timer_reg[10]),
        .I5(pwdn_timer_reg[11]),
        .O(\pwdn_timer[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pwdn_timer[0]_i_6 
       (.I0(pwdn_timer_reg[17]),
        .I1(pwdn_timer_reg[16]),
        .O(\pwdn_timer[0]_i_6_n_0 ));
  FDRE \pwdn_timer_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[0]_i_2_n_7 ),
        .Q(\pwdn_timer_reg_n_0_[0] ),
        .R(hw_reset0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pwdn_timer_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\pwdn_timer_reg[0]_i_2_n_0 ,\pwdn_timer_reg[0]_i_2_n_1 ,\pwdn_timer_reg[0]_i_2_n_2 ,\pwdn_timer_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pwdn_timer_reg[0]_i_2_n_4 ,\pwdn_timer_reg[0]_i_2_n_5 ,\pwdn_timer_reg[0]_i_2_n_6 ,\pwdn_timer_reg[0]_i_2_n_7 }),
        .S({\pwdn_timer_reg_n_0_[3] ,\pwdn_timer_reg_n_0_[2] ,\pwdn_timer_reg_n_0_[1] ,\pwdn_timer[0]_i_4_n_0 }));
  FDRE \pwdn_timer_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[8]_i_1_n_5 ),
        .Q(pwdn_timer_reg[10]),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[8]_i_1_n_4 ),
        .Q(pwdn_timer_reg[11]),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[12]_i_1_n_7 ),
        .Q(pwdn_timer_reg[12]),
        .R(hw_reset0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pwdn_timer_reg[12]_i_1 
       (.CI(\pwdn_timer_reg[8]_i_1_n_0 ),
        .CO({\pwdn_timer_reg[12]_i_1_n_0 ,\pwdn_timer_reg[12]_i_1_n_1 ,\pwdn_timer_reg[12]_i_1_n_2 ,\pwdn_timer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwdn_timer_reg[12]_i_1_n_4 ,\pwdn_timer_reg[12]_i_1_n_5 ,\pwdn_timer_reg[12]_i_1_n_6 ,\pwdn_timer_reg[12]_i_1_n_7 }),
        .S(pwdn_timer_reg[15:12]));
  FDRE \pwdn_timer_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[12]_i_1_n_6 ),
        .Q(pwdn_timer_reg[13]),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[12]_i_1_n_5 ),
        .Q(pwdn_timer_reg[14]),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[12]_i_1_n_4 ),
        .Q(pwdn_timer_reg[15]),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[16]_i_1_n_7 ),
        .Q(pwdn_timer_reg[16]),
        .R(hw_reset0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pwdn_timer_reg[16]_i_1 
       (.CI(\pwdn_timer_reg[12]_i_1_n_0 ),
        .CO({\pwdn_timer_reg[16]_i_1_n_0 ,\pwdn_timer_reg[16]_i_1_n_1 ,\pwdn_timer_reg[16]_i_1_n_2 ,\pwdn_timer_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwdn_timer_reg[16]_i_1_n_4 ,\pwdn_timer_reg[16]_i_1_n_5 ,\pwdn_timer_reg[16]_i_1_n_6 ,\pwdn_timer_reg[16]_i_1_n_7 }),
        .S(pwdn_timer_reg[19:16]));
  FDRE \pwdn_timer_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[16]_i_1_n_6 ),
        .Q(pwdn_timer_reg[17]),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[16]_i_1_n_5 ),
        .Q(pwdn_timer_reg[18]),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[16]_i_1_n_4 ),
        .Q(pwdn_timer_reg[19]),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[0]_i_2_n_6 ),
        .Q(\pwdn_timer_reg_n_0_[1] ),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[20]_i_1_n_7 ),
        .Q(pwdn_timer_reg[20]),
        .R(hw_reset0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pwdn_timer_reg[20]_i_1 
       (.CI(\pwdn_timer_reg[16]_i_1_n_0 ),
        .CO({\NLW_pwdn_timer_reg[20]_i_1_CO_UNCONNECTED [3],\pwdn_timer_reg[20]_i_1_n_1 ,\pwdn_timer_reg[20]_i_1_n_2 ,\pwdn_timer_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwdn_timer_reg[20]_i_1_n_4 ,\pwdn_timer_reg[20]_i_1_n_5 ,\pwdn_timer_reg[20]_i_1_n_6 ,\pwdn_timer_reg[20]_i_1_n_7 }),
        .S(pwdn_timer_reg[23:20]));
  FDRE \pwdn_timer_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[20]_i_1_n_6 ),
        .Q(pwdn_timer_reg[21]),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[20]_i_1_n_5 ),
        .Q(pwdn_timer_reg[22]),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[20]_i_1_n_4 ),
        .Q(pwdn_timer_reg[23]),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[0]_i_2_n_5 ),
        .Q(\pwdn_timer_reg_n_0_[2] ),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[0]_i_2_n_4 ),
        .Q(\pwdn_timer_reg_n_0_[3] ),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[4]_i_1_n_7 ),
        .Q(\pwdn_timer_reg_n_0_[4] ),
        .R(hw_reset0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pwdn_timer_reg[4]_i_1 
       (.CI(\pwdn_timer_reg[0]_i_2_n_0 ),
        .CO({\pwdn_timer_reg[4]_i_1_n_0 ,\pwdn_timer_reg[4]_i_1_n_1 ,\pwdn_timer_reg[4]_i_1_n_2 ,\pwdn_timer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwdn_timer_reg[4]_i_1_n_4 ,\pwdn_timer_reg[4]_i_1_n_5 ,\pwdn_timer_reg[4]_i_1_n_6 ,\pwdn_timer_reg[4]_i_1_n_7 }),
        .S({pwdn_timer_reg[7:6],\pwdn_timer_reg_n_0_[5] ,\pwdn_timer_reg_n_0_[4] }));
  FDRE \pwdn_timer_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[4]_i_1_n_6 ),
        .Q(\pwdn_timer_reg_n_0_[5] ),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[4]_i_1_n_5 ),
        .Q(pwdn_timer_reg[6]),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[4]_i_1_n_4 ),
        .Q(pwdn_timer_reg[7]),
        .R(hw_reset0));
  FDRE \pwdn_timer_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[8]_i_1_n_7 ),
        .Q(pwdn_timer_reg[8]),
        .R(hw_reset0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pwdn_timer_reg[8]_i_1 
       (.CI(\pwdn_timer_reg[4]_i_1_n_0 ),
        .CO({\pwdn_timer_reg[8]_i_1_n_0 ,\pwdn_timer_reg[8]_i_1_n_1 ,\pwdn_timer_reg[8]_i_1_n_2 ,\pwdn_timer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pwdn_timer_reg[8]_i_1_n_4 ,\pwdn_timer_reg[8]_i_1_n_5 ,\pwdn_timer_reg[8]_i_1_n_6 ,\pwdn_timer_reg[8]_i_1_n_7 }),
        .S(pwdn_timer_reg[11:8]));
  FDRE \pwdn_timer_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\pwdn_timer[0]_i_1_n_0 ),
        .D(\pwdn_timer_reg[8]_i_1_n_6 ),
        .Q(pwdn_timer_reg[9]),
        .R(hw_reset0));
  mb_usb_camera_controller_0_2_camera_controller_v1_0_S00_AXI u_axi_slave
       (.E(we_next),
        .SS(hw_reset),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_wready_reg_0(s00_axi_wready),
        .bram_addr(bram_addr),
        .bram_we(bram_we),
        .bram_wrdata(bram_wrdata),
        .cam_d(cam_d),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_scl(cam_scl),
        .cam_sda(cam_sda),
        .cam_vsync(cam_vsync),
        .hw_reset0(hw_reset0),
        .\pixel_addr_sync1_reg[0]_0 (\pixel_addr_sync1_reg[0] ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "camera_controller_v1_0_S00_AXI" *) 
module mb_usb_camera_controller_0_2_camera_controller_v1_0_S00_AXI
   (SS,
    E,
    bram_we,
    axi_awready_reg_0,
    hw_reset0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    cam_scl,
    s00_axi_bvalid,
    s00_axi_rvalid,
    bram_addr,
    cam_sda,
    bram_wrdata,
    s00_axi_rdata,
    cam_pclk,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_aresetn,
    \pixel_addr_sync1_reg[0]_0 ,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_rready,
    cam_d,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    cam_vsync,
    cam_href,
    s00_axi_wstrb);
  output [0:0]SS;
  output [0:0]E;
  output bram_we;
  output axi_awready_reg_0;
  output hw_reset0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output cam_scl;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [16:0]bram_addr;
  output cam_sda;
  output [7:0]bram_wrdata;
  output [31:0]s00_axi_rdata;
  input cam_pclk;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input \pixel_addr_sync1_reg[0]_0 ;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input [7:0]cam_d;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input cam_vsync;
  input cam_href;
  input [3:0]s00_axi_wstrb;

  wire [0:0]E;
  wire [0:0]SS;
  wire auto_capture_en;
  wire auto_capture_en_i_1_n_0;
  wire auto_capture_en_i_2_n_0;
  wire auto_capture_en_i_3_n_0;
  wire auto_capture_en_i_4_n_0;
  wire auto_capture_en_i_5_n_0;
  wire auto_init_start_i_2_n_0;
  wire auto_init_start_i_3_n_0;
  wire auto_init_start_i_4_n_0;
  wire auto_init_start_i_5_n_0;
  wire auto_init_start_i_6_n_0;
  wire auto_init_start_i_7_n_0;
  wire auto_init_start_i_8_n_0;
  wire auto_init_start_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire [4:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire boot_init_done;
  wire \boot_timer[0]_i_1_n_0 ;
  wire \boot_timer[0]_i_3_n_0 ;
  wire \boot_timer[0]_i_4_n_0 ;
  wire \boot_timer[0]_i_5_n_0 ;
  wire \boot_timer[0]_i_6_n_0 ;
  wire \boot_timer[0]_i_7_n_0 ;
  wire [27:0]boot_timer_reg;
  wire \boot_timer_reg[0]_i_2_n_0 ;
  wire \boot_timer_reg[0]_i_2_n_1 ;
  wire \boot_timer_reg[0]_i_2_n_2 ;
  wire \boot_timer_reg[0]_i_2_n_3 ;
  wire \boot_timer_reg[0]_i_2_n_4 ;
  wire \boot_timer_reg[0]_i_2_n_5 ;
  wire \boot_timer_reg[0]_i_2_n_6 ;
  wire \boot_timer_reg[0]_i_2_n_7 ;
  wire \boot_timer_reg[12]_i_1_n_0 ;
  wire \boot_timer_reg[12]_i_1_n_1 ;
  wire \boot_timer_reg[12]_i_1_n_2 ;
  wire \boot_timer_reg[12]_i_1_n_3 ;
  wire \boot_timer_reg[12]_i_1_n_4 ;
  wire \boot_timer_reg[12]_i_1_n_5 ;
  wire \boot_timer_reg[12]_i_1_n_6 ;
  wire \boot_timer_reg[12]_i_1_n_7 ;
  wire \boot_timer_reg[16]_i_1_n_0 ;
  wire \boot_timer_reg[16]_i_1_n_1 ;
  wire \boot_timer_reg[16]_i_1_n_2 ;
  wire \boot_timer_reg[16]_i_1_n_3 ;
  wire \boot_timer_reg[16]_i_1_n_4 ;
  wire \boot_timer_reg[16]_i_1_n_5 ;
  wire \boot_timer_reg[16]_i_1_n_6 ;
  wire \boot_timer_reg[16]_i_1_n_7 ;
  wire \boot_timer_reg[20]_i_1_n_0 ;
  wire \boot_timer_reg[20]_i_1_n_1 ;
  wire \boot_timer_reg[20]_i_1_n_2 ;
  wire \boot_timer_reg[20]_i_1_n_3 ;
  wire \boot_timer_reg[20]_i_1_n_4 ;
  wire \boot_timer_reg[20]_i_1_n_5 ;
  wire \boot_timer_reg[20]_i_1_n_6 ;
  wire \boot_timer_reg[20]_i_1_n_7 ;
  wire \boot_timer_reg[24]_i_1_n_1 ;
  wire \boot_timer_reg[24]_i_1_n_2 ;
  wire \boot_timer_reg[24]_i_1_n_3 ;
  wire \boot_timer_reg[24]_i_1_n_4 ;
  wire \boot_timer_reg[24]_i_1_n_5 ;
  wire \boot_timer_reg[24]_i_1_n_6 ;
  wire \boot_timer_reg[24]_i_1_n_7 ;
  wire \boot_timer_reg[4]_i_1_n_0 ;
  wire \boot_timer_reg[4]_i_1_n_1 ;
  wire \boot_timer_reg[4]_i_1_n_2 ;
  wire \boot_timer_reg[4]_i_1_n_3 ;
  wire \boot_timer_reg[4]_i_1_n_4 ;
  wire \boot_timer_reg[4]_i_1_n_5 ;
  wire \boot_timer_reg[4]_i_1_n_6 ;
  wire \boot_timer_reg[4]_i_1_n_7 ;
  wire \boot_timer_reg[8]_i_1_n_0 ;
  wire \boot_timer_reg[8]_i_1_n_1 ;
  wire \boot_timer_reg[8]_i_1_n_2 ;
  wire \boot_timer_reg[8]_i_1_n_3 ;
  wire \boot_timer_reg[8]_i_1_n_4 ;
  wire \boot_timer_reg[8]_i_1_n_5 ;
  wire \boot_timer_reg[8]_i_1_n_6 ;
  wire \boot_timer_reg[8]_i_1_n_7 ;
  wire [16:0]bram_addr;
  wire bram_we;
  wire [7:0]bram_wrdata;
  wire [7:0]cam_d;
  wire cam_href;
  wire cam_pclk;
  wire cam_scl;
  wire cam_sda;
  wire cam_vsync;
  wire capture_en_sync1;
  wire capture_en_sync1_i_1_n_0;
  wire capture_en_sync2;
  wire capture_en_sync2_i_1_n_0;
  wire frame_count0;
  wire \frame_count[0]_i_3_n_0 ;
  wire [15:0]frame_count_reg;
  wire \frame_count_reg[0]_i_2_n_0 ;
  wire \frame_count_reg[0]_i_2_n_1 ;
  wire \frame_count_reg[0]_i_2_n_2 ;
  wire \frame_count_reg[0]_i_2_n_3 ;
  wire \frame_count_reg[0]_i_2_n_4 ;
  wire \frame_count_reg[0]_i_2_n_5 ;
  wire \frame_count_reg[0]_i_2_n_6 ;
  wire \frame_count_reg[0]_i_2_n_7 ;
  wire \frame_count_reg[12]_i_1_n_1 ;
  wire \frame_count_reg[12]_i_1_n_2 ;
  wire \frame_count_reg[12]_i_1_n_3 ;
  wire \frame_count_reg[12]_i_1_n_4 ;
  wire \frame_count_reg[12]_i_1_n_5 ;
  wire \frame_count_reg[12]_i_1_n_6 ;
  wire \frame_count_reg[12]_i_1_n_7 ;
  wire \frame_count_reg[4]_i_1_n_0 ;
  wire \frame_count_reg[4]_i_1_n_1 ;
  wire \frame_count_reg[4]_i_1_n_2 ;
  wire \frame_count_reg[4]_i_1_n_3 ;
  wire \frame_count_reg[4]_i_1_n_4 ;
  wire \frame_count_reg[4]_i_1_n_5 ;
  wire \frame_count_reg[4]_i_1_n_6 ;
  wire \frame_count_reg[4]_i_1_n_7 ;
  wire \frame_count_reg[8]_i_1_n_0 ;
  wire \frame_count_reg[8]_i_1_n_1 ;
  wire \frame_count_reg[8]_i_1_n_2 ;
  wire \frame_count_reg[8]_i_1_n_3 ;
  wire \frame_count_reg[8]_i_1_n_4 ;
  wire \frame_count_reg[8]_i_1_n_5 ;
  wire \frame_count_reg[8]_i_1_n_6 ;
  wire \frame_count_reg[8]_i_1_n_7 ;
  wire frame_done;
  wire frame_done_0;
  wire frame_done_prev;
  wire frame_done_sync1;
  wire hw_reset0;
  wire [31:7]p_0_in;
  wire [16:0]pixel_addr_sync1;
  wire \pixel_addr_sync1_reg[0]_0 ;
  wire [16:0]pixel_addr_sync2;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire slv_reg_wren__0;
  wire soft_reset;
  wire u_cam_init_n_2;
  wire u_cam_init_n_4;
  wire [3:3]\NLW_boot_timer_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_frame_count_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFBAA0000)) 
    auto_capture_en_i_1
       (.I0(boot_timer_reg[27]),
        .I1(auto_capture_en_i_2_n_0),
        .I2(boot_timer_reg[25]),
        .I3(boot_timer_reg[26]),
        .I4(boot_init_done),
        .I5(auto_capture_en),
        .O(auto_capture_en_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBABABAAAB)) 
    auto_capture_en_i_2
       (.I0(auto_capture_en_i_3_n_0),
        .I1(auto_capture_en_i_4_n_0),
        .I2(\boot_timer[0]_i_6_n_0 ),
        .I3(boot_timer_reg[8]),
        .I4(auto_init_start_i_4_n_0),
        .I5(auto_capture_en_i_5_n_0),
        .O(auto_capture_en_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFBFBFFF)) 
    auto_capture_en_i_3
       (.I0(\boot_timer[0]_i_3_n_0 ),
        .I1(boot_timer_reg[24]),
        .I2(boot_timer_reg[20]),
        .I3(boot_timer_reg[18]),
        .I4(boot_timer_reg[19]),
        .O(auto_capture_en_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    auto_capture_en_i_4
       (.I0(boot_timer_reg[17]),
        .I1(boot_timer_reg[19]),
        .O(auto_capture_en_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    auto_capture_en_i_5
       (.I0(boot_timer_reg[14]),
        .I1(boot_timer_reg[15]),
        .I2(boot_timer_reg[13]),
        .I3(boot_timer_reg[16]),
        .O(auto_capture_en_i_5_n_0));
  FDRE auto_capture_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(auto_capture_en_i_1_n_0),
        .Q(auto_capture_en),
        .R(SS));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    auto_init_start_i_2
       (.I0(auto_init_start_i_4_n_0),
        .I1(auto_init_start_i_5_n_0),
        .I2(boot_timer_reg[9]),
        .I3(boot_timer_reg[12]),
        .I4(boot_timer_reg[19]),
        .I5(boot_timer_reg[18]),
        .O(auto_init_start_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    auto_init_start_i_3
       (.I0(boot_timer_reg[17]),
        .I1(boot_timer_reg[27]),
        .I2(boot_timer_reg[22]),
        .I3(boot_timer_reg[26]),
        .I4(auto_init_start_i_6_n_0),
        .I5(auto_init_start_i_7_n_0),
        .O(auto_init_start_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    auto_init_start_i_4
       (.I0(boot_timer_reg[5]),
        .I1(boot_timer_reg[3]),
        .I2(boot_timer_reg[2]),
        .I3(boot_timer_reg[4]),
        .I4(auto_init_start_i_8_n_0),
        .O(auto_init_start_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    auto_init_start_i_5
       (.I0(boot_timer_reg[13]),
        .I1(boot_timer_reg[16]),
        .I2(boot_timer_reg[20]),
        .I3(boot_timer_reg[24]),
        .O(auto_init_start_i_5_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    auto_init_start_i_6
       (.I0(boot_timer_reg[14]),
        .I1(boot_timer_reg[15]),
        .I2(boot_timer_reg[21]),
        .I3(boot_timer_reg[11]),
        .O(auto_init_start_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    auto_init_start_i_7
       (.I0(boot_timer_reg[8]),
        .I1(boot_timer_reg[23]),
        .I2(boot_timer_reg[10]),
        .I3(boot_timer_reg[25]),
        .O(auto_init_start_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    auto_init_start_i_8
       (.I0(boot_timer_reg[6]),
        .I1(boot_timer_reg[0]),
        .I2(boot_timer_reg[7]),
        .I3(boot_timer_reg[1]),
        .O(auto_init_start_i_8_n_0));
  FDRE auto_init_start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(u_cam_init_n_2),
        .Q(auto_init_start_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(hw_reset0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(hw_reset0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(hw_reset0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(hw_reset0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(axi_awready_reg_0),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(axi_awready_reg_0),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(axi_awready_reg_0),
        .I4(axi_awaddr[4]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(hw_reset0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(hw_reset0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(axi_awaddr[4]),
        .R(hw_reset0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(hw_reset0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(hw_reset0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(hw_reset0));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \axi_rdata[10]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(pixel_addr_sync2[10]),
        .I4(\axi_rdata[10]_i_2_n_0 ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \axi_rdata[10]_i_2 
       (.I0(sel0[0]),
        .I1(\slv_reg0_reg_n_0_[10] ),
        .I2(sel0[1]),
        .I3(slv_reg2[10]),
        .I4(frame_count_reg[10]),
        .I5(sel0[2]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \axi_rdata[11]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(pixel_addr_sync2[11]),
        .I4(\axi_rdata[11]_i_2_n_0 ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \axi_rdata[11]_i_2 
       (.I0(sel0[0]),
        .I1(\slv_reg0_reg_n_0_[11] ),
        .I2(sel0[1]),
        .I3(slv_reg2[11]),
        .I4(frame_count_reg[11]),
        .I5(sel0[2]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \axi_rdata[12]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(pixel_addr_sync2[12]),
        .I4(\axi_rdata[12]_i_2_n_0 ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \axi_rdata[12]_i_2 
       (.I0(sel0[0]),
        .I1(\slv_reg0_reg_n_0_[12] ),
        .I2(sel0[1]),
        .I3(slv_reg2[12]),
        .I4(frame_count_reg[12]),
        .I5(sel0[2]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \axi_rdata[13]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(pixel_addr_sync2[13]),
        .I4(\axi_rdata[13]_i_2_n_0 ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \axi_rdata[13]_i_2 
       (.I0(sel0[0]),
        .I1(\slv_reg0_reg_n_0_[13] ),
        .I2(sel0[1]),
        .I3(slv_reg2[13]),
        .I4(frame_count_reg[13]),
        .I5(sel0[2]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \axi_rdata[14]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(pixel_addr_sync2[14]),
        .I4(\axi_rdata[14]_i_2_n_0 ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \axi_rdata[14]_i_2 
       (.I0(sel0[0]),
        .I1(\slv_reg0_reg_n_0_[14] ),
        .I2(sel0[1]),
        .I3(slv_reg2[14]),
        .I4(frame_count_reg[14]),
        .I5(sel0[2]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \axi_rdata[15]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(pixel_addr_sync2[15]),
        .I4(\axi_rdata[15]_i_2_n_0 ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \axi_rdata[15]_i_2 
       (.I0(sel0[0]),
        .I1(\slv_reg0_reg_n_0_[15] ),
        .I2(sel0[1]),
        .I3(slv_reg2[15]),
        .I4(frame_count_reg[15]),
        .I5(sel0[2]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h03030B0800000B08)) 
    \axi_rdata[16]_i_1 
       (.I0(pixel_addr_sync2[16]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(\slv_reg0_reg_n_0_[16] ),
        .I4(sel0[1]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg0_reg_n_0_[17] ),
        .I1(sel0[1]),
        .I2(slv_reg2[17]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg0_reg_n_0_[18] ),
        .I1(sel0[1]),
        .I2(slv_reg2[18]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg0_reg_n_0_[19] ),
        .I1(sel0[1]),
        .I2(slv_reg2[19]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'h33003B08)) 
    \axi_rdata[1]_i_1 
       (.I0(pixel_addr_sync2[1]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(\axi_rdata[1]_i_2_n_0 ),
        .I4(sel0[0]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(frame_count_reg[1]),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(frame_done_0),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg0_reg_n_0_[20] ),
        .I1(sel0[1]),
        .I2(slv_reg2[20]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg0_reg_n_0_[21] ),
        .I1(sel0[1]),
        .I2(slv_reg2[21]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg0_reg_n_0_[22] ),
        .I1(sel0[1]),
        .I2(slv_reg2[22]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg0_reg_n_0_[23] ),
        .I1(sel0[1]),
        .I2(slv_reg2[23]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg0_reg_n_0_[24] ),
        .I1(sel0[1]),
        .I2(slv_reg2[24]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg0_reg_n_0_[25] ),
        .I1(sel0[1]),
        .I2(slv_reg2[25]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg0_reg_n_0_[26] ),
        .I1(sel0[1]),
        .I2(slv_reg2[26]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg2[27]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[27] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg0_reg_n_0_[28] ),
        .I1(sel0[1]),
        .I2(slv_reg2[28]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg0_reg_n_0_[29] ),
        .I1(sel0[1]),
        .I2(slv_reg2[29]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'h100010FF10001000)) 
    \axi_rdata[2]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(pixel_addr_sync2[2]),
        .I3(sel0[2]),
        .I4(\axi_rdata[2]_i_2_n_0 ),
        .I5(\axi_rdata[2]_i_3_n_0 ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'h00000000ABAB00FF)) 
    \axi_rdata[2]_i_2 
       (.I0(frame_done_0),
        .I1(auto_capture_en),
        .I2(\slv_reg0_reg_n_0_[0] ),
        .I3(soft_reset),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBBF3)) 
    \axi_rdata[2]_i_3 
       (.I0(frame_count_reg[2]),
        .I1(sel0[1]),
        .I2(slv_reg2[2]),
        .I3(sel0[0]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(sel0[1]),
        .I2(slv_reg2[30]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[30]));
  LUT4 #(
    .INIT(16'h4000)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_rvalid),
        .I1(axi_arready_reg_0),
        .I2(s00_axi_arvalid),
        .I3(s00_axi_aresetn),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg2[31]),
        .I1(sel0[1]),
        .I2(\slv_reg0_reg_n_0_[31] ),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \axi_rdata[3]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(pixel_addr_sync2[3]),
        .I4(\axi_rdata[3]_i_2_n_0 ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \axi_rdata[3]_i_2 
       (.I0(sel0[0]),
        .I1(\slv_reg0_reg_n_0_[3] ),
        .I2(sel0[1]),
        .I3(slv_reg2[3]),
        .I4(frame_count_reg[3]),
        .I5(sel0[2]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \axi_rdata[4]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(pixel_addr_sync2[4]),
        .I4(\axi_rdata[4]_i_2_n_0 ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \axi_rdata[4]_i_2 
       (.I0(sel0[0]),
        .I1(\slv_reg0_reg_n_0_[4] ),
        .I2(sel0[1]),
        .I3(slv_reg2[4]),
        .I4(frame_count_reg[4]),
        .I5(sel0[2]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \axi_rdata[5]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(pixel_addr_sync2[5]),
        .I4(\axi_rdata[5]_i_2_n_0 ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \axi_rdata[5]_i_2 
       (.I0(sel0[0]),
        .I1(\slv_reg0_reg_n_0_[5] ),
        .I2(sel0[1]),
        .I3(slv_reg2[5]),
        .I4(frame_count_reg[5]),
        .I5(sel0[2]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \axi_rdata[6]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(pixel_addr_sync2[6]),
        .I4(\axi_rdata[6]_i_2_n_0 ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \axi_rdata[6]_i_2 
       (.I0(sel0[0]),
        .I1(\slv_reg0_reg_n_0_[6] ),
        .I2(sel0[1]),
        .I3(slv_reg2[6]),
        .I4(frame_count_reg[6]),
        .I5(sel0[2]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \axi_rdata[7]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(pixel_addr_sync2[7]),
        .I4(\axi_rdata[7]_i_2_n_0 ),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \axi_rdata[7]_i_2 
       (.I0(sel0[0]),
        .I1(\slv_reg0_reg_n_0_[7] ),
        .I2(sel0[1]),
        .I3(slv_reg2[7]),
        .I4(frame_count_reg[7]),
        .I5(sel0[2]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \axi_rdata[8]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(pixel_addr_sync2[8]),
        .I4(\axi_rdata[8]_i_2_n_0 ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \axi_rdata[8]_i_2 
       (.I0(sel0[0]),
        .I1(\slv_reg0_reg_n_0_[8] ),
        .I2(sel0[1]),
        .I3(slv_reg2[8]),
        .I4(frame_count_reg[8]),
        .I5(sel0[2]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0200)) 
    \axi_rdata[9]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(pixel_addr_sync2[9]),
        .I4(\axi_rdata[9]_i_2_n_0 ),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'h00000000F4A45404)) 
    \axi_rdata[9]_i_2 
       (.I0(sel0[0]),
        .I1(\slv_reg0_reg_n_0_[9] ),
        .I2(sel0[1]),
        .I3(slv_reg2[9]),
        .I4(frame_count_reg[9]),
        .I5(sel0[2]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(1'b0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(1'b0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(1'b0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(1'b0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(1'b0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(1'b0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(1'b0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(1'b0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(1'b0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(1'b0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(1'b0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(1'b0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(1'b0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(1'b0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(1'b0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(1'b0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(1'b0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(1'b0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(1'b0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(1'b0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(1'b0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(1'b0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(1'b0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(1'b0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(1'b0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(1'b0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(1'b0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(1'b0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(1'b0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(1'b0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(1'b0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    axi_rvalid_i_1
       (.I0(s00_axi_rready),
        .I1(s00_axi_rvalid),
        .I2(axi_arready_reg_0),
        .I3(s00_axi_arvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(hw_reset0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(hw_reset0));
  FDRE boot_init_done_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(u_cam_init_n_4),
        .Q(boot_init_done),
        .R(SS));
  LUT6 #(
    .INIT(64'h55155555FFFFFFFF)) 
    \boot_timer[0]_i_1 
       (.I0(boot_timer_reg[26]),
        .I1(boot_timer_reg[24]),
        .I2(boot_timer_reg[25]),
        .I3(\boot_timer[0]_i_3_n_0 ),
        .I4(\boot_timer[0]_i_4_n_0 ),
        .I5(boot_timer_reg[27]),
        .O(\boot_timer[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \boot_timer[0]_i_3 
       (.I0(boot_timer_reg[22]),
        .I1(boot_timer_reg[21]),
        .I2(boot_timer_reg[23]),
        .O(\boot_timer[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAFEAAAAAAAA)) 
    \boot_timer[0]_i_4 
       (.I0(boot_timer_reg[20]),
        .I1(boot_timer_reg[13]),
        .I2(\boot_timer[0]_i_6_n_0 ),
        .I3(\boot_timer[0]_i_7_n_0 ),
        .I4(boot_timer_reg[18]),
        .I5(boot_timer_reg[19]),
        .O(\boot_timer[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \boot_timer[0]_i_5 
       (.I0(boot_timer_reg[0]),
        .O(\boot_timer[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \boot_timer[0]_i_6 
       (.I0(boot_timer_reg[10]),
        .I1(boot_timer_reg[11]),
        .I2(boot_timer_reg[9]),
        .I3(boot_timer_reg[12]),
        .O(\boot_timer[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \boot_timer[0]_i_7 
       (.I0(boot_timer_reg[14]),
        .I1(boot_timer_reg[15]),
        .I2(boot_timer_reg[17]),
        .I3(boot_timer_reg[16]),
        .O(\boot_timer[0]_i_7_n_0 ));
  FDRE \boot_timer_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[0]_i_2_n_7 ),
        .Q(boot_timer_reg[0]),
        .R(SS));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \boot_timer_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\boot_timer_reg[0]_i_2_n_0 ,\boot_timer_reg[0]_i_2_n_1 ,\boot_timer_reg[0]_i_2_n_2 ,\boot_timer_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\boot_timer_reg[0]_i_2_n_4 ,\boot_timer_reg[0]_i_2_n_5 ,\boot_timer_reg[0]_i_2_n_6 ,\boot_timer_reg[0]_i_2_n_7 }),
        .S({boot_timer_reg[3:1],\boot_timer[0]_i_5_n_0 }));
  FDRE \boot_timer_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[8]_i_1_n_5 ),
        .Q(boot_timer_reg[10]),
        .R(SS));
  FDRE \boot_timer_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[8]_i_1_n_4 ),
        .Q(boot_timer_reg[11]),
        .R(SS));
  FDRE \boot_timer_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[12]_i_1_n_7 ),
        .Q(boot_timer_reg[12]),
        .R(SS));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \boot_timer_reg[12]_i_1 
       (.CI(\boot_timer_reg[8]_i_1_n_0 ),
        .CO({\boot_timer_reg[12]_i_1_n_0 ,\boot_timer_reg[12]_i_1_n_1 ,\boot_timer_reg[12]_i_1_n_2 ,\boot_timer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\boot_timer_reg[12]_i_1_n_4 ,\boot_timer_reg[12]_i_1_n_5 ,\boot_timer_reg[12]_i_1_n_6 ,\boot_timer_reg[12]_i_1_n_7 }),
        .S(boot_timer_reg[15:12]));
  FDRE \boot_timer_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[12]_i_1_n_6 ),
        .Q(boot_timer_reg[13]),
        .R(SS));
  FDRE \boot_timer_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[12]_i_1_n_5 ),
        .Q(boot_timer_reg[14]),
        .R(SS));
  FDRE \boot_timer_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[12]_i_1_n_4 ),
        .Q(boot_timer_reg[15]),
        .R(SS));
  FDRE \boot_timer_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[16]_i_1_n_7 ),
        .Q(boot_timer_reg[16]),
        .R(SS));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \boot_timer_reg[16]_i_1 
       (.CI(\boot_timer_reg[12]_i_1_n_0 ),
        .CO({\boot_timer_reg[16]_i_1_n_0 ,\boot_timer_reg[16]_i_1_n_1 ,\boot_timer_reg[16]_i_1_n_2 ,\boot_timer_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\boot_timer_reg[16]_i_1_n_4 ,\boot_timer_reg[16]_i_1_n_5 ,\boot_timer_reg[16]_i_1_n_6 ,\boot_timer_reg[16]_i_1_n_7 }),
        .S(boot_timer_reg[19:16]));
  FDRE \boot_timer_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[16]_i_1_n_6 ),
        .Q(boot_timer_reg[17]),
        .R(SS));
  FDRE \boot_timer_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[16]_i_1_n_5 ),
        .Q(boot_timer_reg[18]),
        .R(SS));
  FDRE \boot_timer_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[16]_i_1_n_4 ),
        .Q(boot_timer_reg[19]),
        .R(SS));
  FDRE \boot_timer_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[0]_i_2_n_6 ),
        .Q(boot_timer_reg[1]),
        .R(SS));
  FDRE \boot_timer_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[20]_i_1_n_7 ),
        .Q(boot_timer_reg[20]),
        .R(SS));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \boot_timer_reg[20]_i_1 
       (.CI(\boot_timer_reg[16]_i_1_n_0 ),
        .CO({\boot_timer_reg[20]_i_1_n_0 ,\boot_timer_reg[20]_i_1_n_1 ,\boot_timer_reg[20]_i_1_n_2 ,\boot_timer_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\boot_timer_reg[20]_i_1_n_4 ,\boot_timer_reg[20]_i_1_n_5 ,\boot_timer_reg[20]_i_1_n_6 ,\boot_timer_reg[20]_i_1_n_7 }),
        .S(boot_timer_reg[23:20]));
  FDRE \boot_timer_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[20]_i_1_n_6 ),
        .Q(boot_timer_reg[21]),
        .R(SS));
  FDRE \boot_timer_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[20]_i_1_n_5 ),
        .Q(boot_timer_reg[22]),
        .R(SS));
  FDRE \boot_timer_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[20]_i_1_n_4 ),
        .Q(boot_timer_reg[23]),
        .R(SS));
  FDRE \boot_timer_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[24]_i_1_n_7 ),
        .Q(boot_timer_reg[24]),
        .R(SS));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \boot_timer_reg[24]_i_1 
       (.CI(\boot_timer_reg[20]_i_1_n_0 ),
        .CO({\NLW_boot_timer_reg[24]_i_1_CO_UNCONNECTED [3],\boot_timer_reg[24]_i_1_n_1 ,\boot_timer_reg[24]_i_1_n_2 ,\boot_timer_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\boot_timer_reg[24]_i_1_n_4 ,\boot_timer_reg[24]_i_1_n_5 ,\boot_timer_reg[24]_i_1_n_6 ,\boot_timer_reg[24]_i_1_n_7 }),
        .S(boot_timer_reg[27:24]));
  FDRE \boot_timer_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[24]_i_1_n_6 ),
        .Q(boot_timer_reg[25]),
        .R(SS));
  FDRE \boot_timer_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[24]_i_1_n_5 ),
        .Q(boot_timer_reg[26]),
        .R(SS));
  FDRE \boot_timer_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[24]_i_1_n_4 ),
        .Q(boot_timer_reg[27]),
        .R(SS));
  FDRE \boot_timer_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[0]_i_2_n_5 ),
        .Q(boot_timer_reg[2]),
        .R(SS));
  FDRE \boot_timer_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[0]_i_2_n_4 ),
        .Q(boot_timer_reg[3]),
        .R(SS));
  FDRE \boot_timer_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[4]_i_1_n_7 ),
        .Q(boot_timer_reg[4]),
        .R(SS));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \boot_timer_reg[4]_i_1 
       (.CI(\boot_timer_reg[0]_i_2_n_0 ),
        .CO({\boot_timer_reg[4]_i_1_n_0 ,\boot_timer_reg[4]_i_1_n_1 ,\boot_timer_reg[4]_i_1_n_2 ,\boot_timer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\boot_timer_reg[4]_i_1_n_4 ,\boot_timer_reg[4]_i_1_n_5 ,\boot_timer_reg[4]_i_1_n_6 ,\boot_timer_reg[4]_i_1_n_7 }),
        .S(boot_timer_reg[7:4]));
  FDRE \boot_timer_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[4]_i_1_n_6 ),
        .Q(boot_timer_reg[5]),
        .R(SS));
  FDRE \boot_timer_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[4]_i_1_n_5 ),
        .Q(boot_timer_reg[6]),
        .R(SS));
  FDRE \boot_timer_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[4]_i_1_n_4 ),
        .Q(boot_timer_reg[7]),
        .R(SS));
  FDRE \boot_timer_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[8]_i_1_n_7 ),
        .Q(boot_timer_reg[8]),
        .R(SS));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \boot_timer_reg[8]_i_1 
       (.CI(\boot_timer_reg[4]_i_1_n_0 ),
        .CO({\boot_timer_reg[8]_i_1_n_0 ,\boot_timer_reg[8]_i_1_n_1 ,\boot_timer_reg[8]_i_1_n_2 ,\boot_timer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\boot_timer_reg[8]_i_1_n_4 ,\boot_timer_reg[8]_i_1_n_5 ,\boot_timer_reg[8]_i_1_n_6 ,\boot_timer_reg[8]_i_1_n_7 }),
        .S(boot_timer_reg[11:8]));
  FDRE \boot_timer_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\boot_timer[0]_i_1_n_0 ),
        .D(\boot_timer_reg[8]_i_1_n_6 ),
        .Q(boot_timer_reg[9]),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    capture_en_sync1_i_1
       (.I0(soft_reset),
        .I1(s00_axi_aresetn),
        .I2(auto_capture_en),
        .I3(\slv_reg0_reg_n_0_[0] ),
        .O(capture_en_sync1_i_1_n_0));
  FDRE capture_en_sync1_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .D(capture_en_sync1_i_1_n_0),
        .Q(capture_en_sync1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    capture_en_sync2_i_1
       (.I0(soft_reset),
        .I1(s00_axi_aresetn),
        .I2(capture_en_sync1),
        .O(capture_en_sync2_i_1_n_0));
  FDRE capture_en_sync2_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .D(capture_en_sync2_i_1_n_0),
        .Q(capture_en_sync2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \frame_count[0]_i_1 
       (.I0(frame_done_0),
        .I1(frame_done_prev),
        .O(frame_count0));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_count[0]_i_3 
       (.I0(frame_count_reg[0]),
        .O(\frame_count[0]_i_3_n_0 ));
  FDRE \frame_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[0]_i_2_n_7 ),
        .Q(frame_count_reg[0]),
        .R(SS));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\frame_count_reg[0]_i_2_n_0 ,\frame_count_reg[0]_i_2_n_1 ,\frame_count_reg[0]_i_2_n_2 ,\frame_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frame_count_reg[0]_i_2_n_4 ,\frame_count_reg[0]_i_2_n_5 ,\frame_count_reg[0]_i_2_n_6 ,\frame_count_reg[0]_i_2_n_7 }),
        .S({frame_count_reg[3:1],\frame_count[0]_i_3_n_0 }));
  FDRE \frame_count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[8]_i_1_n_5 ),
        .Q(frame_count_reg[10]),
        .R(SS));
  FDRE \frame_count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[8]_i_1_n_4 ),
        .Q(frame_count_reg[11]),
        .R(SS));
  FDRE \frame_count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[12]_i_1_n_7 ),
        .Q(frame_count_reg[12]),
        .R(SS));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_count_reg[12]_i_1 
       (.CI(\frame_count_reg[8]_i_1_n_0 ),
        .CO({\NLW_frame_count_reg[12]_i_1_CO_UNCONNECTED [3],\frame_count_reg[12]_i_1_n_1 ,\frame_count_reg[12]_i_1_n_2 ,\frame_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_count_reg[12]_i_1_n_4 ,\frame_count_reg[12]_i_1_n_5 ,\frame_count_reg[12]_i_1_n_6 ,\frame_count_reg[12]_i_1_n_7 }),
        .S(frame_count_reg[15:12]));
  FDRE \frame_count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[12]_i_1_n_6 ),
        .Q(frame_count_reg[13]),
        .R(SS));
  FDRE \frame_count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[12]_i_1_n_5 ),
        .Q(frame_count_reg[14]),
        .R(SS));
  FDRE \frame_count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[12]_i_1_n_4 ),
        .Q(frame_count_reg[15]),
        .R(SS));
  FDRE \frame_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[0]_i_2_n_6 ),
        .Q(frame_count_reg[1]),
        .R(SS));
  FDRE \frame_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[0]_i_2_n_5 ),
        .Q(frame_count_reg[2]),
        .R(SS));
  FDRE \frame_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[0]_i_2_n_4 ),
        .Q(frame_count_reg[3]),
        .R(SS));
  FDRE \frame_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[4]_i_1_n_7 ),
        .Q(frame_count_reg[4]),
        .R(SS));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_count_reg[4]_i_1 
       (.CI(\frame_count_reg[0]_i_2_n_0 ),
        .CO({\frame_count_reg[4]_i_1_n_0 ,\frame_count_reg[4]_i_1_n_1 ,\frame_count_reg[4]_i_1_n_2 ,\frame_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_count_reg[4]_i_1_n_4 ,\frame_count_reg[4]_i_1_n_5 ,\frame_count_reg[4]_i_1_n_6 ,\frame_count_reg[4]_i_1_n_7 }),
        .S(frame_count_reg[7:4]));
  FDRE \frame_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[4]_i_1_n_6 ),
        .Q(frame_count_reg[5]),
        .R(SS));
  FDRE \frame_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[4]_i_1_n_5 ),
        .Q(frame_count_reg[6]),
        .R(SS));
  FDRE \frame_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[4]_i_1_n_4 ),
        .Q(frame_count_reg[7]),
        .R(SS));
  FDRE \frame_count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[8]_i_1_n_7 ),
        .Q(frame_count_reg[8]),
        .R(SS));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \frame_count_reg[8]_i_1 
       (.CI(\frame_count_reg[4]_i_1_n_0 ),
        .CO({\frame_count_reg[8]_i_1_n_0 ,\frame_count_reg[8]_i_1_n_1 ,\frame_count_reg[8]_i_1_n_2 ,\frame_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_count_reg[8]_i_1_n_4 ,\frame_count_reg[8]_i_1_n_5 ,\frame_count_reg[8]_i_1_n_6 ,\frame_count_reg[8]_i_1_n_7 }),
        .S(frame_count_reg[11:8]));
  FDRE \frame_count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(frame_count0),
        .D(\frame_count_reg[8]_i_1_n_6 ),
        .Q(frame_count_reg[9]),
        .R(SS));
  FDRE frame_done_prev_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(frame_done_0),
        .Q(frame_done_prev),
        .R(SS));
  FDRE frame_done_sync1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(frame_done),
        .Q(frame_done_sync1),
        .R(SS));
  FDRE frame_done_sync2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(frame_done_sync1),
        .Q(frame_done_0),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[0]),
        .Q(pixel_addr_sync1[0]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[10]),
        .Q(pixel_addr_sync1[10]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[11]),
        .Q(pixel_addr_sync1[11]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[12]),
        .Q(pixel_addr_sync1[12]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[13]),
        .Q(pixel_addr_sync1[13]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[14]),
        .Q(pixel_addr_sync1[14]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[15]),
        .Q(pixel_addr_sync1[15]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[16]),
        .Q(pixel_addr_sync1[16]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[1]),
        .Q(pixel_addr_sync1[1]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[2]),
        .Q(pixel_addr_sync1[2]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[3]),
        .Q(pixel_addr_sync1[3]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[4]),
        .Q(pixel_addr_sync1[4]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[5]),
        .Q(pixel_addr_sync1[5]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[6]),
        .Q(pixel_addr_sync1[6]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[7]),
        .Q(pixel_addr_sync1[7]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[8]),
        .Q(pixel_addr_sync1[8]),
        .R(SS));
  FDRE \pixel_addr_sync1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(bram_addr[9]),
        .Q(pixel_addr_sync1[9]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[0]),
        .Q(pixel_addr_sync2[0]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[10]),
        .Q(pixel_addr_sync2[10]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[11]),
        .Q(pixel_addr_sync2[11]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[12]),
        .Q(pixel_addr_sync2[12]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[13]),
        .Q(pixel_addr_sync2[13]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[14]),
        .Q(pixel_addr_sync2[14]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[15]),
        .Q(pixel_addr_sync2[15]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[16]),
        .Q(pixel_addr_sync2[16]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[1]),
        .Q(pixel_addr_sync2[1]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[2]),
        .Q(pixel_addr_sync2[2]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[3]),
        .Q(pixel_addr_sync2[3]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[4]),
        .Q(pixel_addr_sync2[4]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[5]),
        .Q(pixel_addr_sync2[5]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[6]),
        .Q(pixel_addr_sync2[6]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[7]),
        .Q(pixel_addr_sync2[7]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[8]),
        .Q(pixel_addr_sync2[8]),
        .R(SS));
  FDRE \pixel_addr_sync2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pixel_addr_sync1[9]),
        .Q(pixel_addr_sync2[9]),
        .R(SS));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[3]),
        .O(p_0_in[15]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[3]),
        .O(p_0_in[23]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[3]),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[3]),
        .O(p_0_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(soft_reset),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(hw_reset0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_0_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(hw_reset0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(hw_reset0));
  FDSE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .S(hw_reset0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(hw_reset0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(hw_reset0));
  mb_usb_camera_controller_0_2_cam_init u_cam_init
       (.D(reg_data_out[0]),
        .\FSM_onehot_curr_state_reg[0]_0 (SS),
        .Q({soft_reset,\slv_reg0_reg_n_0_[1] ,\slv_reg0_reg_n_0_[0] }),
        .auto_init_start_reg(u_cam_init_n_4),
        .auto_init_start_reg_0(auto_init_start_i_2_n_0),
        .auto_init_start_reg_1(auto_init_start_i_3_n_0),
        .auto_init_start_reg_2(auto_init_start_reg_n_0),
        .\axi_rdata_reg[0] (pixel_addr_sync2[0]),
        .\axi_rdata_reg[0]_0 (slv_reg2[0]),
        .boot_init_done(boot_init_done),
        .cam_scl(cam_scl),
        .cam_sda(cam_sda),
        .frame_count_reg(frame_count_reg[0]),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sel0(sel0),
        .\slv_reg0_reg[2] (u_cam_init_n_2));
  mb_usb_camera_controller_0_2_ov7670_capture u_capture
       (.E(E),
        .Q(soft_reset),
        .bram_addr(bram_addr),
        .bram_we(bram_we),
        .bram_wrdata(bram_wrdata),
        .cam_d(cam_d),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_vsync(cam_vsync),
        .capture_en_sync2(capture_en_sync2),
        .frame_done(frame_done),
        .\pixel_addr_sync1_reg[0] (\pixel_addr_sync1_reg[0]_0 ),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\slv_reg0_reg[2] (SS));
endmodule

(* ORIG_REF_NAME = "ov7670_capture" *) 
module mb_usb_camera_controller_0_2_ov7670_capture
   (\slv_reg0_reg[2] ,
    E,
    bram_we,
    frame_done,
    bram_addr,
    bram_wrdata,
    cam_pclk,
    \pixel_addr_sync1_reg[0] ,
    Q,
    s00_axi_aresetn,
    cam_d,
    cam_vsync,
    cam_href,
    capture_en_sync2);
  output \slv_reg0_reg[2] ;
  output [0:0]E;
  output bram_we;
  output frame_done;
  output [16:0]bram_addr;
  output [7:0]bram_wrdata;
  input cam_pclk;
  input \pixel_addr_sync1_reg[0] ;
  input [0:0]Q;
  input s00_axi_aresetn;
  input [7:0]cam_d;
  input cam_vsync;
  input cam_href;
  input capture_en_sync2;

  wire [0:0]E;
  wire [0:0]Q;
  wire [16:0]bram_addr;
  wire bram_addr0_n_100;
  wire bram_addr0_n_101;
  wire bram_addr0_n_102;
  wire bram_addr0_n_103;
  wire bram_addr0_n_104;
  wire bram_addr0_n_105;
  wire bram_addr0_n_89;
  wire bram_addr0_n_90;
  wire bram_addr0_n_91;
  wire bram_addr0_n_92;
  wire bram_addr0_n_93;
  wire bram_addr0_n_94;
  wire bram_addr0_n_95;
  wire bram_addr0_n_96;
  wire bram_addr0_n_97;
  wire bram_addr0_n_98;
  wire bram_addr0_n_99;
  wire bram_we;
  wire [7:0]bram_wrdata;
  wire \bram_wrdata[7]_i_2_n_0 ;
  wire \bram_wrdata[7]_i_3_n_0 ;
  wire byte_toggle;
  wire byte_toggle_i_1_n_0;
  wire [7:0]cam_d;
  wire cam_href;
  wire cam_pclk;
  wire cam_vsync;
  wire capture_en_sync2;
  wire [1:0]curr_state;
  wire frame_done;
  wire frame_done_next;
  wire [1:0]next_state;
  wire \pixel_addr_sync1_reg[0] ;
  wire s00_axi_aresetn;
  wire \slv_reg0_reg[2] ;
  wire [9:0]x_coord;
  wire \x_coord[0]_i_1_n_0 ;
  wire \x_coord[5]_i_2_n_0 ;
  wire \x_coord[9]_i_1_n_0 ;
  wire \x_coord[9]_i_3_n_0 ;
  wire [9:1]x_coord_next;
  wire [9:0]y_coord;
  wire \y_coord[0]_i_1_n_0 ;
  wire \y_coord[7]_i_2_n_0 ;
  wire \y_coord[9]_i_2_n_0 ;
  wire [9:1]y_coord_next;
  wire NLW_bram_addr0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_bram_addr0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_bram_addr0_OVERFLOW_UNCONNECTED;
  wire NLW_bram_addr0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_bram_addr0_PATTERNDETECT_UNCONNECTED;
  wire NLW_bram_addr0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_bram_addr0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_bram_addr0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_bram_addr0_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_bram_addr0_P_UNCONNECTED;
  wire [47:0]NLW_bram_addr0_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    bram_addr0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_coord}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_bram_addr0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_bram_addr0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_coord}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_bram_addr0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_bram_addr0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(E),
        .CLK(cam_pclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_bram_addr0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_bram_addr0_OVERFLOW_UNCONNECTED),
        .P({NLW_bram_addr0_P_UNCONNECTED[47:17],bram_addr0_n_89,bram_addr0_n_90,bram_addr0_n_91,bram_addr0_n_92,bram_addr0_n_93,bram_addr0_n_94,bram_addr0_n_95,bram_addr0_n_96,bram_addr0_n_97,bram_addr0_n_98,bram_addr0_n_99,bram_addr0_n_100,bram_addr0_n_101,bram_addr0_n_102,bram_addr0_n_103,bram_addr0_n_104,bram_addr0_n_105}),
        .PATTERNBDETECT(NLW_bram_addr0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_bram_addr0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_bram_addr0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_bram_addr0_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[0]_INST_0 
       (.I0(bram_addr0_n_105),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[10]_INST_0 
       (.I0(bram_addr0_n_95),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[10]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[11]_INST_0 
       (.I0(bram_addr0_n_94),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[11]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[12]_INST_0 
       (.I0(bram_addr0_n_93),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[12]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[13]_INST_0 
       (.I0(bram_addr0_n_92),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[13]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[14]_INST_0 
       (.I0(bram_addr0_n_91),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[14]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[15]_INST_0 
       (.I0(bram_addr0_n_90),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[16]_INST_0 
       (.I0(bram_addr0_n_89),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[16]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[1]_INST_0 
       (.I0(bram_addr0_n_104),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[2]_INST_0 
       (.I0(bram_addr0_n_103),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[3]_INST_0 
       (.I0(bram_addr0_n_102),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[4]_INST_0 
       (.I0(bram_addr0_n_101),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[5]_INST_0 
       (.I0(bram_addr0_n_100),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[6]_INST_0 
       (.I0(bram_addr0_n_99),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[7]_INST_0 
       (.I0(bram_addr0_n_98),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[7]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[8]_INST_0 
       (.I0(bram_addr0_n_97),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[9]_INST_0 
       (.I0(bram_addr0_n_96),
        .I1(\pixel_addr_sync1_reg[0] ),
        .O(bram_addr[9]));
  FDCE bram_we_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[2] ),
        .D(E),
        .Q(bram_we));
  LUT5 #(
    .INIT(32'h1F000000)) 
    \bram_wrdata[7]_i_1 
       (.I0(x_coord[7]),
        .I1(x_coord[6]),
        .I2(x_coord[8]),
        .I3(\bram_wrdata[7]_i_2_n_0 ),
        .I4(\bram_wrdata[7]_i_3_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bram_wrdata[7]_i_2 
       (.I0(y_coord[6]),
        .I1(y_coord[4]),
        .I2(y_coord[5]),
        .I3(y_coord[7]),
        .O(\bram_wrdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \bram_wrdata[7]_i_3 
       (.I0(curr_state[0]),
        .I1(y_coord[9]),
        .I2(x_coord[9]),
        .I3(y_coord[8]),
        .I4(byte_toggle),
        .I5(curr_state[1]),
        .O(\bram_wrdata[7]_i_3_n_0 ));
  FDCE \bram_wrdata_reg[0] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(\slv_reg0_reg[2] ),
        .D(cam_d[0]),
        .Q(bram_wrdata[0]));
  FDCE \bram_wrdata_reg[1] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(\slv_reg0_reg[2] ),
        .D(cam_d[1]),
        .Q(bram_wrdata[1]));
  FDCE \bram_wrdata_reg[2] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(\slv_reg0_reg[2] ),
        .D(cam_d[2]),
        .Q(bram_wrdata[2]));
  FDCE \bram_wrdata_reg[3] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(\slv_reg0_reg[2] ),
        .D(cam_d[3]),
        .Q(bram_wrdata[3]));
  FDCE \bram_wrdata_reg[4] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(\slv_reg0_reg[2] ),
        .D(cam_d[4]),
        .Q(bram_wrdata[4]));
  FDCE \bram_wrdata_reg[5] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(\slv_reg0_reg[2] ),
        .D(cam_d[5]),
        .Q(bram_wrdata[5]));
  FDCE \bram_wrdata_reg[6] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(\slv_reg0_reg[2] ),
        .D(cam_d[6]),
        .Q(bram_wrdata[6]));
  FDCE \bram_wrdata_reg[7] 
       (.C(cam_pclk),
        .CE(E),
        .CLR(\slv_reg0_reg[2] ),
        .D(cam_d[7]),
        .Q(bram_wrdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h10)) 
    byte_toggle_i_1
       (.I0(byte_toggle),
        .I1(curr_state[1]),
        .I2(curr_state[0]),
        .O(byte_toggle_i_1_n_0));
  FDCE byte_toggle_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[2] ),
        .D(byte_toggle_i_1_n_0),
        .Q(byte_toggle));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h55EECCEA)) 
    \curr_state[0]_i_1 
       (.I0(cam_vsync),
        .I1(cam_href),
        .I2(capture_en_sync2),
        .I3(curr_state[1]),
        .I4(curr_state[0]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2322)) 
    \curr_state[1]_i_1 
       (.I0(cam_vsync),
        .I1(curr_state[1]),
        .I2(cam_href),
        .I3(curr_state[0]),
        .O(next_state[1]));
  FDCE \curr_state_reg[0] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[2] ),
        .D(next_state[0]),
        .Q(curr_state[0]));
  FDCE \curr_state_reg[1] 
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[2] ),
        .D(next_state[1]),
        .Q(curr_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    frame_done_i_1
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .O(frame_done_next));
  FDCE frame_done_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .CLR(\slv_reg0_reg[2] ),
        .D(frame_done_next),
        .Q(frame_done));
  LUT2 #(
    .INIT(4'hB)) 
    scl_i_1
       (.I0(Q),
        .I1(s00_axi_aresetn),
        .O(\slv_reg0_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \x_coord[0]_i_1 
       (.I0(x_coord[0]),
        .I1(curr_state[1]),
        .O(\x_coord[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \x_coord[1]_i_1 
       (.I0(x_coord[0]),
        .I1(x_coord[1]),
        .I2(curr_state[1]),
        .O(x_coord_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \x_coord[2]_i_1 
       (.I0(x_coord[0]),
        .I1(x_coord[1]),
        .I2(x_coord[2]),
        .I3(curr_state[1]),
        .O(x_coord_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \x_coord[3]_i_1 
       (.I0(x_coord[1]),
        .I1(x_coord[0]),
        .I2(x_coord[2]),
        .I3(x_coord[3]),
        .I4(curr_state[1]),
        .O(x_coord_next[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \x_coord[4]_i_1 
       (.I0(x_coord[2]),
        .I1(x_coord[0]),
        .I2(x_coord[1]),
        .I3(x_coord[3]),
        .I4(x_coord[4]),
        .I5(curr_state[1]),
        .O(x_coord_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \x_coord[5]_i_1 
       (.I0(\x_coord[5]_i_2_n_0 ),
        .I1(x_coord[5]),
        .I2(curr_state[1]),
        .O(x_coord_next[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \x_coord[5]_i_2 
       (.I0(x_coord[3]),
        .I1(x_coord[1]),
        .I2(x_coord[0]),
        .I3(x_coord[2]),
        .I4(x_coord[4]),
        .O(\x_coord[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \x_coord[6]_i_1 
       (.I0(\x_coord[9]_i_3_n_0 ),
        .I1(x_coord[6]),
        .I2(curr_state[1]),
        .O(x_coord_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h00B4)) 
    \x_coord[7]_i_1 
       (.I0(\x_coord[9]_i_3_n_0 ),
        .I1(x_coord[6]),
        .I2(x_coord[7]),
        .I3(curr_state[1]),
        .O(x_coord_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h0000DF20)) 
    \x_coord[8]_i_1 
       (.I0(x_coord[6]),
        .I1(\x_coord[9]_i_3_n_0 ),
        .I2(x_coord[7]),
        .I3(x_coord[8]),
        .I4(curr_state[1]),
        .O(x_coord_next[8]));
  LUT3 #(
    .INIT(8'hF4)) 
    \x_coord[9]_i_1 
       (.I0(byte_toggle),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .O(\x_coord[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DFFF2000)) 
    \x_coord[9]_i_2 
       (.I0(x_coord[7]),
        .I1(\x_coord[9]_i_3_n_0 ),
        .I2(x_coord[6]),
        .I3(x_coord[8]),
        .I4(x_coord[9]),
        .I5(curr_state[1]),
        .O(x_coord_next[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \x_coord[9]_i_3 
       (.I0(x_coord[4]),
        .I1(x_coord[2]),
        .I2(x_coord[0]),
        .I3(x_coord[1]),
        .I4(x_coord[3]),
        .I5(x_coord[5]),
        .O(\x_coord[9]_i_3_n_0 ));
  FDCE \x_coord_reg[0] 
       (.C(cam_pclk),
        .CE(\x_coord[9]_i_1_n_0 ),
        .CLR(\slv_reg0_reg[2] ),
        .D(\x_coord[0]_i_1_n_0 ),
        .Q(x_coord[0]));
  FDCE \x_coord_reg[1] 
       (.C(cam_pclk),
        .CE(\x_coord[9]_i_1_n_0 ),
        .CLR(\slv_reg0_reg[2] ),
        .D(x_coord_next[1]),
        .Q(x_coord[1]));
  FDCE \x_coord_reg[2] 
       (.C(cam_pclk),
        .CE(\x_coord[9]_i_1_n_0 ),
        .CLR(\slv_reg0_reg[2] ),
        .D(x_coord_next[2]),
        .Q(x_coord[2]));
  FDCE \x_coord_reg[3] 
       (.C(cam_pclk),
        .CE(\x_coord[9]_i_1_n_0 ),
        .CLR(\slv_reg0_reg[2] ),
        .D(x_coord_next[3]),
        .Q(x_coord[3]));
  FDCE \x_coord_reg[4] 
       (.C(cam_pclk),
        .CE(\x_coord[9]_i_1_n_0 ),
        .CLR(\slv_reg0_reg[2] ),
        .D(x_coord_next[4]),
        .Q(x_coord[4]));
  FDCE \x_coord_reg[5] 
       (.C(cam_pclk),
        .CE(\x_coord[9]_i_1_n_0 ),
        .CLR(\slv_reg0_reg[2] ),
        .D(x_coord_next[5]),
        .Q(x_coord[5]));
  FDCE \x_coord_reg[6] 
       (.C(cam_pclk),
        .CE(\x_coord[9]_i_1_n_0 ),
        .CLR(\slv_reg0_reg[2] ),
        .D(x_coord_next[6]),
        .Q(x_coord[6]));
  FDCE \x_coord_reg[7] 
       (.C(cam_pclk),
        .CE(\x_coord[9]_i_1_n_0 ),
        .CLR(\slv_reg0_reg[2] ),
        .D(x_coord_next[7]),
        .Q(x_coord[7]));
  FDCE \x_coord_reg[8] 
       (.C(cam_pclk),
        .CE(\x_coord[9]_i_1_n_0 ),
        .CLR(\slv_reg0_reg[2] ),
        .D(x_coord_next[8]),
        .Q(x_coord[8]));
  FDCE \x_coord_reg[9] 
       (.C(cam_pclk),
        .CE(\x_coord[9]_i_1_n_0 ),
        .CLR(\slv_reg0_reg[2] ),
        .D(x_coord_next[9]),
        .Q(x_coord[9]));
  LUT2 #(
    .INIT(4'h1)) 
    \y_coord[0]_i_1 
       (.I0(y_coord[0]),
        .I1(curr_state[0]),
        .O(\y_coord[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \y_coord[1]_i_1 
       (.I0(y_coord[0]),
        .I1(y_coord[1]),
        .I2(curr_state[0]),
        .O(y_coord_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \y_coord[2]_i_1 
       (.I0(y_coord[0]),
        .I1(y_coord[1]),
        .I2(y_coord[2]),
        .I3(curr_state[0]),
        .O(y_coord_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \y_coord[3]_i_1 
       (.I0(y_coord[1]),
        .I1(y_coord[0]),
        .I2(y_coord[2]),
        .I3(y_coord[3]),
        .I4(curr_state[0]),
        .O(y_coord_next[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \y_coord[4]_i_1 
       (.I0(y_coord[2]),
        .I1(y_coord[0]),
        .I2(y_coord[1]),
        .I3(y_coord[3]),
        .I4(y_coord[4]),
        .I5(curr_state[0]),
        .O(y_coord_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h00B4)) 
    \y_coord[5]_i_1 
       (.I0(\y_coord[7]_i_2_n_0 ),
        .I1(y_coord[4]),
        .I2(y_coord[5]),
        .I3(curr_state[0]),
        .O(y_coord_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h0000BF40)) 
    \y_coord[6]_i_1 
       (.I0(\y_coord[7]_i_2_n_0 ),
        .I1(y_coord[5]),
        .I2(y_coord[4]),
        .I3(y_coord[6]),
        .I4(curr_state[0]),
        .O(y_coord_next[6]));
  LUT6 #(
    .INIT(64'h00000000FF7F0080)) 
    \y_coord[7]_i_1 
       (.I0(y_coord[6]),
        .I1(y_coord[4]),
        .I2(y_coord[5]),
        .I3(\y_coord[7]_i_2_n_0 ),
        .I4(y_coord[7]),
        .I5(curr_state[0]),
        .O(y_coord_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \y_coord[7]_i_2 
       (.I0(y_coord[2]),
        .I1(y_coord[0]),
        .I2(y_coord[1]),
        .I3(y_coord[3]),
        .O(\y_coord[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \y_coord[8]_i_1 
       (.I0(\y_coord[9]_i_2_n_0 ),
        .I1(y_coord[8]),
        .I2(curr_state[0]),
        .O(y_coord_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h00B4)) 
    \y_coord[9]_i_1 
       (.I0(\y_coord[9]_i_2_n_0 ),
        .I1(y_coord[8]),
        .I2(y_coord[9]),
        .I3(curr_state[0]),
        .O(y_coord_next[9]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \y_coord[9]_i_2 
       (.I0(y_coord[7]),
        .I1(y_coord[5]),
        .I2(y_coord[4]),
        .I3(y_coord[6]),
        .I4(\y_coord[7]_i_2_n_0 ),
        .O(\y_coord[9]_i_2_n_0 ));
  FDCE \y_coord_reg[0] 
       (.C(cam_pclk),
        .CE(curr_state[1]),
        .CLR(\slv_reg0_reg[2] ),
        .D(\y_coord[0]_i_1_n_0 ),
        .Q(y_coord[0]));
  FDCE \y_coord_reg[1] 
       (.C(cam_pclk),
        .CE(curr_state[1]),
        .CLR(\slv_reg0_reg[2] ),
        .D(y_coord_next[1]),
        .Q(y_coord[1]));
  FDCE \y_coord_reg[2] 
       (.C(cam_pclk),
        .CE(curr_state[1]),
        .CLR(\slv_reg0_reg[2] ),
        .D(y_coord_next[2]),
        .Q(y_coord[2]));
  FDCE \y_coord_reg[3] 
       (.C(cam_pclk),
        .CE(curr_state[1]),
        .CLR(\slv_reg0_reg[2] ),
        .D(y_coord_next[3]),
        .Q(y_coord[3]));
  FDCE \y_coord_reg[4] 
       (.C(cam_pclk),
        .CE(curr_state[1]),
        .CLR(\slv_reg0_reg[2] ),
        .D(y_coord_next[4]),
        .Q(y_coord[4]));
  FDCE \y_coord_reg[5] 
       (.C(cam_pclk),
        .CE(curr_state[1]),
        .CLR(\slv_reg0_reg[2] ),
        .D(y_coord_next[5]),
        .Q(y_coord[5]));
  FDCE \y_coord_reg[6] 
       (.C(cam_pclk),
        .CE(curr_state[1]),
        .CLR(\slv_reg0_reg[2] ),
        .D(y_coord_next[6]),
        .Q(y_coord[6]));
  FDCE \y_coord_reg[7] 
       (.C(cam_pclk),
        .CE(curr_state[1]),
        .CLR(\slv_reg0_reg[2] ),
        .D(y_coord_next[7]),
        .Q(y_coord[7]));
  FDCE \y_coord_reg[8] 
       (.C(cam_pclk),
        .CE(curr_state[1]),
        .CLR(\slv_reg0_reg[2] ),
        .D(y_coord_next[8]),
        .Q(y_coord[8]));
  FDCE \y_coord_reg[9] 
       (.C(cam_pclk),
        .CE(curr_state[1]),
        .CLR(\slv_reg0_reg[2] ),
        .D(y_coord_next[9]),
        .Q(y_coord[9]));
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
