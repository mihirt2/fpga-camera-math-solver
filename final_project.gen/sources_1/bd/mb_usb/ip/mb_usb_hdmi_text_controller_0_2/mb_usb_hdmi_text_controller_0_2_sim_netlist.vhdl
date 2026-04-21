-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Apr 21 15:57:17 2026
-- Host        : Levono_MihirT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/ishur/final_project/final_project.gen/sources_1/bd/mb_usb/ip/mb_usb_hdmi_text_controller_0_2/mb_usb_hdmi_text_controller_0_2_sim_netlist.vhdl
-- Design      : mb_usb_hdmi_text_controller_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_hdmi_text_controller_0_2_clk_wiz_0_clk_wiz is
  port (
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_hdmi_text_controller_0_2_clk_wiz_0_clk_wiz : entity is "clk_wiz_0_clk_wiz";
end mb_usb_hdmi_text_controller_0_2_clk_wiz_0_clk_wiz;

architecture STRUCTURE of mb_usb_hdmi_text_controller_0_2_clk_wiz_0_clk_wiz is
  signal clk_in1_clk_wiz_0 : STD_LOGIC;
  signal clk_out1_clk_wiz_0 : STD_LOGIC;
  signal clk_out2_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_buf_clk_wiz_0 : STD_LOGIC;
  signal clkfbout_clk_wiz_0 : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkin1_ibufg : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkin1_ibufg : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkin1_ibufg : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of clkin1_ibufg : label is "AUTO";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout2_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of mmcm_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_0,
      O => clkfbout_buf_clk_wiz_0
    );
clkin1_ibufg: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE",
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in1,
      O => clk_in1_clk_wiz_0
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out1_clk_wiz_0,
      O => clk_out1
    );
clkout2_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_out2_clk_wiz_0,
      O => clk_out2
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 10.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 40.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 8,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_0,
      CLKFBOUT => clkfbout_clk_wiz_0,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in1_clk_wiz_0,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clk_out1_clk_wiz_0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => clk_out2_clk_wiz_0,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => locked,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_hdmi_text_controller_0_2_encode is
  port (
    vde_reg : out STD_LOGIC;
    ade_reg : out STD_LOGIC;
    ade_reg_qq : out STD_LOGIC;
    ade_reg_qq_reg_0 : out STD_LOGIC;
    ade_reg_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_reg_reg_0 : out STD_LOGIC;
    vde_reg_reg_0 : out STD_LOGIC;
    c0_reg_reg_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    pix_clk : in STD_LOGIC;
    data_o : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \dout_reg[9]_0\ : in STD_LOGIC;
    \dout_reg[9]_1\ : in STD_LOGIC;
    \dout_reg[8]_0\ : in STD_LOGIC;
    c0_reg : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_hdmi_text_controller_0_2_encode : entity is "encode";
end mb_usb_hdmi_text_controller_0_2_encode;

architecture STRUCTURE of mb_usb_hdmi_text_controller_0_2_encode is
  signal ade_q : STD_LOGIC;
  signal \^ade_reg\ : STD_LOGIC;
  signal ade_reg_q : STD_LOGIC;
  signal \^ade_reg_qq\ : STD_LOGIC;
  signal \^ade_reg_qq_reg_0\ : STD_LOGIC;
  signal \^ade_reg_reg_0\ : STD_LOGIC;
  signal adin_q : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \adin_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal c0_q : STD_LOGIC;
  signal c0_reg_0 : STD_LOGIC;
  signal \^c0_reg_reg_0\ : STD_LOGIC;
  signal c1_q : STD_LOGIC;
  signal c1_reg : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_7__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_8_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_10_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_11_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_12_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_13_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_14__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_15_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_16_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_7_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_8_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_9_n_0\ : STD_LOGIC;
  signal \dout[0]_i_1_n_0\ : STD_LOGIC;
  signal \dout[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \dout[0]_i_3_n_0\ : STD_LOGIC;
  signal \dout[0]_i_4_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1_n_0\ : STD_LOGIC;
  signal \dout[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \dout[1]_i_3_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1_n_0\ : STD_LOGIC;
  signal \dout[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_2_n_0\ : STD_LOGIC;
  signal \dout[3]_i_3_n_0\ : STD_LOGIC;
  signal \dout[4]_i_1_n_0\ : STD_LOGIC;
  signal \dout[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \dout[4]_i_3_n_0\ : STD_LOGIC;
  signal \dout[4]_i_4_n_0\ : STD_LOGIC;
  signal \dout[5]_i_1_n_0\ : STD_LOGIC;
  signal \dout[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \dout[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \dout[6]_i_1_n_0\ : STD_LOGIC;
  signal \dout[6]_i_2_n_0\ : STD_LOGIC;
  signal \dout[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \dout[6]_i_4_n_0\ : STD_LOGIC;
  signal \dout[7]_i_1_n_0\ : STD_LOGIC;
  signal \dout[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \dout[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \dout[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \dout[9]_i_1_n_0\ : STD_LOGIC;
  signal \dout[9]_i_2_n_0\ : STD_LOGIC;
  signal \dout[9]_i_3_n_0\ : STD_LOGIC;
  signal \dout[9]_i_4_n_0\ : STD_LOGIC;
  signal n0q_m : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal n0q_m0 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \n0q_m[3]_i_2_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_3_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_4_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_5_n_0\ : STD_LOGIC;
  signal n1d : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal n1d0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \n1d[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_4_n_0\ : STD_LOGIC;
  signal n1q_m : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal n1q_m0 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \n1q_m[2]_i_1_n_0\ : STD_LOGIC;
  signal \n1q_m[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1q_m[2]_i_3_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_4_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal p_0_in_1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal q_m_1 : STD_LOGIC;
  signal q_m_2 : STD_LOGIC;
  signal q_m_3 : STD_LOGIC;
  signal q_m_4 : STD_LOGIC;
  signal q_m_6 : STD_LOGIC;
  signal q_m_7 : STD_LOGIC;
  signal \q_m_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \q_m_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal vde_q : STD_LOGIC;
  signal \^vde_reg\ : STD_LOGIC;
  signal \vdin_q_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt[2]_i_3__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[3]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[3]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[3]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[3]_i_7__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[3]_i_8\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt[4]_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[4]_i_13\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[4]_i_14__1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt[4]_i_16\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[4]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[4]_i_8\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dout[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dout[0]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dout[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dout[4]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \dout[6]_i_3__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dout[6]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dout[7]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dout[8]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \dout[9]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dout[9]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dout[9]_i_4__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \n0q_m[3]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \n0q_m[3]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \n1d[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \n1d[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \n1q_m[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \n1q_m[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \n1q_m[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_m_reg[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_m_reg[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \q_m_reg[8]_i_1\ : label is "soft_lutpair2";
begin
  ade_reg <= \^ade_reg\;
  ade_reg_qq <= \^ade_reg_qq\;
  ade_reg_qq_reg_0 <= \^ade_reg_qq_reg_0\;
  ade_reg_reg_0 <= \^ade_reg_reg_0\;
  c0_reg_reg_0 <= \^c0_reg_reg_0\;
  vde_reg <= \^vde_reg\;
ade_q_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(0),
      Q => ade_q,
      R => '0'
    );
ade_reg_q_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \^ade_reg\,
      Q => ade_reg_q,
      R => '0'
    );
ade_reg_qq_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => ade_reg_q,
      Q => \^ade_reg_qq\,
      R => '0'
    );
ade_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => ade_q,
      Q => \^ade_reg\,
      R => '0'
    );
\adin_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(4),
      Q => adin_q(2),
      R => '0'
    );
\adin_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(5),
      Q => adin_q(3),
      R => '0'
    );
\adin_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => adin_q(2),
      Q => p_1_in,
      R => '0'
    );
\adin_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => adin_q(3),
      Q => \adin_reg_reg_n_0_[3]\,
      R => '0'
    );
c0_q_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(3),
      Q => c0_q,
      R => '0'
    );
c0_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => c0_q,
      Q => c0_reg_0,
      R => '0'
    );
c1_q_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(2),
      Q => c1_q,
      R => '0'
    );
c1_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => c1_q,
      Q => c1_reg,
      R => '0'
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A8228A0A08228"
    )
        port map (
      I0 => \^vde_reg\,
      I1 => \cnt[4]_i_3_n_0\,
      I2 => cnt(1),
      I3 => \cnt[1]_i_2_n_0\,
      I4 => \cnt[4]_i_5_n_0\,
      I5 => \cnt[1]_i_3_n_0\,
      O => \cnt[1]_i_1_n_0\
    );
\cnt[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => n0q_m(1),
      I1 => p_0_in,
      I2 => n1q_m(1),
      O => \cnt[1]_i_2_n_0\
    );
\cnt[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => n1q_m(1),
      I1 => n0q_m(1),
      O => \cnt[1]_i_3_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \^vde_reg\,
      I1 => \cnt[2]_i_2_n_0\,
      I2 => \cnt[4]_i_5_n_0\,
      I3 => \cnt[2]_i_3__1_n_0\,
      O => \cnt[2]_i_1_n_0\
    );
\cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C9CC9C6636C39C9"
    )
        port map (
      I0 => \cnt[4]_i_3_n_0\,
      I1 => \cnt[3]_i_8_n_0\,
      I2 => cnt(1),
      I3 => n0q_m(1),
      I4 => p_0_in,
      I5 => n1q_m(1),
      O => \cnt[2]_i_2_n_0\
    );
\cnt[2]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6996AA"
    )
        port map (
      I0 => \cnt[3]_i_8_n_0\,
      I1 => cnt(1),
      I2 => p_0_in,
      I3 => n0q_m(1),
      I4 => n1q_m(1),
      O => \cnt[2]_i_3__1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A2A202A20202A2"
    )
        port map (
      I0 => \^vde_reg\,
      I1 => \cnt[3]_i_2_n_0\,
      I2 => \cnt[4]_i_5_n_0\,
      I3 => \cnt[3]_i_3_n_0\,
      I4 => \cnt[3]_i_4_n_0\,
      I5 => \cnt[3]_i_5_n_0\,
      O => \cnt[3]_i_1_n_0\
    );
\cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F60606F606F6F60"
    )
        port map (
      I0 => \cnt[4]_i_13_n_0\,
      I1 => \cnt[3]_i_6_n_0\,
      I2 => \cnt[4]_i_3_n_0\,
      I3 => \cnt[4]_i_7_n_0\,
      I4 => \cnt[3]_i_7__1_n_0\,
      I5 => \cnt[4]_i_8_n_0\,
      O => \cnt[3]_i_2_n_0\
    );
\cnt[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cnt(3),
      I1 => n0q_m(3),
      I2 => n1q_m(3),
      O => \cnt[3]_i_3_n_0\
    );
\cnt[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B28E"
    )
        port map (
      I0 => cnt(2),
      I1 => n0q_m(2),
      I2 => n1q_m(2),
      I3 => p_0_in,
      O => \cnt[3]_i_4_n_0\
    );
\cnt[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBF0820"
    )
        port map (
      I0 => cnt(1),
      I1 => p_0_in,
      I2 => n0q_m(1),
      I3 => n1q_m(1),
      I4 => \cnt[3]_i_8_n_0\,
      O => \cnt[3]_i_5_n_0\
    );
\cnt[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696996966996"
    )
        port map (
      I0 => n1q_m(3),
      I1 => n0q_m(3),
      I2 => cnt(3),
      I3 => cnt(2),
      I4 => n1q_m(2),
      I5 => n0q_m(2),
      O => \cnt[3]_i_6_n_0\
    );
\cnt[3]_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => n1q_m(3),
      I1 => n0q_m(3),
      I2 => cnt(3),
      I3 => n1q_m(2),
      I4 => n0q_m(2),
      O => \cnt[3]_i_7__1_n_0\
    );
\cnt[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => cnt(2),
      I1 => n0q_m(2),
      I2 => n1q_m(2),
      O => \cnt[3]_i_8_n_0\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => \^vde_reg\,
      I1 => \cnt[4]_i_2_n_0\,
      I2 => \cnt[4]_i_3_n_0\,
      I3 => \cnt[4]_i_4_n_0\,
      I4 => \cnt[4]_i_5_n_0\,
      I5 => \cnt[4]_i_6_n_0\,
      O => \cnt[4]_i_1_n_0\
    );
\cnt[4]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => n1q_m(3),
      I1 => n0q_m(3),
      O => \cnt[4]_i_10_n_0\
    );
\cnt[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => n1q_m(3),
      I1 => n0q_m(3),
      I2 => n1q_m(2),
      I3 => n0q_m(2),
      O => \cnt[4]_i_11_n_0\
    );
\cnt[4]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => n1q_m(2),
      I1 => n0q_m(2),
      O => \cnt[4]_i_12_n_0\
    );
\cnt[4]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF8E08"
    )
        port map (
      I0 => cnt(1),
      I1 => p_0_in,
      I2 => n1q_m(1),
      I3 => n0q_m(1),
      I4 => \cnt[3]_i_8_n_0\,
      O => \cnt[4]_i_13_n_0\
    );
\cnt[4]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => n0q_m(2),
      I1 => n1q_m(2),
      I2 => cnt(2),
      O => \cnt[4]_i_14__1_n_0\
    );
\cnt[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => n0q_m(2),
      I1 => n1q_m(2),
      I2 => n1q_m(1),
      I3 => n0q_m(1),
      I4 => n1q_m(3),
      I5 => n0q_m(3),
      O => \cnt[4]_i_15_n_0\
    );
\cnt[4]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5965A96A"
    )
        port map (
      I0 => cnt(4),
      I1 => p_0_in,
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => cnt(3),
      O => \cnt[4]_i_16_n_0\
    );
\cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8288EBEE7D771411"
    )
        port map (
      I0 => \cnt[4]_i_7_n_0\,
      I1 => \cnt[3]_i_3_n_0\,
      I2 => n1q_m(2),
      I3 => n0q_m(2),
      I4 => \cnt[4]_i_8_n_0\,
      I5 => \cnt[4]_i_9_n_0\,
      O => \cnt[4]_i_2_n_0\
    );
\cnt[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6565656564666564"
    )
        port map (
      I0 => cnt(4),
      I1 => \cnt[4]_i_10_n_0\,
      I2 => \cnt[4]_i_11_n_0\,
      I3 => n1q_m(1),
      I4 => n0q_m(1),
      I5 => \cnt[4]_i_12_n_0\,
      O => \cnt[4]_i_3_n_0\
    );
\cnt[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A595965596565A6"
    )
        port map (
      I0 => cnt(4),
      I1 => \cnt[4]_i_13_n_0\,
      I2 => n1q_m(3),
      I3 => n0q_m(3),
      I4 => cnt(3),
      I5 => \cnt[4]_i_14__1_n_0\,
      O => \cnt[4]_i_4_n_0\
    );
\cnt[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \cnt[4]_i_15_n_0\,
      I1 => cnt(2),
      I2 => cnt(4),
      I3 => cnt(1),
      I4 => cnt(3),
      O => \cnt[4]_i_5_n_0\
    );
\cnt[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555596699669AAAA"
    )
        port map (
      I0 => \cnt[4]_i_16_n_0\,
      I1 => n1q_m(3),
      I2 => n0q_m(3),
      I3 => cnt(3),
      I4 => \cnt[3]_i_5_n_0\,
      I5 => \cnt[3]_i_4_n_0\,
      O => \cnt[4]_i_6_n_0\
    );
\cnt[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"52157A57"
    )
        port map (
      I0 => \cnt[3]_i_8_n_0\,
      I1 => n1q_m(1),
      I2 => p_0_in,
      I3 => n0q_m(1),
      I4 => cnt(1),
      O => \cnt[4]_i_7_n_0\
    );
\cnt[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6F660F6"
    )
        port map (
      I0 => n0q_m(2),
      I1 => n1q_m(2),
      I2 => cnt(2),
      I3 => n0q_m(1),
      I4 => p_0_in,
      O => \cnt[4]_i_8_n_0\
    );
\cnt[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7510EF758AEF108A"
    )
        port map (
      I0 => cnt(3),
      I1 => n1q_m(2),
      I2 => n0q_m(2),
      I3 => n0q_m(3),
      I4 => n1q_m(3),
      I5 => cnt(4),
      O => \cnt[4]_i_9_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[1]_i_1_n_0\,
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[2]_i_1_n_0\,
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[3]_i_1_n_0\,
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[4]_i_1_n_0\,
      Q => cnt(4)
    );
\dout[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EBAA"
    )
        port map (
      I0 => \dout[0]_i_2__0_n_0\,
      I1 => \dout[9]_i_2_n_0\,
      I2 => \q_m_reg_reg_n_0_[0]\,
      I3 => \^vde_reg\,
      O => \dout[0]_i_1_n_0\
    );
\dout[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA000220AA008AA8"
    )
        port map (
      I0 => \dout[4]_i_4_n_0\,
      I1 => c1_reg,
      I2 => \dout[0]_i_3_n_0\,
      I3 => c0_reg_0,
      I4 => \^ade_reg_reg_0\,
      I5 => \dout[0]_i_4_n_0\,
      O => \dout[0]_i_2__0_n_0\
    );
\dout[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F10000"
    )
        port map (
      I0 => data_o(0),
      I1 => \^ade_reg_qq\,
      I2 => \^ade_reg\,
      I3 => \adin_reg_reg_n_0_[3]\,
      I4 => p_1_in,
      O => \dout[0]_i_3_n_0\
    );
\dout[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5501FF03"
    )
        port map (
      I0 => p_1_in,
      I1 => data_o(0),
      I2 => \^ade_reg_qq\,
      I3 => \^ade_reg\,
      I4 => \adin_reg_reg_n_0_[3]\,
      O => \dout[0]_i_4_n_0\
    );
\dout[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"87B4FFFF87B40000"
    )
        port map (
      I0 => p_0_in,
      I1 => \cnt[4]_i_5_n_0\,
      I2 => \q_m_reg_reg_n_0_[1]\,
      I3 => \cnt[4]_i_3_n_0\,
      I4 => \^vde_reg\,
      I5 => \dout[1]_i_2__0_n_0\,
      O => \dout[1]_i_1_n_0\
    );
\dout[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFE"
    )
        port map (
      I0 => \^ade_reg_qq\,
      I1 => data_o(0),
      I2 => \^ade_reg\,
      I3 => c0_reg_0,
      I4 => data_o(1),
      I5 => \dout[1]_i_3_n_0\,
      O => \dout[1]_i_2__0_n_0\
    );
\dout[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"623362001F001FFF"
    )
        port map (
      I0 => \adin_reg_reg_n_0_[3]\,
      I1 => c1_reg,
      I2 => p_1_in,
      I3 => \^ade_reg\,
      I4 => \^ade_reg_qq_reg_0\,
      I5 => c0_reg_0,
      O => \dout[1]_i_3_n_0\
    );
\dout[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[2]\,
      I1 => \dout[9]_i_2_n_0\,
      I2 => \^vde_reg\,
      I3 => \dout[2]_i_2__1_n_0\,
      O => \dout[2]_i_1_n_0\
    );
\dout[2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0064FFEB"
    )
        port map (
      I0 => \dout[6]_i_4_n_0\,
      I1 => \dout[6]_i_3__0_n_0\,
      I2 => c1_reg,
      I3 => \^ade_reg_reg_0\,
      I4 => c0_reg_0,
      I5 => data_o(1),
      O => \dout[2]_i_2__1_n_0\
    );
\dout[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[3]\,
      I1 => \dout[9]_i_2_n_0\,
      I2 => \^vde_reg\,
      I3 => \dout[3]_i_2_n_0\,
      O => \dout[3]_i_1_n_0\
    );
\dout[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100070"
    )
        port map (
      I0 => c1_reg,
      I1 => \dout[6]_i_3__0_n_0\,
      I2 => \^ade_reg\,
      I3 => p_1_in,
      I4 => c0_reg_0,
      I5 => \dout[3]_i_3_n_0\,
      O => \dout[3]_i_2_n_0\
    );
\dout[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBABFBAAFAAAFAAB"
    )
        port map (
      I0 => data_o(1),
      I1 => \dout[6]_i_4_n_0\,
      I2 => \^ade_reg_reg_0\,
      I3 => c0_reg_0,
      I4 => c1_reg,
      I5 => \dout[6]_i_3__0_n_0\,
      O => \dout[3]_i_3_n_0\
    );
\dout[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F44F4444"
    )
        port map (
      I0 => \dout[4]_i_2__0_n_0\,
      I1 => \dout[4]_i_3_n_0\,
      I2 => \q_m_reg_reg_n_0_[4]\,
      I3 => \dout[9]_i_2_n_0\,
      I4 => \^vde_reg\,
      O => \dout[4]_i_1_n_0\
    );
\dout[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFBFFFB33333333"
    )
        port map (
      I0 => \^ade_reg_reg_0\,
      I1 => \dout[4]_i_4_n_0\,
      I2 => c1_reg,
      I3 => \dout[6]_i_3__0_n_0\,
      I4 => p_1_in,
      I5 => c0_reg_0,
      O => \dout[4]_i_2__0_n_0\
    );
\dout[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF190019FF"
    )
        port map (
      I0 => c1_reg,
      I1 => \adin_reg_reg_n_0_[3]\,
      I2 => p_1_in,
      I3 => \^ade_reg\,
      I4 => \^ade_reg_qq_reg_0\,
      I5 => c0_reg_0,
      O => \dout[4]_i_3_n_0\
    );
\dout[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^vde_reg\,
      I1 => data_o(1),
      O => \dout[4]_i_4_n_0\
    );
\dout[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F44F4444"
    )
        port map (
      I0 => \dout[5]_i_2__0_n_0\,
      I1 => \dout[5]_i_3__0_n_0\,
      I2 => \q_m_reg_reg_n_0_[5]\,
      I3 => \dout[9]_i_2_n_0\,
      I4 => \^vde_reg\,
      O => \dout[5]_i_1_n_0\
    );
\dout[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A85955A4F9085555"
    )
        port map (
      I0 => c0_reg_0,
      I1 => \^ade_reg_qq_reg_0\,
      I2 => \^ade_reg\,
      I3 => \adin_reg_reg_n_0_[3]\,
      I4 => c1_reg,
      I5 => p_1_in,
      O => \dout[5]_i_2__0_n_0\
    );
\dout[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFEFEFEE"
    )
        port map (
      I0 => \^vde_reg\,
      I1 => data_o(1),
      I2 => \^ade_reg\,
      I3 => data_o(0),
      I4 => \^ade_reg_qq\,
      I5 => c0_reg,
      O => vde_reg_reg_0
    );
\dout[5]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111110"
    )
        port map (
      I0 => data_o(1),
      I1 => \^vde_reg\,
      I2 => c0_reg_0,
      I3 => \^ade_reg\,
      I4 => data_o(0),
      I5 => \^ade_reg_qq\,
      O => \dout[5]_i_3__0_n_0\
    );
\dout[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[6]\,
      I1 => \dout[9]_i_2_n_0\,
      I2 => \^vde_reg\,
      I3 => \dout[6]_i_2_n_0\,
      O => \dout[6]_i_1_n_0\
    );
\dout[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBEBABFBEBBBBBE"
    )
        port map (
      I0 => data_o(1),
      I1 => c0_reg_0,
      I2 => \^ade_reg_reg_0\,
      I3 => \dout[6]_i_3__0_n_0\,
      I4 => \dout[6]_i_4_n_0\,
      I5 => c1_reg,
      O => \dout[6]_i_2_n_0\
    );
\dout[6]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4445"
    )
        port map (
      I0 => \adin_reg_reg_n_0_[3]\,
      I1 => \^ade_reg\,
      I2 => \^ade_reg_qq\,
      I3 => data_o(0),
      O => \dout[6]_i_3__0_n_0\
    );
\dout[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4445"
    )
        port map (
      I0 => p_1_in,
      I1 => \^ade_reg\,
      I2 => \^ade_reg_qq\,
      I3 => data_o(0),
      O => \dout[6]_i_4_n_0\
    );
\dout[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9F9F9F90"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[7]\,
      I1 => \dout[9]_i_2_n_0\,
      I2 => \^vde_reg\,
      I3 => \dout[7]_i_2__1_n_0\,
      I4 => \dout[7]_i_3__0_n_0\,
      O => \dout[7]_i_1_n_0\
    );
\dout[7]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A80854A4F4F4"
    )
        port map (
      I0 => c1_reg,
      I1 => \^ade_reg_qq_reg_0\,
      I2 => \^ade_reg\,
      I3 => \adin_reg_reg_n_0_[3]\,
      I4 => p_1_in,
      I5 => c0_reg_0,
      O => \dout[7]_i_2__1_n_0\
    );
\dout[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => c0_reg,
      I1 => \^ade_reg_qq\,
      I2 => data_o(0),
      I3 => \^ade_reg\,
      O => c0_reg_reg_1
    );
\dout[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8F888888"
    )
        port map (
      I0 => c0_reg_0,
      I1 => \^ade_reg_reg_0\,
      I2 => p_1_in,
      I3 => c1_reg,
      I4 => \^ade_reg\,
      I5 => data_o(1),
      O => \dout[7]_i_3__0_n_0\
    );
\dout[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AE00AEAE"
    )
        port map (
      I0 => \^c0_reg_reg_0\,
      I1 => \^ade_reg\,
      I2 => \dout_reg[9]_1\,
      I3 => \dout_reg[8]_0\,
      I4 => \^vde_reg\,
      O => D(0)
    );
\dout[8]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA03AA03AA03"
    )
        port map (
      I0 => p_0_in,
      I1 => \dout[8]_i_2__0_n_0\,
      I2 => data_o(1),
      I3 => \^vde_reg\,
      I4 => c0_reg_0,
      I5 => \^ade_reg_reg_0\,
      O => \dout[8]_i_1__1_n_0\
    );
\dout[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFCFCFFFFFFFD"
    )
        port map (
      I0 => c0_reg,
      I1 => \^vde_reg\,
      I2 => data_o(1),
      I3 => data_o(0),
      I4 => \^ade_reg_qq\,
      I5 => \^ade_reg\,
      O => \^c0_reg_reg_0\
    );
\dout[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E200E2EE2E0CEE"
    )
        port map (
      I0 => \^ade_reg_qq_reg_0\,
      I1 => \^ade_reg\,
      I2 => \adin_reg_reg_n_0_[3]\,
      I3 => c1_reg,
      I4 => c0_reg_0,
      I5 => p_1_in,
      O => \dout[8]_i_2__0_n_0\
    );
\dout[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^ade_reg\,
      I1 => data_o(0),
      I2 => \^ade_reg_qq\,
      O => \^ade_reg_reg_0\
    );
\dout[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7477"
    )
        port map (
      I0 => \dout[9]_i_2_n_0\,
      I1 => \^vde_reg\,
      I2 => data_o(1),
      I3 => \dout[9]_i_3_n_0\,
      O => \dout[9]_i_1_n_0\
    );
\dout[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555500005555FFC0"
    )
        port map (
      I0 => \dout_reg[9]_0\,
      I1 => \dout_reg[9]_1\,
      I2 => \^ade_reg\,
      I3 => \dout[9]_i_4_n_0\,
      I4 => \^vde_reg\,
      I5 => data_o(1),
      O => D(1)
    );
\dout[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => p_0_in,
      I1 => \cnt[4]_i_5_n_0\,
      I2 => \cnt[4]_i_3_n_0\,
      O => \dout[9]_i_2_n_0\
    );
\dout[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01F00DF0CDFC0130"
    )
        port map (
      I0 => \^ade_reg_qq_reg_0\,
      I1 => \^ade_reg\,
      I2 => c1_reg,
      I3 => c0_reg_0,
      I4 => p_1_in,
      I5 => \adin_reg_reg_n_0_[3]\,
      O => \dout[9]_i_3_n_0\
    );
\dout[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^ade_reg_qq\,
      I1 => data_o(0),
      I2 => \^ade_reg\,
      I3 => c0_reg,
      O => \dout[9]_i_4_n_0\
    );
\dout[9]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ade_reg_qq\,
      I1 => data_o(0),
      O => \^ade_reg_qq_reg_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[0]_i_1_n_0\,
      Q => Q(0)
    );
\dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[1]_i_1_n_0\,
      Q => Q(1)
    );
\dout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[2]_i_1_n_0\,
      Q => Q(2)
    );
\dout_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[3]_i_1_n_0\,
      Q => Q(3)
    );
\dout_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[4]_i_1_n_0\,
      Q => Q(4)
    );
\dout_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[5]_i_1_n_0\,
      Q => Q(5)
    );
\dout_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[6]_i_1_n_0\,
      Q => Q(6)
    );
\dout_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[7]_i_1_n_0\,
      Q => Q(7)
    );
\dout_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[8]_i_1__1_n_0\,
      Q => Q(8)
    );
\dout_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[9]_i_1_n_0\,
      Q => Q(9)
    );
\n0q_m[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996699996669996"
    )
        port map (
      I0 => \n1q_m[2]_i_2_n_0\,
      I1 => \n1q_m[2]_i_3_n_0\,
      I2 => \n0q_m[3]_i_3_n_0\,
      I3 => \n0q_m[3]_i_2_n_0\,
      I4 => \vdin_q_reg_n_0_[0]\,
      I5 => \n0q_m[3]_i_4_n_0\,
      O => n0q_m0(1)
    );
\n0q_m[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FBB2FBB2DFFF"
    )
        port map (
      I0 => \n0q_m[3]_i_4_n_0\,
      I1 => \vdin_q_reg_n_0_[0]\,
      I2 => \n0q_m[3]_i_2_n_0\,
      I3 => \n0q_m[3]_i_3_n_0\,
      I4 => \n1q_m[2]_i_3_n_0\,
      I5 => \n1q_m[2]_i_2_n_0\,
      O => n0q_m0(2)
    );
\n0q_m[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \n1q_m[2]_i_3_n_0\,
      I1 => \n1q_m[2]_i_2_n_0\,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => \n0q_m[3]_i_2_n_0\,
      I4 => \n0q_m[3]_i_3_n_0\,
      I5 => \n0q_m[3]_i_4_n_0\,
      O => n0q_m0(3)
    );
\n0q_m[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in2_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      I5 => \n0q_m[3]_i_5_n_0\,
      O => \n0q_m[3]_i_2_n_0\
    );
\n0q_m[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \q_m_reg[7]_i_3_n_0\,
      I2 => p_0_in1_in,
      I3 => \q_m_reg[7]_i_2_n_0\,
      I4 => p_0_in_1,
      O => \n0q_m[3]_i_3_n_0\
    );
\n0q_m[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \vdin_q_reg_n_0_[0]\,
      I1 => p_0_in5_in,
      I2 => p_0_in3_in,
      O => \n0q_m[3]_i_4_n_0\
    );
\n0q_m[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555566666A66"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => n1d(2),
      I2 => n1d(0),
      I3 => \vdin_q_reg_n_0_[0]\,
      I4 => n1d(1),
      I5 => n1d(3),
      O => \n0q_m[3]_i_5_n_0\
    );
\n0q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n0q_m0(1),
      Q => n0q_m(1),
      R => '0'
    );
\n0q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n0q_m0(2),
      Q => n0q_m(2),
      R => '0'
    );
\n0q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n0q_m0(3),
      Q => n0q_m(3),
      R => '0'
    );
\n1d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data_o(6),
      I1 => data_o(13),
      I2 => \n1d[0]_i_2_n_0\,
      I3 => data_o(8),
      I4 => data_o(7),
      I5 => data_o(9),
      O => n1d0(0)
    );
\n1d[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_o(12),
      I1 => data_o(10),
      I2 => data_o(11),
      O => \n1d[0]_i_2_n_0\
    );
\n1d[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[1]_i_2_n_0\,
      I2 => \n1d[3]_i_3_n_0\,
      O => n1d0(1)
    );
\n1d[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => data_o(9),
      I1 => data_o(8),
      I2 => data_o(7),
      I3 => data_o(12),
      I4 => data_o(11),
      I5 => data_o(10),
      O => \n1d[1]_i_2_n_0\
    );
\n1d[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => \n1d[2]_i_2_n_0\,
      I3 => data_o(10),
      I4 => data_o(11),
      I5 => data_o(12),
      O => n1d0(2)
    );
\n1d[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => data_o(7),
      I1 => data_o(8),
      I2 => data_o(9),
      O => \n1d[2]_i_2_n_0\
    );
\n1d[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => data_o(9),
      I3 => data_o(8),
      I4 => data_o(7),
      I5 => \n1d[3]_i_4_n_0\,
      O => n1d0(3)
    );
\n1d[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => data_o(8),
      I1 => data_o(7),
      I2 => data_o(9),
      I3 => data_o(6),
      I4 => data_o(13),
      I5 => \n1d[0]_i_2_n_0\,
      O => \n1d[3]_i_2_n_0\
    );
\n1d[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => data_o(13),
      I1 => data_o(6),
      I2 => data_o(11),
      I3 => data_o(10),
      I4 => data_o(12),
      O => \n1d[3]_i_3_n_0\
    );
\n1d[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => data_o(10),
      I1 => data_o(11),
      I2 => data_o(12),
      O => \n1d[3]_i_4_n_0\
    );
\n1d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n1d0(0),
      Q => n1d(0),
      R => '0'
    );
\n1d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n1d0(1),
      Q => n1d(1),
      R => '0'
    );
\n1d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n1d0(2),
      Q => n1d(2),
      R => '0'
    );
\n1d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n1d0(3),
      Q => n1d(3),
      R => '0'
    );
\n1q_m[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \n1q_m[2]_i_3_n_0\,
      I1 => \n1q_m[2]_i_2_n_0\,
      I2 => \n1q_m[3]_i_3_n_0\,
      I3 => \n1q_m[3]_i_4_n_0\,
      O => n1q_m0(1)
    );
\n1q_m[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7EE8"
    )
        port map (
      I0 => \n1q_m[3]_i_4_n_0\,
      I1 => \n1q_m[2]_i_2_n_0\,
      I2 => \n1q_m[2]_i_3_n_0\,
      I3 => \n1q_m[3]_i_3_n_0\,
      O => \n1q_m[2]_i_1_n_0\
    );
\n1q_m[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E1EE178878778"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \q_m_reg[7]_i_2_n_0\,
      I2 => q_m_2,
      I3 => p_0_in2_in,
      I4 => p_0_in3_in,
      I5 => p_0_in1_in,
      O => \n1q_m[2]_i_2_n_0\
    );
\n1q_m[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B42D4BD2"
    )
        port map (
      I0 => \q_m_reg[7]_i_2_n_0\,
      I1 => p_0_in3_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      O => \n1q_m[2]_i_3_n_0\
    );
\n1q_m[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \n1q_m[3]_i_2_n_0\,
      I1 => \n1q_m[3]_i_3_n_0\,
      I2 => \n1q_m[3]_i_4_n_0\,
      O => n1q_m0(3)
    );
\n1q_m[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8228882222888228"
    )
        port map (
      I0 => \n1q_m[2]_i_2_n_0\,
      I1 => p_0_in5_in,
      I2 => p_0_in4_in,
      I3 => \vdin_q_reg_n_0_[0]\,
      I4 => p_0_in3_in,
      I5 => \q_m_reg[7]_i_2_n_0\,
      O => \n1q_m[3]_i_2_n_0\
    );
\n1q_m[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC3AAAAAAAA3CC3"
    )
        port map (
      I0 => \vdin_q_reg_n_0_[0]\,
      I1 => p_0_in0_in,
      I2 => \q_m_reg[7]_i_2_n_0\,
      I3 => \q_m_reg[7]_i_3_n_0\,
      I4 => p_0_in1_in,
      I5 => p_0_in_1,
      O => \n1q_m[3]_i_3_n_0\
    );
\n1q_m[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060690"
    )
        port map (
      I0 => p_0_in_1,
      I1 => p_0_in1_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in3_in,
      I4 => p_0_in5_in,
      O => \n1q_m[3]_i_4_n_0\
    );
\n1q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n1q_m0(1),
      Q => n1q_m(1),
      R => '0'
    );
\n1q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1q_m[2]_i_1_n_0\,
      Q => n1q_m(2),
      R => '0'
    );
\n1q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => n1q_m0(3),
      Q => n1q_m(3),
      R => '0'
    );
\q_m_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA800570055FFAA"
    )
        port map (
      I0 => n1d(2),
      I1 => n1d(0),
      I2 => n1d(1),
      I3 => n1d(3),
      I4 => p_0_in5_in,
      I5 => \vdin_q_reg_n_0_[0]\,
      O => q_m_1
    );
\q_m_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \vdin_q_reg_n_0_[0]\,
      I1 => p_0_in4_in,
      I2 => p_0_in5_in,
      O => q_m_2
    );
\q_m_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_0_in4_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in3_in,
      I4 => \q_m_reg[7]_i_2_n_0\,
      O => q_m_3
    );
\q_m_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in2_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      O => q_m_4
    );
\q_m_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \q_m_reg[7]_i_2_n_0\,
      I1 => q_m_2,
      I2 => p_0_in2_in,
      I3 => p_0_in3_in,
      I4 => p_0_in1_in,
      O => \q_m_reg[5]_i_1_n_0\
    );
\q_m_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => p_0_in3_in,
      I2 => p_0_in2_in,
      I3 => q_m_2,
      I4 => p_0_in0_in,
      O => q_m_6
    );
\q_m_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in_1,
      I1 => \q_m_reg[7]_i_2_n_0\,
      I2 => p_0_in1_in,
      I3 => \q_m_reg[7]_i_3_n_0\,
      I4 => p_0_in0_in,
      O => q_m_7
    );
\q_m_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFAAAA"
    )
        port map (
      I0 => n1d(3),
      I1 => n1d(1),
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => n1d(0),
      I4 => n1d(2),
      O => \q_m_reg[7]_i_2_n_0\
    );
\q_m_reg[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_0_in4_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in2_in,
      I4 => p_0_in3_in,
      O => \q_m_reg[7]_i_3_n_0\
    );
\q_m_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005575"
    )
        port map (
      I0 => n1d(2),
      I1 => n1d(0),
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => n1d(1),
      I4 => n1d(3),
      O => \q_m_reg[8]_i_1_n_0\
    );
\q_m_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \vdin_q_reg_n_0_[0]\,
      Q => \q_m_reg_reg_n_0_[0]\,
      R => '0'
    );
\q_m_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_1,
      Q => \q_m_reg_reg_n_0_[1]\,
      R => '0'
    );
\q_m_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_2,
      Q => \q_m_reg_reg_n_0_[2]\,
      R => '0'
    );
\q_m_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_3,
      Q => \q_m_reg_reg_n_0_[3]\,
      R => '0'
    );
\q_m_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_4,
      Q => \q_m_reg_reg_n_0_[4]\,
      R => '0'
    );
\q_m_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[5]_i_1_n_0\,
      Q => \q_m_reg_reg_n_0_[5]\,
      R => '0'
    );
\q_m_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_6,
      Q => \q_m_reg_reg_n_0_[6]\,
      R => '0'
    );
\q_m_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_7,
      Q => \q_m_reg_reg_n_0_[7]\,
      R => '0'
    );
\q_m_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[8]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
vde_q_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(1),
      Q => vde_q,
      R => '0'
    );
vde_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => vde_q,
      Q => \^vde_reg\,
      R => '0'
    );
\vdin_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(6),
      Q => \vdin_q_reg_n_0_[0]\,
      R => '0'
    );
\vdin_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(7),
      Q => p_0_in5_in,
      R => '0'
    );
\vdin_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(8),
      Q => p_0_in4_in,
      R => '0'
    );
\vdin_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(9),
      Q => p_0_in3_in,
      R => '0'
    );
\vdin_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(10),
      Q => p_0_in2_in,
      R => '0'
    );
\vdin_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(11),
      Q => p_0_in1_in,
      R => '0'
    );
\vdin_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(12),
      Q => p_0_in0_in,
      R => '0'
    );
\vdin_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(13),
      Q => p_0_in_1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mb_usb_hdmi_text_controller_0_2_encode__parameterized0\ is
  port (
    c0_reg : out STD_LOGIC;
    \q_m_reg_reg[8]_0\ : out STD_LOGIC;
    \q_m_reg_reg[8]_1\ : out STD_LOGIC;
    \adin_reg_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    pix_clk : in STD_LOGIC;
    vde_reg : in STD_LOGIC;
    data_o : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \dout_reg[4]_0\ : in STD_LOGIC;
    ade_reg : in STD_LOGIC;
    \dout_reg[0]_0\ : in STD_LOGIC;
    \dout_reg[3]_0\ : in STD_LOGIC;
    ade_reg_qq : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mb_usb_hdmi_text_controller_0_2_encode__parameterized0\ : entity is "encode";
end \mb_usb_hdmi_text_controller_0_2_encode__parameterized0\;

architecture STRUCTURE of \mb_usb_hdmi_text_controller_0_2_encode__parameterized0\ is
  signal \adin_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \adin_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \adin_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \adin_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \adin_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \adin_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \adin_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \adin_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal c0_q_reg_srl2_n_0 : STD_LOGIC;
  signal \^c0_reg\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_7_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_10__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_11__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_12__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_13__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_14_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_15__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_16__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_17_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_18__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_8__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_9__0_n_0\ : STD_LOGIC;
  signal \dout[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[0]_i_2_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[1]_i_2_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[2]_i_2_n_0\ : STD_LOGIC;
  signal \dout[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \dout[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[4]_i_2_n_0\ : STD_LOGIC;
  signal \dout[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[5]_i_2_n_0\ : STD_LOGIC;
  signal \dout[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \dout[6]_i_3_n_0\ : STD_LOGIC;
  signal \dout[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[7]_i_2_n_0\ : STD_LOGIC;
  signal \n0q_m[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \n0q_m_reg_n_0_[1]\ : STD_LOGIC;
  signal \n0q_m_reg_n_0_[2]\ : STD_LOGIC;
  signal \n0q_m_reg_n_0_[3]\ : STD_LOGIC;
  signal n1d : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \n1d[0]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_4_n_0\ : STD_LOGIC;
  signal \n1q_m[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \n1q_m[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \n1q_m_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1q_m_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1q_m_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal q_m_1 : STD_LOGIC;
  signal q_m_2 : STD_LOGIC;
  signal q_m_3 : STD_LOGIC;
  signal q_m_4 : STD_LOGIC;
  signal q_m_6 : STD_LOGIC;
  signal \q_m_reg[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \q_m_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \^q_m_reg_reg[8]_0\ : STD_LOGIC;
  signal \^q_m_reg_reg[8]_1\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \vdin_q_reg_n_0_[0]\ : STD_LOGIC;
  attribute srl_name : string;
  attribute srl_name of c0_q_reg_srl2 : label is "\inst/vga_to_hdmi /\inst/encg/c0_q_reg_srl2 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_3__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cnt[2]_i_2__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cnt[3]_i_6__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cnt[4]_i_12__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cnt[4]_i_13__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \cnt[4]_i_14\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cnt[4]_i_17\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt[4]_i_18__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cnt[4]_i_7__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \cnt[4]_i_8__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt[4]_i_9__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dout[9]_i_2__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \n0q_m[3]_i_3__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \n0q_m[3]_i_4__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \n1d[0]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \n1d[3]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \n1q_m[1]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \n1q_m[2]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \n1q_m[2]_i_3__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_4__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q_m_reg[3]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \q_m_reg[4]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_2__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_3__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \q_m_reg[8]_i_1__0\ : label is "soft_lutpair20";
begin
  c0_reg <= \^c0_reg\;
  \q_m_reg_reg[8]_0\ <= \^q_m_reg_reg[8]_0\;
  \q_m_reg_reg[8]_1\ <= \^q_m_reg_reg[8]_1\;
\adin_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(2),
      Q => \adin_q_reg_n_0_[0]\,
      R => '0'
    );
\adin_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(3),
      Q => \adin_q_reg_n_0_[1]\,
      R => '0'
    );
\adin_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(4),
      Q => \adin_q_reg_n_0_[2]\,
      R => '0'
    );
\adin_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(5),
      Q => \adin_q_reg_n_0_[3]\,
      R => '0'
    );
\adin_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \adin_q_reg_n_0_[0]\,
      Q => \adin_reg_reg_n_0_[0]\,
      R => '0'
    );
\adin_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \adin_q_reg_n_0_[1]\,
      Q => \adin_reg_reg_n_0_[1]\,
      R => '0'
    );
\adin_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \adin_q_reg_n_0_[2]\,
      Q => \adin_reg_reg_n_0_[2]\,
      R => '0'
    );
\adin_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \adin_q_reg_n_0_[3]\,
      Q => \adin_reg_reg_n_0_[3]\,
      R => '0'
    );
c0_q_reg_srl2: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => pix_clk,
      D => data_i(0),
      Q => c0_q_reg_srl2_n_0
    );
c0_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => c0_q_reg_srl2_n_0,
      Q => \^c0_reg\,
      R => '0'
    );
\cnt[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0280A280A28A028"
    )
        port map (
      I0 => vde_reg,
      I1 => \cnt[1]_i_2__0_n_0\,
      I2 => cnt(1),
      I3 => \cnt[4]_i_3__0_n_0\,
      I4 => \cnt[4]_i_5__0_n_0\,
      I5 => \cnt[1]_i_3__0_n_0\,
      O => \cnt[1]_i_1__0_n_0\
    );
\cnt[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[1]\,
      I1 => \n0q_m_reg_n_0_[1]\,
      O => \cnt[1]_i_2__0_n_0\
    );
\cnt[1]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[1]\,
      I1 => \^q_m_reg_reg[8]_0\,
      I2 => \n1q_m_reg_n_0_[1]\,
      O => \cnt[1]_i_3__0_n_0\
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => vde_reg,
      I1 => \cnt[2]_i_2__1_n_0\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => \cnt[2]_i_3_n_0\,
      O => \cnt[2]_i_1__0_n_0\
    );
\cnt[2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6996AA"
    )
        port map (
      I0 => \cnt[3]_i_6__1_n_0\,
      I1 => cnt(1),
      I2 => \^q_m_reg_reg[8]_0\,
      I3 => \n0q_m_reg_n_0_[1]\,
      I4 => \n1q_m_reg_n_0_[1]\,
      O => \cnt[2]_i_2__1_n_0\
    );
\cnt[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C9CC9C6636C39C9"
    )
        port map (
      I0 => \cnt[4]_i_5__0_n_0\,
      I1 => \cnt[3]_i_6__1_n_0\,
      I2 => cnt(1),
      I3 => \n0q_m_reg_n_0_[1]\,
      I4 => \^q_m_reg_reg[8]_0\,
      I5 => \n1q_m_reg_n_0_[1]\,
      O => \cnt[2]_i_3_n_0\
    );
\cnt[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202A2A2A202A2"
    )
        port map (
      I0 => vde_reg,
      I1 => \cnt[3]_i_2__0_n_0\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => \cnt[3]_i_3__0_n_0\,
      I4 => \cnt[4]_i_5__0_n_0\,
      I5 => \cnt[3]_i_4__0_n_0\,
      O => \cnt[3]_i_1__0_n_0\
    );
\cnt[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A5995A965A66A56"
    )
        port map (
      I0 => \cnt[4]_i_8__0_n_0\,
      I1 => cnt(2),
      I2 => \n0q_m_reg_n_0_[2]\,
      I3 => \n1q_m_reg_n_0_[2]\,
      I4 => \^q_m_reg_reg[8]_0\,
      I5 => \cnt[4]_i_13__0_n_0\,
      O => \cnt[3]_i_2__0_n_0\
    );
\cnt[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \cnt[4]_i_12__0_n_0\,
      I1 => \cnt[3]_i_5__0_n_0\,
      I2 => \n1q_m_reg_n_0_[3]\,
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => cnt(3),
      I5 => \cnt[4]_i_14_n_0\,
      O => \cnt[3]_i_3__0_n_0\
    );
\cnt[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"13013713ECFEC8EC"
    )
        port map (
      I0 => cnt(1),
      I1 => \cnt[3]_i_6__1_n_0\,
      I2 => \^q_m_reg_reg[8]_0\,
      I3 => \n1q_m_reg_n_0_[1]\,
      I4 => \n0q_m_reg_n_0_[1]\,
      I5 => \cnt[3]_i_7_n_0\,
      O => \cnt[3]_i_4__0_n_0\
    );
\cnt[3]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[2]\,
      I1 => \n1q_m_reg_n_0_[2]\,
      O => \cnt[3]_i_5__0_n_0\
    );
\cnt[3]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => cnt(2),
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => \n1q_m_reg_n_0_[2]\,
      O => \cnt[3]_i_6__1_n_0\
    );
\cnt[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696996966996"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[3]\,
      I1 => \n0q_m_reg_n_0_[3]\,
      I2 => cnt(3),
      I3 => cnt(2),
      I4 => \n1q_m_reg_n_0_[2]\,
      I5 => \n0q_m_reg_n_0_[2]\,
      O => \cnt[3]_i_7_n_0\
    );
\cnt[4]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[3]\,
      I1 => \n1q_m_reg_n_0_[3]\,
      I2 => \n1q_m_reg_n_0_[1]\,
      I3 => \n0q_m_reg_n_0_[1]\,
      I4 => \n1q_m_reg_n_0_[2]\,
      I5 => \n0q_m_reg_n_0_[2]\,
      O => \cnt[4]_i_10__0_n_0\
    );
\cnt[4]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04FB4FB0FB04B0"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[2]\,
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => cnt(3),
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => \n1q_m_reg_n_0_[3]\,
      I5 => cnt(4),
      O => \cnt[4]_i_11__0_n_0\
    );
\cnt[4]_i_12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"52157A57"
    )
        port map (
      I0 => \cnt[3]_i_6__1_n_0\,
      I1 => \n1q_m_reg_n_0_[1]\,
      I2 => \^q_m_reg_reg[8]_0\,
      I3 => \n0q_m_reg_n_0_[1]\,
      I4 => cnt(1),
      O => \cnt[4]_i_12__0_n_0\
    );
\cnt[4]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cnt(3),
      I1 => \n0q_m_reg_n_0_[3]\,
      I2 => \n1q_m_reg_n_0_[3]\,
      O => \cnt[4]_i_13__0_n_0\
    );
\cnt[4]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6F660F6"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[2]\,
      I1 => \n1q_m_reg_n_0_[2]\,
      I2 => cnt(2),
      I3 => \n0q_m_reg_n_0_[1]\,
      I4 => \^q_m_reg_reg[8]_0\,
      O => \cnt[4]_i_14_n_0\
    );
\cnt[4]_i_15__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2FFFFF2222FF2F"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[3]\,
      I1 => \n0q_m_reg_n_0_[3]\,
      I2 => \n0q_m_reg_n_0_[1]\,
      I3 => \n1q_m_reg_n_0_[1]\,
      I4 => \n0q_m_reg_n_0_[2]\,
      I5 => \n1q_m_reg_n_0_[2]\,
      O => \cnt[4]_i_15__0_n_0\
    );
\cnt[4]_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0FDD0FDFFFFD0FD"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[1]\,
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => \n0q_m_reg_n_0_[2]\,
      I3 => \n1q_m_reg_n_0_[2]\,
      I4 => \n0q_m_reg_n_0_[3]\,
      I5 => \n1q_m_reg_n_0_[3]\,
      O => \cnt[4]_i_16__0_n_0\
    );
\cnt[4]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBB220"
    )
        port map (
      I0 => cnt(1),
      I1 => \n1q_m_reg_n_0_[1]\,
      I2 => \^q_m_reg_reg[8]_0\,
      I3 => \n0q_m_reg_n_0_[1]\,
      I4 => \cnt[3]_i_6__1_n_0\,
      O => \cnt[4]_i_17_n_0\
    );
\cnt[4]_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[2]\,
      I1 => \n1q_m_reg_n_0_[2]\,
      I2 => cnt(2),
      O => \cnt[4]_i_18__0_n_0\
    );
\cnt[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202A2A2A202A2"
    )
        port map (
      I0 => vde_reg,
      I1 => \cnt[4]_i_2__0_n_0\,
      I2 => \cnt[4]_i_3__0_n_0\,
      I3 => \cnt[4]_i_4__0_n_0\,
      I4 => \cnt[4]_i_5__0_n_0\,
      I5 => \cnt[4]_i_6__0_n_0\,
      O => \cnt[4]_i_1__0_n_0\
    );
\cnt[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555596699669AAAA"
    )
        port map (
      I0 => \cnt[4]_i_7__0_n_0\,
      I1 => \n1q_m_reg_n_0_[3]\,
      I2 => \n0q_m_reg_n_0_[3]\,
      I3 => cnt(3),
      I4 => \cnt[4]_i_8__0_n_0\,
      I5 => \cnt[4]_i_9__0_n_0\,
      O => \cnt[4]_i_2__0_n_0\
    );
\cnt[4]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => \cnt[4]_i_10__0_n_0\,
      I1 => cnt(2),
      I2 => cnt(4),
      I3 => cnt(1),
      I4 => cnt(3),
      O => \cnt[4]_i_3__0_n_0\
    );
\cnt[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"95995955A9AA9A99"
    )
        port map (
      I0 => \cnt[4]_i_11__0_n_0\,
      I1 => \cnt[4]_i_12__0_n_0\,
      I2 => \n1q_m_reg_n_0_[2]\,
      I3 => \n0q_m_reg_n_0_[2]\,
      I4 => \cnt[4]_i_13__0_n_0\,
      I5 => \cnt[4]_i_14_n_0\,
      O => \cnt[4]_i_4__0_n_0\
    );
\cnt[4]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47C477F7"
    )
        port map (
      I0 => \cnt[4]_i_15__0_n_0\,
      I1 => cnt(4),
      I2 => \n0q_m_reg_n_0_[3]\,
      I3 => \n1q_m_reg_n_0_[3]\,
      I4 => \cnt[4]_i_16__0_n_0\,
      O => \cnt[4]_i_5__0_n_0\
    );
\cnt[4]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E18187171E7E78E"
    )
        port map (
      I0 => \cnt[4]_i_17_n_0\,
      I1 => \cnt[4]_i_18__0_n_0\,
      I2 => \n1q_m_reg_n_0_[3]\,
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => cnt(3),
      I5 => cnt(4),
      O => \cnt[4]_i_6__0_n_0\
    );
\cnt[4]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5965A96A"
    )
        port map (
      I0 => cnt(4),
      I1 => \^q_m_reg_reg[8]_0\,
      I2 => \n1q_m_reg_n_0_[3]\,
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => cnt(3),
      O => \cnt[4]_i_7__0_n_0\
    );
\cnt[4]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEBF0820"
    )
        port map (
      I0 => cnt(1),
      I1 => \^q_m_reg_reg[8]_0\,
      I2 => \n0q_m_reg_n_0_[1]\,
      I3 => \n1q_m_reg_n_0_[1]\,
      I4 => \cnt[3]_i_6__1_n_0\,
      O => \cnt[4]_i_8__0_n_0\
    );
\cnt[4]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B28E"
    )
        port map (
      I0 => cnt(2),
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => \n1q_m_reg_n_0_[2]\,
      I3 => \^q_m_reg_reg[8]_0\,
      O => \cnt[4]_i_9__0_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[1]_i_1__0_n_0\,
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[2]_i_1__0_n_0\,
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[3]_i_1__0_n_0\,
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \cnt[4]_i_1__0_n_0\,
      Q => cnt(4)
    );
\dout[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A22A"
    )
        port map (
      I0 => \dout[0]_i_2_n_0\,
      I1 => vde_reg,
      I2 => \q_m_reg_reg_n_0_[0]\,
      I3 => \^q_m_reg_reg[8]_1\,
      O => \dout[0]_i_1__0_n_0\
    );
\dout[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFAAABEAAAAAAAA"
    )
        port map (
      I0 => \dout_reg[0]_0\,
      I1 => \adin_reg_reg_n_0_[2]\,
      I2 => \adin_reg_reg_n_0_[0]\,
      I3 => \adin_reg_reg_n_0_[1]\,
      I4 => \adin_reg_reg_n_0_[3]\,
      I5 => ade_reg,
      O => \dout[0]_i_2_n_0\
    );
\dout[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A22A"
    )
        port map (
      I0 => \dout[1]_i_2_n_0\,
      I1 => vde_reg,
      I2 => \q_m_reg_reg_n_0_[1]\,
      I3 => \^q_m_reg_reg[8]_1\,
      O => \dout[1]_i_1__0_n_0\
    );
\dout[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAABEAABAAAEEAA"
    )
        port map (
      I0 => \dout_reg[0]_0\,
      I1 => \adin_reg_reg_n_0_[0]\,
      I2 => \adin_reg_reg_n_0_[2]\,
      I3 => ade_reg,
      I4 => \adin_reg_reg_n_0_[3]\,
      I5 => \adin_reg_reg_n_0_[1]\,
      O => \dout[1]_i_2_n_0\
    );
\dout[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00F1111"
    )
        port map (
      I0 => \dout[2]_i_2_n_0\,
      I1 => data_o(1),
      I2 => \q_m_reg_reg_n_0_[2]\,
      I3 => \^q_m_reg_reg[8]_1\,
      I4 => vde_reg,
      O => \dout[2]_i_1__0_n_0\
    );
\dout[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98B4FFFF98B40000"
    )
        port map (
      I0 => \adin_reg_reg_n_0_[3]\,
      I1 => \adin_reg_reg_n_0_[2]\,
      I2 => \adin_reg_reg_n_0_[0]\,
      I3 => \adin_reg_reg_n_0_[1]\,
      I4 => ade_reg,
      I5 => \dout[6]_i_3_n_0\,
      O => \dout[2]_i_2_n_0\
    );
\dout[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00F1111"
    )
        port map (
      I0 => \dout[3]_i_2__0_n_0\,
      I1 => data_o(1),
      I2 => \q_m_reg_reg_n_0_[3]\,
      I3 => \^q_m_reg_reg[8]_1\,
      I4 => vde_reg,
      O => \dout[3]_i_1__0_n_0\
    );
\dout[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFD7D775"
    )
        port map (
      I0 => ade_reg,
      I1 => \adin_reg_reg_n_0_[3]\,
      I2 => \adin_reg_reg_n_0_[2]\,
      I3 => \adin_reg_reg_n_0_[1]\,
      I4 => \adin_reg_reg_n_0_[0]\,
      I5 => \dout_reg[3]_0\,
      O => \dout[3]_i_2__0_n_0\
    );
\dout[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A22A"
    )
        port map (
      I0 => \dout[4]_i_2_n_0\,
      I1 => vde_reg,
      I2 => \q_m_reg_reg_n_0_[4]\,
      I3 => \^q_m_reg_reg[8]_1\,
      O => \dout[4]_i_1__0_n_0\
    );
\dout[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEFAAAABEABAAAA"
    )
        port map (
      I0 => \dout_reg[4]_0\,
      I1 => \adin_reg_reg_n_0_[0]\,
      I2 => \adin_reg_reg_n_0_[1]\,
      I3 => \adin_reg_reg_n_0_[3]\,
      I4 => ade_reg,
      I5 => \adin_reg_reg_n_0_[2]\,
      O => \dout[4]_i_2_n_0\
    );
\dout[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A22A"
    )
        port map (
      I0 => \dout[5]_i_2_n_0\,
      I1 => vde_reg,
      I2 => \q_m_reg_reg_n_0_[5]\,
      I3 => \^q_m_reg_reg[8]_1\,
      O => \dout[5]_i_1__0_n_0\
    );
\dout[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF288222A0"
    )
        port map (
      I0 => ade_reg,
      I1 => \adin_reg_reg_n_0_[3]\,
      I2 => \adin_reg_reg_n_0_[0]\,
      I3 => \adin_reg_reg_n_0_[1]\,
      I4 => \adin_reg_reg_n_0_[2]\,
      I5 => \dout_reg[0]_0\,
      O => \dout[5]_i_2_n_0\
    );
\dout[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00F1111"
    )
        port map (
      I0 => \dout[6]_i_2__0_n_0\,
      I1 => data_o(1),
      I2 => \q_m_reg_reg_n_0_[6]\,
      I3 => \^q_m_reg_reg[8]_1\,
      I4 => vde_reg,
      O => \dout[6]_i_1__0_n_0\
    );
\dout[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4669FFFF46690000"
    )
        port map (
      I0 => \adin_reg_reg_n_0_[3]\,
      I1 => \adin_reg_reg_n_0_[2]\,
      I2 => \adin_reg_reg_n_0_[1]\,
      I3 => \adin_reg_reg_n_0_[0]\,
      I4 => ade_reg,
      I5 => \dout[6]_i_3_n_0\,
      O => \dout[6]_i_2__0_n_0\
    );
\dout[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^c0_reg\,
      I1 => data_o(0),
      I2 => ade_reg_qq,
      O => \dout[6]_i_3_n_0\
    );
\dout[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00F1111"
    )
        port map (
      I0 => \dout[7]_i_2_n_0\,
      I1 => data_o(1),
      I2 => \q_m_reg_reg_n_0_[7]\,
      I3 => \^q_m_reg_reg[8]_1\,
      I4 => vde_reg,
      O => \dout[7]_i_1__0_n_0\
    );
\dout[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1445040455555555"
    )
        port map (
      I0 => \dout_reg[3]_0\,
      I1 => \adin_reg_reg_n_0_[0]\,
      I2 => \adin_reg_reg_n_0_[1]\,
      I3 => \adin_reg_reg_n_0_[3]\,
      I4 => \adin_reg_reg_n_0_[2]\,
      I5 => ade_reg,
      O => \dout[7]_i_2_n_0\
    );
\dout[9]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \cnt[4]_i_5__0_n_0\,
      I1 => \cnt[4]_i_3__0_n_0\,
      I2 => \^q_m_reg_reg[8]_0\,
      O => \^q_m_reg_reg[8]_1\
    );
\dout[9]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D09F"
    )
        port map (
      I0 => \adin_reg_reg_n_0_[1]\,
      I1 => \adin_reg_reg_n_0_[0]\,
      I2 => \adin_reg_reg_n_0_[3]\,
      I3 => \adin_reg_reg_n_0_[2]\,
      O => \adin_reg_reg[1]_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[0]_i_1__0_n_0\,
      Q => Q(0)
    );
\dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[1]_i_1__0_n_0\,
      Q => Q(1)
    );
\dout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[2]_i_1__0_n_0\,
      Q => Q(2)
    );
\dout_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[3]_i_1__0_n_0\,
      Q => Q(3)
    );
\dout_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[4]_i_1__0_n_0\,
      Q => Q(4)
    );
\dout_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[5]_i_1__0_n_0\,
      Q => Q(5)
    );
\dout_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[6]_i_1__0_n_0\,
      Q => Q(6)
    );
\dout_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => \dout[7]_i_1__0_n_0\,
      Q => Q(7)
    );
\dout_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => D(0),
      Q => Q(8)
    );
\dout_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => AR(0),
      D => D(1),
      Q => Q(9)
    );
\n0q_m[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996699996669996"
    )
        port map (
      I0 => \n1q_m[2]_i_2__0_n_0\,
      I1 => \n1q_m[2]_i_3__0_n_0\,
      I2 => \n0q_m[3]_i_3__0_n_0\,
      I3 => \n0q_m[3]_i_2__0_n_0\,
      I4 => \vdin_q_reg_n_0_[0]\,
      I5 => \n0q_m[3]_i_4__0_n_0\,
      O => \n0q_m[1]_i_1__0_n_0\
    );
\n0q_m[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FBB2FBB2DFFF"
    )
        port map (
      I0 => \n0q_m[3]_i_4__0_n_0\,
      I1 => \vdin_q_reg_n_0_[0]\,
      I2 => \n0q_m[3]_i_2__0_n_0\,
      I3 => \n0q_m[3]_i_3__0_n_0\,
      I4 => \n1q_m[2]_i_3__0_n_0\,
      I5 => \n1q_m[2]_i_2__0_n_0\,
      O => \n0q_m[2]_i_1__0_n_0\
    );
\n0q_m[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \n1q_m[2]_i_3__0_n_0\,
      I1 => \n1q_m[2]_i_2__0_n_0\,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => \n0q_m[3]_i_2__0_n_0\,
      I4 => \n0q_m[3]_i_3__0_n_0\,
      I5 => \n0q_m[3]_i_4__0_n_0\,
      O => \n0q_m[3]_i_1__0_n_0\
    );
\n0q_m[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in2_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      I5 => \n0q_m[3]_i_5__0_n_0\,
      O => \n0q_m[3]_i_2__0_n_0\
    );
\n0q_m[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \q_m_reg[7]_i_3__0_n_0\,
      I2 => p_0_in1_in,
      I3 => \q_m_reg[7]_i_2__0_n_0\,
      I4 => p_0_in,
      O => \n0q_m[3]_i_3__0_n_0\
    );
\n0q_m[3]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \vdin_q_reg_n_0_[0]\,
      I1 => p_0_in5_in,
      I2 => p_0_in3_in,
      O => \n0q_m[3]_i_4__0_n_0\
    );
\n0q_m[3]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555566666A66"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => n1d(2),
      I2 => n1d(0),
      I3 => \vdin_q_reg_n_0_[0]\,
      I4 => n1d(1),
      I5 => n1d(3),
      O => \n0q_m[3]_i_5__0_n_0\
    );
\n0q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n0q_m[1]_i_1__0_n_0\,
      Q => \n0q_m_reg_n_0_[1]\,
      R => '0'
    );
\n0q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n0q_m[2]_i_1__0_n_0\,
      Q => \n0q_m_reg_n_0_[2]\,
      R => '0'
    );
\n0q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n0q_m[3]_i_1__0_n_0\,
      Q => \n0q_m_reg_n_0_[3]\,
      R => '0'
    );
\n1d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data_o(6),
      I1 => data_o(13),
      I2 => \n1d[0]_i_2_n_0\,
      I3 => data_o(8),
      I4 => data_o(7),
      I5 => data_o(9),
      O => \n1d[0]_i_1_n_0\
    );
\n1d[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_o(12),
      I1 => data_o(10),
      I2 => data_o(11),
      O => \n1d[0]_i_2_n_0\
    );
\n1d[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[1]_i_2_n_0\,
      I2 => \n1d[3]_i_3_n_0\,
      O => \n1d[1]_i_1_n_0\
    );
\n1d[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => data_o(9),
      I1 => data_o(8),
      I2 => data_o(7),
      I3 => data_o(12),
      I4 => data_o(11),
      I5 => data_o(10),
      O => \n1d[1]_i_2_n_0\
    );
\n1d[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => \n1d[2]_i_2_n_0\,
      I3 => data_o(10),
      I4 => data_o(11),
      I5 => data_o(12),
      O => \n1d[2]_i_1_n_0\
    );
\n1d[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => data_o(7),
      I1 => data_o(8),
      I2 => data_o(9),
      O => \n1d[2]_i_2_n_0\
    );
\n1d[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => data_o(9),
      I3 => data_o(8),
      I4 => data_o(7),
      I5 => \n1d[3]_i_4_n_0\,
      O => \n1d[3]_i_1_n_0\
    );
\n1d[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => data_o(8),
      I1 => data_o(7),
      I2 => data_o(9),
      I3 => data_o(6),
      I4 => data_o(13),
      I5 => \n1d[0]_i_2_n_0\,
      O => \n1d[3]_i_2_n_0\
    );
\n1d[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => data_o(13),
      I1 => data_o(6),
      I2 => data_o(11),
      I3 => data_o(10),
      I4 => data_o(12),
      O => \n1d[3]_i_3_n_0\
    );
\n1d[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => data_o(10),
      I1 => data_o(11),
      I2 => data_o(12),
      O => \n1d[3]_i_4_n_0\
    );
\n1d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[0]_i_1_n_0\,
      Q => n1d(0),
      R => '0'
    );
\n1d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[1]_i_1_n_0\,
      Q => n1d(1),
      R => '0'
    );
\n1d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[2]_i_1_n_0\,
      Q => n1d(2),
      R => '0'
    );
\n1d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[3]_i_1_n_0\,
      Q => n1d(3),
      R => '0'
    );
\n1q_m[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \n1q_m[2]_i_3__0_n_0\,
      I1 => \n1q_m[2]_i_2__0_n_0\,
      I2 => \n1q_m[3]_i_3__0_n_0\,
      I3 => \n1q_m[3]_i_4__0_n_0\,
      O => \n1q_m[1]_i_1__0_n_0\
    );
\n1q_m[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7EE8"
    )
        port map (
      I0 => \n1q_m[3]_i_4__0_n_0\,
      I1 => \n1q_m[2]_i_2__0_n_0\,
      I2 => \n1q_m[2]_i_3__0_n_0\,
      I3 => \n1q_m[3]_i_3__0_n_0\,
      O => \n1q_m[2]_i_1__0_n_0\
    );
\n1q_m[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E1EE178878778"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \q_m_reg[7]_i_2__0_n_0\,
      I2 => q_m_2,
      I3 => p_0_in2_in,
      I4 => p_0_in3_in,
      I5 => p_0_in1_in,
      O => \n1q_m[2]_i_2__0_n_0\
    );
\n1q_m[2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B42D4BD2"
    )
        port map (
      I0 => \q_m_reg[7]_i_2__0_n_0\,
      I1 => p_0_in3_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      O => \n1q_m[2]_i_3__0_n_0\
    );
\n1q_m[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \n1q_m[3]_i_2__0_n_0\,
      I1 => \n1q_m[3]_i_3__0_n_0\,
      I2 => \n1q_m[3]_i_4__0_n_0\,
      O => \n1q_m[3]_i_1__0_n_0\
    );
\n1q_m[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8228882222888228"
    )
        port map (
      I0 => \n1q_m[2]_i_2__0_n_0\,
      I1 => p_0_in5_in,
      I2 => p_0_in4_in,
      I3 => \vdin_q_reg_n_0_[0]\,
      I4 => p_0_in3_in,
      I5 => \q_m_reg[7]_i_2__0_n_0\,
      O => \n1q_m[3]_i_2__0_n_0\
    );
\n1q_m[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC3AAAAAAAA3CC3"
    )
        port map (
      I0 => \vdin_q_reg_n_0_[0]\,
      I1 => p_0_in0_in,
      I2 => \q_m_reg[7]_i_2__0_n_0\,
      I3 => \q_m_reg[7]_i_3__0_n_0\,
      I4 => p_0_in1_in,
      I5 => p_0_in,
      O => \n1q_m[3]_i_3__0_n_0\
    );
\n1q_m[3]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060690"
    )
        port map (
      I0 => p_0_in,
      I1 => p_0_in1_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in3_in,
      I4 => p_0_in5_in,
      O => \n1q_m[3]_i_4__0_n_0\
    );
\n1q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1q_m[1]_i_1__0_n_0\,
      Q => \n1q_m_reg_n_0_[1]\,
      R => '0'
    );
\n1q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1q_m[2]_i_1__0_n_0\,
      Q => \n1q_m_reg_n_0_[2]\,
      R => '0'
    );
\n1q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1q_m[3]_i_1__0_n_0\,
      Q => \n1q_m_reg_n_0_[3]\,
      R => '0'
    );
\q_m_reg[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA800570055FFAA"
    )
        port map (
      I0 => n1d(2),
      I1 => n1d(0),
      I2 => n1d(1),
      I3 => n1d(3),
      I4 => p_0_in5_in,
      I5 => \vdin_q_reg_n_0_[0]\,
      O => q_m_1
    );
\q_m_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \vdin_q_reg_n_0_[0]\,
      I1 => p_0_in4_in,
      I2 => p_0_in5_in,
      O => q_m_2
    );
\q_m_reg[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_0_in4_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in3_in,
      I4 => \q_m_reg[7]_i_2__0_n_0\,
      O => q_m_3
    );
\q_m_reg[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in2_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      O => q_m_4
    );
\q_m_reg[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \q_m_reg[7]_i_2__0_n_0\,
      I1 => q_m_2,
      I2 => p_0_in2_in,
      I3 => p_0_in3_in,
      I4 => p_0_in1_in,
      O => \q_m_reg[5]_i_1__0_n_0\
    );
\q_m_reg[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => p_0_in3_in,
      I2 => p_0_in2_in,
      I3 => q_m_2,
      I4 => p_0_in0_in,
      O => q_m_6
    );
\q_m_reg[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in,
      I1 => \q_m_reg[7]_i_2__0_n_0\,
      I2 => p_0_in1_in,
      I3 => \q_m_reg[7]_i_3__0_n_0\,
      I4 => p_0_in0_in,
      O => \q_m_reg[7]_i_1__0_n_0\
    );
\q_m_reg[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFAAAA"
    )
        port map (
      I0 => n1d(3),
      I1 => n1d(1),
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => n1d(0),
      I4 => n1d(2),
      O => \q_m_reg[7]_i_2__0_n_0\
    );
\q_m_reg[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_0_in4_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in2_in,
      I4 => p_0_in3_in,
      O => \q_m_reg[7]_i_3__0_n_0\
    );
\q_m_reg[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005575"
    )
        port map (
      I0 => n1d(2),
      I1 => n1d(0),
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => n1d(1),
      I4 => n1d(3),
      O => \q_m_reg[8]_i_1__0_n_0\
    );
\q_m_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \vdin_q_reg_n_0_[0]\,
      Q => \q_m_reg_reg_n_0_[0]\,
      R => '0'
    );
\q_m_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_1,
      Q => \q_m_reg_reg_n_0_[1]\,
      R => '0'
    );
\q_m_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_2,
      Q => \q_m_reg_reg_n_0_[2]\,
      R => '0'
    );
\q_m_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_3,
      Q => \q_m_reg_reg_n_0_[3]\,
      R => '0'
    );
\q_m_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_4,
      Q => \q_m_reg_reg_n_0_[4]\,
      R => '0'
    );
\q_m_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[5]_i_1__0_n_0\,
      Q => \q_m_reg_reg_n_0_[5]\,
      R => '0'
    );
\q_m_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_6,
      Q => \q_m_reg_reg_n_0_[6]\,
      R => '0'
    );
\q_m_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[7]_i_1__0_n_0\,
      Q => \q_m_reg_reg_n_0_[7]\,
      R => '0'
    );
\q_m_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[8]_i_1__0_n_0\,
      Q => \^q_m_reg_reg[8]_0\,
      R => '0'
    );
\vdin_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(6),
      Q => \vdin_q_reg_n_0_[0]\,
      R => '0'
    );
\vdin_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(7),
      Q => p_0_in5_in,
      R => '0'
    );
\vdin_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(8),
      Q => p_0_in4_in,
      R => '0'
    );
\vdin_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(9),
      Q => p_0_in3_in,
      R => '0'
    );
\vdin_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(10),
      Q => p_0_in2_in,
      R => '0'
    );
\vdin_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(11),
      Q => p_0_in1_in,
      R => '0'
    );
\vdin_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(12),
      Q => p_0_in0_in,
      R => '0'
    );
\vdin_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(13),
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \mb_usb_hdmi_text_controller_0_2_encode__parameterized1\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    pix_clk : in STD_LOGIC;
    ade_reg : in STD_LOGIC;
    data_o : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \dout_reg[0]_0\ : in STD_LOGIC;
    vde_reg : in STD_LOGIC;
    \dout_reg[5]_0\ : in STD_LOGIC;
    rst : in STD_LOGIC;
    pix_clk_locked : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \mb_usb_hdmi_text_controller_0_2_encode__parameterized1\ : entity is "encode";
end \mb_usb_hdmi_text_controller_0_2_encode__parameterized1\;

architecture STRUCTURE of \mb_usb_hdmi_text_controller_0_2_encode__parameterized1\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \adin_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \adin_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \adin_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \adin_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \adin_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \adin_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \adin_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \adin_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \cnt[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_10__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_11__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_12__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_13__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_14__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_15__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_16__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_17__0_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_18_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_6__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_7__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_8__1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_9__1_n_0\ : STD_LOGIC;
  signal \dout[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \dout[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \dout[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \dout[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \dout[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[4]_i_2__1_n_0\ : STD_LOGIC;
  signal \dout[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \dout[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[6]_i_2__1_n_0\ : STD_LOGIC;
  signal \dout[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \dout[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \dout[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \dout[9]_i_2__1_n_0\ : STD_LOGIC;
  signal \dout[9]_i_3__1_n_0\ : STD_LOGIC;
  signal \n0q_m[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \n0q_m[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \n0q_m_reg_n_0_[1]\ : STD_LOGIC;
  signal \n0q_m_reg_n_0_[2]\ : STD_LOGIC;
  signal \n0q_m_reg_n_0_[3]\ : STD_LOGIC;
  signal n1d : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \n1d[0]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_1_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d[3]_i_4_n_0\ : STD_LOGIC;
  signal \n1q_m[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \n1q_m[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \n1q_m[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \n1q_m_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1q_m_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1q_m_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in3_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in5_in : STD_LOGIC;
  signal q_m_1 : STD_LOGIC;
  signal q_m_2 : STD_LOGIC;
  signal q_m_3 : STD_LOGIC;
  signal q_m_4 : STD_LOGIC;
  signal q_m_6 : STD_LOGIC;
  signal \q_m_reg[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \q_m_reg[7]_i_3__1_n_0\ : STD_LOGIC;
  signal \q_m_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \q_m_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \vdin_q_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_2__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cnt[2]_i_3__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \cnt[3]_i_6__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cnt[4]_i_13__1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cnt[4]_i_14__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cnt[4]_i_16__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cnt[4]_i_17__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cnt[4]_i_18\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \cnt[4]_i_7__1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \cnt[4]_i_8__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \cnt[4]_i_9__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \dout[2]_i_2__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \dout[3]_i_2__1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \dout[4]_i_2__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \dout[6]_i_2__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \dout[7]_i_2__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \dout[9]_i_2__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \dout[9]_i_3__1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \n0q_m[3]_i_3__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \n0q_m[3]_i_4__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \n1d[0]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \n1d[3]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \n1q_m[1]_i_1__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \n1q_m[2]_i_1__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \n1q_m[2]_i_3__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \n1q_m[3]_i_4__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \q_m_reg[3]_i_1__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \q_m_reg[4]_i_1__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_1__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_2__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \q_m_reg[7]_i_3__1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \q_m_reg[8]_i_1__1\ : label is "soft_lutpair33";
begin
  AR(0) <= \^ar\(0);
\adin_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(1),
      Q => \adin_q_reg_n_0_[0]\,
      R => '0'
    );
\adin_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(2),
      Q => \adin_q_reg_n_0_[1]\,
      R => '0'
    );
\adin_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(3),
      Q => \adin_q_reg_n_0_[2]\,
      R => '0'
    );
\adin_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(4),
      Q => \adin_q_reg_n_0_[3]\,
      R => '0'
    );
\adin_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \adin_q_reg_n_0_[0]\,
      Q => \adin_reg_reg_n_0_[0]\,
      R => '0'
    );
\adin_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \adin_q_reg_n_0_[1]\,
      Q => \adin_reg_reg_n_0_[1]\,
      R => '0'
    );
\adin_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \adin_q_reg_n_0_[2]\,
      Q => \adin_reg_reg_n_0_[2]\,
      R => '0'
    );
\adin_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \adin_q_reg_n_0_[3]\,
      Q => \adin_reg_reg_n_0_[3]\,
      R => '0'
    );
\cnt[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A8228A0A08228"
    )
        port map (
      I0 => vde_reg,
      I1 => \cnt[4]_i_3__1_n_0\,
      I2 => cnt(1),
      I3 => \cnt[1]_i_2__1_n_0\,
      I4 => \cnt[4]_i_5__1_n_0\,
      I5 => \cnt[1]_i_3__1_n_0\,
      O => \cnt[1]_i_1__1_n_0\
    );
\cnt[1]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[1]\,
      I1 => \q_m_reg_reg_n_0_[8]\,
      I2 => \n1q_m_reg_n_0_[1]\,
      O => \cnt[1]_i_2__1_n_0\
    );
\cnt[1]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[1]\,
      I1 => \n0q_m_reg_n_0_[1]\,
      O => \cnt[1]_i_3__1_n_0\
    );
\cnt[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => vde_reg,
      I1 => \cnt[2]_i_2__0_n_0\,
      I2 => \cnt[4]_i_5__1_n_0\,
      I3 => \cnt[2]_i_3__0_n_0\,
      O => \cnt[2]_i_1__1_n_0\
    );
\cnt[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"936336399C93C636"
    )
        port map (
      I0 => \cnt[4]_i_3__1_n_0\,
      I1 => \cnt[3]_i_6__0_n_0\,
      I2 => cnt(1),
      I3 => \n0q_m_reg_n_0_[1]\,
      I4 => \q_m_reg_reg_n_0_[8]\,
      I5 => \n1q_m_reg_n_0_[1]\,
      O => \cnt[2]_i_2__0_n_0\
    );
\cnt[2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56955965"
    )
        port map (
      I0 => \cnt[3]_i_6__0_n_0\,
      I1 => \q_m_reg_reg_n_0_[8]\,
      I2 => \n1q_m_reg_n_0_[1]\,
      I3 => \n0q_m_reg_n_0_[1]\,
      I4 => cnt(1),
      O => \cnt[2]_i_3__0_n_0\
    );
\cnt[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => vde_reg,
      I1 => \cnt[3]_i_2__1_n_0\,
      I2 => \cnt[4]_i_3__1_n_0\,
      I3 => \cnt[3]_i_3__1_n_0\,
      I4 => \cnt[4]_i_5__1_n_0\,
      I5 => \cnt[3]_i_4__1_n_0\,
      O => \cnt[3]_i_1__1_n_0\
    );
\cnt[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \cnt[4]_i_7__1_n_0\,
      I1 => \cnt[3]_i_5__1_n_0\,
      I2 => \n1q_m_reg_n_0_[3]\,
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => cnt(3),
      I5 => \cnt[4]_i_8__1_n_0\,
      O => \cnt[3]_i_2__1_n_0\
    );
\cnt[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71F700108E08FFEF"
    )
        port map (
      I0 => cnt(1),
      I1 => \q_m_reg_reg_n_0_[8]\,
      I2 => \n1q_m_reg_n_0_[1]\,
      I3 => \n0q_m_reg_n_0_[1]\,
      I4 => \cnt[3]_i_6__0_n_0\,
      I5 => \cnt[3]_i_7__0_n_0\,
      O => \cnt[3]_i_3__1_n_0\
    );
\cnt[3]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65A66A569A5995A9"
    )
        port map (
      I0 => \cnt[4]_i_17__0_n_0\,
      I1 => cnt(2),
      I2 => \n0q_m_reg_n_0_[2]\,
      I3 => \n1q_m_reg_n_0_[2]\,
      I4 => \q_m_reg_reg_n_0_[8]\,
      I5 => \cnt[4]_i_9__1_n_0\,
      O => \cnt[3]_i_4__1_n_0\
    );
\cnt[3]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[2]\,
      I1 => \n1q_m_reg_n_0_[2]\,
      O => \cnt[3]_i_5__1_n_0\
    );
\cnt[3]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cnt(2),
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => \n1q_m_reg_n_0_[2]\,
      O => \cnt[3]_i_6__0_n_0\
    );
\cnt[3]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969966996699696"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[3]\,
      I1 => \n0q_m_reg_n_0_[3]\,
      I2 => cnt(3),
      I3 => \n1q_m_reg_n_0_[2]\,
      I4 => \n0q_m_reg_n_0_[2]\,
      I5 => cnt(2),
      O => \cnt[3]_i_7__0_n_0\
    );
\cnt[4]_i_10__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0FB04B04F04FB4F"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[2]\,
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => cnt(3),
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => \n1q_m_reg_n_0_[3]\,
      I5 => cnt(4),
      O => \cnt[4]_i_10__1_n_0\
    );
\cnt[4]_i_11__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2FFFFF2222FF2F"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[3]\,
      I1 => \n0q_m_reg_n_0_[3]\,
      I2 => \n0q_m_reg_n_0_[1]\,
      I3 => \n1q_m_reg_n_0_[1]\,
      I4 => \n0q_m_reg_n_0_[2]\,
      I5 => \n1q_m_reg_n_0_[2]\,
      O => \cnt[4]_i_11__1_n_0\
    );
\cnt[4]_i_12__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDFD00F0FFFFDDFD"
    )
        port map (
      I0 => \n1q_m_reg_n_0_[1]\,
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => \n0q_m_reg_n_0_[3]\,
      I3 => \n1q_m_reg_n_0_[3]\,
      I4 => \n0q_m_reg_n_0_[2]\,
      I5 => \n1q_m_reg_n_0_[2]\,
      O => \cnt[4]_i_12__1_n_0\
    );
\cnt[4]_i_13__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B220FFFB"
    )
        port map (
      I0 => cnt(1),
      I1 => \n1q_m_reg_n_0_[1]\,
      I2 => \q_m_reg_reg_n_0_[8]\,
      I3 => \n0q_m_reg_n_0_[1]\,
      I4 => \cnt[3]_i_6__0_n_0\,
      O => \cnt[4]_i_13__1_n_0\
    );
\cnt[4]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => cnt(2),
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => \n1q_m_reg_n_0_[2]\,
      O => \cnt[4]_i_14__0_n_0\
    );
\cnt[4]_i_15__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \n0q_m_reg_n_0_[3]\,
      I1 => \n1q_m_reg_n_0_[3]\,
      I2 => \n1q_m_reg_n_0_[1]\,
      I3 => \n0q_m_reg_n_0_[1]\,
      I4 => \n1q_m_reg_n_0_[2]\,
      I5 => \n0q_m_reg_n_0_[2]\,
      O => \cnt[4]_i_15__1_n_0\
    );
\cnt[4]_i_16__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5965A96A"
    )
        port map (
      I0 => cnt(4),
      I1 => \q_m_reg_reg_n_0_[8]\,
      I2 => \n1q_m_reg_n_0_[3]\,
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => cnt(3),
      O => \cnt[4]_i_16__1_n_0\
    );
\cnt[4]_i_17__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E7FF0024"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[8]\,
      I1 => \n1q_m_reg_n_0_[1]\,
      I2 => \n0q_m_reg_n_0_[1]\,
      I3 => cnt(1),
      I4 => \cnt[3]_i_6__0_n_0\,
      O => \cnt[4]_i_17__0_n_0\
    );
\cnt[4]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B28E"
    )
        port map (
      I0 => cnt(2),
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => \n1q_m_reg_n_0_[2]\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      O => \cnt[4]_i_18_n_0\
    );
\cnt[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A2AAAA02A2"
    )
        port map (
      I0 => vde_reg,
      I1 => \cnt[4]_i_2__1_n_0\,
      I2 => \cnt[4]_i_3__1_n_0\,
      I3 => \cnt[4]_i_4__1_n_0\,
      I4 => \cnt[4]_i_5__1_n_0\,
      I5 => \cnt[4]_i_6__1_n_0\,
      O => \cnt[4]_i_1__1_n_0\
    );
\cnt[4]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2B2BB22BD4D44DD4"
    )
        port map (
      I0 => \cnt[4]_i_7__1_n_0\,
      I1 => \cnt[4]_i_8__1_n_0\,
      I2 => \cnt[4]_i_9__1_n_0\,
      I3 => \n0q_m_reg_n_0_[2]\,
      I4 => \n1q_m_reg_n_0_[2]\,
      I5 => \cnt[4]_i_10__1_n_0\,
      O => \cnt[4]_i_2__1_n_0\
    );
\cnt[4]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47C477F7"
    )
        port map (
      I0 => \cnt[4]_i_11__1_n_0\,
      I1 => cnt(4),
      I2 => \n0q_m_reg_n_0_[3]\,
      I3 => \n1q_m_reg_n_0_[3]\,
      I4 => \cnt[4]_i_12__1_n_0\,
      O => \cnt[4]_i_3__1_n_0\
    );
\cnt[4]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E18187171E7E78E"
    )
        port map (
      I0 => \cnt[4]_i_13__1_n_0\,
      I1 => \cnt[4]_i_14__0_n_0\,
      I2 => \n1q_m_reg_n_0_[3]\,
      I3 => \n0q_m_reg_n_0_[3]\,
      I4 => cnt(3),
      I5 => cnt(4),
      O => \cnt[4]_i_4__1_n_0\
    );
\cnt[4]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \cnt[4]_i_15__1_n_0\,
      I1 => cnt(2),
      I2 => cnt(4),
      I3 => cnt(1),
      I4 => cnt(3),
      O => \cnt[4]_i_5__1_n_0\
    );
\cnt[4]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96695555AAAA9669"
    )
        port map (
      I0 => \cnt[4]_i_16__1_n_0\,
      I1 => \n1q_m_reg_n_0_[3]\,
      I2 => \n0q_m_reg_n_0_[3]\,
      I3 => cnt(3),
      I4 => \cnt[4]_i_17__0_n_0\,
      I5 => \cnt[4]_i_18_n_0\,
      O => \cnt[4]_i_6__1_n_0\
    );
\cnt[4]_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7D595918"
    )
        port map (
      I0 => \cnt[3]_i_6__0_n_0\,
      I1 => \n0q_m_reg_n_0_[1]\,
      I2 => \q_m_reg_reg_n_0_[8]\,
      I3 => \n1q_m_reg_n_0_[1]\,
      I4 => cnt(1),
      O => \cnt[4]_i_7__1_n_0\
    );
\cnt[4]_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41D74141"
    )
        port map (
      I0 => cnt(2),
      I1 => \n0q_m_reg_n_0_[2]\,
      I2 => \n1q_m_reg_n_0_[2]\,
      I3 => \q_m_reg_reg_n_0_[8]\,
      I4 => \n0q_m_reg_n_0_[1]\,
      O => \cnt[4]_i_8__1_n_0\
    );
\cnt[4]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cnt(3),
      I1 => \n0q_m_reg_n_0_[3]\,
      I2 => \n1q_m_reg_n_0_[3]\,
      O => \cnt[4]_i_9__1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \cnt[1]_i_1__1_n_0\,
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \cnt[2]_i_1__1_n_0\,
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \cnt[3]_i_1__1_n_0\,
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \cnt[4]_i_1__1_n_0\,
      Q => cnt(4)
    );
\dout[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FF01010101"
    )
        port map (
      I0 => \dout[0]_i_2__1_n_0\,
      I1 => data_o(0),
      I2 => \dout_reg[0]_0\,
      I3 => \q_m_reg_reg_n_0_[0]\,
      I4 => \dout[9]_i_2__1_n_0\,
      I5 => vde_reg,
      O => \dout[0]_i_1__1_n_0\
    );
\dout[0]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A208A"
    )
        port map (
      I0 => ade_reg,
      I1 => \adin_reg_reg_n_0_[3]\,
      I2 => \adin_reg_reg_n_0_[2]\,
      I3 => \adin_reg_reg_n_0_[0]\,
      I4 => \adin_reg_reg_n_0_[1]\,
      O => \dout[0]_i_2__1_n_0\
    );
\dout[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00F2222"
    )
        port map (
      I0 => \dout[1]_i_2__1_n_0\,
      I1 => data_o(0),
      I2 => \q_m_reg_reg_n_0_[1]\,
      I3 => \dout[9]_i_2__1_n_0\,
      I4 => vde_reg,
      O => \dout[1]_i_1__1_n_0\
    );
\dout[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BC58FFFFBC580000"
    )
        port map (
      I0 => \adin_reg_reg_n_0_[3]\,
      I1 => \adin_reg_reg_n_0_[2]\,
      I2 => \adin_reg_reg_n_0_[0]\,
      I3 => \adin_reg_reg_n_0_[1]\,
      I4 => ade_reg,
      I5 => \dout_reg[5]_0\,
      O => \dout[1]_i_2__1_n_0\
    );
\dout[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FFFEFEFEFE"
    )
        port map (
      I0 => data_o(0),
      I1 => \dout_reg[0]_0\,
      I2 => \dout[2]_i_2__0_n_0\,
      I3 => \dout[9]_i_2__1_n_0\,
      I4 => \q_m_reg_reg_n_0_[2]\,
      I5 => vde_reg,
      O => \dout[2]_i_1__1_n_0\
    );
\dout[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"674B0000"
    )
        port map (
      I0 => \adin_reg_reg_n_0_[3]\,
      I1 => \adin_reg_reg_n_0_[2]\,
      I2 => \adin_reg_reg_n_0_[0]\,
      I3 => \adin_reg_reg_n_0_[1]\,
      I4 => ade_reg,
      O => \dout[2]_i_2__0_n_0\
    );
\dout[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00FDDDD"
    )
        port map (
      I0 => \dout[3]_i_2__1_n_0\,
      I1 => data_o(0),
      I2 => \dout[9]_i_2__1_n_0\,
      I3 => \q_m_reg_reg_n_0_[3]\,
      I4 => vde_reg,
      O => \dout[3]_i_1__1_n_0\
    );
\dout[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81EFFFF"
    )
        port map (
      I0 => \adin_reg_reg_n_0_[0]\,
      I1 => \adin_reg_reg_n_0_[1]\,
      I2 => \adin_reg_reg_n_0_[2]\,
      I3 => \adin_reg_reg_n_0_[3]\,
      I4 => ade_reg,
      O => \dout[3]_i_2__1_n_0\
    );
\dout[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00F1111"
    )
        port map (
      I0 => \dout[4]_i_2__1_n_0\,
      I1 => data_o(0),
      I2 => \q_m_reg_reg_n_0_[4]\,
      I3 => \dout[9]_i_2__1_n_0\,
      I4 => vde_reg,
      O => \dout[4]_i_1__1_n_0\
    );
\dout[4]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A28220A8"
    )
        port map (
      I0 => ade_reg,
      I1 => \adin_reg_reg_n_0_[0]\,
      I2 => \adin_reg_reg_n_0_[1]\,
      I3 => \adin_reg_reg_n_0_[2]\,
      I4 => \adin_reg_reg_n_0_[3]\,
      O => \dout[4]_i_2__1_n_0\
    );
\dout[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00F2222"
    )
        port map (
      I0 => \dout[5]_i_2__1_n_0\,
      I1 => data_o(0),
      I2 => \q_m_reg_reg_n_0_[5]\,
      I3 => \dout[9]_i_2__1_n_0\,
      I4 => vde_reg,
      O => \dout[5]_i_1__1_n_0\
    );
\dout[5]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"695CFFFF695C0000"
    )
        port map (
      I0 => \adin_reg_reg_n_0_[3]\,
      I1 => \adin_reg_reg_n_0_[0]\,
      I2 => \adin_reg_reg_n_0_[1]\,
      I3 => \adin_reg_reg_n_0_[2]\,
      I4 => ade_reg,
      I5 => \dout_reg[5]_0\,
      O => \dout[5]_i_2__1_n_0\
    );
\dout[6]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FFFEFEFEFE"
    )
        port map (
      I0 => data_o(0),
      I1 => \dout_reg[0]_0\,
      I2 => \dout[6]_i_2__1_n_0\,
      I3 => \dout[9]_i_2__1_n_0\,
      I4 => \q_m_reg_reg_n_0_[6]\,
      I5 => vde_reg,
      O => \dout[6]_i_1__1_n_0\
    );
\dout[6]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A88202A8"
    )
        port map (
      I0 => ade_reg,
      I1 => \adin_reg_reg_n_0_[0]\,
      I2 => \adin_reg_reg_n_0_[1]\,
      I3 => \adin_reg_reg_n_0_[2]\,
      I4 => \adin_reg_reg_n_0_[3]\,
      O => \dout[6]_i_2__1_n_0\
    );
\dout[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F00FDDDD"
    )
        port map (
      I0 => \dout[7]_i_2__0_n_0\,
      I1 => data_o(0),
      I2 => \dout[9]_i_2__1_n_0\,
      I3 => \q_m_reg_reg_n_0_[7]\,
      I4 => vde_reg,
      O => \dout[7]_i_1__1_n_0\
    );
\dout[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75D5FF75"
    )
        port map (
      I0 => ade_reg,
      I1 => \adin_reg_reg_n_0_[3]\,
      I2 => \adin_reg_reg_n_0_[2]\,
      I3 => \adin_reg_reg_n_0_[0]\,
      I4 => \adin_reg_reg_n_0_[1]\,
      O => \dout[7]_i_2__0_n_0\
    );
\dout[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0A3"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[8]\,
      I1 => \dout[9]_i_3__1_n_0\,
      I2 => vde_reg,
      I3 => data_o(0),
      O => \dout[8]_i_1__0_n_0\
    );
\dout[9]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55FF55FC"
    )
        port map (
      I0 => \dout[9]_i_2__1_n_0\,
      I1 => \dout[9]_i_3__1_n_0\,
      I2 => data_o(0),
      I3 => vde_reg,
      I4 => \dout_reg[0]_0\,
      O => \dout[9]_i_1__1_n_0\
    );
\dout[9]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \q_m_reg_reg_n_0_[8]\,
      I1 => \cnt[4]_i_5__1_n_0\,
      I2 => \cnt[4]_i_3__1_n_0\,
      O => \dout[9]_i_2__1_n_0\
    );
\dout[9]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D09000F0"
    )
        port map (
      I0 => \adin_reg_reg_n_0_[1]\,
      I1 => \adin_reg_reg_n_0_[0]\,
      I2 => ade_reg,
      I3 => \adin_reg_reg_n_0_[2]\,
      I4 => \adin_reg_reg_n_0_[3]\,
      O => \dout[9]_i_3__1_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \dout[0]_i_1__1_n_0\,
      Q => Q(0)
    );
\dout_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \dout[1]_i_1__1_n_0\,
      Q => Q(1)
    );
\dout_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \dout[2]_i_1__1_n_0\,
      Q => Q(2)
    );
\dout_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \dout[3]_i_1__1_n_0\,
      Q => Q(3)
    );
\dout_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \dout[4]_i_1__1_n_0\,
      Q => Q(4)
    );
\dout_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \dout[5]_i_1__1_n_0\,
      Q => Q(5)
    );
\dout_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \dout[6]_i_1__1_n_0\,
      Q => Q(6)
    );
\dout_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \dout[7]_i_1__1_n_0\,
      Q => Q(7)
    );
\dout_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \dout[8]_i_1__0_n_0\,
      Q => Q(8)
    );
\dout_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pix_clk,
      CE => '1',
      CLR => \^ar\(0),
      D => \dout[9]_i_1__1_n_0\,
      Q => Q(9)
    );
\n0q_m[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996699996669996"
    )
        port map (
      I0 => \n1q_m[2]_i_2__1_n_0\,
      I1 => \n1q_m[2]_i_3__1_n_0\,
      I2 => \n0q_m[3]_i_3__1_n_0\,
      I3 => \n0q_m[3]_i_2__1_n_0\,
      I4 => \vdin_q_reg_n_0_[0]\,
      I5 => \n0q_m[3]_i_4__1_n_0\,
      O => \n0q_m[1]_i_1__1_n_0\
    );
\n0q_m[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FBB2FBB2DFFF"
    )
        port map (
      I0 => \n0q_m[3]_i_4__1_n_0\,
      I1 => \vdin_q_reg_n_0_[0]\,
      I2 => \n0q_m[3]_i_2__1_n_0\,
      I3 => \n0q_m[3]_i_3__1_n_0\,
      I4 => \n1q_m[2]_i_3__1_n_0\,
      I5 => \n1q_m[2]_i_2__1_n_0\,
      O => \n0q_m[2]_i_1__1_n_0\
    );
\n0q_m[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \n1q_m[2]_i_3__1_n_0\,
      I1 => \n1q_m[2]_i_2__1_n_0\,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => \n0q_m[3]_i_2__1_n_0\,
      I4 => \n0q_m[3]_i_3__1_n_0\,
      I5 => \n0q_m[3]_i_4__1_n_0\,
      O => \n0q_m[3]_i_1__1_n_0\
    );
\n0q_m[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in2_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      I5 => \n0q_m[3]_i_5__1_n_0\,
      O => \n0q_m[3]_i_2__1_n_0\
    );
\n0q_m[3]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \q_m_reg[7]_i_3__1_n_0\,
      I2 => p_0_in1_in,
      I3 => \q_m_reg[7]_i_2__1_n_0\,
      I4 => p_0_in,
      O => \n0q_m[3]_i_3__1_n_0\
    );
\n0q_m[3]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \vdin_q_reg_n_0_[0]\,
      I1 => p_0_in5_in,
      I2 => p_0_in3_in,
      O => \n0q_m[3]_i_4__1_n_0\
    );
\n0q_m[3]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555566666A66"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => n1d(2),
      I2 => n1d(0),
      I3 => \vdin_q_reg_n_0_[0]\,
      I4 => n1d(1),
      I5 => n1d(3),
      O => \n0q_m[3]_i_5__1_n_0\
    );
\n0q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n0q_m[1]_i_1__1_n_0\,
      Q => \n0q_m_reg_n_0_[1]\,
      R => '0'
    );
\n0q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n0q_m[2]_i_1__1_n_0\,
      Q => \n0q_m_reg_n_0_[2]\,
      R => '0'
    );
\n0q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n0q_m[3]_i_1__1_n_0\,
      Q => \n0q_m_reg_n_0_[3]\,
      R => '0'
    );
\n1d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data_o(5),
      I1 => data_o(12),
      I2 => \n1d[0]_i_2_n_0\,
      I3 => data_o(7),
      I4 => data_o(6),
      I5 => data_o(8),
      O => \n1d[0]_i_1_n_0\
    );
\n1d[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data_o(11),
      I1 => data_o(9),
      I2 => data_o(10),
      O => \n1d[0]_i_2_n_0\
    );
\n1d[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[1]_i_2_n_0\,
      I2 => \n1d[3]_i_3_n_0\,
      O => \n1d[1]_i_1_n_0\
    );
\n1d[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => data_o(8),
      I1 => data_o(7),
      I2 => data_o(6),
      I3 => data_o(11),
      I4 => data_o(10),
      I5 => data_o(9),
      O => \n1d[1]_i_2_n_0\
    );
\n1d[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => \n1d[2]_i_2_n_0\,
      I3 => data_o(9),
      I4 => data_o(10),
      I5 => data_o(11),
      O => \n1d[2]_i_1_n_0\
    );
\n1d[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => data_o(6),
      I1 => data_o(7),
      I2 => data_o(8),
      O => \n1d[2]_i_2_n_0\
    );
\n1d[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d[3]_i_2_n_0\,
      I1 => \n1d[3]_i_3_n_0\,
      I2 => data_o(8),
      I3 => data_o(7),
      I4 => data_o(6),
      I5 => \n1d[3]_i_4_n_0\,
      O => \n1d[3]_i_1_n_0\
    );
\n1d[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => data_o(7),
      I1 => data_o(6),
      I2 => data_o(8),
      I3 => data_o(5),
      I4 => data_o(12),
      I5 => \n1d[0]_i_2_n_0\,
      O => \n1d[3]_i_2_n_0\
    );
\n1d[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => data_o(12),
      I1 => data_o(5),
      I2 => data_o(10),
      I3 => data_o(9),
      I4 => data_o(11),
      O => \n1d[3]_i_3_n_0\
    );
\n1d[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => data_o(9),
      I1 => data_o(10),
      I2 => data_o(11),
      O => \n1d[3]_i_4_n_0\
    );
\n1d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[0]_i_1_n_0\,
      Q => n1d(0),
      R => '0'
    );
\n1d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[1]_i_1_n_0\,
      Q => n1d(1),
      R => '0'
    );
\n1d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[2]_i_1_n_0\,
      Q => n1d(2),
      R => '0'
    );
\n1d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1d[3]_i_1_n_0\,
      Q => n1d(3),
      R => '0'
    );
\n1q_m[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \n1q_m[2]_i_3__1_n_0\,
      I1 => \n1q_m[2]_i_2__1_n_0\,
      I2 => \n1q_m[3]_i_3__1_n_0\,
      I3 => \n1q_m[3]_i_4__1_n_0\,
      O => \n1q_m[1]_i_1__1_n_0\
    );
\n1q_m[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7EE8"
    )
        port map (
      I0 => \n1q_m[3]_i_4__1_n_0\,
      I1 => \n1q_m[2]_i_2__1_n_0\,
      I2 => \n1q_m[2]_i_3__1_n_0\,
      I3 => \n1q_m[3]_i_3__1_n_0\,
      O => \n1q_m[2]_i_1__1_n_0\
    );
\n1q_m[2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E1EE178878778"
    )
        port map (
      I0 => p_0_in0_in,
      I1 => \q_m_reg[7]_i_2__1_n_0\,
      I2 => q_m_2,
      I3 => p_0_in2_in,
      I4 => p_0_in3_in,
      I5 => p_0_in1_in,
      O => \n1q_m[2]_i_2__1_n_0\
    );
\n1q_m[2]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B42D4BD2"
    )
        port map (
      I0 => \q_m_reg[7]_i_2__1_n_0\,
      I1 => p_0_in3_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      O => \n1q_m[2]_i_3__1_n_0\
    );
\n1q_m[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \n1q_m[3]_i_2__1_n_0\,
      I1 => \n1q_m[3]_i_3__1_n_0\,
      I2 => \n1q_m[3]_i_4__1_n_0\,
      O => \n1q_m[3]_i_1__1_n_0\
    );
\n1q_m[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8228882222888228"
    )
        port map (
      I0 => \n1q_m[2]_i_2__1_n_0\,
      I1 => p_0_in5_in,
      I2 => p_0_in4_in,
      I3 => \vdin_q_reg_n_0_[0]\,
      I4 => p_0_in3_in,
      I5 => \q_m_reg[7]_i_2__1_n_0\,
      O => \n1q_m[3]_i_2__1_n_0\
    );
\n1q_m[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC3AAAAAAAA3CC3"
    )
        port map (
      I0 => \vdin_q_reg_n_0_[0]\,
      I1 => p_0_in0_in,
      I2 => \q_m_reg[7]_i_2__1_n_0\,
      I3 => \q_m_reg[7]_i_3__1_n_0\,
      I4 => p_0_in1_in,
      I5 => p_0_in,
      O => \n1q_m[3]_i_3__1_n_0\
    );
\n1q_m[3]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060690"
    )
        port map (
      I0 => p_0_in,
      I1 => p_0_in1_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in3_in,
      I4 => p_0_in5_in,
      O => \n1q_m[3]_i_4__1_n_0\
    );
\n1q_m_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1q_m[1]_i_1__1_n_0\,
      Q => \n1q_m_reg_n_0_[1]\,
      R => '0'
    );
\n1q_m_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1q_m[2]_i_1__1_n_0\,
      Q => \n1q_m_reg_n_0_[2]\,
      R => '0'
    );
\n1q_m_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \n1q_m[3]_i_1__1_n_0\,
      Q => \n1q_m_reg_n_0_[3]\,
      R => '0'
    );
oserdes_m_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rst,
      I1 => pix_clk_locked,
      O => \^ar\(0)
    );
\q_m_reg[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA800570055FFAA"
    )
        port map (
      I0 => n1d(2),
      I1 => n1d(0),
      I2 => n1d(1),
      I3 => n1d(3),
      I4 => p_0_in5_in,
      I5 => \vdin_q_reg_n_0_[0]\,
      O => q_m_1
    );
\q_m_reg[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \vdin_q_reg_n_0_[0]\,
      I1 => p_0_in4_in,
      I2 => p_0_in5_in,
      O => q_m_2
    );
\q_m_reg[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_0_in4_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in3_in,
      I4 => \q_m_reg[7]_i_2__1_n_0\,
      O => q_m_3
    );
\q_m_reg[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in3_in,
      I1 => p_0_in2_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in4_in,
      I4 => p_0_in5_in,
      O => q_m_4
    );
\q_m_reg[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \q_m_reg[7]_i_2__1_n_0\,
      I1 => q_m_2,
      I2 => p_0_in2_in,
      I3 => p_0_in3_in,
      I4 => p_0_in1_in,
      O => \q_m_reg[5]_i_1__1_n_0\
    );
\q_m_reg[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in1_in,
      I1 => p_0_in3_in,
      I2 => p_0_in2_in,
      I3 => q_m_2,
      I4 => p_0_in0_in,
      O => q_m_6
    );
\q_m_reg[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in,
      I1 => \q_m_reg[7]_i_2__1_n_0\,
      I2 => p_0_in1_in,
      I3 => \q_m_reg[7]_i_3__1_n_0\,
      I4 => p_0_in0_in,
      O => \q_m_reg[7]_i_1__1_n_0\
    );
\q_m_reg[7]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFAAAA"
    )
        port map (
      I0 => n1d(3),
      I1 => n1d(1),
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => n1d(0),
      I4 => n1d(2),
      O => \q_m_reg[7]_i_2__1_n_0\
    );
\q_m_reg[7]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => p_0_in4_in,
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => p_0_in2_in,
      I4 => p_0_in3_in,
      O => \q_m_reg[7]_i_3__1_n_0\
    );
\q_m_reg[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005575"
    )
        port map (
      I0 => n1d(2),
      I1 => n1d(0),
      I2 => \vdin_q_reg_n_0_[0]\,
      I3 => n1d(1),
      I4 => n1d(3),
      O => \q_m_reg[8]_i_1__1_n_0\
    );
\q_m_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \vdin_q_reg_n_0_[0]\,
      Q => \q_m_reg_reg_n_0_[0]\,
      R => '0'
    );
\q_m_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_1,
      Q => \q_m_reg_reg_n_0_[1]\,
      R => '0'
    );
\q_m_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_2,
      Q => \q_m_reg_reg_n_0_[2]\,
      R => '0'
    );
\q_m_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_3,
      Q => \q_m_reg_reg_n_0_[3]\,
      R => '0'
    );
\q_m_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_4,
      Q => \q_m_reg_reg_n_0_[4]\,
      R => '0'
    );
\q_m_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[5]_i_1__1_n_0\,
      Q => \q_m_reg_reg_n_0_[5]\,
      R => '0'
    );
\q_m_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => q_m_6,
      Q => \q_m_reg_reg_n_0_[6]\,
      R => '0'
    );
\q_m_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[7]_i_1__1_n_0\,
      Q => \q_m_reg_reg_n_0_[7]\,
      R => '0'
    );
\q_m_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => \q_m_reg[8]_i_1__1_n_0\,
      Q => \q_m_reg_reg_n_0_[8]\,
      R => '0'
    );
\vdin_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(5),
      Q => \vdin_q_reg_n_0_[0]\,
      R => '0'
    );
\vdin_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(6),
      Q => p_0_in5_in,
      R => '0'
    );
\vdin_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(7),
      Q => p_0_in4_in,
      R => '0'
    );
\vdin_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(8),
      Q => p_0_in3_in,
      R => '0'
    );
\vdin_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(9),
      Q => p_0_in2_in,
      R => '0'
    );
\vdin_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(10),
      Q => p_0_in1_in,
      R => '0'
    );
\vdin_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(11),
      Q => p_0_in0_in,
      R => '0'
    );
\vdin_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pix_clk,
      CE => '1',
      D => data_o(12),
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_hdmi_text_controller_0_2_hdmi_text_controller_v1_0_AXI is
  port (
    axi_wready : out STD_LOGIC;
    reset_ah : out STD_LOGIC;
    axi_awready : out STD_LOGIC;
    axi_arready : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    axi_rvalid : out STD_LOGIC;
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vram_we : out STD_LOGIC;
    axi_araddr_7_sp_1 : out STD_LOGIC;
    axi_araddr_2_sp_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \axi_araddr[2]_0\ : out STD_LOGIC;
    vram_reg : out STD_LOGIC;
    vram_reg_0 : out STD_LOGIC;
    vram_reg_1 : out STD_LOGIC;
    vram_reg_2 : out STD_LOGIC;
    vram_reg_3 : out STD_LOGIC;
    vram_reg_4 : out STD_LOGIC;
    vram_reg_5 : out STD_LOGIC;
    vram_reg_6 : out STD_LOGIC;
    vram_reg_7 : out STD_LOGIC;
    vram_reg_8 : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_aclk : in STD_LOGIC;
    axi_wvalid : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 9 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_0\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    axi_aresetn : in STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_arvalid : in STD_LOGIC;
    axi_rready : in STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_hdmi_text_controller_0_2_hdmi_text_controller_v1_0_AXI : entity is "hdmi_text_controller_v1_0_AXI";
end mb_usb_hdmi_text_controller_0_2_hdmi_text_controller_v1_0_AXI;

architecture STRUCTURE of mb_usb_hdmi_text_controller_0_2_hdmi_text_controller_v1_0_AXI is
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \^axi_araddr[2]_0\ : STD_LOGIC;
  signal axi_araddr_2_sn_1 : STD_LOGIC;
  signal axi_araddr_7_sn_1 : STD_LOGIC;
  signal \^axi_arready\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_awready\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_bvalid\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \^axi_rvalid\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_wready\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal color_reg : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal \color_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \color_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal \^reset_ah\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal vram_reg_i_12_n_0 : STD_LOGIC;
  signal vram_reg_i_13_n_0 : STD_LOGIC;
  signal vram_reg_i_14_n_0 : STD_LOGIC;
  signal vram_reg_i_15_n_0 : STD_LOGIC;
  signal vram_reg_i_16_n_0 : STD_LOGIC;
  signal vram_reg_i_17_n_0 : STD_LOGIC;
  signal vram_reg_i_18_n_0 : STD_LOGIC;
  signal vram_reg_i_19_n_0 : STD_LOGIC;
  signal vram_reg_i_20_n_0 : STD_LOGIC;
  signal vram_reg_i_21_n_0 : STD_LOGIC;
  signal vram_reg_i_22_n_0 : STD_LOGIC;
  signal \^vram_we\ : STD_LOGIC;
  signal wr_index : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_3\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \axi_rdata[31]_i_4\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_3\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_3\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_3\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_3\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \axi_rdata[8]_i_3\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_3\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of vram_reg_i_13 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of vram_reg_i_14 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of vram_reg_i_15 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of vram_reg_i_16 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of vram_reg_i_17 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of vram_reg_i_18 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of vram_reg_i_22 : label is "soft_lutpair50";
begin
  \axi_araddr[2]_0\ <= \^axi_araddr[2]_0\;
  axi_araddr_2_sp_1 <= axi_araddr_2_sn_1;
  axi_araddr_7_sp_1 <= axi_araddr_7_sn_1;
  axi_arready <= \^axi_arready\;
  axi_awready <= \^axi_awready\;
  axi_bvalid <= \^axi_bvalid\;
  axi_rvalid <= \^axi_rvalid\;
  axi_wready <= \^axi_wready\;
  reset_ah <= \^reset_ah\;
  vram_we <= \^vram_we\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF88888888"
    )
        port map (
      I0 => axi_bready,
      I1 => \^axi_bvalid\,
      I2 => \^axi_awready\,
      I3 => axi_awvalid,
      I4 => axi_wvalid,
      I5 => aw_en_reg_n_0,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \^reset_ah\
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axi_arvalid,
      I1 => \^axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready\,
      R => \^reset_ah\
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_awready0,
      D => axi_awaddr(8),
      Q => wr_index(8),
      R => \^reset_ah\
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_awready0,
      D => axi_awaddr(9),
      Q => wr_index(9),
      R => \^reset_ah\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_awready0,
      D => axi_awaddr(0),
      Q => wr_index(0),
      R => \^reset_ah\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_awready0,
      D => axi_awaddr(1),
      Q => wr_index(1),
      R => \^reset_ah\
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_awready0,
      D => axi_awaddr(2),
      Q => wr_index(2),
      R => \^reset_ah\
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_awready0,
      D => axi_awaddr(3),
      Q => wr_index(3),
      R => \^reset_ah\
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_awready0,
      D => axi_awaddr(4),
      Q => wr_index(4),
      R => \^reset_ah\
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_awready0,
      D => axi_awaddr(5),
      Q => wr_index(5),
      R => \^reset_ah\
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_awready0,
      D => axi_awaddr(6),
      Q => wr_index(6),
      R => \^reset_ah\
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi_awready0,
      D => axi_awaddr(7),
      Q => wr_index(7),
      R => \^reset_ah\
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^axi_awready\,
      I1 => axi_awvalid,
      I2 => axi_wvalid,
      I3 => aw_en_reg_n_0,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready\,
      R => \^reset_ah\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => axi_bready,
      I1 => \^axi_bvalid\,
      I2 => axi_wvalid,
      I3 => axi_awvalid,
      I4 => \^axi_awready\,
      I5 => \^axi_wready\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^axi_bvalid\,
      R => \^reset_ah\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(0),
      O => vram_reg
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(10),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(10),
      I4 => \axi_rdata_reg[31]_0\(0),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(11),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(11),
      I4 => \axi_rdata_reg[31]_0\(1),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(12),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(12),
      I4 => \axi_rdata_reg[31]_0\(2),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(13),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(13),
      I4 => \axi_rdata_reg[31]_0\(3),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(14),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(14),
      I4 => \axi_rdata_reg[31]_0\(4),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(15),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(15),
      I4 => \axi_rdata_reg[31]_0\(5),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(16),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(16),
      I4 => \axi_rdata_reg[31]_0\(6),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(17),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(17),
      I4 => \axi_rdata_reg[31]_0\(7),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(18),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(18),
      I4 => \axi_rdata_reg[31]_0\(8),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(19),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(19),
      I4 => \axi_rdata_reg[31]_0\(9),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(1),
      O => vram_reg_0
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(20),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(20),
      I4 => \axi_rdata_reg[31]_0\(10),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(21),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(21),
      I4 => \axi_rdata_reg[31]_0\(11),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(22),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(22),
      I4 => \axi_rdata_reg[31]_0\(12),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(23),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(23),
      I4 => \axi_rdata_reg[31]_0\(13),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(24),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(24),
      I4 => \axi_rdata_reg[31]_0\(14),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(25),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(25),
      I4 => \axi_rdata_reg[31]_0\(15),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(26),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(26),
      I4 => \axi_rdata_reg[31]_0\(16),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(27),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(27),
      I4 => \axi_rdata_reg[31]_0\(17),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(28),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(28),
      I4 => \axi_rdata_reg[31]_0\(18),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(29),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(29),
      I4 => \axi_rdata_reg[31]_0\(19),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(2),
      O => vram_reg_1
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(30),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(30),
      I4 => \axi_rdata_reg[31]_0\(20),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(31),
      I2 => axi_araddr_2_sn_1,
      I3 => color_reg(31),
      I4 => \axi_rdata_reg[31]_0\(21),
      I5 => \^axi_araddr[2]_0\,
      O => reg_data_out(31)
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004FFFFFFFFF"
    )
        port map (
      I0 => axi_araddr(5),
      I1 => \axi_rdata[31]_i_5_n_0\,
      I2 => axi_araddr(6),
      I3 => axi_araddr(7),
      I4 => axi_araddr(8),
      I5 => axi_araddr(9),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[31]_i_6_n_0\,
      I1 => axi_araddr(0),
      O => axi_araddr_2_sn_1
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[31]_i_6_n_0\,
      I1 => axi_araddr(0),
      O => \^axi_araddr[2]_0\
    );
\axi_rdata[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => axi_araddr(4),
      O => \axi_rdata[31]_i_5_n_0\
    );
\axi_rdata[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \axi_rdata[31]_i_7_n_0\,
      I1 => axi_araddr(5),
      I2 => axi_araddr(2),
      I3 => axi_araddr(4),
      I4 => axi_araddr(3),
      I5 => axi_araddr(1),
      O => \axi_rdata[31]_i_6_n_0\
    );
\axi_rdata[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => axi_araddr(8),
      I1 => axi_araddr(9),
      I2 => axi_araddr(7),
      I3 => axi_araddr(6),
      O => \axi_rdata[31]_i_7_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(3),
      O => vram_reg_2
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(4),
      O => vram_reg_3
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(5),
      O => vram_reg_4
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(6),
      O => vram_reg_5
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(7),
      O => vram_reg_6
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(8),
      O => vram_reg_7
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => DOBDO(9),
      O => vram_reg_8
    );
\axi_rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \axi_rdata[31]_i_7_n_0\,
      I1 => axi_araddr(5),
      I2 => axi_araddr(2),
      I3 => axi_araddr(4),
      I4 => axi_araddr(3),
      I5 => axi_araddr(1),
      O => axi_araddr_7_sn_1
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => D(0),
      Q => axi_rdata(0),
      R => \^reset_ah\
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => axi_rdata(10),
      R => \^reset_ah\
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => axi_rdata(11),
      R => \^reset_ah\
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => axi_rdata(12),
      R => \^reset_ah\
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => axi_rdata(13),
      R => \^reset_ah\
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => axi_rdata(14),
      R => \^reset_ah\
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => axi_rdata(15),
      R => \^reset_ah\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => axi_rdata(16),
      R => \^reset_ah\
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => axi_rdata(17),
      R => \^reset_ah\
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => axi_rdata(18),
      R => \^reset_ah\
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => axi_rdata(19),
      R => \^reset_ah\
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => D(1),
      Q => axi_rdata(1),
      R => \^reset_ah\
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => axi_rdata(20),
      R => \^reset_ah\
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => axi_rdata(21),
      R => \^reset_ah\
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => axi_rdata(22),
      R => \^reset_ah\
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => axi_rdata(23),
      R => \^reset_ah\
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => axi_rdata(24),
      R => \^reset_ah\
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => axi_rdata(25),
      R => \^reset_ah\
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => axi_rdata(26),
      R => \^reset_ah\
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => axi_rdata(27),
      R => \^reset_ah\
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => axi_rdata(28),
      R => \^reset_ah\
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => axi_rdata(29),
      R => \^reset_ah\
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => D(2),
      Q => axi_rdata(2),
      R => \^reset_ah\
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => axi_rdata(30),
      R => \^reset_ah\
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => axi_rdata(31),
      R => \^reset_ah\
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => D(3),
      Q => axi_rdata(3),
      R => \^reset_ah\
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => D(4),
      Q => axi_rdata(4),
      R => \^reset_ah\
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => D(5),
      Q => axi_rdata(5),
      R => \^reset_ah\
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => D(6),
      Q => axi_rdata(6),
      R => \^reset_ah\
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => D(7),
      Q => axi_rdata(7),
      R => \^reset_ah\
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => D(8),
      Q => axi_rdata(8),
      R => \^reset_ah\
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \slv_reg_rden__0\,
      D => D(9),
      Q => axi_rdata(9),
      R => \^reset_ah\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => axi_arvalid,
      I1 => \^axi_arready\,
      I2 => \^axi_rvalid\,
      I3 => axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid\,
      R => \^reset_ah\
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => axi_wvalid,
      I2 => axi_awvalid,
      I3 => \^axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready\,
      R => \^reset_ah\
    );
\color_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \color_reg[31]_i_2_n_0\,
      I1 => axi_wstrb(1),
      O => p_1_in(15)
    );
\color_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \color_reg[31]_i_2_n_0\,
      I1 => axi_wstrb(2),
      O => p_1_in(23)
    );
\color_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \color_reg[31]_i_2_n_0\,
      I1 => axi_wstrb(3),
      O => p_1_in(31)
    );
\color_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => wr_index(0),
      I1 => wr_index(1),
      I2 => vram_reg_i_18_n_0,
      I3 => wr_index(2),
      I4 => wr_index(5),
      I5 => \color_reg[31]_i_3_n_0\,
      O => \color_reg[31]_i_2_n_0\
    );
\color_reg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => wr_index(8),
      I1 => wr_index(7),
      I2 => axi_wvalid,
      I3 => axi_awvalid,
      I4 => \^axi_awready\,
      I5 => \^axi_wready\,
      O => \color_reg[31]_i_3_n_0\
    );
\color_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \color_reg[31]_i_2_n_0\,
      I1 => axi_wstrb(0),
      O => p_1_in(7)
    );
\color_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(0),
      Q => Q(0),
      R => \^reset_ah\
    );
\color_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(10),
      Q => color_reg(10),
      R => \^reset_ah\
    );
\color_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(11),
      Q => color_reg(11),
      R => \^reset_ah\
    );
\color_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(12),
      Q => color_reg(12),
      R => \^reset_ah\
    );
\color_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(13),
      Q => color_reg(13),
      R => \^reset_ah\
    );
\color_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(14),
      Q => color_reg(14),
      R => \^reset_ah\
    );
\color_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(15),
      Q => color_reg(15),
      R => \^reset_ah\
    );
\color_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(16),
      Q => color_reg(16),
      R => \^reset_ah\
    );
\color_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(17),
      Q => color_reg(17),
      R => \^reset_ah\
    );
\color_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(18),
      Q => color_reg(18),
      R => \^reset_ah\
    );
\color_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(19),
      Q => color_reg(19),
      R => \^reset_ah\
    );
\color_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(1),
      Q => Q(1),
      R => \^reset_ah\
    );
\color_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(20),
      Q => color_reg(20),
      R => \^reset_ah\
    );
\color_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(21),
      Q => color_reg(21),
      R => \^reset_ah\
    );
\color_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(22),
      Q => color_reg(22),
      R => \^reset_ah\
    );
\color_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(23),
      D => axi_wdata(23),
      Q => color_reg(23),
      R => \^reset_ah\
    );
\color_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(24),
      Q => color_reg(24),
      R => \^reset_ah\
    );
\color_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(25),
      Q => color_reg(25),
      R => \^reset_ah\
    );
\color_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(26),
      Q => color_reg(26),
      R => \^reset_ah\
    );
\color_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(27),
      Q => color_reg(27),
      R => \^reset_ah\
    );
\color_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(28),
      Q => color_reg(28),
      R => \^reset_ah\
    );
\color_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(29),
      Q => color_reg(29),
      R => \^reset_ah\
    );
\color_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(2),
      Q => Q(2),
      R => \^reset_ah\
    );
\color_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(30),
      Q => color_reg(30),
      R => \^reset_ah\
    );
\color_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(31),
      D => axi_wdata(31),
      Q => color_reg(31),
      R => \^reset_ah\
    );
\color_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(3),
      Q => Q(3),
      R => \^reset_ah\
    );
\color_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(4),
      Q => Q(4),
      R => \^reset_ah\
    );
\color_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(5),
      Q => Q(5),
      R => \^reset_ah\
    );
\color_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(6),
      Q => Q(6),
      R => \^reset_ah\
    );
\color_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(7),
      D => axi_wdata(7),
      Q => Q(7),
      R => \^reset_ah\
    );
\color_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(8),
      Q => Q(8),
      R => \^reset_ah\
    );
\color_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => p_1_in(15),
      D => axi_wdata(9),
      Q => Q(9),
      R => \^reset_ah\
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready\,
      I1 => axi_arvalid,
      I2 => \^axi_rvalid\,
      O => \slv_reg_rden__0\
    );
vga_to_hdmi_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => \^reset_ah\
    );
vram_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FF03FF"
    )
        port map (
      I0 => wr_index(6),
      I1 => wr_index(7),
      I2 => wr_index(8),
      I3 => wr_index(9),
      I4 => vram_reg_i_12_n_0,
      I5 => vram_reg_i_13_n_0,
      O => \^vram_we\
    );
vram_reg_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => axi_araddr(1),
      I1 => vram_reg_i_21_n_0,
      I2 => wr_index(1),
      I3 => \^vram_we\,
      O => ADDRARDADDR(1)
    );
vram_reg_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => axi_araddr(0),
      I1 => vram_reg_i_21_n_0,
      I2 => wr_index(0),
      I3 => \^vram_we\,
      O => ADDRARDADDR(0)
    );
vram_reg_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => wr_index(5),
      I1 => wr_index(4),
      I2 => wr_index(3),
      O => vram_reg_i_12_n_0
    );
vram_reg_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^axi_wready\,
      I1 => \^axi_awready\,
      I2 => axi_awvalid,
      I3 => axi_wvalid,
      O => vram_reg_i_13_n_0
    );
vram_reg_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => wr_index(7),
      I1 => wr_index(8),
      O => vram_reg_i_14_n_0
    );
vram_reg_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888000"
    )
        port map (
      I0 => wr_index(9),
      I1 => wr_index(6),
      I2 => wr_index(3),
      I3 => wr_index(4),
      I4 => wr_index(5),
      O => vram_reg_i_15_n_0
    );
vram_reg_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA8"
    )
        port map (
      I0 => wr_index(9),
      I1 => wr_index(7),
      I2 => wr_index(8),
      I3 => vram_reg_i_13_n_0,
      O => vram_reg_i_16_n_0
    );
vram_reg_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => wr_index(6),
      I1 => wr_index(7),
      I2 => wr_index(8),
      I3 => wr_index(9),
      O => vram_reg_i_17_n_0
    );
vram_reg_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => wr_index(9),
      I1 => wr_index(6),
      I2 => wr_index(4),
      I3 => wr_index(3),
      O => vram_reg_i_18_n_0
    );
vram_reg_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F40000FFF40000"
    )
        port map (
      I0 => vram_reg_i_13_n_0,
      I1 => vram_reg_i_17_n_0,
      I2 => axi_araddr(4),
      I3 => vram_reg_i_22_n_0,
      I4 => wr_index(4),
      I5 => wr_index(3),
      O => vram_reg_i_19_n_0
    );
vram_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABFAA00AA00"
    )
        port map (
      I0 => axi_araddr(9),
      I1 => vram_reg_i_12_n_0,
      I2 => wr_index(6),
      I3 => vram_reg_i_13_n_0,
      I4 => vram_reg_i_14_n_0,
      I5 => wr_index(9),
      O => ADDRARDADDR(9)
    );
vram_reg_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F40000FFF40000"
    )
        port map (
      I0 => vram_reg_i_13_n_0,
      I1 => vram_reg_i_17_n_0,
      I2 => axi_araddr(3),
      I3 => vram_reg_i_22_n_0,
      I4 => wr_index(3),
      I5 => wr_index(4),
      O => vram_reg_i_20_n_0
    );
vram_reg_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEA000000"
    )
        port map (
      I0 => wr_index(5),
      I1 => wr_index(4),
      I2 => wr_index(3),
      I3 => wr_index(6),
      I4 => wr_index(9),
      I5 => vram_reg_i_16_n_0,
      O => vram_reg_i_21_n_0
    );
vram_reg_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => vram_reg_i_13_n_0,
      I1 => wr_index(7),
      I2 => wr_index(8),
      I3 => wr_index(5),
      O => vram_reg_i_22_n_0
    );
vram_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFEE000C000C"
    )
        port map (
      I0 => vram_reg_i_15_n_0,
      I1 => wr_index(8),
      I2 => wr_index(9),
      I3 => vram_reg_i_13_n_0,
      I4 => wr_index(7),
      I5 => axi_araddr(8),
      O => ADDRARDADDR(8)
    );
vram_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFEE000C000C"
    )
        port map (
      I0 => vram_reg_i_15_n_0,
      I1 => wr_index(7),
      I2 => wr_index(9),
      I3 => vram_reg_i_13_n_0,
      I4 => wr_index(8),
      I5 => axi_araddr(7),
      O => ADDRARDADDR(7)
    );
vram_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAACAAACAA8CAACC"
    )
        port map (
      I0 => axi_araddr(6),
      I1 => wr_index(6),
      I2 => wr_index(9),
      I3 => vram_reg_i_13_n_0,
      I4 => vram_reg_i_12_n_0,
      I5 => vram_reg_i_14_n_0,
      O => ADDRARDADDR(6)
    );
vram_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFAFA30003000"
    )
        port map (
      I0 => vram_reg_i_16_n_0,
      I1 => vram_reg_i_13_n_0,
      I2 => wr_index(5),
      I3 => vram_reg_i_17_n_0,
      I4 => vram_reg_i_18_n_0,
      I5 => axi_araddr(5),
      O => ADDRARDADDR(5)
    );
vram_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA8000"
    )
        port map (
      I0 => axi_araddr(4),
      I1 => wr_index(5),
      I2 => wr_index(6),
      I3 => wr_index(9),
      I4 => vram_reg_i_16_n_0,
      I5 => vram_reg_i_19_n_0,
      O => ADDRARDADDR(4)
    );
vram_reg_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA8000"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => wr_index(5),
      I2 => wr_index(6),
      I3 => wr_index(9),
      I4 => vram_reg_i_16_n_0,
      I5 => vram_reg_i_20_n_0,
      O => ADDRARDADDR(3)
    );
vram_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => vram_reg_i_21_n_0,
      I2 => wr_index(2),
      I3 => \^vram_we\,
      O => ADDRARDADDR(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_hdmi_text_controller_0_2_serdes_10_to_1 is
  port (
    iob_data_out : out STD_LOGIC;
    pix_clkx5 : in STD_LOGIC;
    pix_clk : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 9 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_hdmi_text_controller_0_2_serdes_10_to_1 : entity is "serdes_10_to_1";
end mb_usb_hdmi_text_controller_0_2_serdes_10_to_1;

architecture STRUCTURE of mb_usb_hdmi_text_controller_0_2_serdes_10_to_1 is
  signal slave_shift_out1 : STD_LOGIC;
  signal slave_shift_out2 : STD_LOGIC;
  signal NLW_oserdes_m_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of oserdes_m : label is "PRIMITIVE";
  attribute BOX_TYPE of oserdes_s : label is "PRIMITIVE";
begin
oserdes_m: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => datain(0),
      D2 => datain(1),
      D3 => datain(2),
      D4 => datain(3),
      D5 => datain(4),
      D6 => datain(5),
      D7 => datain(6),
      D8 => datain(7),
      OCE => '1',
      OFB => NLW_oserdes_m_OFB_UNCONNECTED,
      OQ => iob_data_out,
      RST => AR(0),
      SHIFTIN1 => slave_shift_out1,
      SHIFTIN2 => slave_shift_out2,
      SHIFTOUT1 => NLW_oserdes_m_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_oserdes_m_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_oserdes_m_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_oserdes_m_TFB_UNCONNECTED,
      TQ => NLW_oserdes_m_TQ_UNCONNECTED
    );
oserdes_s: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => datain(8),
      D4 => datain(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_oserdes_s_OFB_UNCONNECTED,
      OQ => NLW_oserdes_s_OQ_UNCONNECTED,
      RST => AR(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => slave_shift_out1,
      SHIFTOUT2 => slave_shift_out2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_oserdes_s_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_oserdes_s_TFB_UNCONNECTED,
      TQ => NLW_oserdes_s_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_0 is
  port (
    iob_data_out : out STD_LOGIC;
    pix_clkx5 : in STD_LOGIC;
    pix_clk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_0 : entity is "serdes_10_to_1";
end mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_0;

architecture STRUCTURE of mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_0 is
  signal slave_shift_out1 : STD_LOGIC;
  signal slave_shift_out2 : STD_LOGIC;
  signal NLW_oserdes_m_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of oserdes_m : label is "PRIMITIVE";
  attribute BOX_TYPE of oserdes_s : label is "PRIMITIVE";
begin
oserdes_m: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => '0',
      D4 => '0',
      D5 => '0',
      D6 => '1',
      D7 => '1',
      D8 => '1',
      OCE => '1',
      OFB => NLW_oserdes_m_OFB_UNCONNECTED,
      OQ => iob_data_out,
      RST => AR(0),
      SHIFTIN1 => slave_shift_out1,
      SHIFTIN2 => slave_shift_out2,
      SHIFTOUT1 => NLW_oserdes_m_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_oserdes_m_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_oserdes_m_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_oserdes_m_TFB_UNCONNECTED,
      TQ => NLW_oserdes_m_TQ_UNCONNECTED
    );
oserdes_s: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => '1',
      D4 => '1',
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_oserdes_s_OFB_UNCONNECTED,
      OQ => NLW_oserdes_s_OQ_UNCONNECTED,
      RST => AR(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => slave_shift_out1,
      SHIFTOUT2 => slave_shift_out2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_oserdes_s_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_oserdes_s_TFB_UNCONNECTED,
      TQ => NLW_oserdes_s_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_1 is
  port (
    iob_data_out : out STD_LOGIC;
    pix_clkx5 : in STD_LOGIC;
    pix_clk : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 9 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_1 : entity is "serdes_10_to_1";
end mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_1;

architecture STRUCTURE of mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_1 is
  signal slave_shift_out1 : STD_LOGIC;
  signal slave_shift_out2 : STD_LOGIC;
  signal NLW_oserdes_m_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of oserdes_m : label is "PRIMITIVE";
  attribute BOX_TYPE of oserdes_s : label is "PRIMITIVE";
begin
oserdes_m: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => datain(0),
      D2 => datain(1),
      D3 => datain(2),
      D4 => datain(3),
      D5 => datain(4),
      D6 => datain(5),
      D7 => datain(6),
      D8 => datain(7),
      OCE => '1',
      OFB => NLW_oserdes_m_OFB_UNCONNECTED,
      OQ => iob_data_out,
      RST => AR(0),
      SHIFTIN1 => slave_shift_out1,
      SHIFTIN2 => slave_shift_out2,
      SHIFTOUT1 => NLW_oserdes_m_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_oserdes_m_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_oserdes_m_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_oserdes_m_TFB_UNCONNECTED,
      TQ => NLW_oserdes_m_TQ_UNCONNECTED
    );
oserdes_s: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => datain(8),
      D4 => datain(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_oserdes_s_OFB_UNCONNECTED,
      OQ => NLW_oserdes_s_OQ_UNCONNECTED,
      RST => AR(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => slave_shift_out1,
      SHIFTOUT2 => slave_shift_out2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_oserdes_s_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_oserdes_s_TFB_UNCONNECTED,
      TQ => NLW_oserdes_s_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_2 is
  port (
    iob_data_out : out STD_LOGIC;
    pix_clkx5 : in STD_LOGIC;
    pix_clk : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 9 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_2 : entity is "serdes_10_to_1";
end mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_2;

architecture STRUCTURE of mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_2 is
  signal slave_shift_out1 : STD_LOGIC;
  signal slave_shift_out2 : STD_LOGIC;
  signal NLW_oserdes_m_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_m_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_oserdes_s_TQ_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of oserdes_m : label is "PRIMITIVE";
  attribute BOX_TYPE of oserdes_s : label is "PRIMITIVE";
begin
oserdes_m: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => datain(0),
      D2 => datain(1),
      D3 => datain(2),
      D4 => datain(3),
      D5 => datain(4),
      D6 => datain(5),
      D7 => datain(6),
      D8 => datain(7),
      OCE => '1',
      OFB => NLW_oserdes_m_OFB_UNCONNECTED,
      OQ => iob_data_out,
      RST => AR(0),
      SHIFTIN1 => slave_shift_out1,
      SHIFTIN2 => slave_shift_out2,
      SHIFTOUT1 => NLW_oserdes_m_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_oserdes_m_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_oserdes_m_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_oserdes_m_TFB_UNCONNECTED,
      TQ => NLW_oserdes_m_TQ_UNCONNECTED
    );
oserdes_s: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => pix_clkx5,
      CLKDIV => pix_clk,
      D1 => '0',
      D2 => '0',
      D3 => datain(8),
      D4 => datain(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_oserdes_s_OFB_UNCONNECTED,
      OQ => NLW_oserdes_s_OQ_UNCONNECTED,
      RST => AR(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => slave_shift_out1,
      SHIFTOUT2 => slave_shift_out2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_oserdes_s_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_oserdes_s_TFB_UNCONNECTED,
      TQ => NLW_oserdes_s_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_hdmi_text_controller_0_2_srldelay is
  port (
    data_o : out STD_LOGIC_VECTOR ( 37 downto 0 );
    pix_clk : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_hdmi_text_controller_0_2_srldelay : entity is "srldelay";
end mb_usb_hdmi_text_controller_0_2_srldelay;

architecture STRUCTURE of mb_usb_hdmi_text_controller_0_2_srldelay is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \srl[0].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \srl[0].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name : string;
  attribute srl_name of \srl[0].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[0].srl16_i ";
  attribute BOX_TYPE of \srl[10].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[10].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[10].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[10].srl16_i ";
  attribute BOX_TYPE of \srl[11].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[11].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[11].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[11].srl16_i ";
  attribute BOX_TYPE of \srl[14].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[14].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[14].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[14].srl16_i ";
  attribute BOX_TYPE of \srl[15].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[15].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[15].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[15].srl16_i ";
  attribute BOX_TYPE of \srl[16].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[16].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[16].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[16].srl16_i ";
  attribute BOX_TYPE of \srl[17].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[17].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[17].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[17].srl16_i ";
  attribute BOX_TYPE of \srl[18].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[18].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[18].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[18].srl16_i ";
  attribute BOX_TYPE of \srl[19].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[19].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[19].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[19].srl16_i ";
  attribute BOX_TYPE of \srl[1].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[1].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[1].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[1].srl16_i ";
  attribute BOX_TYPE of \srl[20].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[20].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[20].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[20].srl16_i ";
  attribute BOX_TYPE of \srl[21].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[21].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[21].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[21].srl16_i ";
  attribute BOX_TYPE of \srl[22].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[22].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[22].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[22].srl16_i ";
  attribute BOX_TYPE of \srl[23].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[23].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[23].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[23].srl16_i ";
  attribute BOX_TYPE of \srl[24].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[24].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[24].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[24].srl16_i ";
  attribute BOX_TYPE of \srl[25].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[25].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[25].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[25].srl16_i ";
  attribute BOX_TYPE of \srl[26].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[26].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[26].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[26].srl16_i ";
  attribute BOX_TYPE of \srl[27].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[27].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[27].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[27].srl16_i ";
  attribute BOX_TYPE of \srl[28].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[28].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[28].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[28].srl16_i ";
  attribute BOX_TYPE of \srl[29].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[29].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[29].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[29].srl16_i ";
  attribute BOX_TYPE of \srl[2].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[2].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[2].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[2].srl16_i ";
  attribute BOX_TYPE of \srl[30].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[30].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[30].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[30].srl16_i ";
  attribute BOX_TYPE of \srl[31].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[31].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[31].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[31].srl16_i ";
  attribute BOX_TYPE of \srl[32].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[32].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[32].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[32].srl16_i ";
  attribute BOX_TYPE of \srl[33].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[33].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[33].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[33].srl16_i ";
  attribute BOX_TYPE of \srl[34].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[34].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[34].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[34].srl16_i ";
  attribute BOX_TYPE of \srl[35].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[35].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[35].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[35].srl16_i ";
  attribute BOX_TYPE of \srl[36].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[36].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[36].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[36].srl16_i ";
  attribute BOX_TYPE of \srl[37].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[37].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[37].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[37].srl16_i ";
  attribute BOX_TYPE of \srl[38].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[38].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[38].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[38].srl16_i ";
  attribute BOX_TYPE of \srl[39].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[39].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[39].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[39].srl16_i ";
  attribute BOX_TYPE of \srl[3].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[3].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[3].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[3].srl16_i ";
  attribute BOX_TYPE of \srl[4].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[4].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[4].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[4].srl16_i ";
  attribute BOX_TYPE of \srl[5].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[5].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[5].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[5].srl16_i ";
  attribute BOX_TYPE of \srl[6].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[6].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[6].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[6].srl16_i ";
  attribute BOX_TYPE of \srl[7].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[7].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[7].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[7].srl16_i ";
  attribute BOX_TYPE of \srl[8].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[8].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[8].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[8].srl16_i ";
  attribute BOX_TYPE of \srl[9].srl16_i\ : label is "PRIMITIVE";
  attribute srl_bus_name of \srl[9].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl ";
  attribute srl_name of \srl[9].srl16_i\ : label is "\inst/vga_to_hdmi /\inst/srldly_0/srl[9].srl16_i ";
begin
\srl[0].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(0)
    );
\srl[10].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(10)
    );
\srl[11].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(11)
    );
\srl[14].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(12)
    );
\srl[15].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(13)
    );
\srl[16].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(14)
    );
\srl[17].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(15)
    );
\srl[18].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(16)
    );
\srl[19].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(17)
    );
\srl[1].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(0),
      Q => data_o(1)
    );
\srl[20].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(3),
      Q => data_o(18)
    );
\srl[21].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(4),
      Q => data_o(19)
    );
\srl[22].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(5),
      Q => data_o(20)
    );
\srl[23].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(6),
      Q => data_o(21)
    );
\srl[24].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(22)
    );
\srl[25].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(23)
    );
\srl[26].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(24)
    );
\srl[27].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(25)
    );
\srl[28].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(3),
      Q => data_o(26)
    );
\srl[29].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(4),
      Q => data_o(27)
    );
\srl[2].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(1),
      Q => data_o(2)
    );
\srl[30].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(5),
      Q => data_o(28)
    );
\srl[31].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(6),
      Q => data_o(29)
    );
\srl[32].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(30)
    );
\srl[33].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(31)
    );
\srl[34].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(32)
    );
\srl[35].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(33)
    );
\srl[36].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(3),
      Q => data_o(34)
    );
\srl[37].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(4),
      Q => data_o(35)
    );
\srl[38].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(5),
      Q => data_o(36)
    );
\srl[39].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(6),
      Q => data_o(37)
    );
\srl[3].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => data_i(2),
      Q => data_o(3)
    );
\srl[4].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(4)
    );
\srl[5].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(5)
    );
\srl[6].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(6)
    );
\srl[7].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(7)
    );
\srl[8].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(8)
    );
\srl[9].srl16_i\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => pix_clk,
      D => '0',
      Q => data_o(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_hdmi_text_controller_0_2_vga_controller is
  port (
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    \cam_fb_reg_mux_sel_b_pos_0__4_i_1_0\ : out STD_LOGIC;
    cam_rd_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \cam_fb_reg_mux_sel_b_pos_0__4_i_1_1\ : out STD_LOGIC;
    \cam_fb_reg_mux_sel_b_pos_0__4_i_1_2\ : out STD_LOGIC;
    \cam_fb_reg_mux_sel_b_pos_0__4_i_1_3\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    vde : out STD_LOGIC;
    \hc_reg[9]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \hc_reg[6]_rep_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vs_reg_0 : out STD_LOGIC;
    clk_out1 : in STD_LOGIC;
    reset_ah : in STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \cam_fb_reg_mux_sel_b_pos_0__4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \cam_fb_reg_mux_sel_b_pos_0__4_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    cam_fb_reg_0_4 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    \axi_rdata_reg[0]_0\ : in STD_LOGIC;
    \axi_rdata_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \axi_rdata_reg[9]_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \axi_rdata_reg[0]_1\ : in STD_LOGIC;
    \axi_rdata_reg[0]_2\ : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[1]\ : in STD_LOGIC;
    \axi_rdata_reg[2]\ : in STD_LOGIC;
    \axi_rdata_reg[3]\ : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC;
    \axi_rdata_reg[5]\ : in STD_LOGIC;
    \axi_rdata_reg[6]\ : in STD_LOGIC;
    \axi_rdata_reg[7]\ : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC;
    \axi_rdata_reg[9]_1\ : in STD_LOGIC;
    vsync_p : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_hdmi_text_controller_0_2_vga_controller : entity is "vga_controller";
end mb_usb_hdmi_text_controller_0_2_vga_controller;

architecture STRUCTURE of mb_usb_hdmi_text_controller_0_2_vga_controller is
  signal \^addrbwraddr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^di\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal cam_fb_reg_0_4_i_3_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_3_n_1 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_3_n_2 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_3_n_3 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_4_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_4_n_1 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_4_n_2 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_4_n_3 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_6_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_6_n_1 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_6_n_2 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_6_n_3 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_6_n_4 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_6_n_5 : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_1_n_1\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_1_n_2\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_1_n_3\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_2\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_3\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_5\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_6\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_7\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_0\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_1\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_2\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_3\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_4\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_5\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_6\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_7\ : STD_LOGIC;
  signal \^cam_rd_addr\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal drawX : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hc : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \hc[0]_rep__0_i_1_n_0\ : STD_LOGIC;
  signal \hc[0]_rep_i_1_n_0\ : STD_LOGIC;
  signal \hc[1]_rep_i_1_n_0\ : STD_LOGIC;
  signal \hc[2]_rep_i_1_n_0\ : STD_LOGIC;
  signal \hc[3]_rep_i_1_n_0\ : STD_LOGIC;
  signal \hc[4]_rep_i_1_n_0\ : STD_LOGIC;
  signal \hc[5]_rep_i_1_n_0\ : STD_LOGIC;
  signal \hc[6]_rep_i_1_n_0\ : STD_LOGIC;
  signal \hc[9]_i_2_n_0\ : STD_LOGIC;
  signal \^hc_reg[6]_rep_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^hc_reg[9]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal hs_i_1_n_0 : STD_LOGIC;
  signal hs_i_2_n_0 : STD_LOGIC;
  signal vc : STD_LOGIC;
  signal \vc[0]_i_1_n_0\ : STD_LOGIC;
  signal \vc[1]_i_1_n_0\ : STD_LOGIC;
  signal \vc[2]_i_1_n_0\ : STD_LOGIC;
  signal \vc[3]_i_1_n_0\ : STD_LOGIC;
  signal \vc[3]_i_2_n_0\ : STD_LOGIC;
  signal \vc[4]_i_1_n_0\ : STD_LOGIC;
  signal \vc[5]_i_1_n_0\ : STD_LOGIC;
  signal \vc[6]_i_1_n_0\ : STD_LOGIC;
  signal \vc[7]_i_1_n_0\ : STD_LOGIC;
  signal \vc[8]_i_1_n_0\ : STD_LOGIC;
  signal \vc[8]_i_2_n_0\ : STD_LOGIC;
  signal \vc[9]_i_2_n_0\ : STD_LOGIC;
  signal \vc[9]_i_3_n_0\ : STD_LOGIC;
  signal vga_to_hdmi_i_11_n_0 : STD_LOGIC;
  signal vs_i_1_n_0 : STD_LOGIC;
  signal vs_i_2_n_0 : STD_LOGIC;
  signal \^vsync\ : STD_LOGIC;
  signal \NLW_cam_fb_reg_mux_sel_b_pos_0__4_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cam_fb_reg_mux_sel_b_pos_0__4_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cam_fb_reg_mux_sel_b_pos_0__4_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[0]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_2\ : label is "soft_lutpair63";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cam_fb_reg_0_4_i_3 : label is 35;
  attribute ADDER_THRESHOLD of cam_fb_reg_0_4_i_4 : label is 35;
  attribute ADDER_THRESHOLD of cam_fb_reg_0_4_i_6 : label is 35;
  attribute ADDER_THRESHOLD of \cam_fb_reg_mux_sel_b_pos_0__4_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \cam_fb_reg_mux_sel_b_pos_0__4_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cam_fb_reg_mux_sel_b_pos_0__4_i_3\ : label is 35;
  attribute SOFT_HLUTNM of \hc[0]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \hc[1]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \hc[3]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \hc[6]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \hc[7]_i_1\ : label is "soft_lutpair64";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \hc_reg[0]\ : label is "hc_reg[0]";
  attribute ORIG_CELL_NAME of \hc_reg[0]_rep\ : label is "hc_reg[0]";
  attribute ORIG_CELL_NAME of \hc_reg[0]_rep__0\ : label is "hc_reg[0]";
  attribute ORIG_CELL_NAME of \hc_reg[1]\ : label is "hc_reg[1]";
  attribute ORIG_CELL_NAME of \hc_reg[1]_rep\ : label is "hc_reg[1]";
  attribute ORIG_CELL_NAME of \hc_reg[2]\ : label is "hc_reg[2]";
  attribute ORIG_CELL_NAME of \hc_reg[2]_rep\ : label is "hc_reg[2]";
  attribute ORIG_CELL_NAME of \hc_reg[3]\ : label is "hc_reg[3]";
  attribute ORIG_CELL_NAME of \hc_reg[3]_rep\ : label is "hc_reg[3]";
  attribute ORIG_CELL_NAME of \hc_reg[4]\ : label is "hc_reg[4]";
  attribute ORIG_CELL_NAME of \hc_reg[4]_rep\ : label is "hc_reg[4]";
  attribute ORIG_CELL_NAME of \hc_reg[5]\ : label is "hc_reg[5]";
  attribute ORIG_CELL_NAME of \hc_reg[5]_rep\ : label is "hc_reg[5]";
  attribute ORIG_CELL_NAME of \hc_reg[6]\ : label is "hc_reg[6]";
  attribute ORIG_CELL_NAME of \hc_reg[6]_rep\ : label is "hc_reg[6]";
  attribute SOFT_HLUTNM of \vc[1]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \vc[3]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \vc[4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \vc[7]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \vc[8]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \vc[8]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of vga_to_hdmi_i_11 : label is "soft_lutpair60";
begin
  ADDRBWRADDR(3 downto 0) <= \^addrbwraddr\(3 downto 0);
  DI(2 downto 0) <= \^di\(2 downto 0);
  Q(8 downto 0) <= \^q\(8 downto 0);
  cam_rd_addr(11 downto 0) <= \^cam_rd_addr\(11 downto 0);
  \hc_reg[6]_rep_0\(3 downto 0) <= \^hc_reg[6]_rep_0\(3 downto 0);
  \hc_reg[9]_0\(8 downto 0) <= \^hc_reg[9]_0\(8 downto 0);
  vsync <= \^vsync\;
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata_reg[0]\,
      I2 => \axi_rdata_reg[0]_0\,
      I3 => \axi_rdata_reg[9]\(0),
      I4 => \axi_rdata_reg[9]_0\(0),
      I5 => \axi_rdata_reg[0]_1\,
      O => D(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^hc_reg[6]_rep_0\(0),
      I2 => \axi_rdata_reg[0]_2\,
      I3 => axi_araddr(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata_reg[1]\,
      I2 => \axi_rdata_reg[0]_0\,
      I3 => \axi_rdata_reg[9]\(1),
      I4 => \axi_rdata_reg[9]_0\(1),
      I5 => \axi_rdata_reg[0]_1\,
      O => D(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^hc_reg[9]_0\(0),
      I2 => \axi_rdata_reg[0]_2\,
      I3 => axi_araddr(0),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata_reg[2]\,
      I2 => \axi_rdata_reg[0]_0\,
      I3 => \axi_rdata_reg[9]\(2),
      I4 => \axi_rdata_reg[9]_0\(2),
      I5 => \axi_rdata_reg[0]_1\,
      O => D(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^addrbwraddr\(2),
      I2 => \axi_rdata_reg[0]_2\,
      I3 => axi_araddr(0),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \axi_rdata_reg[3]\,
      I2 => \axi_rdata_reg[0]_0\,
      I3 => \axi_rdata_reg[9]\(3),
      I4 => \axi_rdata_reg[9]_0\(3),
      I5 => \axi_rdata_reg[0]_1\,
      O => D(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^hc_reg[9]_0\(2),
      I2 => \axi_rdata_reg[0]_2\,
      I3 => axi_araddr(0),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => \axi_rdata_reg[4]\,
      I2 => \axi_rdata_reg[0]_0\,
      I3 => \axi_rdata_reg[9]\(4),
      I4 => \axi_rdata_reg[9]_0\(4),
      I5 => \axi_rdata_reg[0]_1\,
      O => D(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^hc_reg[9]_0\(3),
      I2 => \axi_rdata_reg[0]_2\,
      I3 => axi_araddr(0),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => \axi_rdata_reg[5]\,
      I2 => \axi_rdata_reg[0]_0\,
      I3 => \axi_rdata_reg[9]\(5),
      I4 => \axi_rdata_reg[9]_0\(5),
      I5 => \axi_rdata_reg[0]_1\,
      O => D(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^addrbwraddr\(3),
      I2 => \axi_rdata_reg[0]_2\,
      I3 => axi_araddr(0),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => \axi_rdata_reg[6]\,
      I2 => \axi_rdata_reg[0]_0\,
      I3 => \axi_rdata_reg[9]\(6),
      I4 => \axi_rdata_reg[9]_0\(6),
      I5 => \axi_rdata_reg[0]_1\,
      O => D(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^hc_reg[9]_0\(5),
      I2 => \axi_rdata_reg[0]_2\,
      I3 => axi_araddr(0),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => \axi_rdata_reg[7]\,
      I2 => \axi_rdata_reg[0]_0\,
      I3 => \axi_rdata_reg[9]\(7),
      I4 => \axi_rdata_reg[9]_0\(7),
      I5 => \axi_rdata_reg[0]_1\,
      O => D(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^hc_reg[9]_0\(6),
      I2 => \axi_rdata_reg[0]_2\,
      I3 => axi_araddr(0),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => \axi_rdata_reg[8]\,
      I2 => \axi_rdata_reg[0]_0\,
      I3 => \axi_rdata_reg[9]\(8),
      I4 => \axi_rdata_reg[9]_0\(8),
      I5 => \axi_rdata_reg[0]_1\,
      O => D(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^hc_reg[9]_0\(7),
      I2 => \axi_rdata_reg[0]_2\,
      I3 => axi_araddr(0),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => \axi_rdata_reg[9]_1\,
      I2 => \axi_rdata_reg[0]_0\,
      I3 => \axi_rdata_reg[9]\(9),
      I4 => \axi_rdata_reg[9]_0\(9),
      I5 => \axi_rdata_reg[0]_1\,
      O => D(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^hc_reg[9]_0\(8),
      I2 => \axi_rdata_reg[0]_2\,
      I3 => axi_araddr(0),
      O => \axi_rdata[9]_i_2_n_0\
    );
cam_fb_reg_0_4_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^cam_rd_addr\(11),
      I1 => \^cam_rd_addr\(9),
      I2 => \^cam_rd_addr\(10),
      O => \cam_fb_reg_mux_sel_b_pos_0__4_i_1_0\
    );
cam_fb_reg_0_4_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => cam_fb_reg_0_4_i_4_n_0,
      CO(3) => cam_fb_reg_0_4_i_3_n_0,
      CO(2) => cam_fb_reg_0_4_i_3_n_1,
      CO(1) => cam_fb_reg_0_4_i_3_n_2,
      CO(0) => cam_fb_reg_0_4_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^cam_rd_addr\(7 downto 4),
      S(3) => \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_5\,
      S(2) => \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_6\,
      S(1) => \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_7\,
      S(0) => cam_fb_reg_0_4_i_6_n_4
    );
cam_fb_reg_0_4_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cam_fb_reg_0_4_i_4_n_0,
      CO(2) => cam_fb_reg_0_4_i_4_n_1,
      CO(1) => cam_fb_reg_0_4_i_4_n_2,
      CO(0) => cam_fb_reg_0_4_i_4_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^di\(2 downto 0),
      O(3 downto 0) => \^cam_rd_addr\(3 downto 0),
      S(3) => cam_fb_reg_0_4_i_6_n_5,
      S(2 downto 0) => cam_fb_reg_0_4(2 downto 0)
    );
cam_fb_reg_0_4_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cam_fb_reg_0_4_i_6_n_0,
      CO(2) => cam_fb_reg_0_4_i_6_n_1,
      CO(1) => cam_fb_reg_0_4_i_6_n_2,
      CO(0) => cam_fb_reg_0_4_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 2) => \^q\(1 downto 0),
      DI(1) => \^di\(0),
      DI(0) => '0',
      O(3) => cam_fb_reg_0_4_i_6_n_4,
      O(2) => cam_fb_reg_0_4_i_6_n_5,
      O(1 downto 0) => \^di\(2 downto 1),
      S(3 downto 1) => S(2 downto 0),
      S(0) => \^q\(0)
    );
cam_fb_reg_2_4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^cam_rd_addr\(9),
      I1 => \^cam_rd_addr\(10),
      I2 => \^cam_rd_addr\(11),
      O => \cam_fb_reg_mux_sel_b_pos_0__4_i_1_1\
    );
cam_fb_reg_4_4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^cam_rd_addr\(10),
      I1 => \^cam_rd_addr\(9),
      I2 => \^cam_rd_addr\(11),
      O => \cam_fb_reg_mux_sel_b_pos_0__4_i_1_2\
    );
cam_fb_reg_6_4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^cam_rd_addr\(11),
      I1 => \^cam_rd_addr\(9),
      I2 => \^cam_rd_addr\(10),
      O => \cam_fb_reg_mux_sel_b_pos_0__4_i_1_3\
    );
\cam_fb_reg_mux_sel_b_pos_0__4_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => cam_fb_reg_0_4_i_3_n_0,
      CO(3) => \NLW_cam_fb_reg_mux_sel_b_pos_0__4_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cam_fb_reg_mux_sel_b_pos_0__4_i_1_n_1\,
      CO(1) => \cam_fb_reg_mux_sel_b_pos_0__4_i_1_n_2\,
      CO(0) => \cam_fb_reg_mux_sel_b_pos_0__4_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^cam_rd_addr\(11 downto 8),
      S(3) => \cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_5\,
      S(2) => \cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_6\,
      S(1) => \cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_7\,
      S(0) => \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_4\
    );
\cam_fb_reg_mux_sel_b_pos_0__4_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_0\,
      CO(3 downto 2) => \NLW_cam_fb_reg_mux_sel_b_pos_0__4_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_2\,
      CO(0) => \cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(6),
      O(3) => \NLW_cam_fb_reg_mux_sel_b_pos_0__4_i_2_O_UNCONNECTED\(3),
      O(2) => \cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_5\,
      O(1) => \cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_6\,
      O(0) => \cam_fb_reg_mux_sel_b_pos_0__4_i_2_n_7\,
      S(3) => '0',
      S(2 downto 1) => \^q\(8 downto 7),
      S(0) => \cam_fb_reg_mux_sel_b_pos_0__4_0\(0)
    );
\cam_fb_reg_mux_sel_b_pos_0__4_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => cam_fb_reg_0_4_i_6_n_0,
      CO(3) => \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_0\,
      CO(2) => \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_1\,
      CO(1) => \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_2\,
      CO(0) => \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(5 downto 2),
      O(3) => \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_4\,
      O(2) => \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_5\,
      O(1) => \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_6\,
      O(0) => \cam_fb_reg_mux_sel_b_pos_0__4_i_3_n_7\,
      S(3 downto 0) => \cam_fb_reg_mux_sel_b_pos_0__4\(3 downto 0)
    );
\frame_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^vsync\,
      I1 => vsync_p,
      O => vs_reg_0
    );
\hc[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drawX(0),
      O => hc(0)
    );
\hc[0]_rep__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drawX(0),
      O => \hc[0]_rep__0_i_1_n_0\
    );
\hc[0]_rep_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drawX(0),
      O => \hc[0]_rep_i_1_n_0\
    );
\hc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => drawX(0),
      I1 => \^hc_reg[9]_0\(0),
      O => hc(1)
    );
\hc[1]_rep_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => drawX(0),
      I1 => \^hc_reg[9]_0\(0),
      O => \hc[1]_rep_i_1_n_0\
    );
\hc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^hc_reg[9]_0\(0),
      I1 => drawX(0),
      I2 => \^hc_reg[9]_0\(1),
      O => hc(2)
    );
\hc[2]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^addrbwraddr\(1),
      I1 => drawX(0),
      I2 => \^hc_reg[9]_0\(1),
      O => \hc[2]_rep_i_1_n_0\
    );
\hc[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^addrbwraddr\(2),
      I1 => drawX(0),
      I2 => \^addrbwraddr\(1),
      I3 => \^hc_reg[9]_0\(2),
      O => hc(3)
    );
\hc[3]_rep_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^hc_reg[9]_0\(1),
      I1 => \^addrbwraddr\(0),
      I2 => \^hc_reg[9]_0\(0),
      I3 => \^hc_reg[9]_0\(2),
      O => \hc[3]_rep_i_1_n_0\
    );
\hc[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^hc_reg[9]_0\(2),
      I1 => \^addrbwraddr\(1),
      I2 => \^hc_reg[6]_rep_0\(0),
      I3 => \^hc_reg[9]_0\(1),
      I4 => \^hc_reg[6]_rep_0\(2),
      O => hc(4)
    );
\hc[4]_rep_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^hc_reg[9]_0\(2),
      I1 => \^hc_reg[9]_0\(0),
      I2 => \^addrbwraddr\(0),
      I3 => \^hc_reg[9]_0\(1),
      I4 => \^hc_reg[6]_rep_0\(2),
      O => \hc[4]_rep_i_1_n_0\
    );
\hc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA55515555"
    )
        port map (
      I0 => \hc[9]_i_2_n_0\,
      I1 => \^hc_reg[9]_0\(7),
      I2 => \^hc_reg[9]_0\(6),
      I3 => \^hc_reg[9]_0\(5),
      I4 => \^hc_reg[9]_0\(8),
      I5 => \^hc_reg[9]_0\(4),
      O => hc(5)
    );
\hc[5]_rep_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA55515555"
    )
        port map (
      I0 => \hc[9]_i_2_n_0\,
      I1 => \^hc_reg[9]_0\(7),
      I2 => \^hc_reg[9]_0\(6),
      I3 => \^hc_reg[9]_0\(5),
      I4 => \^hc_reg[9]_0\(8),
      I5 => \^hc_reg[9]_0\(4),
      O => \hc[5]_rep_i_1_n_0\
    );
\hc[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^hc_reg[9]_0\(4),
      I1 => \hc[9]_i_2_n_0\,
      I2 => \^hc_reg[9]_0\(5),
      O => hc(6)
    );
\hc[6]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^hc_reg[9]_0\(4),
      I1 => \hc[9]_i_2_n_0\,
      I2 => \^hc_reg[9]_0\(5),
      O => \hc[6]_rep_i_1_n_0\
    );
\hc[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^hc_reg[9]_0\(5),
      I1 => \hc[9]_i_2_n_0\,
      I2 => \^addrbwraddr\(3),
      I3 => \^hc_reg[9]_0\(6),
      O => hc(7)
    );
\hc[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC3CCCCCC4"
    )
        port map (
      I0 => \^hc_reg[9]_0\(8),
      I1 => \^hc_reg[9]_0\(7),
      I2 => \^addrbwraddr\(3),
      I3 => \^hc_reg[9]_0\(5),
      I4 => \^hc_reg[9]_0\(6),
      I5 => \hc[9]_i_2_n_0\,
      O => hc(8)
    );
\hc[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAA2"
    )
        port map (
      I0 => \^hc_reg[9]_0\(8),
      I1 => \^hc_reg[9]_0\(7),
      I2 => \hc[9]_i_2_n_0\,
      I3 => \^addrbwraddr\(3),
      I4 => \^hc_reg[9]_0\(6),
      I5 => \^hc_reg[9]_0\(5),
      O => hc(9)
    );
\hc[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^hc_reg[9]_0\(2),
      I1 => \^addrbwraddr\(1),
      I2 => \^addrbwraddr\(0),
      I3 => \^hc_reg[9]_0\(1),
      I4 => \^hc_reg[9]_0\(3),
      O => \hc[9]_i_2_n_0\
    );
\hc_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => hc(0),
      Q => drawX(0)
    );
\hc_reg[0]_rep\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => \hc[0]_rep_i_1_n_0\,
      Q => \^addrbwraddr\(0)
    );
\hc_reg[0]_rep__0\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => \hc[0]_rep__0_i_1_n_0\,
      Q => \^hc_reg[6]_rep_0\(0)
    );
\hc_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => hc(1),
      Q => \^hc_reg[9]_0\(0)
    );
\hc_reg[1]_rep\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => \hc[1]_rep_i_1_n_0\,
      Q => \^addrbwraddr\(1)
    );
\hc_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => hc(2),
      Q => \^hc_reg[9]_0\(1)
    );
\hc_reg[2]_rep\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => \hc[2]_rep_i_1_n_0\,
      Q => \^addrbwraddr\(2)
    );
\hc_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => hc(3),
      Q => \^hc_reg[9]_0\(2)
    );
\hc_reg[3]_rep\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => \hc[3]_rep_i_1_n_0\,
      Q => \^hc_reg[6]_rep_0\(1)
    );
\hc_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => hc(4),
      Q => \^hc_reg[9]_0\(3)
    );
\hc_reg[4]_rep\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => \hc[4]_rep_i_1_n_0\,
      Q => \^hc_reg[6]_rep_0\(2)
    );
\hc_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => hc(5),
      Q => \^hc_reg[9]_0\(4)
    );
\hc_reg[5]_rep\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => \hc[5]_rep_i_1_n_0\,
      Q => \^addrbwraddr\(3)
    );
\hc_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => hc(6),
      Q => \^hc_reg[9]_0\(5)
    );
\hc_reg[6]_rep\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => \hc[6]_rep_i_1_n_0\,
      Q => \^hc_reg[6]_rep_0\(3)
    );
\hc_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => hc(7),
      Q => \^hc_reg[9]_0\(6)
    );
\hc_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => hc(8),
      Q => \^hc_reg[9]_0\(7)
    );
\hc_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => hc(9),
      Q => \^hc_reg[9]_0\(8)
    );
hs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF81FFFFFF"
    )
        port map (
      I0 => \^hc_reg[9]_0\(5),
      I1 => \^addrbwraddr\(3),
      I2 => hs_i_2_n_0,
      I3 => \^hc_reg[9]_0\(6),
      I4 => \^hc_reg[9]_0\(8),
      I5 => \^hc_reg[9]_0\(7),
      O => hs_i_1_n_0
    );
hs_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => \^hc_reg[9]_0\(3),
      I1 => \^hc_reg[6]_rep_0\(1),
      I2 => \^addrbwraddr\(1),
      I3 => \^hc_reg[6]_rep_0\(0),
      I4 => \^addrbwraddr\(2),
      O => hs_i_2_n_0
    );
hs_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => hs_i_1_n_0,
      Q => hsync
    );
\vc[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000DFFF"
    )
        port map (
      I0 => \^q\(8),
      I1 => \vc[3]_i_2_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^di\(0),
      I5 => \^q\(0),
      O => \vc[0]_i_1_n_0\
    );
\vc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^q\(0),
      O => \vc[1]_i_1_n_0\
    );
\vc[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333CCCCCCCCC4CC"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \vc[3]_i_2_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(0),
      I5 => \^di\(0),
      O => \vc[2]_i_1_n_0\
    );
\vc[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666CCCCCCCCC4CC"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \vc[3]_i_2_n_0\,
      I3 => \^q\(8),
      I4 => \^q\(0),
      I5 => \^di\(0),
      O => \vc[3]_i_1_n_0\
    );
\vc[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \^q\(5),
      I4 => \^q\(4),
      O => \vc[3]_i_2_n_0\
    );
\vc[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^di\(0),
      I3 => \^q\(0),
      I4 => \^q\(3),
      O => \vc[4]_i_1_n_0\
    );
\vc[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^di\(0),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(4),
      O => \vc[5]_i_1_n_0\
    );
\vc[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \vc[8]_i_2_n_0\,
      I2 => \^q\(5),
      O => \vc[6]_i_1_n_0\
    );
\vc[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \vc[8]_i_2_n_0\,
      I3 => \^q\(6),
      O => \vc[7]_i_1_n_0\
    );
\vc[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(6),
      I3 => \vc[8]_i_2_n_0\,
      I4 => \^q\(7),
      O => \vc[8]_i_1_n_0\
    );
\vc[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^di\(0),
      I3 => \^q\(0),
      I4 => \^q\(3),
      O => \vc[8]_i_2_n_0\
    );
\vc[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \^addrbwraddr\(3),
      I1 => \^hc_reg[9]_0\(8),
      I2 => \^hc_reg[9]_0\(5),
      I3 => \^hc_reg[9]_0\(6),
      I4 => \^hc_reg[9]_0\(7),
      I5 => \hc[9]_i_2_n_0\,
      O => vc
    );
\vc[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFAAFFAAFFAABFAA"
    )
        port map (
      I0 => \vc[9]_i_3_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(8),
      I4 => \^di\(0),
      I5 => \^q\(0),
      O => \vc[9]_i_2_n_0\
    );
\vc[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FF0505CCCC0505"
    )
        port map (
      I0 => \vc[8]_i_2_n_0\,
      I1 => \vc[3]_i_2_n_0\,
      I2 => vga_to_hdmi_i_11_n_0,
      I3 => \^q\(3),
      I4 => \^q\(8),
      I5 => \^di\(0),
      O => \vc[9]_i_3_n_0\
    );
\vc_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => vc,
      CLR => reset_ah,
      D => \vc[0]_i_1_n_0\,
      Q => \^di\(0)
    );
\vc_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => vc,
      CLR => reset_ah,
      D => \vc[1]_i_1_n_0\,
      Q => \^q\(0)
    );
\vc_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => vc,
      CLR => reset_ah,
      D => \vc[2]_i_1_n_0\,
      Q => \^q\(1)
    );
\vc_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => vc,
      CLR => reset_ah,
      D => \vc[3]_i_1_n_0\,
      Q => \^q\(2)
    );
\vc_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => vc,
      CLR => reset_ah,
      D => \vc[4]_i_1_n_0\,
      Q => \^q\(3)
    );
\vc_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => vc,
      CLR => reset_ah,
      D => \vc[5]_i_1_n_0\,
      Q => \^q\(4)
    );
\vc_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => vc,
      CLR => reset_ah,
      D => \vc[6]_i_1_n_0\,
      Q => \^q\(5)
    );
\vc_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => vc,
      CLR => reset_ah,
      D => \vc[7]_i_1_n_0\,
      Q => \^q\(6)
    );
\vc_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => vc,
      CLR => reset_ah,
      D => \vc[8]_i_1_n_0\,
      Q => \^q\(7)
    );
\vc_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => vc,
      CLR => reset_ah,
      D => \vc[9]_i_2_n_0\,
      Q => \^q\(8)
    );
vga_to_hdmi_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => \^q\(7),
      O => vga_to_hdmi_i_11_n_0
    );
vga_to_hdmi_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01550000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^hc_reg[9]_0\(7),
      I2 => \^hc_reg[9]_0\(6),
      I3 => \^hc_reg[9]_0\(8),
      I4 => vga_to_hdmi_i_11_n_0,
      O => vde
    );
vs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => vs_i_2_n_0,
      I2 => \^q\(8),
      I3 => \^q\(3),
      I4 => \^q\(0),
      I5 => \^di\(0),
      O => vs_i_1_n_0
    );
vs_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \^q\(2),
      O => vs_i_2_n_0
    );
vs_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_out1,
      CE => '1',
      CLR => reset_ah,
      D => vs_i_1_n_0,
      Q => \^vsync\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_hdmi_text_controller_0_2_clk_wiz_0 is
  port (
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_hdmi_text_controller_0_2_clk_wiz_0 : entity is "clk_wiz_0";
end mb_usb_hdmi_text_controller_0_2_clk_wiz_0;

architecture STRUCTURE of mb_usb_hdmi_text_controller_0_2_clk_wiz_0 is
begin
inst: entity work.mb_usb_hdmi_text_controller_0_2_clk_wiz_0_clk_wiz
     port map (
      clk_in1 => clk_in1,
      clk_out1 => clk_out1,
      clk_out2 => clk_out2,
      locked => locked,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_hdmi_text_controller_0_2_hdmi_tx_v1_0 is
  port (
    TMDS_DATA_P : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_DATA_N : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_CLK_P : out STD_LOGIC;
    TMDS_CLK_N : out STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pix_clk : in STD_LOGIC;
    pix_clkx5 : in STD_LOGIC;
    rst : in STD_LOGIC;
    pix_clk_locked : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_hdmi_text_controller_0_2_hdmi_tx_v1_0 : entity is "hdmi_tx_v1_0";
end mb_usb_hdmi_text_controller_0_2_hdmi_tx_v1_0;

architecture STRUCTURE of mb_usb_hdmi_text_controller_0_2_hdmi_tx_v1_0 is
  signal TMDSINT_0 : STD_LOGIC;
  signal TMDSINT_1 : STD_LOGIC;
  signal TMDSINT_2 : STD_LOGIC;
  signal ade_reg : STD_LOGIC;
  signal ade_reg_qq : STD_LOGIC;
  signal aux0_dly : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal aux1_dly : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal aux2_dly : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal blue_dly : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal c0_reg : STD_LOGIC;
  signal encb_n_3 : STD_LOGIC;
  signal encb_n_4 : STD_LOGIC;
  signal encb_n_5 : STD_LOGIC;
  signal encb_n_6 : STD_LOGIC;
  signal encb_n_7 : STD_LOGIC;
  signal encb_n_8 : STD_LOGIC;
  signal encb_n_9 : STD_LOGIC;
  signal encg_n_1 : STD_LOGIC;
  signal encg_n_2 : STD_LOGIC;
  signal encg_n_3 : STD_LOGIC;
  signal green_dly : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hsync_dly : STD_LOGIC;
  signal red_dly : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rst_i : STD_LOGIC;
  signal srldly_0_n_37 : STD_LOGIC;
  signal tmds_blue : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tmds_green : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tmds_red : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tmdsclk : STD_LOGIC;
  signal vde_dly : STD_LOGIC;
  signal vde_reg : STD_LOGIC;
  signal vsync_dly : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of OBUFDS_B : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_B : label is "DONT_CARE";
  attribute BOX_TYPE of OBUFDS_CLK : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_CLK : label is "DONT_CARE";
  attribute BOX_TYPE of OBUFDS_G : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_G : label is "DONT_CARE";
  attribute BOX_TYPE of OBUFDS_R : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_R : label is "DONT_CARE";
begin
OBUFDS_B: unisim.vcomponents.OBUFDS
     port map (
      I => TMDSINT_0,
      O => TMDS_DATA_P(0),
      OB => TMDS_DATA_N(0)
    );
OBUFDS_CLK: unisim.vcomponents.OBUFDS
     port map (
      I => tmdsclk,
      O => TMDS_CLK_P,
      OB => TMDS_CLK_N
    );
OBUFDS_G: unisim.vcomponents.OBUFDS
     port map (
      I => TMDSINT_1,
      O => TMDS_DATA_P(1),
      OB => TMDS_DATA_N(1)
    );
OBUFDS_R: unisim.vcomponents.OBUFDS
     port map (
      I => TMDSINT_2,
      O => TMDS_DATA_P(2),
      OB => TMDS_DATA_N(2)
    );
encb: entity work.mb_usb_hdmi_text_controller_0_2_encode
     port map (
      AR(0) => rst_i,
      D(1) => encb_n_5,
      D(0) => encb_n_6,
      Q(9 downto 0) => tmds_blue(9 downto 0),
      ade_reg => ade_reg,
      ade_reg_qq => ade_reg_qq,
      ade_reg_qq_reg_0 => encb_n_3,
      ade_reg_reg_0 => encb_n_4,
      c0_reg => c0_reg,
      c0_reg_reg_0 => encb_n_7,
      c0_reg_reg_1 => encb_n_9,
      data_o(13 downto 6) => blue_dly(7 downto 0),
      data_o(5 downto 4) => aux0_dly(3 downto 2),
      data_o(3) => hsync_dly,
      data_o(2) => vsync_dly,
      data_o(1) => vde_dly,
      data_o(0) => srldly_0_n_37,
      \dout_reg[8]_0\ => encg_n_1,
      \dout_reg[9]_0\ => encg_n_2,
      \dout_reg[9]_1\ => encg_n_3,
      pix_clk => pix_clk,
      vde_reg => vde_reg,
      vde_reg_reg_0 => encb_n_8
    );
encg: entity work.\mb_usb_hdmi_text_controller_0_2_encode__parameterized0\
     port map (
      AR(0) => rst_i,
      D(1) => encb_n_5,
      D(0) => encb_n_6,
      Q(9 downto 0) => tmds_green(9 downto 0),
      ade_reg => ade_reg,
      ade_reg_qq => ade_reg_qq,
      \adin_reg_reg[1]_0\ => encg_n_3,
      c0_reg => c0_reg,
      data_i(0) => data_i(0),
      data_o(13 downto 6) => green_dly(7 downto 0),
      data_o(5 downto 2) => aux1_dly(3 downto 0),
      data_o(1) => vde_dly,
      data_o(0) => srldly_0_n_37,
      \dout_reg[0]_0\ => encb_n_8,
      \dout_reg[3]_0\ => encb_n_9,
      \dout_reg[4]_0\ => encb_n_7,
      pix_clk => pix_clk,
      \q_m_reg_reg[8]_0\ => encg_n_1,
      \q_m_reg_reg[8]_1\ => encg_n_2,
      vde_reg => vde_reg
    );
encr: entity work.\mb_usb_hdmi_text_controller_0_2_encode__parameterized1\
     port map (
      AR(0) => rst_i,
      Q(9 downto 0) => tmds_red(9 downto 0),
      ade_reg => ade_reg,
      data_o(12 downto 5) => red_dly(7 downto 0),
      data_o(4 downto 1) => aux2_dly(3 downto 0),
      data_o(0) => vde_dly,
      \dout_reg[0]_0\ => encb_n_4,
      \dout_reg[5]_0\ => encb_n_3,
      pix_clk => pix_clk,
      pix_clk_locked => pix_clk_locked,
      rst => rst,
      vde_reg => vde_reg
    );
serial_b: entity work.mb_usb_hdmi_text_controller_0_2_serdes_10_to_1
     port map (
      AR(0) => rst_i,
      datain(9 downto 0) => tmds_blue(9 downto 0),
      iob_data_out => TMDSINT_0,
      pix_clk => pix_clk,
      pix_clkx5 => pix_clkx5
    );
serial_clk: entity work.mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_0
     port map (
      AR(0) => rst_i,
      iob_data_out => tmdsclk,
      pix_clk => pix_clk,
      pix_clkx5 => pix_clkx5
    );
serial_g: entity work.mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_1
     port map (
      AR(0) => rst_i,
      datain(9 downto 0) => tmds_green(9 downto 0),
      iob_data_out => TMDSINT_1,
      pix_clk => pix_clk,
      pix_clkx5 => pix_clkx5
    );
serial_r: entity work.mb_usb_hdmi_text_controller_0_2_serdes_10_to_1_2
     port map (
      AR(0) => rst_i,
      datain(9 downto 0) => tmds_red(9 downto 0),
      iob_data_out => TMDSINT_2,
      pix_clk => pix_clk,
      pix_clkx5 => pix_clkx5
    );
srldly_0: entity work.mb_usb_hdmi_text_controller_0_2_srldelay
     port map (
      data_i(6 downto 0) => data_i(6 downto 0),
      data_o(37 downto 30) => blue_dly(7 downto 0),
      data_o(29 downto 22) => green_dly(7 downto 0),
      data_o(21 downto 14) => red_dly(7 downto 0),
      data_o(13 downto 12) => aux0_dly(3 downto 2),
      data_o(11 downto 8) => aux1_dly(3 downto 0),
      data_o(7 downto 4) => aux2_dly(3 downto 0),
      data_o(3) => hsync_dly,
      data_o(2) => vsync_dly,
      data_o(1) => vde_dly,
      data_o(0) => srldly_0_n_37,
      pix_clk => pix_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_hdmi_text_controller_0_2_hdmi_tx_0 is
  port (
    pix_clk : in STD_LOGIC;
    pix_clkx5 : in STD_LOGIC;
    pix_clk_locked : in STD_LOGIC;
    rst : in STD_LOGIC;
    red : in STD_LOGIC_VECTOR ( 3 downto 0 );
    green : in STD_LOGIC_VECTOR ( 3 downto 0 );
    blue : in STD_LOGIC_VECTOR ( 3 downto 0 );
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    vde : in STD_LOGIC;
    aux0_din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aux1_din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aux2_din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ade : in STD_LOGIC;
    TMDS_CLK_P : out STD_LOGIC;
    TMDS_CLK_N : out STD_LOGIC;
    TMDS_DATA_P : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_DATA_N : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mb_usb_hdmi_text_controller_0_2_hdmi_tx_0 : entity is "hdmi_tx_0,hdmi_tx_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mb_usb_hdmi_text_controller_0_2_hdmi_tx_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of mb_usb_hdmi_text_controller_0_2_hdmi_tx_0 : entity is "package_project";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_hdmi_text_controller_0_2_hdmi_tx_0 : entity is "hdmi_tx_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mb_usb_hdmi_text_controller_0_2_hdmi_tx_0 : entity is "hdmi_tx_v1_0,Vivado 2022.2";
end mb_usb_hdmi_text_controller_0_2_hdmi_tx_0;

architecture STRUCTURE of mb_usb_hdmi_text_controller_0_2_hdmi_tx_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of TMDS_CLK_N : signal is "xilinx.com:interface:hdmi:2.0 hdmi_tx TMDS_CLK_N";
  attribute X_INTERFACE_INFO of TMDS_CLK_P : signal is "xilinx.com:interface:hdmi:2.0 hdmi_tx TMDS_CLK_P";
  attribute X_INTERFACE_INFO of pix_clk : signal is "xilinx.com:signal:clock:1.0 pix_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of pix_clk : signal is "XIL_INTERFACENAME pix_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pix_clkx5 : signal is "xilinx.com:signal:clock:1.0 pix_clkx5 CLK";
  attribute X_INTERFACE_PARAMETER of pix_clkx5 : signal is "XIL_INTERFACENAME pix_clkx5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of TMDS_DATA_N : signal is "xilinx.com:interface:hdmi:2.0 hdmi_tx TMDS_DATA_N";
  attribute X_INTERFACE_INFO of TMDS_DATA_P : signal is "xilinx.com:interface:hdmi:2.0 hdmi_tx TMDS_DATA_P";
begin
inst: entity work.mb_usb_hdmi_text_controller_0_2_hdmi_tx_v1_0
     port map (
      TMDS_CLK_N => TMDS_CLK_N,
      TMDS_CLK_P => TMDS_CLK_P,
      TMDS_DATA_N(2 downto 0) => TMDS_DATA_N(2 downto 0),
      TMDS_DATA_P(2 downto 0) => TMDS_DATA_P(2 downto 0),
      data_i(6 downto 3) => red(3 downto 0),
      data_i(2) => hsync,
      data_i(1) => vsync,
      data_i(0) => vde,
      pix_clk => pix_clk,
      pix_clk_locked => pix_clk_locked,
      pix_clkx5 => pix_clkx5,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_hdmi_text_controller_0_2_hdmi_text_controller_v1_0 is
  port (
    hdmi_clk_p : out STD_LOGIC;
    hdmi_clk_n : out STD_LOGIC;
    hdmi_tx_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_wready : out STD_LOGIC;
    axi_awready : out STD_LOGIC;
    axi_arready : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rvalid : out STD_LOGIC;
    axi_bvalid : out STD_LOGIC;
    cam_we : in STD_LOGIC;
    cam_wr_addr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    axi_aclk : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_wr_data : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_wvalid : in STD_LOGIC;
    axi_awvalid : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_hdmi_text_controller_0_2_hdmi_text_controller_v1_0 : entity is "hdmi_text_controller_v1_0";
end mb_usb_hdmi_text_controller_0_2_hdmi_text_controller_v1_0;

architecture STRUCTURE of mb_usb_hdmi_text_controller_0_2_hdmi_text_controller_v1_0 is
  signal \cam_fb_mux_sel_b_pos_0__4_i_4_n_0\ : STD_LOGIC;
  signal \cam_fb_mux_sel_b_pos_0__4_i_5_n_0\ : STD_LOGIC;
  signal \cam_fb_mux_sel_b_pos_0__4_i_6_n_0\ : STD_LOGIC;
  signal \cam_fb_mux_sel_b_pos_0__4_i_7_n_0\ : STD_LOGIC;
  signal \cam_fb_mux_sel_b_pos_0__4_i_8_n_0\ : STD_LOGIC;
  signal cam_fb_reg_0_4_i_10_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_11_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_12_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_5_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_7_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_8_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_4_i_9_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_4_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_4_n_1 : STD_LOGIC;
  signal cam_fb_reg_0_5_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_5_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_5_n_1 : STD_LOGIC;
  signal cam_fb_reg_0_6_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_6_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_6_n_1 : STD_LOGIC;
  signal cam_fb_reg_0_7_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_7_n_0 : STD_LOGIC;
  signal cam_fb_reg_0_7_n_1 : STD_LOGIC;
  signal cam_fb_reg_1_4_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_1_4_n_35 : STD_LOGIC;
  signal cam_fb_reg_1_4_n_67 : STD_LOGIC;
  signal cam_fb_reg_1_5_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_1_5_n_35 : STD_LOGIC;
  signal cam_fb_reg_1_5_n_67 : STD_LOGIC;
  signal cam_fb_reg_1_6_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_1_6_n_35 : STD_LOGIC;
  signal cam_fb_reg_1_6_n_67 : STD_LOGIC;
  signal cam_fb_reg_1_7_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_1_7_n_35 : STD_LOGIC;
  signal cam_fb_reg_1_7_n_67 : STD_LOGIC;
  signal cam_fb_reg_2_4_i_2_n_0 : STD_LOGIC;
  signal cam_fb_reg_2_4_n_0 : STD_LOGIC;
  signal cam_fb_reg_2_4_n_1 : STD_LOGIC;
  signal cam_fb_reg_2_5_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_2_5_n_0 : STD_LOGIC;
  signal cam_fb_reg_2_5_n_1 : STD_LOGIC;
  signal cam_fb_reg_2_6_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_2_6_n_0 : STD_LOGIC;
  signal cam_fb_reg_2_6_n_1 : STD_LOGIC;
  signal cam_fb_reg_2_7_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_2_7_n_0 : STD_LOGIC;
  signal cam_fb_reg_2_7_n_1 : STD_LOGIC;
  signal cam_fb_reg_3_4_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_3_4_n_35 : STD_LOGIC;
  signal cam_fb_reg_3_4_n_67 : STD_LOGIC;
  signal cam_fb_reg_3_5_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_3_5_n_35 : STD_LOGIC;
  signal cam_fb_reg_3_5_n_67 : STD_LOGIC;
  signal cam_fb_reg_3_6_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_3_6_n_35 : STD_LOGIC;
  signal cam_fb_reg_3_6_n_67 : STD_LOGIC;
  signal cam_fb_reg_3_7_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_3_7_n_35 : STD_LOGIC;
  signal cam_fb_reg_3_7_n_67 : STD_LOGIC;
  signal cam_fb_reg_4_4_n_0 : STD_LOGIC;
  signal cam_fb_reg_4_4_n_1 : STD_LOGIC;
  signal cam_fb_reg_4_5_n_0 : STD_LOGIC;
  signal cam_fb_reg_4_5_n_1 : STD_LOGIC;
  signal cam_fb_reg_4_6_n_0 : STD_LOGIC;
  signal cam_fb_reg_4_6_n_1 : STD_LOGIC;
  signal cam_fb_reg_4_7_n_0 : STD_LOGIC;
  signal cam_fb_reg_4_7_n_1 : STD_LOGIC;
  signal cam_fb_reg_5_4_n_35 : STD_LOGIC;
  signal cam_fb_reg_5_4_n_67 : STD_LOGIC;
  signal cam_fb_reg_5_5_n_35 : STD_LOGIC;
  signal cam_fb_reg_5_5_n_67 : STD_LOGIC;
  signal cam_fb_reg_5_6_n_35 : STD_LOGIC;
  signal cam_fb_reg_5_6_n_67 : STD_LOGIC;
  signal cam_fb_reg_5_7_n_35 : STD_LOGIC;
  signal cam_fb_reg_5_7_n_67 : STD_LOGIC;
  signal cam_fb_reg_6_4_n_0 : STD_LOGIC;
  signal cam_fb_reg_6_4_n_1 : STD_LOGIC;
  signal cam_fb_reg_6_5_n_0 : STD_LOGIC;
  signal cam_fb_reg_6_5_n_1 : STD_LOGIC;
  signal cam_fb_reg_6_6_n_0 : STD_LOGIC;
  signal cam_fb_reg_6_6_n_1 : STD_LOGIC;
  signal cam_fb_reg_6_7_n_0 : STD_LOGIC;
  signal cam_fb_reg_6_7_n_1 : STD_LOGIC;
  signal cam_fb_reg_7_4_n_35 : STD_LOGIC;
  signal cam_fb_reg_7_4_n_67 : STD_LOGIC;
  signal cam_fb_reg_7_5_n_35 : STD_LOGIC;
  signal cam_fb_reg_7_5_n_67 : STD_LOGIC;
  signal cam_fb_reg_7_6_n_35 : STD_LOGIC;
  signal cam_fb_reg_7_6_n_67 : STD_LOGIC;
  signal cam_fb_reg_7_7_n_35 : STD_LOGIC;
  signal cam_fb_reg_7_7_n_67 : STD_LOGIC;
  signal cam_fb_reg_8_4_i_1_n_0 : STD_LOGIC;
  signal cam_fb_reg_8_4_n_0 : STD_LOGIC;
  signal cam_fb_reg_8_4_n_1 : STD_LOGIC;
  signal cam_fb_reg_8_5_n_0 : STD_LOGIC;
  signal cam_fb_reg_8_5_n_1 : STD_LOGIC;
  signal cam_fb_reg_8_6_n_0 : STD_LOGIC;
  signal cam_fb_reg_8_6_n_1 : STD_LOGIC;
  signal cam_fb_reg_8_7_n_0 : STD_LOGIC;
  signal cam_fb_reg_8_7_n_1 : STD_LOGIC;
  signal cam_fb_reg_9_4_n_35 : STD_LOGIC;
  signal cam_fb_reg_9_4_n_67 : STD_LOGIC;
  signal cam_fb_reg_9_5_n_35 : STD_LOGIC;
  signal cam_fb_reg_9_5_n_67 : STD_LOGIC;
  signal cam_fb_reg_9_6_n_35 : STD_LOGIC;
  signal cam_fb_reg_9_6_n_67 : STD_LOGIC;
  signal cam_fb_reg_9_7_n_35 : STD_LOGIC;
  signal cam_fb_reg_9_7_n_67 : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_0__4_n_0\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_1__4_n_0\ : STD_LOGIC;
  signal \cam_fb_reg_mux_sel_b_pos_2__4_n_0\ : STD_LOGIC;
  signal cam_rd_addr : STD_LOGIC_VECTOR ( 18 downto 7 );
  signal clk_125MHz : STD_LOGIC;
  signal clk_25MHz : STD_LOGIC;
  signal color_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal drawX : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \frame_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal frame_counter_meta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal frame_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \frame_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \frame_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \frame_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \frame_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \frame_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \frame_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \frame_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \frame_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \frame_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \frame_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \frame_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \frame_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \frame_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \frame_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \frame_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \frame_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \frame_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \frame_counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \frame_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \frame_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \frame_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \frame_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \frame_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \frame_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \frame_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \frame_counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \frame_counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \frame_counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \frame_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \frame_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \frame_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \frame_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \frame_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \frame_counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \frame_counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \frame_counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \frame_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \frame_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \frame_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \frame_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \frame_counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \frame_counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \frame_counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \frame_counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \frame_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \frame_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \frame_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \frame_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \frame_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \frame_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \frame_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \frame_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \frame_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \frame_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \frame_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \frame_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \frame_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \frame_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \frame_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \frame_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \frame_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \frame_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \frame_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal frame_counter_sync : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hdmi_text_controller_v1_0_AXI_inst_n_17 : STD_LOGIC;
  signal hdmi_text_controller_v1_0_AXI_inst_n_18 : STD_LOGIC;
  signal hdmi_text_controller_v1_0_AXI_inst_n_29 : STD_LOGIC;
  signal hdmi_text_controller_v1_0_AXI_inst_n_30 : STD_LOGIC;
  signal hdmi_text_controller_v1_0_AXI_inst_n_31 : STD_LOGIC;
  signal hdmi_text_controller_v1_0_AXI_inst_n_32 : STD_LOGIC;
  signal hdmi_text_controller_v1_0_AXI_inst_n_33 : STD_LOGIC;
  signal hdmi_text_controller_v1_0_AXI_inst_n_34 : STD_LOGIC;
  signal hdmi_text_controller_v1_0_AXI_inst_n_35 : STD_LOGIC;
  signal hdmi_text_controller_v1_0_AXI_inst_n_36 : STD_LOGIC;
  signal hdmi_text_controller_v1_0_AXI_inst_n_37 : STD_LOGIC;
  signal hdmi_text_controller_v1_0_AXI_inst_n_38 : STD_LOGIC;
  signal hdmi_text_controller_v1_0_AXI_inst_n_39 : STD_LOGIC;
  signal hsync : STD_LOGIC;
  signal locked : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal red : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal reset_ah : STD_LOGIC;
  signal vde : STD_LOGIC;
  signal vde_r : STD_LOGIC;
  signal vga_n_15 : STD_LOGIC;
  signal vga_n_16 : STD_LOGIC;
  signal vga_n_17 : STD_LOGIC;
  signal vga_n_18 : STD_LOGIC;
  signal vga_n_19 : STD_LOGIC;
  signal vga_n_2 : STD_LOGIC;
  signal vga_n_40 : STD_LOGIC;
  signal vga_n_41 : STD_LOGIC;
  signal vga_n_42 : STD_LOGIC;
  signal vga_n_43 : STD_LOGIC;
  signal vga_n_44 : STD_LOGIC;
  signal vga_n_45 : STD_LOGIC;
  signal vga_n_46 : STD_LOGIC;
  signal vga_n_47 : STD_LOGIC;
  signal vga_n_58 : STD_LOGIC;
  signal vga_to_hdmi_i_10_n_0 : STD_LOGIC;
  signal vga_to_hdmi_i_7_n_0 : STD_LOGIC;
  signal vga_to_hdmi_i_8_n_0 : STD_LOGIC;
  signal vga_to_hdmi_i_9_n_0 : STD_LOGIC;
  signal vram_addr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal vram_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vram_we : STD_LOGIC;
  signal vsync : STD_LOGIC;
  signal vsync_p : STD_LOGIC;
  signal NLW_cam_fb_reg_0_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_0_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_0_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_0_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_0_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_0_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_0_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_0_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_0_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_0_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_0_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_0_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_0_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_0_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_0_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_0_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_0_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_0_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_0_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_0_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_0_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_0_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_0_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_0_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_0_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_0_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_0_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_0_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_0_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_0_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_0_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_0_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_0_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_1_4_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_4_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_1_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_1_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_1_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_1_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_1_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_1_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_1_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_1_5_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_5_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_1_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_1_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_1_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_1_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_1_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_1_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_1_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_1_6_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_6_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_1_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_1_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_1_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_1_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_1_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_1_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_1_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_1_7_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_7_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_1_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_1_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_1_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_1_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_1_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_1_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_1_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_1_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_2_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_2_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_2_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_2_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_2_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_2_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_2_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_2_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_2_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_2_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_2_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_2_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_2_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_2_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_2_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_2_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_2_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_2_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_2_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_2_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_2_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_2_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_2_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_2_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_2_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_2_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_2_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_2_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_2_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_2_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_2_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_2_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_2_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_3_4_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_4_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_3_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_3_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_3_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_3_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_3_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_3_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_3_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_3_5_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_5_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_3_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_3_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_3_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_3_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_3_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_3_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_3_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_3_6_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_6_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_3_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_3_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_3_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_3_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_3_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_3_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_3_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_3_7_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_7_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_3_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_3_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_3_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_3_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_3_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_3_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_3_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_3_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_4_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_4_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_4_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_4_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_4_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_4_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_4_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_4_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_4_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_4_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_4_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_4_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_4_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_4_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_4_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_4_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_4_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_4_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_4_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_4_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_4_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_4_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_4_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_4_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_4_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_4_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_4_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_4_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_4_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_4_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_4_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_4_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_4_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_5_4_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_4_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_5_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_5_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_5_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_5_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_5_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_5_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_5_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_5_5_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_5_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_5_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_5_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_5_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_5_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_5_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_5_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_5_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_5_6_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_6_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_5_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_5_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_5_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_5_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_5_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_5_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_5_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_5_7_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_7_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_5_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_5_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_5_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_5_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_5_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_5_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_5_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_5_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_6_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_6_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_6_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_6_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_6_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_6_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_6_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_6_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_6_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_6_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_6_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_6_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_6_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_6_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_6_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_6_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_6_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_6_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_6_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_6_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_6_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_6_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_6_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_6_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_6_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_6_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_6_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_6_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_6_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_6_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_6_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_6_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_6_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_7_4_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_4_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_7_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_7_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_7_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_7_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_7_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_7_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_7_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_7_5_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_5_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_7_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_7_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_7_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_7_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_7_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_7_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_7_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_7_6_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_6_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_7_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_7_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_7_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_7_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_7_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_7_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_7_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_7_7_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_7_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_7_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_7_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_7_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_7_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_7_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_7_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_7_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_7_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_8_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_8_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_8_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_8_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_8_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_8_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_8_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_8_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_8_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_8_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_8_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_8_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_8_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_8_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_8_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_8_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_8_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_8_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_8_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_8_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_8_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_8_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_8_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_8_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_8_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_8_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_8_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_8_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_8_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_cam_fb_reg_8_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_8_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_8_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_8_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_9_4_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_4_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_9_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_9_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_9_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_9_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_9_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_9_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_9_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_9_5_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_5_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_9_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_9_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_9_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_9_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_9_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_9_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_9_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_9_6_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_6_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_9_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_9_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_9_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_9_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_9_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_9_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_9_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_cam_fb_reg_9_7_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_7_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_cam_fb_reg_9_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_9_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_cam_fb_reg_9_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_9_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_cam_fb_reg_9_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_9_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_cam_fb_reg_9_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_cam_fb_reg_9_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_frame_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_vram_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_vram_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_vram_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_vram_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_vram_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_vram_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_vram_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_vram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vram_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_vram_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_0_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_0_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_0_4 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of cam_fb_reg_0_4 : label is 2457600;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of cam_fb_reg_0_4 : label is "inst/cam_fb_reg_0_4";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of cam_fb_reg_0_4 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of cam_fb_reg_0_4 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of cam_fb_reg_0_4 : label is 32767;
  attribute ram_offset : integer;
  attribute ram_offset of cam_fb_reg_0_4 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of cam_fb_reg_0_4 : label is 4;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of cam_fb_reg_0_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_0_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_0_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_0_5 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_0_5 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_0_5 : label is "inst/cam_fb_reg_0_5";
  attribute RTL_RAM_TYPE of cam_fb_reg_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_0_5 : label is 0;
  attribute ram_addr_end of cam_fb_reg_0_5 : label is 32767;
  attribute ram_offset of cam_fb_reg_0_5 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_0_5 : label is 5;
  attribute ram_slice_end of cam_fb_reg_0_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_0_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_0_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_0_6 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_0_6 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_0_6 : label is "inst/cam_fb_reg_0_6";
  attribute RTL_RAM_TYPE of cam_fb_reg_0_6 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_0_6 : label is 0;
  attribute ram_addr_end of cam_fb_reg_0_6 : label is 32767;
  attribute ram_offset of cam_fb_reg_0_6 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_0_6 : label is 6;
  attribute ram_slice_end of cam_fb_reg_0_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_0_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_0_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_0_7 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_0_7 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_0_7 : label is "inst/cam_fb_reg_0_7";
  attribute RTL_RAM_TYPE of cam_fb_reg_0_7 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_0_7 : label is 0;
  attribute ram_addr_end of cam_fb_reg_0_7 : label is 32767;
  attribute ram_offset of cam_fb_reg_0_7 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_0_7 : label is 7;
  attribute ram_slice_end of cam_fb_reg_0_7 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_1_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_1_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_1_4 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_1_4 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_1_4 : label is "inst/cam_fb_reg_1_4";
  attribute RTL_RAM_TYPE of cam_fb_reg_1_4 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_1_4 : label is 32768;
  attribute ram_addr_end of cam_fb_reg_1_4 : label is 65535;
  attribute ram_offset of cam_fb_reg_1_4 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_1_4 : label is 4;
  attribute ram_slice_end of cam_fb_reg_1_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_1_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_1_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_1_5 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_1_5 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_1_5 : label is "inst/cam_fb_reg_1_5";
  attribute RTL_RAM_TYPE of cam_fb_reg_1_5 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_1_5 : label is 32768;
  attribute ram_addr_end of cam_fb_reg_1_5 : label is 65535;
  attribute ram_offset of cam_fb_reg_1_5 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_1_5 : label is 5;
  attribute ram_slice_end of cam_fb_reg_1_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_1_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_1_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_1_6 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_1_6 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_1_6 : label is "inst/cam_fb_reg_1_6";
  attribute RTL_RAM_TYPE of cam_fb_reg_1_6 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_1_6 : label is 32768;
  attribute ram_addr_end of cam_fb_reg_1_6 : label is 65535;
  attribute ram_offset of cam_fb_reg_1_6 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_1_6 : label is 6;
  attribute ram_slice_end of cam_fb_reg_1_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_1_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_1_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_1_7 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_1_7 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_1_7 : label is "inst/cam_fb_reg_1_7";
  attribute RTL_RAM_TYPE of cam_fb_reg_1_7 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_1_7 : label is 32768;
  attribute ram_addr_end of cam_fb_reg_1_7 : label is 65535;
  attribute ram_offset of cam_fb_reg_1_7 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_1_7 : label is 7;
  attribute ram_slice_end of cam_fb_reg_1_7 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_2_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_2_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_2_4 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_2_4 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_2_4 : label is "inst/cam_fb_reg_2_4";
  attribute RTL_RAM_TYPE of cam_fb_reg_2_4 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_2_4 : label is 65536;
  attribute ram_addr_end of cam_fb_reg_2_4 : label is 98303;
  attribute ram_offset of cam_fb_reg_2_4 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_2_4 : label is 4;
  attribute ram_slice_end of cam_fb_reg_2_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_2_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_2_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_2_5 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_2_5 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_2_5 : label is "inst/cam_fb_reg_2_5";
  attribute RTL_RAM_TYPE of cam_fb_reg_2_5 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_2_5 : label is 65536;
  attribute ram_addr_end of cam_fb_reg_2_5 : label is 98303;
  attribute ram_offset of cam_fb_reg_2_5 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_2_5 : label is 5;
  attribute ram_slice_end of cam_fb_reg_2_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_2_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_2_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_2_6 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_2_6 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_2_6 : label is "inst/cam_fb_reg_2_6";
  attribute RTL_RAM_TYPE of cam_fb_reg_2_6 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_2_6 : label is 65536;
  attribute ram_addr_end of cam_fb_reg_2_6 : label is 98303;
  attribute ram_offset of cam_fb_reg_2_6 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_2_6 : label is 6;
  attribute ram_slice_end of cam_fb_reg_2_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_2_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_2_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_2_7 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_2_7 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_2_7 : label is "inst/cam_fb_reg_2_7";
  attribute RTL_RAM_TYPE of cam_fb_reg_2_7 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_2_7 : label is 65536;
  attribute ram_addr_end of cam_fb_reg_2_7 : label is 98303;
  attribute ram_offset of cam_fb_reg_2_7 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_2_7 : label is 7;
  attribute ram_slice_end of cam_fb_reg_2_7 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_3_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_3_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_3_4 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_3_4 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_3_4 : label is "inst/cam_fb_reg_3_4";
  attribute RTL_RAM_TYPE of cam_fb_reg_3_4 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_3_4 : label is 98304;
  attribute ram_addr_end of cam_fb_reg_3_4 : label is 131071;
  attribute ram_offset of cam_fb_reg_3_4 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_3_4 : label is 4;
  attribute ram_slice_end of cam_fb_reg_3_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_3_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_3_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_3_5 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_3_5 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_3_5 : label is "inst/cam_fb_reg_3_5";
  attribute RTL_RAM_TYPE of cam_fb_reg_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_3_5 : label is 98304;
  attribute ram_addr_end of cam_fb_reg_3_5 : label is 131071;
  attribute ram_offset of cam_fb_reg_3_5 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_3_5 : label is 5;
  attribute ram_slice_end of cam_fb_reg_3_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_3_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_3_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_3_6 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_3_6 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_3_6 : label is "inst/cam_fb_reg_3_6";
  attribute RTL_RAM_TYPE of cam_fb_reg_3_6 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_3_6 : label is 98304;
  attribute ram_addr_end of cam_fb_reg_3_6 : label is 131071;
  attribute ram_offset of cam_fb_reg_3_6 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_3_6 : label is 6;
  attribute ram_slice_end of cam_fb_reg_3_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_3_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_3_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_3_7 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_3_7 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_3_7 : label is "inst/cam_fb_reg_3_7";
  attribute RTL_RAM_TYPE of cam_fb_reg_3_7 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_3_7 : label is 98304;
  attribute ram_addr_end of cam_fb_reg_3_7 : label is 131071;
  attribute ram_offset of cam_fb_reg_3_7 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_3_7 : label is 7;
  attribute ram_slice_end of cam_fb_reg_3_7 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_4_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_4_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_4_4 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_4_4 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_4_4 : label is "inst/cam_fb_reg_4_4";
  attribute RTL_RAM_TYPE of cam_fb_reg_4_4 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_4_4 : label is 131072;
  attribute ram_addr_end of cam_fb_reg_4_4 : label is 163839;
  attribute ram_offset of cam_fb_reg_4_4 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_4_4 : label is 4;
  attribute ram_slice_end of cam_fb_reg_4_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_4_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_4_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_4_5 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_4_5 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_4_5 : label is "inst/cam_fb_reg_4_5";
  attribute RTL_RAM_TYPE of cam_fb_reg_4_5 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_4_5 : label is 131072;
  attribute ram_addr_end of cam_fb_reg_4_5 : label is 163839;
  attribute ram_offset of cam_fb_reg_4_5 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_4_5 : label is 5;
  attribute ram_slice_end of cam_fb_reg_4_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_4_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_4_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_4_6 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_4_6 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_4_6 : label is "inst/cam_fb_reg_4_6";
  attribute RTL_RAM_TYPE of cam_fb_reg_4_6 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_4_6 : label is 131072;
  attribute ram_addr_end of cam_fb_reg_4_6 : label is 163839;
  attribute ram_offset of cam_fb_reg_4_6 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_4_6 : label is 6;
  attribute ram_slice_end of cam_fb_reg_4_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_4_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_4_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_4_7 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_4_7 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_4_7 : label is "inst/cam_fb_reg_4_7";
  attribute RTL_RAM_TYPE of cam_fb_reg_4_7 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_4_7 : label is 131072;
  attribute ram_addr_end of cam_fb_reg_4_7 : label is 163839;
  attribute ram_offset of cam_fb_reg_4_7 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_4_7 : label is 7;
  attribute ram_slice_end of cam_fb_reg_4_7 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_5_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_5_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_5_4 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_5_4 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_5_4 : label is "inst/cam_fb_reg_5_4";
  attribute RTL_RAM_TYPE of cam_fb_reg_5_4 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_5_4 : label is 163840;
  attribute ram_addr_end of cam_fb_reg_5_4 : label is 196607;
  attribute ram_offset of cam_fb_reg_5_4 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_5_4 : label is 4;
  attribute ram_slice_end of cam_fb_reg_5_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_5_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_5_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_5_5 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_5_5 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_5_5 : label is "inst/cam_fb_reg_5_5";
  attribute RTL_RAM_TYPE of cam_fb_reg_5_5 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_5_5 : label is 163840;
  attribute ram_addr_end of cam_fb_reg_5_5 : label is 196607;
  attribute ram_offset of cam_fb_reg_5_5 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_5_5 : label is 5;
  attribute ram_slice_end of cam_fb_reg_5_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_5_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_5_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_5_6 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_5_6 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_5_6 : label is "inst/cam_fb_reg_5_6";
  attribute RTL_RAM_TYPE of cam_fb_reg_5_6 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_5_6 : label is 163840;
  attribute ram_addr_end of cam_fb_reg_5_6 : label is 196607;
  attribute ram_offset of cam_fb_reg_5_6 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_5_6 : label is 6;
  attribute ram_slice_end of cam_fb_reg_5_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_5_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_5_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_5_7 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_5_7 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_5_7 : label is "inst/cam_fb_reg_5_7";
  attribute RTL_RAM_TYPE of cam_fb_reg_5_7 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_5_7 : label is 163840;
  attribute ram_addr_end of cam_fb_reg_5_7 : label is 196607;
  attribute ram_offset of cam_fb_reg_5_7 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_5_7 : label is 7;
  attribute ram_slice_end of cam_fb_reg_5_7 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_6_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_6_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_6_4 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_6_4 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_6_4 : label is "inst/cam_fb_reg_6_4";
  attribute RTL_RAM_TYPE of cam_fb_reg_6_4 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_6_4 : label is 196608;
  attribute ram_addr_end of cam_fb_reg_6_4 : label is 229375;
  attribute ram_offset of cam_fb_reg_6_4 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_6_4 : label is 4;
  attribute ram_slice_end of cam_fb_reg_6_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_6_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_6_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_6_5 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_6_5 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_6_5 : label is "inst/cam_fb_reg_6_5";
  attribute RTL_RAM_TYPE of cam_fb_reg_6_5 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_6_5 : label is 196608;
  attribute ram_addr_end of cam_fb_reg_6_5 : label is 229375;
  attribute ram_offset of cam_fb_reg_6_5 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_6_5 : label is 5;
  attribute ram_slice_end of cam_fb_reg_6_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_6_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_6_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_6_6 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_6_6 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_6_6 : label is "inst/cam_fb_reg_6_6";
  attribute RTL_RAM_TYPE of cam_fb_reg_6_6 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_6_6 : label is 196608;
  attribute ram_addr_end of cam_fb_reg_6_6 : label is 229375;
  attribute ram_offset of cam_fb_reg_6_6 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_6_6 : label is 6;
  attribute ram_slice_end of cam_fb_reg_6_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_6_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_6_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_6_7 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_6_7 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_6_7 : label is "inst/cam_fb_reg_6_7";
  attribute RTL_RAM_TYPE of cam_fb_reg_6_7 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_6_7 : label is 196608;
  attribute ram_addr_end of cam_fb_reg_6_7 : label is 229375;
  attribute ram_offset of cam_fb_reg_6_7 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_6_7 : label is 7;
  attribute ram_slice_end of cam_fb_reg_6_7 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_7_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_7_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_7_4 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_7_4 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_7_4 : label is "inst/cam_fb_reg_7_4";
  attribute RTL_RAM_TYPE of cam_fb_reg_7_4 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_7_4 : label is 229376;
  attribute ram_addr_end of cam_fb_reg_7_4 : label is 262143;
  attribute ram_offset of cam_fb_reg_7_4 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_7_4 : label is 4;
  attribute ram_slice_end of cam_fb_reg_7_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_7_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_7_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_7_5 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_7_5 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_7_5 : label is "inst/cam_fb_reg_7_5";
  attribute RTL_RAM_TYPE of cam_fb_reg_7_5 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_7_5 : label is 229376;
  attribute ram_addr_end of cam_fb_reg_7_5 : label is 262143;
  attribute ram_offset of cam_fb_reg_7_5 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_7_5 : label is 5;
  attribute ram_slice_end of cam_fb_reg_7_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_7_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_7_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_7_6 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_7_6 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_7_6 : label is "inst/cam_fb_reg_7_6";
  attribute RTL_RAM_TYPE of cam_fb_reg_7_6 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_7_6 : label is 229376;
  attribute ram_addr_end of cam_fb_reg_7_6 : label is 262143;
  attribute ram_offset of cam_fb_reg_7_6 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_7_6 : label is 6;
  attribute ram_slice_end of cam_fb_reg_7_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_7_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_7_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_7_7 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_7_7 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_7_7 : label is "inst/cam_fb_reg_7_7";
  attribute RTL_RAM_TYPE of cam_fb_reg_7_7 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_7_7 : label is 229376;
  attribute ram_addr_end of cam_fb_reg_7_7 : label is 262143;
  attribute ram_offset of cam_fb_reg_7_7 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_7_7 : label is 7;
  attribute ram_slice_end of cam_fb_reg_7_7 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_8_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_8_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_8_4 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_8_4 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_8_4 : label is "inst/cam_fb_reg_8_4";
  attribute RTL_RAM_TYPE of cam_fb_reg_8_4 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_8_4 : label is 262144;
  attribute ram_addr_end of cam_fb_reg_8_4 : label is 294911;
  attribute ram_offset of cam_fb_reg_8_4 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_8_4 : label is 4;
  attribute ram_slice_end of cam_fb_reg_8_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_8_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_8_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_8_5 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_8_5 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_8_5 : label is "inst/cam_fb_reg_8_5";
  attribute RTL_RAM_TYPE of cam_fb_reg_8_5 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_8_5 : label is 262144;
  attribute ram_addr_end of cam_fb_reg_8_5 : label is 294911;
  attribute ram_offset of cam_fb_reg_8_5 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_8_5 : label is 5;
  attribute ram_slice_end of cam_fb_reg_8_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_8_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_8_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_8_6 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_8_6 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_8_6 : label is "inst/cam_fb_reg_8_6";
  attribute RTL_RAM_TYPE of cam_fb_reg_8_6 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_8_6 : label is 262144;
  attribute ram_addr_end of cam_fb_reg_8_6 : label is 294911;
  attribute ram_offset of cam_fb_reg_8_6 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_8_6 : label is 6;
  attribute ram_slice_end of cam_fb_reg_8_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_8_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_8_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_8_7 : label is "";
  attribute RTL_RAM_BITS of cam_fb_reg_8_7 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_8_7 : label is "inst/cam_fb_reg_8_7";
  attribute RTL_RAM_TYPE of cam_fb_reg_8_7 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_8_7 : label is 262144;
  attribute ram_addr_end of cam_fb_reg_8_7 : label is 294911;
  attribute ram_offset of cam_fb_reg_8_7 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_8_7 : label is 7;
  attribute ram_slice_end of cam_fb_reg_8_7 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_9_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_9_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_9_4 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_9_4 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_9_4 : label is "inst/cam_fb_reg_9_4";
  attribute RTL_RAM_TYPE of cam_fb_reg_9_4 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_9_4 : label is 294912;
  attribute ram_addr_end of cam_fb_reg_9_4 : label is 327679;
  attribute ram_offset of cam_fb_reg_9_4 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_9_4 : label is 4;
  attribute ram_slice_end of cam_fb_reg_9_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_9_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_9_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_9_5 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_9_5 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_9_5 : label is "inst/cam_fb_reg_9_5";
  attribute RTL_RAM_TYPE of cam_fb_reg_9_5 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_9_5 : label is 294912;
  attribute ram_addr_end of cam_fb_reg_9_5 : label is 327679;
  attribute ram_offset of cam_fb_reg_9_5 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_9_5 : label is 5;
  attribute ram_slice_end of cam_fb_reg_9_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_9_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_9_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_9_6 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_9_6 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_9_6 : label is "inst/cam_fb_reg_9_6";
  attribute RTL_RAM_TYPE of cam_fb_reg_9_6 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_9_6 : label is 294912;
  attribute ram_addr_end of cam_fb_reg_9_6 : label is 327679;
  attribute ram_offset of cam_fb_reg_9_6 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_9_6 : label is 6;
  attribute ram_slice_end of cam_fb_reg_9_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of cam_fb_reg_9_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of cam_fb_reg_9_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of cam_fb_reg_9_7 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of cam_fb_reg_9_7 : label is 2457600;
  attribute RTL_RAM_NAME of cam_fb_reg_9_7 : label is "inst/cam_fb_reg_9_7";
  attribute RTL_RAM_TYPE of cam_fb_reg_9_7 : label is "RAM_SDP";
  attribute ram_addr_begin of cam_fb_reg_9_7 : label is 294912;
  attribute ram_addr_end of cam_fb_reg_9_7 : label is 327679;
  attribute ram_offset of cam_fb_reg_9_7 : label is 0;
  attribute ram_slice_begin of cam_fb_reg_9_7 : label is 7;
  attribute ram_slice_end of cam_fb_reg_9_7 : label is 7;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \frame_counter_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \frame_counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \frame_counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \frame_counter_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \frame_counter_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \frame_counter_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \frame_counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \frame_counter_reg[8]_i_1\ : label is 11;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of vga_to_hdmi : label is "hdmi_tx_0,hdmi_tx_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of vga_to_hdmi : label is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of vga_to_hdmi : label is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of vga_to_hdmi : label is "hdmi_tx_v1_0,Vivado 2022.2";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of vram_reg : label is "p0_d8_p0_d8_p0_d8_p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of vram_reg : label is "p0_d8_p0_d8_p0_d8_p0_d8";
  attribute METHODOLOGY_DRC_VIOS of vram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of vram_reg : label is 19200;
  attribute RTL_RAM_NAME of vram_reg : label is "inst/vram_reg";
  attribute RTL_RAM_TYPE of vram_reg : label is "RAM_SP";
  attribute ram_addr_begin of vram_reg : label is 0;
  attribute ram_addr_end of vram_reg : label is 599;
  attribute ram_offset of vram_reg : label is 0;
  attribute ram_slice_begin of vram_reg : label is 0;
  attribute ram_slice_end of vram_reg : label is 31;
begin
\cam_fb_mux_sel_b_pos_0__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(7),
      I1 => p_0_in(9),
      O => \cam_fb_mux_sel_b_pos_0__4_i_4_n_0\
    );
\cam_fb_mux_sel_b_pos_0__4_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(6),
      I1 => p_0_in(8),
      O => \cam_fb_mux_sel_b_pos_0__4_i_5_n_0\
    );
\cam_fb_mux_sel_b_pos_0__4_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(7),
      O => \cam_fb_mux_sel_b_pos_0__4_i_6_n_0\
    );
\cam_fb_mux_sel_b_pos_0__4_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(4),
      I1 => p_0_in(6),
      O => \cam_fb_mux_sel_b_pos_0__4_i_7_n_0\
    );
\cam_fb_mux_sel_b_pos_0__4_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(5),
      O => \cam_fb_mux_sel_b_pos_0__4_i_8_n_0\
    );
cam_fb_reg_0_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_0_4_n_0,
      CASCADEOUTB => cam_fb_reg_0_4_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_0_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_0_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_0_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_0_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_0_4_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_0_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_0_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_0_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_fb_reg_0_4_i_1_n_0,
      ENBWREN => vga_n_2,
      INJECTDBITERR => NLW_cam_fb_reg_0_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_0_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_0_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_0_4_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_0_4_i_5_n_0,
      WEA(2) => cam_fb_reg_0_4_i_5_n_0,
      WEA(1) => cam_fb_reg_0_4_i_5_n_0,
      WEA(0) => cam_fb_reg_0_4_i_5_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_0_4_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cam_wr_addr(16),
      O => cam_fb_reg_0_4_i_1_n_0
    );
cam_fb_reg_0_4_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(4),
      O => cam_fb_reg_0_4_i_10_n_0
    );
cam_fb_reg_0_4_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(3),
      O => cam_fb_reg_0_4_i_11_n_0
    );
cam_fb_reg_0_4_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      O => cam_fb_reg_0_4_i_12_n_0
    );
cam_fb_reg_0_4_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_0_4_i_5_n_0
    );
cam_fb_reg_0_4_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vga_n_18,
      I1 => drawX(9),
      O => cam_fb_reg_0_4_i_7_n_0
    );
cam_fb_reg_0_4_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vga_n_19,
      I1 => drawX(8),
      O => cam_fb_reg_0_4_i_8_n_0
    );
cam_fb_reg_0_4_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(0),
      I1 => drawX(7),
      O => cam_fb_reg_0_4_i_9_n_0
    );
cam_fb_reg_0_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_0_5_n_0,
      CASCADEOUTB => cam_fb_reg_0_5_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_0_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_0_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_0_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_0_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_0_5_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_0_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_0_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_0_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_fb_reg_0_4_i_1_n_0,
      ENBWREN => vga_n_2,
      INJECTDBITERR => NLW_cam_fb_reg_0_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_0_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_0_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_0_5_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_0_5_i_1_n_0,
      WEA(2) => cam_fb_reg_0_5_i_1_n_0,
      WEA(1) => cam_fb_reg_0_5_i_1_n_0,
      WEA(0) => cam_fb_reg_0_5_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_0_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_0_5_i_1_n_0
    );
cam_fb_reg_0_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_0_6_n_0,
      CASCADEOUTB => cam_fb_reg_0_6_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_0_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_0_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_0_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_0_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_0_6_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_0_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_0_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_0_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_fb_reg_0_4_i_1_n_0,
      ENBWREN => vga_n_2,
      INJECTDBITERR => NLW_cam_fb_reg_0_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_0_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_0_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_0_6_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_0_6_i_1_n_0,
      WEA(2) => cam_fb_reg_0_6_i_1_n_0,
      WEA(1) => cam_fb_reg_0_6_i_1_n_0,
      WEA(0) => cam_fb_reg_0_6_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_0_6_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_0_6_i_1_n_0
    );
cam_fb_reg_0_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_0_7_n_0,
      CASCADEOUTB => cam_fb_reg_0_7_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_0_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_0_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_0_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_0_7_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_0_7_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_0_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_0_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_0_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_fb_reg_0_4_i_1_n_0,
      ENBWREN => vga_n_2,
      INJECTDBITERR => NLW_cam_fb_reg_0_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_0_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_0_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_0_7_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_0_7_i_1_n_0,
      WEA(2) => cam_fb_reg_0_7_i_1_n_0,
      WEA(1) => cam_fb_reg_0_7_i_1_n_0,
      WEA(0) => cam_fb_reg_0_7_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_0_7_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_0_7_i_1_n_0
    );
cam_fb_reg_1_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => cam_fb_reg_0_4_n_0,
      CASCADEINB => cam_fb_reg_0_4_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_1_4_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_1_4_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_1_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_1_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_1_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_1_4_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_1_4_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_1_4_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_1_4_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_1_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_1_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_1_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_fb_reg_0_4_i_1_n_0,
      ENBWREN => vga_n_2,
      INJECTDBITERR => NLW_cam_fb_reg_1_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_1_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_1_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_1_4_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_1_4_i_1_n_0,
      WEA(2) => cam_fb_reg_1_4_i_1_n_0,
      WEA(1) => cam_fb_reg_1_4_i_1_n_0,
      WEA(0) => cam_fb_reg_1_4_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_1_4_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_1_4_i_1_n_0
    );
cam_fb_reg_1_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => cam_fb_reg_0_5_n_0,
      CASCADEINB => cam_fb_reg_0_5_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_1_5_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_1_5_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_1_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_1_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_1_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_1_5_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_1_5_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_1_5_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_1_5_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_1_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_1_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_1_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_fb_reg_0_4_i_1_n_0,
      ENBWREN => vga_n_2,
      INJECTDBITERR => NLW_cam_fb_reg_1_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_1_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_1_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_1_5_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_1_5_i_1_n_0,
      WEA(2) => cam_fb_reg_1_5_i_1_n_0,
      WEA(1) => cam_fb_reg_1_5_i_1_n_0,
      WEA(0) => cam_fb_reg_1_5_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_1_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_1_5_i_1_n_0
    );
cam_fb_reg_1_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => cam_fb_reg_0_6_n_0,
      CASCADEINB => cam_fb_reg_0_6_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_1_6_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_1_6_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_1_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_1_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_1_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_1_6_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_1_6_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_1_6_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_1_6_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_1_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_1_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_1_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_fb_reg_0_4_i_1_n_0,
      ENBWREN => vga_n_2,
      INJECTDBITERR => NLW_cam_fb_reg_1_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_1_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_1_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_1_6_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_1_6_i_1_n_0,
      WEA(2) => cam_fb_reg_1_6_i_1_n_0,
      WEA(1) => cam_fb_reg_1_6_i_1_n_0,
      WEA(0) => cam_fb_reg_1_6_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_1_6_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_1_6_i_1_n_0
    );
cam_fb_reg_1_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => cam_fb_reg_0_7_n_0,
      CASCADEINB => cam_fb_reg_0_7_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_1_7_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_1_7_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_1_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_1_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_1_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_1_7_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_1_7_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_1_7_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_1_7_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_1_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_1_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_1_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_fb_reg_0_4_i_1_n_0,
      ENBWREN => vga_n_2,
      INJECTDBITERR => NLW_cam_fb_reg_1_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_1_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_1_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_1_7_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_1_7_i_1_n_0,
      WEA(2) => cam_fb_reg_1_7_i_1_n_0,
      WEA(1) => cam_fb_reg_1_7_i_1_n_0,
      WEA(0) => cam_fb_reg_1_7_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_1_7_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_1_7_i_1_n_0
    );
cam_fb_reg_2_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_2_4_n_0,
      CASCADEOUTB => cam_fb_reg_2_4_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_2_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_2_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_2_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_2_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_2_4_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_2_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_2_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_2_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_wr_addr(16),
      ENBWREN => vga_n_15,
      INJECTDBITERR => NLW_cam_fb_reg_2_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_2_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_2_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_2_4_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_2_4_i_2_n_0,
      WEA(2) => cam_fb_reg_2_4_i_2_n_0,
      WEA(1) => cam_fb_reg_2_4_i_2_n_0,
      WEA(0) => cam_fb_reg_2_4_i_2_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_2_4_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_2_4_i_2_n_0
    );
cam_fb_reg_2_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_2_5_n_0,
      CASCADEOUTB => cam_fb_reg_2_5_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_2_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_2_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_2_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_2_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_2_5_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_2_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_2_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_2_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_wr_addr(16),
      ENBWREN => vga_n_15,
      INJECTDBITERR => NLW_cam_fb_reg_2_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_2_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_2_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_2_5_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_2_5_i_1_n_0,
      WEA(2) => cam_fb_reg_2_5_i_1_n_0,
      WEA(1) => cam_fb_reg_2_5_i_1_n_0,
      WEA(0) => cam_fb_reg_2_5_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_2_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_2_5_i_1_n_0
    );
cam_fb_reg_2_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_2_6_n_0,
      CASCADEOUTB => cam_fb_reg_2_6_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_2_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_2_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_2_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_2_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_2_6_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_2_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_2_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_2_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_wr_addr(16),
      ENBWREN => vga_n_15,
      INJECTDBITERR => NLW_cam_fb_reg_2_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_2_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_2_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_2_6_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_2_6_i_1_n_0,
      WEA(2) => cam_fb_reg_2_6_i_1_n_0,
      WEA(1) => cam_fb_reg_2_6_i_1_n_0,
      WEA(0) => cam_fb_reg_2_6_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_2_6_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_2_6_i_1_n_0
    );
cam_fb_reg_2_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_2_7_n_0,
      CASCADEOUTB => cam_fb_reg_2_7_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_2_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_2_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_2_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_2_7_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_2_7_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_2_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_2_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_2_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_wr_addr(16),
      ENBWREN => vga_n_15,
      INJECTDBITERR => NLW_cam_fb_reg_2_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_2_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_2_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_2_7_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_2_7_i_1_n_0,
      WEA(2) => cam_fb_reg_2_7_i_1_n_0,
      WEA(1) => cam_fb_reg_2_7_i_1_n_0,
      WEA(0) => cam_fb_reg_2_7_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_2_7_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_2_7_i_1_n_0
    );
cam_fb_reg_3_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => cam_fb_reg_2_4_n_0,
      CASCADEINB => cam_fb_reg_2_4_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_3_4_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_3_4_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_3_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_3_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_3_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_3_4_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_3_4_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_3_4_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_3_4_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_3_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_3_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_3_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_wr_addr(16),
      ENBWREN => vga_n_15,
      INJECTDBITERR => NLW_cam_fb_reg_3_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_3_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_3_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_3_4_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_3_4_i_1_n_0,
      WEA(2) => cam_fb_reg_3_4_i_1_n_0,
      WEA(1) => cam_fb_reg_3_4_i_1_n_0,
      WEA(0) => cam_fb_reg_3_4_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_3_4_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_3_4_i_1_n_0
    );
cam_fb_reg_3_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => cam_fb_reg_2_5_n_0,
      CASCADEINB => cam_fb_reg_2_5_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_3_5_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_3_5_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_3_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_3_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_3_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_3_5_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_3_5_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_3_5_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_3_5_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_3_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_3_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_3_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_wr_addr(16),
      ENBWREN => vga_n_15,
      INJECTDBITERR => NLW_cam_fb_reg_3_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_3_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_3_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_3_5_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_3_5_i_1_n_0,
      WEA(2) => cam_fb_reg_3_5_i_1_n_0,
      WEA(1) => cam_fb_reg_3_5_i_1_n_0,
      WEA(0) => cam_fb_reg_3_5_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_3_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_3_5_i_1_n_0
    );
cam_fb_reg_3_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => cam_fb_reg_2_6_n_0,
      CASCADEINB => cam_fb_reg_2_6_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_3_6_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_3_6_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_3_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_3_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_3_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_3_6_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_3_6_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_3_6_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_3_6_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_3_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_3_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_3_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_wr_addr(16),
      ENBWREN => vga_n_15,
      INJECTDBITERR => NLW_cam_fb_reg_3_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_3_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_3_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_3_6_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_3_6_i_1_n_0,
      WEA(2) => cam_fb_reg_3_6_i_1_n_0,
      WEA(1) => cam_fb_reg_3_6_i_1_n_0,
      WEA(0) => cam_fb_reg_3_6_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_3_6_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_3_6_i_1_n_0
    );
cam_fb_reg_3_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => cam_fb_reg_2_7_n_0,
      CASCADEINB => cam_fb_reg_2_7_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_3_7_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_3_7_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_3_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_3_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_3_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_3_7_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_3_7_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_3_7_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_3_7_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_3_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_3_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_3_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => cam_wr_addr(16),
      ENBWREN => vga_n_15,
      INJECTDBITERR => NLW_cam_fb_reg_3_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_3_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_3_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_3_7_SBITERR_UNCONNECTED,
      WEA(3) => cam_fb_reg_3_7_i_1_n_0,
      WEA(2) => cam_fb_reg_3_7_i_1_n_0,
      WEA(1) => cam_fb_reg_3_7_i_1_n_0,
      WEA(0) => cam_fb_reg_3_7_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_3_7_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_we,
      I1 => cam_wr_addr(16),
      O => cam_fb_reg_3_7_i_1_n_0
    );
cam_fb_reg_4_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_4_4_n_0,
      CASCADEOUTB => cam_fb_reg_4_4_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_4_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_4_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_4_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_4_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_4_4_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_4_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_4_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_4_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_16,
      INJECTDBITERR => NLW_cam_fb_reg_4_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_4_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_4_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_4_4_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_4_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_4_5_n_0,
      CASCADEOUTB => cam_fb_reg_4_5_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_4_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_4_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_4_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_4_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_4_5_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_4_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_4_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_4_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_16,
      INJECTDBITERR => NLW_cam_fb_reg_4_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_4_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_4_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_4_5_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_4_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_4_6_n_0,
      CASCADEOUTB => cam_fb_reg_4_6_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_4_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_4_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_4_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_4_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_4_6_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_4_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_4_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_4_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_16,
      INJECTDBITERR => NLW_cam_fb_reg_4_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_4_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_4_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_4_6_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_4_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_4_7_n_0,
      CASCADEOUTB => cam_fb_reg_4_7_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_4_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_4_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_4_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_4_7_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_4_7_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_4_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_4_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_4_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_16,
      INJECTDBITERR => NLW_cam_fb_reg_4_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_4_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_4_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_4_7_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_5_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => cam_fb_reg_4_4_n_0,
      CASCADEINB => cam_fb_reg_4_4_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_5_4_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_5_4_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_5_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_5_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_5_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_5_4_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_5_4_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_5_4_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_5_4_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_5_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_5_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_5_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_16,
      INJECTDBITERR => NLW_cam_fb_reg_5_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_5_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_5_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_5_4_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_5_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => cam_fb_reg_4_5_n_0,
      CASCADEINB => cam_fb_reg_4_5_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_5_5_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_5_5_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_5_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_5_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_5_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_5_5_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_5_5_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_5_5_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_5_5_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_5_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_5_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_5_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_16,
      INJECTDBITERR => NLW_cam_fb_reg_5_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_5_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_5_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_5_5_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_5_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => cam_fb_reg_4_6_n_0,
      CASCADEINB => cam_fb_reg_4_6_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_5_6_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_5_6_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_5_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_5_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_5_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_5_6_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_5_6_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_5_6_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_5_6_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_5_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_5_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_5_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_16,
      INJECTDBITERR => NLW_cam_fb_reg_5_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_5_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_5_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_5_6_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_5_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => cam_fb_reg_4_7_n_0,
      CASCADEINB => cam_fb_reg_4_7_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_5_7_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_5_7_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_5_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_5_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_5_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_5_7_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_5_7_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_5_7_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_5_7_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_5_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_5_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_5_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_16,
      INJECTDBITERR => NLW_cam_fb_reg_5_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_5_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_5_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_5_7_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_6_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_6_4_n_0,
      CASCADEOUTB => cam_fb_reg_6_4_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_6_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_6_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_6_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_6_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_6_4_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_6_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_6_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_6_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_17,
      INJECTDBITERR => NLW_cam_fb_reg_6_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_6_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_6_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_6_4_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_6_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_6_5_n_0,
      CASCADEOUTB => cam_fb_reg_6_5_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_6_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_6_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_6_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_6_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_6_5_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_6_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_6_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_6_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_17,
      INJECTDBITERR => NLW_cam_fb_reg_6_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_6_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_6_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_6_5_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_6_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_6_6_n_0,
      CASCADEOUTB => cam_fb_reg_6_6_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_6_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_6_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_6_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_6_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_6_6_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_6_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_6_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_6_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_17,
      INJECTDBITERR => NLW_cam_fb_reg_6_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_6_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_6_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_6_6_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_6_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_6_7_n_0,
      CASCADEOUTB => cam_fb_reg_6_7_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_6_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_6_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_6_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_6_7_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_6_7_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_6_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_6_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_6_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_17,
      INJECTDBITERR => NLW_cam_fb_reg_6_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_6_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_6_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_6_7_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_7_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => cam_fb_reg_6_4_n_0,
      CASCADEINB => cam_fb_reg_6_4_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_7_4_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_7_4_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_7_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_7_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_7_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_7_4_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_7_4_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_7_4_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_7_4_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_7_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_7_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_7_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_17,
      INJECTDBITERR => NLW_cam_fb_reg_7_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_7_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_7_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_7_4_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_7_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => cam_fb_reg_6_5_n_0,
      CASCADEINB => cam_fb_reg_6_5_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_7_5_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_7_5_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_7_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_7_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_7_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_7_5_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_7_5_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_7_5_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_7_5_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_7_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_7_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_7_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_17,
      INJECTDBITERR => NLW_cam_fb_reg_7_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_7_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_7_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_7_5_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_7_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => cam_fb_reg_6_6_n_0,
      CASCADEINB => cam_fb_reg_6_6_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_7_6_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_7_6_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_7_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_7_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_7_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_7_6_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_7_6_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_7_6_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_7_6_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_7_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_7_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_7_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_17,
      INJECTDBITERR => NLW_cam_fb_reg_7_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_7_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_7_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_7_6_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_7_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => cam_fb_reg_6_7_n_0,
      CASCADEINB => cam_fb_reg_6_7_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_7_7_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_7_7_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_7_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_7_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_7_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_7_7_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_7_7_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_7_7_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_7_7_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_7_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_7_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_7_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => vga_n_17,
      INJECTDBITERR => NLW_cam_fb_reg_7_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_7_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_7_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_7_7_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_8_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_8_4_n_0,
      CASCADEOUTB => cam_fb_reg_8_4_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_8_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_8_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_8_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_8_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_8_4_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_8_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_8_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_8_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => cam_fb_reg_8_4_i_1_n_0,
      INJECTDBITERR => NLW_cam_fb_reg_8_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_8_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_8_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_8_4_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_8_4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => cam_rd_addr(18),
      I1 => cam_rd_addr(16),
      I2 => cam_rd_addr(17),
      O => cam_fb_reg_8_4_i_1_n_0
    );
cam_fb_reg_8_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_8_5_n_0,
      CASCADEOUTB => cam_fb_reg_8_5_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_8_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_8_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_8_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_8_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_8_5_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_8_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_8_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_8_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => cam_fb_reg_8_4_i_1_n_0,
      INJECTDBITERR => NLW_cam_fb_reg_8_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_8_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_8_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_8_5_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_8_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_8_6_n_0,
      CASCADEOUTB => cam_fb_reg_8_6_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_8_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_8_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_8_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_8_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_8_6_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_8_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_8_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_8_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => cam_fb_reg_8_4_i_1_n_0,
      INJECTDBITERR => NLW_cam_fb_reg_8_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_8_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_8_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_8_6_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_8_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => cam_fb_reg_8_7_n_0,
      CASCADEOUTB => cam_fb_reg_8_7_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_8_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_8_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_8_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_cam_fb_reg_8_7_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_cam_fb_reg_8_7_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_8_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_8_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_8_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => cam_fb_reg_8_4_i_1_n_0,
      INJECTDBITERR => NLW_cam_fb_reg_8_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_8_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_8_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_8_7_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_9_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => cam_fb_reg_8_4_n_0,
      CASCADEINB => cam_fb_reg_8_4_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_9_4_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_9_4_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_9_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_9_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_9_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_9_4_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_9_4_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_9_4_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_9_4_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_9_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_9_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_9_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => cam_fb_reg_8_4_i_1_n_0,
      INJECTDBITERR => NLW_cam_fb_reg_9_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_9_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_9_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_9_4_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_9_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => drawX(6),
      ADDRBWRADDR(5) => vga_n_40,
      ADDRBWRADDR(4 downto 3) => drawX(4 downto 3),
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      CASCADEINA => cam_fb_reg_8_5_n_0,
      CASCADEINB => cam_fb_reg_8_5_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_9_5_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_9_5_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_9_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_9_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_9_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_9_5_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_9_5_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_9_5_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_9_5_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_9_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_9_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_9_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => cam_fb_reg_8_4_i_1_n_0,
      INJECTDBITERR => NLW_cam_fb_reg_9_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_9_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_9_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_9_5_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_9_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => cam_fb_reg_8_6_n_0,
      CASCADEINB => cam_fb_reg_8_6_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_9_6_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_9_6_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_9_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_9_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_9_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_9_6_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_9_6_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_9_6_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_9_6_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_9_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_9_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_9_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => cam_fb_reg_8_4_i_1_n_0,
      INJECTDBITERR => NLW_cam_fb_reg_9_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_9_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_9_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_9_6_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
cam_fb_reg_9_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15 downto 0) => cam_wr_addr(15 downto 0),
      ADDRBWRADDR(15 downto 7) => cam_rd_addr(15 downto 7),
      ADDRBWRADDR(6) => vga_n_44,
      ADDRBWRADDR(5) => drawX(5),
      ADDRBWRADDR(4) => vga_n_45,
      ADDRBWRADDR(3) => vga_n_46,
      ADDRBWRADDR(2 downto 1) => drawX(2 downto 1),
      ADDRBWRADDR(0) => vga_n_47,
      CASCADEINA => cam_fb_reg_8_7_n_0,
      CASCADEINB => cam_fb_reg_8_7_n_1,
      CASCADEOUTA => NLW_cam_fb_reg_9_7_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_cam_fb_reg_9_7_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => clk_25MHz,
      DBITERR => NLW_cam_fb_reg_9_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => cam_wr_data(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_cam_fb_reg_9_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_cam_fb_reg_9_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 1) => NLW_cam_fb_reg_9_7_DOADO_UNCONNECTED(31 downto 1),
      DOADO(0) => cam_fb_reg_9_7_n_35,
      DOBDO(31 downto 1) => NLW_cam_fb_reg_9_7_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => cam_fb_reg_9_7_n_67,
      DOPADOP(3 downto 0) => NLW_cam_fb_reg_9_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_cam_fb_reg_9_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_cam_fb_reg_9_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => '0',
      ENBWREN => cam_fb_reg_8_4_i_1_n_0,
      INJECTDBITERR => NLW_cam_fb_reg_9_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_cam_fb_reg_9_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_cam_fb_reg_9_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_cam_fb_reg_9_7_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\cam_fb_reg_mux_sel_b_pos_0__4\: unisim.vcomponents.FDRE
     port map (
      C => clk_25MHz,
      CE => '1',
      D => cam_rd_addr(18),
      Q => \cam_fb_reg_mux_sel_b_pos_0__4_n_0\,
      R => '0'
    );
\cam_fb_reg_mux_sel_b_pos_1__4\: unisim.vcomponents.FDRE
     port map (
      C => clk_25MHz,
      CE => '1',
      D => cam_rd_addr(17),
      Q => \cam_fb_reg_mux_sel_b_pos_1__4_n_0\,
      R => '0'
    );
\cam_fb_reg_mux_sel_b_pos_2__4\: unisim.vcomponents.FDRE
     port map (
      C => clk_25MHz,
      CE => '1',
      D => cam_rd_addr(16),
      Q => \cam_fb_reg_mux_sel_b_pos_2__4_n_0\,
      R => '0'
    );
clk_wiz: entity work.mb_usb_hdmi_text_controller_0_2_clk_wiz_0
     port map (
      clk_in1 => axi_aclk,
      clk_out1 => clk_25MHz,
      clk_out2 => clk_125MHz,
      locked => locked,
      reset => reset_ah
    );
\frame_counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_counter_reg(0),
      O => \frame_counter[0]_i_3_n_0\
    );
\frame_counter_meta_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(0),
      Q => frame_counter_meta(0)
    );
\frame_counter_meta_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(10),
      Q => frame_counter_meta(10)
    );
\frame_counter_meta_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(11),
      Q => frame_counter_meta(11)
    );
\frame_counter_meta_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(12),
      Q => frame_counter_meta(12)
    );
\frame_counter_meta_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(13),
      Q => frame_counter_meta(13)
    );
\frame_counter_meta_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(14),
      Q => frame_counter_meta(14)
    );
\frame_counter_meta_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(15),
      Q => frame_counter_meta(15)
    );
\frame_counter_meta_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(16),
      Q => frame_counter_meta(16)
    );
\frame_counter_meta_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(17),
      Q => frame_counter_meta(17)
    );
\frame_counter_meta_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(18),
      Q => frame_counter_meta(18)
    );
\frame_counter_meta_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(19),
      Q => frame_counter_meta(19)
    );
\frame_counter_meta_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(1),
      Q => frame_counter_meta(1)
    );
\frame_counter_meta_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(20),
      Q => frame_counter_meta(20)
    );
\frame_counter_meta_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(21),
      Q => frame_counter_meta(21)
    );
\frame_counter_meta_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(22),
      Q => frame_counter_meta(22)
    );
\frame_counter_meta_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(23),
      Q => frame_counter_meta(23)
    );
\frame_counter_meta_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(24),
      Q => frame_counter_meta(24)
    );
\frame_counter_meta_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(25),
      Q => frame_counter_meta(25)
    );
\frame_counter_meta_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(26),
      Q => frame_counter_meta(26)
    );
\frame_counter_meta_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(27),
      Q => frame_counter_meta(27)
    );
\frame_counter_meta_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(28),
      Q => frame_counter_meta(28)
    );
\frame_counter_meta_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(29),
      Q => frame_counter_meta(29)
    );
\frame_counter_meta_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(2),
      Q => frame_counter_meta(2)
    );
\frame_counter_meta_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(30),
      Q => frame_counter_meta(30)
    );
\frame_counter_meta_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(31),
      Q => frame_counter_meta(31)
    );
\frame_counter_meta_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(3),
      Q => frame_counter_meta(3)
    );
\frame_counter_meta_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(4),
      Q => frame_counter_meta(4)
    );
\frame_counter_meta_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(5),
      Q => frame_counter_meta(5)
    );
\frame_counter_meta_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(6),
      Q => frame_counter_meta(6)
    );
\frame_counter_meta_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(7),
      Q => frame_counter_meta(7)
    );
\frame_counter_meta_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(8),
      Q => frame_counter_meta(8)
    );
\frame_counter_meta_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_reg(9),
      Q => frame_counter_meta(9)
    );
\frame_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[0]_i_2_n_7\,
      Q => frame_counter_reg(0)
    );
\frame_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \frame_counter_reg[0]_i_2_n_0\,
      CO(2) => \frame_counter_reg[0]_i_2_n_1\,
      CO(1) => \frame_counter_reg[0]_i_2_n_2\,
      CO(0) => \frame_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \frame_counter_reg[0]_i_2_n_4\,
      O(2) => \frame_counter_reg[0]_i_2_n_5\,
      O(1) => \frame_counter_reg[0]_i_2_n_6\,
      O(0) => \frame_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => frame_counter_reg(3 downto 1),
      S(0) => \frame_counter[0]_i_3_n_0\
    );
\frame_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[8]_i_1_n_5\,
      Q => frame_counter_reg(10)
    );
\frame_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[8]_i_1_n_4\,
      Q => frame_counter_reg(11)
    );
\frame_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[12]_i_1_n_7\,
      Q => frame_counter_reg(12)
    );
\frame_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_counter_reg[8]_i_1_n_0\,
      CO(3) => \frame_counter_reg[12]_i_1_n_0\,
      CO(2) => \frame_counter_reg[12]_i_1_n_1\,
      CO(1) => \frame_counter_reg[12]_i_1_n_2\,
      CO(0) => \frame_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_counter_reg[12]_i_1_n_4\,
      O(2) => \frame_counter_reg[12]_i_1_n_5\,
      O(1) => \frame_counter_reg[12]_i_1_n_6\,
      O(0) => \frame_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => frame_counter_reg(15 downto 12)
    );
\frame_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[12]_i_1_n_6\,
      Q => frame_counter_reg(13)
    );
\frame_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[12]_i_1_n_5\,
      Q => frame_counter_reg(14)
    );
\frame_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[12]_i_1_n_4\,
      Q => frame_counter_reg(15)
    );
\frame_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[16]_i_1_n_7\,
      Q => frame_counter_reg(16)
    );
\frame_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_counter_reg[12]_i_1_n_0\,
      CO(3) => \frame_counter_reg[16]_i_1_n_0\,
      CO(2) => \frame_counter_reg[16]_i_1_n_1\,
      CO(1) => \frame_counter_reg[16]_i_1_n_2\,
      CO(0) => \frame_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_counter_reg[16]_i_1_n_4\,
      O(2) => \frame_counter_reg[16]_i_1_n_5\,
      O(1) => \frame_counter_reg[16]_i_1_n_6\,
      O(0) => \frame_counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => frame_counter_reg(19 downto 16)
    );
\frame_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[16]_i_1_n_6\,
      Q => frame_counter_reg(17)
    );
\frame_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[16]_i_1_n_5\,
      Q => frame_counter_reg(18)
    );
\frame_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[16]_i_1_n_4\,
      Q => frame_counter_reg(19)
    );
\frame_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[0]_i_2_n_6\,
      Q => frame_counter_reg(1)
    );
\frame_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[20]_i_1_n_7\,
      Q => frame_counter_reg(20)
    );
\frame_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_counter_reg[16]_i_1_n_0\,
      CO(3) => \frame_counter_reg[20]_i_1_n_0\,
      CO(2) => \frame_counter_reg[20]_i_1_n_1\,
      CO(1) => \frame_counter_reg[20]_i_1_n_2\,
      CO(0) => \frame_counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_counter_reg[20]_i_1_n_4\,
      O(2) => \frame_counter_reg[20]_i_1_n_5\,
      O(1) => \frame_counter_reg[20]_i_1_n_6\,
      O(0) => \frame_counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => frame_counter_reg(23 downto 20)
    );
\frame_counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[20]_i_1_n_6\,
      Q => frame_counter_reg(21)
    );
\frame_counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[20]_i_1_n_5\,
      Q => frame_counter_reg(22)
    );
\frame_counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[20]_i_1_n_4\,
      Q => frame_counter_reg(23)
    );
\frame_counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[24]_i_1_n_7\,
      Q => frame_counter_reg(24)
    );
\frame_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_counter_reg[20]_i_1_n_0\,
      CO(3) => \frame_counter_reg[24]_i_1_n_0\,
      CO(2) => \frame_counter_reg[24]_i_1_n_1\,
      CO(1) => \frame_counter_reg[24]_i_1_n_2\,
      CO(0) => \frame_counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_counter_reg[24]_i_1_n_4\,
      O(2) => \frame_counter_reg[24]_i_1_n_5\,
      O(1) => \frame_counter_reg[24]_i_1_n_6\,
      O(0) => \frame_counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => frame_counter_reg(27 downto 24)
    );
\frame_counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[24]_i_1_n_6\,
      Q => frame_counter_reg(25)
    );
\frame_counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[24]_i_1_n_5\,
      Q => frame_counter_reg(26)
    );
\frame_counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[24]_i_1_n_4\,
      Q => frame_counter_reg(27)
    );
\frame_counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[28]_i_1_n_7\,
      Q => frame_counter_reg(28)
    );
\frame_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_counter_reg[24]_i_1_n_0\,
      CO(3) => \NLW_frame_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \frame_counter_reg[28]_i_1_n_1\,
      CO(1) => \frame_counter_reg[28]_i_1_n_2\,
      CO(0) => \frame_counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_counter_reg[28]_i_1_n_4\,
      O(2) => \frame_counter_reg[28]_i_1_n_5\,
      O(1) => \frame_counter_reg[28]_i_1_n_6\,
      O(0) => \frame_counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => frame_counter_reg(31 downto 28)
    );
\frame_counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[28]_i_1_n_6\,
      Q => frame_counter_reg(29)
    );
\frame_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[0]_i_2_n_5\,
      Q => frame_counter_reg(2)
    );
\frame_counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[28]_i_1_n_5\,
      Q => frame_counter_reg(30)
    );
\frame_counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[28]_i_1_n_4\,
      Q => frame_counter_reg(31)
    );
\frame_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[0]_i_2_n_4\,
      Q => frame_counter_reg(3)
    );
\frame_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[4]_i_1_n_7\,
      Q => frame_counter_reg(4)
    );
\frame_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_counter_reg[0]_i_2_n_0\,
      CO(3) => \frame_counter_reg[4]_i_1_n_0\,
      CO(2) => \frame_counter_reg[4]_i_1_n_1\,
      CO(1) => \frame_counter_reg[4]_i_1_n_2\,
      CO(0) => \frame_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_counter_reg[4]_i_1_n_4\,
      O(2) => \frame_counter_reg[4]_i_1_n_5\,
      O(1) => \frame_counter_reg[4]_i_1_n_6\,
      O(0) => \frame_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => frame_counter_reg(7 downto 4)
    );
\frame_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[4]_i_1_n_6\,
      Q => frame_counter_reg(5)
    );
\frame_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[4]_i_1_n_5\,
      Q => frame_counter_reg(6)
    );
\frame_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[4]_i_1_n_4\,
      Q => frame_counter_reg(7)
    );
\frame_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[8]_i_1_n_7\,
      Q => frame_counter_reg(8)
    );
\frame_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_counter_reg[4]_i_1_n_0\,
      CO(3) => \frame_counter_reg[8]_i_1_n_0\,
      CO(2) => \frame_counter_reg[8]_i_1_n_1\,
      CO(1) => \frame_counter_reg[8]_i_1_n_2\,
      CO(0) => \frame_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_counter_reg[8]_i_1_n_4\,
      O(2) => \frame_counter_reg[8]_i_1_n_5\,
      O(1) => \frame_counter_reg[8]_i_1_n_6\,
      O(0) => \frame_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => frame_counter_reg(11 downto 8)
    );
\frame_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => vga_n_58,
      CLR => reset_ah,
      D => \frame_counter_reg[8]_i_1_n_6\,
      Q => frame_counter_reg(9)
    );
\frame_counter_sync_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(0),
      Q => frame_counter_sync(0)
    );
\frame_counter_sync_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(10),
      Q => frame_counter_sync(10)
    );
\frame_counter_sync_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(11),
      Q => frame_counter_sync(11)
    );
\frame_counter_sync_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(12),
      Q => frame_counter_sync(12)
    );
\frame_counter_sync_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(13),
      Q => frame_counter_sync(13)
    );
\frame_counter_sync_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(14),
      Q => frame_counter_sync(14)
    );
\frame_counter_sync_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(15),
      Q => frame_counter_sync(15)
    );
\frame_counter_sync_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(16),
      Q => frame_counter_sync(16)
    );
\frame_counter_sync_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(17),
      Q => frame_counter_sync(17)
    );
\frame_counter_sync_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(18),
      Q => frame_counter_sync(18)
    );
\frame_counter_sync_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(19),
      Q => frame_counter_sync(19)
    );
\frame_counter_sync_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(1),
      Q => frame_counter_sync(1)
    );
\frame_counter_sync_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(20),
      Q => frame_counter_sync(20)
    );
\frame_counter_sync_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(21),
      Q => frame_counter_sync(21)
    );
\frame_counter_sync_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(22),
      Q => frame_counter_sync(22)
    );
\frame_counter_sync_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(23),
      Q => frame_counter_sync(23)
    );
\frame_counter_sync_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(24),
      Q => frame_counter_sync(24)
    );
\frame_counter_sync_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(25),
      Q => frame_counter_sync(25)
    );
\frame_counter_sync_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(26),
      Q => frame_counter_sync(26)
    );
\frame_counter_sync_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(27),
      Q => frame_counter_sync(27)
    );
\frame_counter_sync_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(28),
      Q => frame_counter_sync(28)
    );
\frame_counter_sync_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(29),
      Q => frame_counter_sync(29)
    );
\frame_counter_sync_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(2),
      Q => frame_counter_sync(2)
    );
\frame_counter_sync_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(30),
      Q => frame_counter_sync(30)
    );
\frame_counter_sync_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(31),
      Q => frame_counter_sync(31)
    );
\frame_counter_sync_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(3),
      Q => frame_counter_sync(3)
    );
\frame_counter_sync_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(4),
      Q => frame_counter_sync(4)
    );
\frame_counter_sync_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(5),
      Q => frame_counter_sync(5)
    );
\frame_counter_sync_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(6),
      Q => frame_counter_sync(6)
    );
\frame_counter_sync_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(7),
      Q => frame_counter_sync(7)
    );
\frame_counter_sync_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(8),
      Q => frame_counter_sync(8)
    );
\frame_counter_sync_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => axi_aclk,
      CE => '1',
      CLR => reset_ah,
      D => frame_counter_meta(9),
      Q => frame_counter_sync(9)
    );
hdmi_text_controller_v1_0_AXI_inst: entity work.mb_usb_hdmi_text_controller_0_2_hdmi_text_controller_v1_0_AXI
     port map (
      ADDRARDADDR(9 downto 0) => vram_addr(9 downto 0),
      D(9 downto 0) => reg_data_out(9 downto 0),
      DOBDO(31 downto 0) => vram_rdata(31 downto 0),
      Q(9 downto 0) => color_reg(9 downto 0),
      axi_aclk => axi_aclk,
      axi_araddr(9 downto 0) => axi_araddr(9 downto 0),
      \axi_araddr[2]_0\ => hdmi_text_controller_v1_0_AXI_inst_n_29,
      axi_araddr_2_sp_1 => hdmi_text_controller_v1_0_AXI_inst_n_18,
      axi_araddr_7_sp_1 => hdmi_text_controller_v1_0_AXI_inst_n_17,
      axi_aresetn => axi_aresetn,
      axi_arready => axi_arready,
      axi_arvalid => axi_arvalid,
      axi_awaddr(9 downto 0) => axi_awaddr(9 downto 0),
      axi_awready => axi_awready,
      axi_awvalid => axi_awvalid,
      axi_bready => axi_bready,
      axi_bvalid => axi_bvalid,
      axi_rdata(31 downto 0) => axi_rdata(31 downto 0),
      \axi_rdata_reg[31]_0\(21 downto 0) => frame_counter_sync(31 downto 10),
      axi_rready => axi_rready,
      axi_rvalid => axi_rvalid,
      axi_wdata(31 downto 0) => axi_wdata(31 downto 0),
      axi_wready => axi_wready,
      axi_wstrb(3 downto 0) => axi_wstrb(3 downto 0),
      axi_wvalid => axi_wvalid,
      reset_ah => reset_ah,
      vram_reg => hdmi_text_controller_v1_0_AXI_inst_n_30,
      vram_reg_0 => hdmi_text_controller_v1_0_AXI_inst_n_31,
      vram_reg_1 => hdmi_text_controller_v1_0_AXI_inst_n_32,
      vram_reg_2 => hdmi_text_controller_v1_0_AXI_inst_n_33,
      vram_reg_3 => hdmi_text_controller_v1_0_AXI_inst_n_34,
      vram_reg_4 => hdmi_text_controller_v1_0_AXI_inst_n_35,
      vram_reg_5 => hdmi_text_controller_v1_0_AXI_inst_n_36,
      vram_reg_6 => hdmi_text_controller_v1_0_AXI_inst_n_37,
      vram_reg_7 => hdmi_text_controller_v1_0_AXI_inst_n_38,
      vram_reg_8 => hdmi_text_controller_v1_0_AXI_inst_n_39,
      vram_we => vram_we
    );
vde_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_25MHz,
      CE => '1',
      D => vde,
      Q => vde_r,
      R => '0'
    );
vga: entity work.mb_usb_hdmi_text_controller_0_2_vga_controller
     port map (
      ADDRBWRADDR(3) => vga_n_40,
      ADDRBWRADDR(2) => vga_n_41,
      ADDRBWRADDR(1) => vga_n_42,
      ADDRBWRADDR(0) => vga_n_43,
      D(9 downto 0) => reg_data_out(9 downto 0),
      DI(2) => vga_n_18,
      DI(1) => vga_n_19,
      DI(0) => p_0_in(0),
      Q(8 downto 0) => p_0_in(9 downto 1),
      S(2) => cam_fb_reg_0_4_i_10_n_0,
      S(1) => cam_fb_reg_0_4_i_11_n_0,
      S(0) => cam_fb_reg_0_4_i_12_n_0,
      axi_araddr(0) => axi_araddr(0),
      \axi_rdata_reg[0]\ => hdmi_text_controller_v1_0_AXI_inst_n_30,
      \axi_rdata_reg[0]_0\ => hdmi_text_controller_v1_0_AXI_inst_n_18,
      \axi_rdata_reg[0]_1\ => hdmi_text_controller_v1_0_AXI_inst_n_29,
      \axi_rdata_reg[0]_2\ => hdmi_text_controller_v1_0_AXI_inst_n_17,
      \axi_rdata_reg[1]\ => hdmi_text_controller_v1_0_AXI_inst_n_31,
      \axi_rdata_reg[2]\ => hdmi_text_controller_v1_0_AXI_inst_n_32,
      \axi_rdata_reg[3]\ => hdmi_text_controller_v1_0_AXI_inst_n_33,
      \axi_rdata_reg[4]\ => hdmi_text_controller_v1_0_AXI_inst_n_34,
      \axi_rdata_reg[5]\ => hdmi_text_controller_v1_0_AXI_inst_n_35,
      \axi_rdata_reg[6]\ => hdmi_text_controller_v1_0_AXI_inst_n_36,
      \axi_rdata_reg[7]\ => hdmi_text_controller_v1_0_AXI_inst_n_37,
      \axi_rdata_reg[8]\ => hdmi_text_controller_v1_0_AXI_inst_n_38,
      \axi_rdata_reg[9]\(9 downto 0) => color_reg(9 downto 0),
      \axi_rdata_reg[9]_0\(9 downto 0) => frame_counter_sync(9 downto 0),
      \axi_rdata_reg[9]_1\ => hdmi_text_controller_v1_0_AXI_inst_n_39,
      cam_fb_reg_0_4(2) => cam_fb_reg_0_4_i_7_n_0,
      cam_fb_reg_0_4(1) => cam_fb_reg_0_4_i_8_n_0,
      cam_fb_reg_0_4(0) => cam_fb_reg_0_4_i_9_n_0,
      \cam_fb_reg_mux_sel_b_pos_0__4\(3) => \cam_fb_mux_sel_b_pos_0__4_i_5_n_0\,
      \cam_fb_reg_mux_sel_b_pos_0__4\(2) => \cam_fb_mux_sel_b_pos_0__4_i_6_n_0\,
      \cam_fb_reg_mux_sel_b_pos_0__4\(1) => \cam_fb_mux_sel_b_pos_0__4_i_7_n_0\,
      \cam_fb_reg_mux_sel_b_pos_0__4\(0) => \cam_fb_mux_sel_b_pos_0__4_i_8_n_0\,
      \cam_fb_reg_mux_sel_b_pos_0__4_0\(0) => \cam_fb_mux_sel_b_pos_0__4_i_4_n_0\,
      \cam_fb_reg_mux_sel_b_pos_0__4_i_1_0\ => vga_n_2,
      \cam_fb_reg_mux_sel_b_pos_0__4_i_1_1\ => vga_n_15,
      \cam_fb_reg_mux_sel_b_pos_0__4_i_1_2\ => vga_n_16,
      \cam_fb_reg_mux_sel_b_pos_0__4_i_1_3\ => vga_n_17,
      cam_rd_addr(11 downto 0) => cam_rd_addr(18 downto 7),
      clk_out1 => clk_25MHz,
      \hc_reg[6]_rep_0\(3) => vga_n_44,
      \hc_reg[6]_rep_0\(2) => vga_n_45,
      \hc_reg[6]_rep_0\(1) => vga_n_46,
      \hc_reg[6]_rep_0\(0) => vga_n_47,
      \hc_reg[9]_0\(8 downto 0) => drawX(9 downto 1),
      hsync => hsync,
      reset_ah => reset_ah,
      vde => vde,
      vs_reg_0 => vga_n_58,
      vsync => vsync,
      vsync_p => vsync_p
    );
vga_to_hdmi: entity work.mb_usb_hdmi_text_controller_0_2_hdmi_tx_0
     port map (
      TMDS_CLK_N => hdmi_clk_n,
      TMDS_CLK_P => hdmi_clk_p,
      TMDS_DATA_N(2 downto 0) => hdmi_tx_n(2 downto 0),
      TMDS_DATA_P(2 downto 0) => hdmi_tx_p(2 downto 0),
      ade => '0',
      aux0_din(3 downto 0) => B"0000",
      aux1_din(3 downto 0) => B"0000",
      aux2_din(3 downto 0) => B"0000",
      blue(3 downto 0) => B"0000",
      green(3 downto 0) => B"0000",
      hsync => hsync,
      pix_clk => clk_25MHz,
      pix_clk_locked => locked,
      pix_clkx5 => clk_125MHz,
      red(3 downto 0) => red(3 downto 0),
      rst => reset_ah,
      vde => vde,
      vsync => vsync
    );
vga_to_hdmi_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cam_fb_reg_7_4_n_67,
      I1 => cam_fb_reg_5_4_n_67,
      I2 => \cam_fb_reg_mux_sel_b_pos_1__4_n_0\,
      I3 => cam_fb_reg_3_4_n_67,
      I4 => \cam_fb_reg_mux_sel_b_pos_2__4_n_0\,
      I5 => cam_fb_reg_1_4_n_67,
      O => vga_to_hdmi_i_10_n_0
    );
vga_to_hdmi_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808A80808"
    )
        port map (
      I0 => vde_r,
      I1 => vga_to_hdmi_i_7_n_0,
      I2 => \cam_fb_reg_mux_sel_b_pos_0__4_n_0\,
      I3 => \cam_fb_reg_mux_sel_b_pos_1__4_n_0\,
      I4 => cam_fb_reg_9_7_n_67,
      I5 => \cam_fb_reg_mux_sel_b_pos_2__4_n_0\,
      O => red(3)
    );
vga_to_hdmi_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808A80808"
    )
        port map (
      I0 => vde_r,
      I1 => vga_to_hdmi_i_8_n_0,
      I2 => \cam_fb_reg_mux_sel_b_pos_0__4_n_0\,
      I3 => \cam_fb_reg_mux_sel_b_pos_1__4_n_0\,
      I4 => cam_fb_reg_9_6_n_67,
      I5 => \cam_fb_reg_mux_sel_b_pos_2__4_n_0\,
      O => red(2)
    );
vga_to_hdmi_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808A80808"
    )
        port map (
      I0 => vde_r,
      I1 => vga_to_hdmi_i_9_n_0,
      I2 => \cam_fb_reg_mux_sel_b_pos_0__4_n_0\,
      I3 => \cam_fb_reg_mux_sel_b_pos_1__4_n_0\,
      I4 => cam_fb_reg_9_5_n_67,
      I5 => \cam_fb_reg_mux_sel_b_pos_2__4_n_0\,
      O => red(1)
    );
vga_to_hdmi_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808A80808"
    )
        port map (
      I0 => vde_r,
      I1 => vga_to_hdmi_i_10_n_0,
      I2 => \cam_fb_reg_mux_sel_b_pos_0__4_n_0\,
      I3 => \cam_fb_reg_mux_sel_b_pos_1__4_n_0\,
      I4 => cam_fb_reg_9_4_n_67,
      I5 => \cam_fb_reg_mux_sel_b_pos_2__4_n_0\,
      O => red(0)
    );
vga_to_hdmi_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cam_fb_reg_7_7_n_67,
      I1 => cam_fb_reg_5_7_n_67,
      I2 => \cam_fb_reg_mux_sel_b_pos_1__4_n_0\,
      I3 => cam_fb_reg_3_7_n_67,
      I4 => \cam_fb_reg_mux_sel_b_pos_2__4_n_0\,
      I5 => cam_fb_reg_1_7_n_67,
      O => vga_to_hdmi_i_7_n_0
    );
vga_to_hdmi_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cam_fb_reg_7_6_n_67,
      I1 => cam_fb_reg_5_6_n_67,
      I2 => \cam_fb_reg_mux_sel_b_pos_1__4_n_0\,
      I3 => cam_fb_reg_3_6_n_67,
      I4 => \cam_fb_reg_mux_sel_b_pos_2__4_n_0\,
      I5 => cam_fb_reg_1_6_n_67,
      O => vga_to_hdmi_i_8_n_0
    );
vga_to_hdmi_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => cam_fb_reg_7_5_n_67,
      I1 => cam_fb_reg_5_5_n_67,
      I2 => \cam_fb_reg_mux_sel_b_pos_1__4_n_0\,
      I3 => cam_fb_reg_3_5_n_67,
      I4 => \cam_fb_reg_mux_sel_b_pos_2__4_n_0\,
      I5 => cam_fb_reg_1_5_n_67,
      O => vga_to_hdmi_i_9_n_0
    );
vram_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_01 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_02 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_03 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_04 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_05 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_06 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_07 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_08 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_09 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_0A => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_0B => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_0C => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_0D => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_0E => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_0F => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_10 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_11 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_12 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_13 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_14 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_15 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_16 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_17 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_18 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_19 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_1A => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_1B => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_1C => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_1D => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_1E => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_1F => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_20 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_21 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_22 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_23 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_24 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_25 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_26 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_27 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_28 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_29 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_2A => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_2B => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_2C => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_2D => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_2E => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_2F => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_30 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_31 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_32 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_33 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_34 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_35 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_36 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_37 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_38 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_39 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_3A => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_3B => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_3C => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_3D => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_3E => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_3F => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_40 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_41 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_42 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_43 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_44 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_45 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_46 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_47 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_48 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_49 => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_4A => X"2020202020202020202020202020202020202020202020202020202020202020",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => vram_addr(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 5) => vram_addr(9 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_vram_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_vram_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => axi_aclk,
      CLKBWRCLK => axi_aclk,
      DBITERR => NLW_vram_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => axi_wdata(31 downto 0),
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_vram_reg_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => vram_rdata(31 downto 0),
      DOPADOP(3 downto 0) => NLW_vram_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_vram_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_vram_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => vram_we,
      ENBWREN => '1',
      INJECTDBITERR => NLW_vram_reg_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_vram_reg_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_vram_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_vram_reg_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => axi_wstrb(3 downto 0),
      WEBWE(7 downto 0) => B"00000000"
    );
vsync_p_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_25MHz,
      CE => '1',
      CLR => reset_ah,
      D => vsync,
      Q => vsync_p
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_hdmi_text_controller_0_2 is
  port (
    hdmi_clk_n : out STD_LOGIC;
    hdmi_clk_p : out STD_LOGIC;
    hdmi_tx_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    axi_awaddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_awvalid : in STD_LOGIC;
    axi_awready : out STD_LOGIC;
    axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_wvalid : in STD_LOGIC;
    axi_wready : out STD_LOGIC;
    axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_bvalid : out STD_LOGIC;
    axi_bready : in STD_LOGIC;
    axi_araddr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_arvalid : in STD_LOGIC;
    axi_arready : out STD_LOGIC;
    axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_rvalid : out STD_LOGIC;
    axi_rready : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_wr_addr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    cam_wr_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cam_we : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mb_usb_hdmi_text_controller_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mb_usb_hdmi_text_controller_0_2 : entity is "mb_usb_hdmi_text_controller_0_2,hdmi_text_controller_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mb_usb_hdmi_text_controller_0_2 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mb_usb_hdmi_text_controller_0_2 : entity is "hdmi_text_controller_v1_0,Vivado 2022.2";
end mb_usb_hdmi_text_controller_0_2;

architecture STRUCTURE of mb_usb_hdmi_text_controller_0_2 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axi_aclk : signal is "xilinx.com:signal:clock:1.0 AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axi_aclk : signal is "XIL_INTERFACENAME AXI_CLK, ASSOCIATED_BUSIF AXI, ASSOCIATED_RESET axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_aresetn : signal is "xilinx.com:signal:reset:1.0 AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of axi_aresetn : signal is "XIL_INTERFACENAME AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_arready : signal is "xilinx.com:interface:aximm:1.0 AXI ARREADY";
  attribute X_INTERFACE_INFO of axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI ARVALID";
  attribute X_INTERFACE_INFO of axi_awready : signal is "xilinx.com:interface:aximm:1.0 AXI AWREADY";
  attribute X_INTERFACE_INFO of axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI AWVALID";
  attribute X_INTERFACE_INFO of axi_bready : signal is "xilinx.com:interface:aximm:1.0 AXI BREADY";
  attribute X_INTERFACE_INFO of axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI BVALID";
  attribute X_INTERFACE_INFO of axi_rready : signal is "xilinx.com:interface:aximm:1.0 AXI RREADY";
  attribute X_INTERFACE_PARAMETER of axi_rready : signal is "XIL_INTERFACENAME AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI RVALID";
  attribute X_INTERFACE_INFO of axi_wready : signal is "xilinx.com:interface:aximm:1.0 AXI WREADY";
  attribute X_INTERFACE_INFO of axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI WVALID";
  attribute X_INTERFACE_INFO of hdmi_clk_n : signal is "xilinx.com:signal:clock:1.0 hdmi_clk_n CLK, xilinx.com:interface:hdmi:2.0 HDMI TMDS_CLK_N";
  attribute X_INTERFACE_PARAMETER of hdmi_clk_n : signal is "XIL_INTERFACENAME hdmi_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of hdmi_clk_p : signal is "xilinx.com:signal:clock:1.0 hdmi_clk_p CLK, xilinx.com:interface:hdmi:2.0 HDMI TMDS_CLK_P";
  attribute X_INTERFACE_PARAMETER of hdmi_clk_p : signal is "XIL_INTERFACENAME hdmi_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI ARADDR";
  attribute X_INTERFACE_INFO of axi_arprot : signal is "xilinx.com:interface:aximm:1.0 AXI ARPROT";
  attribute X_INTERFACE_INFO of axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI AWADDR";
  attribute X_INTERFACE_INFO of axi_awprot : signal is "xilinx.com:interface:aximm:1.0 AXI AWPROT";
  attribute X_INTERFACE_INFO of axi_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI BRESP";
  attribute X_INTERFACE_INFO of axi_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI RDATA";
  attribute X_INTERFACE_INFO of axi_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI RRESP";
  attribute X_INTERFACE_INFO of axi_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI WDATA";
  attribute X_INTERFACE_INFO of axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI WSTRB";
  attribute X_INTERFACE_INFO of hdmi_tx_n : signal is "xilinx.com:interface:hdmi:2.0 HDMI TMDS_DATA_N";
  attribute X_INTERFACE_INFO of hdmi_tx_p : signal is "xilinx.com:interface:hdmi:2.0 HDMI TMDS_DATA_P";
begin
  axi_bresp(1) <= \<const0>\;
  axi_bresp(0) <= \<const0>\;
  axi_rresp(1) <= \<const0>\;
  axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.mb_usb_hdmi_text_controller_0_2_hdmi_text_controller_v1_0
     port map (
      axi_aclk => axi_aclk,
      axi_araddr(9 downto 0) => axi_araddr(11 downto 2),
      axi_aresetn => axi_aresetn,
      axi_arready => axi_arready,
      axi_arvalid => axi_arvalid,
      axi_awaddr(9 downto 0) => axi_awaddr(11 downto 2),
      axi_awready => axi_awready,
      axi_awvalid => axi_awvalid,
      axi_bready => axi_bready,
      axi_bvalid => axi_bvalid,
      axi_rdata(31 downto 0) => axi_rdata(31 downto 0),
      axi_rready => axi_rready,
      axi_rvalid => axi_rvalid,
      axi_wdata(31 downto 0) => axi_wdata(31 downto 0),
      axi_wready => axi_wready,
      axi_wstrb(3 downto 0) => axi_wstrb(3 downto 0),
      axi_wvalid => axi_wvalid,
      cam_pclk => cam_pclk,
      cam_we => cam_we,
      cam_wr_addr(16 downto 0) => cam_wr_addr(16 downto 0),
      cam_wr_data(3 downto 0) => cam_wr_data(15 downto 12),
      hdmi_clk_n => hdmi_clk_n,
      hdmi_clk_p => hdmi_clk_p,
      hdmi_tx_n(2 downto 0) => hdmi_tx_n(2 downto 0),
      hdmi_tx_p(2 downto 0) => hdmi_tx_p(2 downto 0)
    );
end STRUCTURE;
