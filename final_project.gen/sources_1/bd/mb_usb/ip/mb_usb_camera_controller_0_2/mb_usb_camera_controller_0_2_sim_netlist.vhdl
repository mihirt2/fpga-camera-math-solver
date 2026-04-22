-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Apr 21 20:04:39 2026
-- Host        : Levono_MihirT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/ishur/final_project/final_project.gen/sources_1/bd/mb_usb/ip/mb_usb_camera_controller_0_2/mb_usb_camera_controller_0_2_sim_netlist.vhdl
-- Design      : mb_usb_camera_controller_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_camera_controller_0_2_OV7670_config_rom is
  port (
    \rom_addr_counter_reg[7]\ : out STD_LOGIC;
    \FSM_onehot_curr_state_reg[1]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sda_drive_low_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    write_byte_counter : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sda_drive_low_reg_0 : in STD_LOGIC;
    sda_drive_low_i_2_0 : in STD_LOGIC;
    sda_drive_low_reg_i_7_0 : in STD_LOGIC;
    sda_drive_low_reg_i_7_1 : in STD_LOGIC;
    sda_drive_low_reg_1 : in STD_LOGIC;
    sda_drive_low_reg_2 : in STD_LOGIC;
    sda_drive_low_reg_3 : in STD_LOGIC;
    sda_drive_low_reg_4 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_camera_controller_0_2_OV7670_config_rom : entity is "OV7670_config_rom";
end mb_usb_camera_controller_0_2_OV7670_config_rom;

architecture STRUCTURE of mb_usb_camera_controller_0_2_OV7670_config_rom is
  signal \dout_reg_n_0_[0]\ : STD_LOGIC;
  signal \dout_reg_n_0_[1]\ : STD_LOGIC;
  signal \dout_reg_n_0_[2]\ : STD_LOGIC;
  signal \dout_reg_n_0_[3]\ : STD_LOGIC;
  signal \dout_reg_n_0_[4]\ : STD_LOGIC;
  signal \dout_reg_n_0_[5]\ : STD_LOGIC;
  signal \dout_reg_n_0_[6]\ : STD_LOGIC;
  signal \dout_reg_n_0_[7]\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal g0_b10_n_0 : STD_LOGIC;
  signal g0_b11_n_0 : STD_LOGIC;
  signal g0_b12_n_0 : STD_LOGIC;
  signal g0_b13_n_0 : STD_LOGIC;
  signal g0_b14_n_0 : STD_LOGIC;
  signal g0_b15_n_0 : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal g0_b8_n_0 : STD_LOGIC;
  signal g0_b9_n_0 : STD_LOGIC;
  signal reg_addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^rom_addr_counter_reg[7]\ : STD_LOGIC;
  signal sda_drive_low_i_10_n_0 : STD_LOGIC;
  signal sda_drive_low_i_11_n_0 : STD_LOGIC;
  signal sda_drive_low_i_2_n_0 : STD_LOGIC;
  signal sda_drive_low_i_8_n_0 : STD_LOGIC;
  signal sda_drive_low_i_9_n_0 : STD_LOGIC;
  signal sda_drive_low_reg_i_5_n_0 : STD_LOGIC;
  signal sda_drive_low_reg_i_7_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of g0_b0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of g0_b1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of g0_b10 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of g0_b11 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of g0_b12 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of g0_b13 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of g0_b14 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of g0_b15 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of g0_b2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of g0_b3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of g0_b4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of g0_b5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of g0_b6 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of g0_b7 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of g0_b8 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of g0_b9 : label is "soft_lutpair4";
begin
  \rom_addr_counter_reg[7]\ <= \^rom_addr_counter_reg[7]\;
\dout[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => Q(5),
      O => \^rom_addr_counter_reg[7]\
    );
\dout_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b0_n_0,
      Q => \dout_reg_n_0_[0]\,
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b10_n_0,
      Q => reg_addr(2),
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b11_n_0,
      Q => reg_addr(3),
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b12_n_0,
      Q => reg_addr(4),
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b13_n_0,
      Q => reg_addr(5),
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b14_n_0,
      Q => reg_addr(6),
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b15_n_0,
      Q => reg_addr(7),
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b1_n_0,
      Q => \dout_reg_n_0_[1]\,
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b2_n_0,
      Q => \dout_reg_n_0_[2]\,
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b3_n_0,
      Q => \dout_reg_n_0_[3]\,
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b4_n_0,
      Q => \dout_reg_n_0_[4]\,
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b5_n_0,
      Q => \dout_reg_n_0_[5]\,
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b6_n_0,
      Q => \dout_reg_n_0_[6]\,
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b7_n_0,
      Q => \dout_reg_n_0_[7]\,
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b8_n_0,
      Q => reg_addr(0),
      S => \^rom_addr_counter_reg[7]\
    );
\dout_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => g0_b9_n_0,
      Q => reg_addr(1),
      S => \^rom_addr_counter_reg[7]\
    );
g0_b0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE07FA00"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b0_n_0
    );
g0_b1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE3DD000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF41EC72"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b10_n_0
    );
g0_b11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEDA1132"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b11_n_0
    );
g0_b12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF5F072F"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b12_n_0
    );
g0_b13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE84F922"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b13_n_0
    );
g0_b14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE800082"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b14_n_0
    );
g0_b15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE001802"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b15_n_0
    );
g0_b2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE003B00"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b2_n_0
    );
g0_b3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE340400"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b3_n_0
    );
g0_b4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE116402"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b4_n_0
    );
g0_b5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE14C202"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b5_n_0
    );
g0_b6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE148202"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b6_n_0
    );
g0_b7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE00A203"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b7_n_0
    );
g0_b8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA95A0A"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b8_n_0
    );
g0_b9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE759327"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => g0_b9_n_0
    );
sda_drive_low_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFEFFFAFAF200"
    )
        port map (
      I0 => sda_drive_low_i_2_n_0,
      I1 => sda_drive_low_reg_1,
      I2 => sda_drive_low_reg(0),
      I3 => sda_drive_low_reg_2,
      I4 => sda_drive_low_reg_3,
      I5 => sda_drive_low_reg_4,
      O => \FSM_onehot_curr_state_reg[1]\
    );
sda_drive_low_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_reg_n_0_[3]\,
      I1 => \dout_reg_n_0_[2]\,
      I2 => sda_drive_low_reg_i_7_0,
      I3 => \dout_reg_n_0_[1]\,
      I4 => sda_drive_low_reg_i_7_1,
      I5 => \dout_reg_n_0_[0]\,
      O => sda_drive_low_i_10_n_0
    );
sda_drive_low_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \dout_reg_n_0_[7]\,
      I1 => \dout_reg_n_0_[6]\,
      I2 => sda_drive_low_reg_i_7_0,
      I3 => \dout_reg_n_0_[5]\,
      I4 => sda_drive_low_reg_i_7_1,
      I5 => \dout_reg_n_0_[4]\,
      O => sda_drive_low_i_11_n_0
    );
sda_drive_low_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0020AAAA0A20"
    )
        port map (
      I0 => sda_drive_low_reg(1),
      I1 => sda_drive_low_reg_i_5_n_0,
      I2 => write_byte_counter(0),
      I3 => write_byte_counter(1),
      I4 => sda_drive_low_reg_0,
      I5 => sda_drive_low_reg_i_7_n_0,
      O => sda_drive_low_i_2_n_0
    );
sda_drive_low_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_addr(3),
      I1 => reg_addr(2),
      I2 => sda_drive_low_reg_i_7_0,
      I3 => reg_addr(1),
      I4 => sda_drive_low_reg_i_7_1,
      I5 => reg_addr(0),
      O => sda_drive_low_i_8_n_0
    );
sda_drive_low_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => reg_addr(7),
      I1 => reg_addr(6),
      I2 => sda_drive_low_reg_i_7_0,
      I3 => reg_addr(5),
      I4 => sda_drive_low_reg_i_7_1,
      I5 => reg_addr(4),
      O => sda_drive_low_i_9_n_0
    );
sda_drive_low_reg_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => sda_drive_low_i_8_n_0,
      I1 => sda_drive_low_i_9_n_0,
      O => sda_drive_low_reg_i_5_n_0,
      S => sda_drive_low_i_2_0
    );
sda_drive_low_reg_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => sda_drive_low_i_10_n_0,
      I1 => sda_drive_low_i_11_n_0,
      O => sda_drive_low_reg_i_7_n_0,
      S => sda_drive_low_i_2_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_camera_controller_0_2_ov7670_capture is
  port (
    \slv_reg0_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_we : out STD_LOGIC;
    frame_done : out STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wrdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_pclk : in STD_LOGIC;
    \pixel_addr_sync1_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn : in STD_LOGIC;
    cam_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_vsync : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    capture_en_sync2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_camera_controller_0_2_ov7670_capture : entity is "ov7670_capture";
end mb_usb_camera_controller_0_2_ov7670_capture;

architecture STRUCTURE of mb_usb_camera_controller_0_2_ov7670_capture is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bram_addr0_n_100 : STD_LOGIC;
  signal bram_addr0_n_101 : STD_LOGIC;
  signal bram_addr0_n_102 : STD_LOGIC;
  signal bram_addr0_n_103 : STD_LOGIC;
  signal bram_addr0_n_104 : STD_LOGIC;
  signal bram_addr0_n_105 : STD_LOGIC;
  signal bram_addr0_n_89 : STD_LOGIC;
  signal bram_addr0_n_90 : STD_LOGIC;
  signal bram_addr0_n_91 : STD_LOGIC;
  signal bram_addr0_n_92 : STD_LOGIC;
  signal bram_addr0_n_93 : STD_LOGIC;
  signal bram_addr0_n_94 : STD_LOGIC;
  signal bram_addr0_n_95 : STD_LOGIC;
  signal bram_addr0_n_96 : STD_LOGIC;
  signal bram_addr0_n_97 : STD_LOGIC;
  signal bram_addr0_n_98 : STD_LOGIC;
  signal bram_addr0_n_99 : STD_LOGIC;
  signal \bram_wrdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \bram_wrdata[7]_i_3_n_0\ : STD_LOGIC;
  signal byte_toggle : STD_LOGIC;
  signal byte_toggle_i_1_n_0 : STD_LOGIC;
  signal curr_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal frame_done_next : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^slv_reg0_reg[2]\ : STD_LOGIC;
  signal x_coord : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \x_coord[0]_i_1_n_0\ : STD_LOGIC;
  signal \x_coord[5]_i_2_n_0\ : STD_LOGIC;
  signal \x_coord[9]_i_1_n_0\ : STD_LOGIC;
  signal \x_coord[9]_i_3_n_0\ : STD_LOGIC;
  signal x_coord_next : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal y_coord : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \y_coord[0]_i_1_n_0\ : STD_LOGIC;
  signal \y_coord[7]_i_2_n_0\ : STD_LOGIC;
  signal \y_coord[9]_i_2_n_0\ : STD_LOGIC;
  signal y_coord_next : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal NLW_bram_addr0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_addr0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_addr0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_addr0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_addr0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_addr0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_bram_addr0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_bram_addr0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_bram_addr0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_bram_addr0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_bram_addr0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of bram_addr0 : label is "{SYNTH-12 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bram_addr[0]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bram_addr[10]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bram_addr[11]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bram_addr[12]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bram_addr[13]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bram_addr[14]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bram_addr[15]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \bram_addr[1]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \bram_addr[2]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bram_addr[3]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \bram_addr[4]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bram_addr[5]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \bram_addr[6]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bram_addr[7]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bram_addr[8]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bram_addr[9]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \bram_wrdata[7]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of byte_toggle_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \curr_state[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \curr_state[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of frame_done_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \x_coord[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \x_coord[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \x_coord[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \x_coord[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \x_coord[5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \x_coord[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \x_coord[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \x_coord[8]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \y_coord[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \y_coord[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \y_coord[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \y_coord[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \y_coord[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \y_coord[7]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \y_coord[8]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \y_coord[9]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \y_coord[9]_i_2\ : label is "soft_lutpair21";
begin
  E(0) <= \^e\(0);
  \slv_reg0_reg[2]\ <= \^slv_reg0_reg[2]\;
bram_addr0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 10) => B"00000000000000000000",
      A(9 downto 0) => y_coord(9 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_bram_addr0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000101000000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_bram_addr0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 10) => B"00000000000000000000000000000000000000",
      C(9 downto 0) => x_coord(9 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_bram_addr0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_bram_addr0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^e\(0),
      CLK => cam_pclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_bram_addr0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_bram_addr0_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_bram_addr0_P_UNCONNECTED(47 downto 17),
      P(16) => bram_addr0_n_89,
      P(15) => bram_addr0_n_90,
      P(14) => bram_addr0_n_91,
      P(13) => bram_addr0_n_92,
      P(12) => bram_addr0_n_93,
      P(11) => bram_addr0_n_94,
      P(10) => bram_addr0_n_95,
      P(9) => bram_addr0_n_96,
      P(8) => bram_addr0_n_97,
      P(7) => bram_addr0_n_98,
      P(6) => bram_addr0_n_99,
      P(5) => bram_addr0_n_100,
      P(4) => bram_addr0_n_101,
      P(3) => bram_addr0_n_102,
      P(2) => bram_addr0_n_103,
      P(1) => bram_addr0_n_104,
      P(0) => bram_addr0_n_105,
      PATTERNBDETECT => NLW_bram_addr0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_bram_addr0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_bram_addr0_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_bram_addr0_UNDERFLOW_UNCONNECTED
    );
\bram_addr[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_105,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(0)
    );
\bram_addr[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_95,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(10)
    );
\bram_addr[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_94,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(11)
    );
\bram_addr[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_93,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(12)
    );
\bram_addr[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_92,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(13)
    );
\bram_addr[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_91,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(14)
    );
\bram_addr[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_90,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(15)
    );
\bram_addr[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_89,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(16)
    );
\bram_addr[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_104,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(1)
    );
\bram_addr[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_103,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(2)
    );
\bram_addr[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_102,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(3)
    );
\bram_addr[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_101,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(4)
    );
\bram_addr[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_100,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(5)
    );
\bram_addr[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_99,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(6)
    );
\bram_addr[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_98,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(7)
    );
\bram_addr[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_97,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(8)
    );
\bram_addr[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bram_addr0_n_96,
      I1 => \pixel_addr_sync1_reg[0]\,
      O => bram_addr(9)
    );
bram_we_reg: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => \^slv_reg0_reg[2]\,
      D => \^e\(0),
      Q => bram_we
    );
\bram_wrdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F000000"
    )
        port map (
      I0 => x_coord(7),
      I1 => x_coord(6),
      I2 => x_coord(8),
      I3 => \bram_wrdata[7]_i_2_n_0\,
      I4 => \bram_wrdata[7]_i_3_n_0\,
      O => \^e\(0)
    );
\bram_wrdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => y_coord(6),
      I1 => y_coord(4),
      I2 => y_coord(5),
      I3 => y_coord(7),
      O => \bram_wrdata[7]_i_2_n_0\
    );
\bram_wrdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => curr_state(0),
      I1 => y_coord(9),
      I2 => x_coord(9),
      I3 => y_coord(8),
      I4 => byte_toggle,
      I5 => curr_state(1),
      O => \bram_wrdata[7]_i_3_n_0\
    );
\bram_wrdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \^e\(0),
      CLR => \^slv_reg0_reg[2]\,
      D => cam_d(0),
      Q => bram_wrdata(0)
    );
\bram_wrdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \^e\(0),
      CLR => \^slv_reg0_reg[2]\,
      D => cam_d(1),
      Q => bram_wrdata(1)
    );
\bram_wrdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \^e\(0),
      CLR => \^slv_reg0_reg[2]\,
      D => cam_d(2),
      Q => bram_wrdata(2)
    );
\bram_wrdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \^e\(0),
      CLR => \^slv_reg0_reg[2]\,
      D => cam_d(3),
      Q => bram_wrdata(3)
    );
\bram_wrdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \^e\(0),
      CLR => \^slv_reg0_reg[2]\,
      D => cam_d(4),
      Q => bram_wrdata(4)
    );
\bram_wrdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \^e\(0),
      CLR => \^slv_reg0_reg[2]\,
      D => cam_d(5),
      Q => bram_wrdata(5)
    );
\bram_wrdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \^e\(0),
      CLR => \^slv_reg0_reg[2]\,
      D => cam_d(6),
      Q => bram_wrdata(6)
    );
\bram_wrdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \^e\(0),
      CLR => \^slv_reg0_reg[2]\,
      D => cam_d(7),
      Q => bram_wrdata(7)
    );
byte_toggle_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => byte_toggle,
      I1 => curr_state(1),
      I2 => curr_state(0),
      O => byte_toggle_i_1_n_0
    );
byte_toggle_reg: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => \^slv_reg0_reg[2]\,
      D => byte_toggle_i_1_n_0,
      Q => byte_toggle
    );
\curr_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55EECCEA"
    )
        port map (
      I0 => cam_vsync,
      I1 => cam_href,
      I2 => capture_en_sync2,
      I3 => curr_state(1),
      I4 => curr_state(0),
      O => next_state(0)
    );
\curr_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2322"
    )
        port map (
      I0 => cam_vsync,
      I1 => curr_state(1),
      I2 => cam_href,
      I3 => curr_state(0),
      O => next_state(1)
    );
\curr_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => \^slv_reg0_reg[2]\,
      D => next_state(0),
      Q => curr_state(0)
    );
\curr_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => \^slv_reg0_reg[2]\,
      D => next_state(1),
      Q => curr_state(1)
    );
frame_done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(1),
      O => frame_done_next
    );
frame_done_reg: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => '1',
      CLR => \^slv_reg0_reg[2]\,
      D => frame_done_next,
      Q => frame_done
    );
scl_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(0),
      I1 => s00_axi_aresetn,
      O => \^slv_reg0_reg[2]\
    );
\x_coord[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_coord(0),
      I1 => curr_state(1),
      O => \x_coord[0]_i_1_n_0\
    );
\x_coord[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => x_coord(0),
      I1 => x_coord(1),
      I2 => curr_state(1),
      O => x_coord_next(1)
    );
\x_coord[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => x_coord(0),
      I1 => x_coord(1),
      I2 => x_coord(2),
      I3 => curr_state(1),
      O => x_coord_next(2)
    );
\x_coord[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => x_coord(1),
      I1 => x_coord(0),
      I2 => x_coord(2),
      I3 => x_coord(3),
      I4 => curr_state(1),
      O => x_coord_next(3)
    );
\x_coord[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => x_coord(2),
      I1 => x_coord(0),
      I2 => x_coord(1),
      I3 => x_coord(3),
      I4 => x_coord(4),
      I5 => curr_state(1),
      O => x_coord_next(4)
    );
\x_coord[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \x_coord[5]_i_2_n_0\,
      I1 => x_coord(5),
      I2 => curr_state(1),
      O => x_coord_next(5)
    );
\x_coord[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => x_coord(3),
      I1 => x_coord(1),
      I2 => x_coord(0),
      I3 => x_coord(2),
      I4 => x_coord(4),
      O => \x_coord[5]_i_2_n_0\
    );
\x_coord[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \x_coord[9]_i_3_n_0\,
      I1 => x_coord(6),
      I2 => curr_state(1),
      O => x_coord_next(6)
    );
\x_coord[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B4"
    )
        port map (
      I0 => \x_coord[9]_i_3_n_0\,
      I1 => x_coord(6),
      I2 => x_coord(7),
      I3 => curr_state(1),
      O => x_coord_next(7)
    );
\x_coord[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DF20"
    )
        port map (
      I0 => x_coord(6),
      I1 => \x_coord[9]_i_3_n_0\,
      I2 => x_coord(7),
      I3 => x_coord(8),
      I4 => curr_state(1),
      O => x_coord_next(8)
    );
\x_coord[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => byte_toggle,
      I1 => curr_state(0),
      I2 => curr_state(1),
      O => \x_coord[9]_i_1_n_0\
    );
\x_coord[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFFF2000"
    )
        port map (
      I0 => x_coord(7),
      I1 => \x_coord[9]_i_3_n_0\,
      I2 => x_coord(6),
      I3 => x_coord(8),
      I4 => x_coord(9),
      I5 => curr_state(1),
      O => x_coord_next(9)
    );
\x_coord[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => x_coord(4),
      I1 => x_coord(2),
      I2 => x_coord(0),
      I3 => x_coord(1),
      I4 => x_coord(3),
      I5 => x_coord(5),
      O => \x_coord[9]_i_3_n_0\
    );
\x_coord_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \x_coord[9]_i_1_n_0\,
      CLR => \^slv_reg0_reg[2]\,
      D => \x_coord[0]_i_1_n_0\,
      Q => x_coord(0)
    );
\x_coord_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \x_coord[9]_i_1_n_0\,
      CLR => \^slv_reg0_reg[2]\,
      D => x_coord_next(1),
      Q => x_coord(1)
    );
\x_coord_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \x_coord[9]_i_1_n_0\,
      CLR => \^slv_reg0_reg[2]\,
      D => x_coord_next(2),
      Q => x_coord(2)
    );
\x_coord_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \x_coord[9]_i_1_n_0\,
      CLR => \^slv_reg0_reg[2]\,
      D => x_coord_next(3),
      Q => x_coord(3)
    );
\x_coord_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \x_coord[9]_i_1_n_0\,
      CLR => \^slv_reg0_reg[2]\,
      D => x_coord_next(4),
      Q => x_coord(4)
    );
\x_coord_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \x_coord[9]_i_1_n_0\,
      CLR => \^slv_reg0_reg[2]\,
      D => x_coord_next(5),
      Q => x_coord(5)
    );
\x_coord_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \x_coord[9]_i_1_n_0\,
      CLR => \^slv_reg0_reg[2]\,
      D => x_coord_next(6),
      Q => x_coord(6)
    );
\x_coord_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \x_coord[9]_i_1_n_0\,
      CLR => \^slv_reg0_reg[2]\,
      D => x_coord_next(7),
      Q => x_coord(7)
    );
\x_coord_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \x_coord[9]_i_1_n_0\,
      CLR => \^slv_reg0_reg[2]\,
      D => x_coord_next(8),
      Q => x_coord(8)
    );
\x_coord_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => \x_coord[9]_i_1_n_0\,
      CLR => \^slv_reg0_reg[2]\,
      D => x_coord_next(9),
      Q => x_coord(9)
    );
\y_coord[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_coord(0),
      I1 => curr_state(0),
      O => \y_coord[0]_i_1_n_0\
    );
\y_coord[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => y_coord(0),
      I1 => y_coord(1),
      I2 => curr_state(0),
      O => y_coord_next(1)
    );
\y_coord[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => y_coord(0),
      I1 => y_coord(1),
      I2 => y_coord(2),
      I3 => curr_state(0),
      O => y_coord_next(2)
    );
\y_coord[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => y_coord(1),
      I1 => y_coord(0),
      I2 => y_coord(2),
      I3 => y_coord(3),
      I4 => curr_state(0),
      O => y_coord_next(3)
    );
\y_coord[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => y_coord(2),
      I1 => y_coord(0),
      I2 => y_coord(1),
      I3 => y_coord(3),
      I4 => y_coord(4),
      I5 => curr_state(0),
      O => y_coord_next(4)
    );
\y_coord[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B4"
    )
        port map (
      I0 => \y_coord[7]_i_2_n_0\,
      I1 => y_coord(4),
      I2 => y_coord(5),
      I3 => curr_state(0),
      O => y_coord_next(5)
    );
\y_coord[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BF40"
    )
        port map (
      I0 => \y_coord[7]_i_2_n_0\,
      I1 => y_coord(5),
      I2 => y_coord(4),
      I3 => y_coord(6),
      I4 => curr_state(0),
      O => y_coord_next(6)
    );
\y_coord[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF7F0080"
    )
        port map (
      I0 => y_coord(6),
      I1 => y_coord(4),
      I2 => y_coord(5),
      I3 => \y_coord[7]_i_2_n_0\,
      I4 => y_coord(7),
      I5 => curr_state(0),
      O => y_coord_next(7)
    );
\y_coord[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => y_coord(2),
      I1 => y_coord(0),
      I2 => y_coord(1),
      I3 => y_coord(3),
      O => \y_coord[7]_i_2_n_0\
    );
\y_coord[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \y_coord[9]_i_2_n_0\,
      I1 => y_coord(8),
      I2 => curr_state(0),
      O => y_coord_next(8)
    );
\y_coord[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B4"
    )
        port map (
      I0 => \y_coord[9]_i_2_n_0\,
      I1 => y_coord(8),
      I2 => y_coord(9),
      I3 => curr_state(0),
      O => y_coord_next(9)
    );
\y_coord[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => y_coord(7),
      I1 => y_coord(5),
      I2 => y_coord(4),
      I3 => y_coord(6),
      I4 => \y_coord[7]_i_2_n_0\,
      O => \y_coord[9]_i_2_n_0\
    );
\y_coord_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => curr_state(1),
      CLR => \^slv_reg0_reg[2]\,
      D => \y_coord[0]_i_1_n_0\,
      Q => y_coord(0)
    );
\y_coord_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => curr_state(1),
      CLR => \^slv_reg0_reg[2]\,
      D => y_coord_next(1),
      Q => y_coord(1)
    );
\y_coord_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => curr_state(1),
      CLR => \^slv_reg0_reg[2]\,
      D => y_coord_next(2),
      Q => y_coord(2)
    );
\y_coord_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => curr_state(1),
      CLR => \^slv_reg0_reg[2]\,
      D => y_coord_next(3),
      Q => y_coord(3)
    );
\y_coord_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => curr_state(1),
      CLR => \^slv_reg0_reg[2]\,
      D => y_coord_next(4),
      Q => y_coord(4)
    );
\y_coord_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => curr_state(1),
      CLR => \^slv_reg0_reg[2]\,
      D => y_coord_next(5),
      Q => y_coord(5)
    );
\y_coord_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => curr_state(1),
      CLR => \^slv_reg0_reg[2]\,
      D => y_coord_next(6),
      Q => y_coord(6)
    );
\y_coord_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => curr_state(1),
      CLR => \^slv_reg0_reg[2]\,
      D => y_coord_next(7),
      Q => y_coord(7)
    );
\y_coord_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => curr_state(1),
      CLR => \^slv_reg0_reg[2]\,
      D => y_coord_next(8),
      Q => y_coord(8)
    );
\y_coord_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => cam_pclk,
      CE => curr_state(1),
      CLR => \^slv_reg0_reg[2]\,
      D => y_coord_next(9),
      Q => y_coord(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_camera_controller_0_2_cam_init is
  port (
    cam_scl : out STD_LOGIC;
    cam_sda : out STD_LOGIC;
    \slv_reg0_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    auto_init_start_reg : out STD_LOGIC;
    \FSM_onehot_curr_state_reg[0]_0\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    auto_init_start_reg_0 : in STD_LOGIC;
    auto_init_start_reg_1 : in STD_LOGIC;
    auto_init_start_reg_2 : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    frame_count_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    boot_init_done : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_camera_controller_0_2_cam_init : entity is "cam_init";
end mb_usb_camera_controller_0_2_cam_init;

architecture STRUCTURE of mb_usb_camera_controller_0_2_cam_init is
  signal \FSM_onehot_curr_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_curr_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \^cam_scl\ : STD_LOGIC;
  signal camera_rom_n_0 : STD_LOGIC;
  signal camera_rom_n_1 : STD_LOGIC;
  signal curr_state : STD_LOGIC;
  signal hi_z_i_1_n_0 : STD_LOGIC;
  signal hi_z_reg_n_0 : STD_LOGIC;
  signal init_done : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rom_addr_counter : STD_LOGIC;
  signal \rom_addr_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr_counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \rom_addr_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \rom_addr_counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \rom_addr_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \rom_addr_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \rom_addr_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \rom_addr_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \rom_addr_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \rom_addr_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \rom_addr_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \rom_addr_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \scl_div_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \scl_div_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal scl_div_cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal scl_i_2_n_0 : STD_LOGIC;
  signal scl_i_3_n_0 : STD_LOGIC;
  signal scl_i_4_n_0 : STD_LOGIC;
  signal scl_i_5_n_0 : STD_LOGIC;
  signal scl_i_6_n_0 : STD_LOGIC;
  signal sda_drive_low_i_3_n_0 : STD_LOGIC;
  signal sda_drive_low_i_4_n_0 : STD_LOGIC;
  signal sda_drive_low_i_6_n_0 : STD_LOGIC;
  signal sda_drive_low_reg_n_0 : STD_LOGIC;
  signal write_bit_counter : STD_LOGIC;
  signal \write_bit_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_bit_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_bit_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \write_bit_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \write_bit_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \write_bit_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \write_bit_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal write_byte_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \write_byte_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_byte_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal write_flag_i_1_n_0 : STD_LOGIC;
  signal \write_phase_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_phase_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \write_phase_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \write_phase_counter_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_curr_state[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_curr_state[2]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_curr_state[3]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_curr_state[4]_i_2\ : label is "soft_lutpair11";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[0]\ : label is "s_ack:01000,s_write:00100,s_stop:10000,s_start:00010,s_idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[1]\ : label is "s_ack:01000,s_write:00100,s_stop:10000,s_start:00010,s_idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[2]\ : label is "s_ack:01000,s_write:00100,s_stop:10000,s_start:00010,s_idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[3]\ : label is "s_ack:01000,s_write:00100,s_stop:10000,s_start:00010,s_idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_state_reg[4]\ : label is "s_ack:01000,s_write:00100,s_stop:10000,s_start:00010,s_idle:00001";
  attribute SOFT_HLUTNM of hi_z_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rom_addr_counter[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rom_addr_counter[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rom_addr_counter[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rom_addr_counter[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rom_addr_counter[6]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rom_addr_counter[7]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \scl_div_cnt[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \scl_div_cnt[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \scl_div_cnt[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \scl_div_cnt[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \scl_div_cnt[6]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of scl_i_4 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of scl_i_5 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of sda_drive_low_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of sda_drive_low_i_4 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \write_bit_counter[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \write_bit_counter[2]_i_2\ : label is "soft_lutpair13";
begin
  cam_scl <= \^cam_scl\;
\FSM_onehot_curr_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8888"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_curr_state[1]_i_2_n_0\,
      I2 => auto_init_start_reg_2,
      I3 => Q(1),
      I4 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      O => \FSM_onehot_curr_state[0]_i_1_n_0\
    );
\FSM_onehot_curr_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF44444"
    )
        port map (
      I0 => \FSM_onehot_curr_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I2 => auto_init_start_reg_2,
      I3 => Q(1),
      I4 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      O => \FSM_onehot_curr_state[1]_i_1_n_0\
    );
\FSM_onehot_curr_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \rom_addr_counter_reg_n_0_[2]\,
      I1 => \rom_addr_counter_reg_n_0_[4]\,
      I2 => \rom_addr_counter_reg_n_0_[3]\,
      I3 => \rom_addr_counter_reg_n_0_[0]\,
      I4 => \rom_addr_counter_reg_n_0_[1]\,
      I5 => camera_rom_n_0,
      O => \FSM_onehot_curr_state[1]_i_2_n_0\
    );
\FSM_onehot_curr_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4444F4FF"
    )
        port map (
      I0 => \FSM_onehot_curr_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I2 => write_byte_counter(0),
      I3 => write_byte_counter(1),
      I4 => \FSM_onehot_curr_state[2]_i_3_n_0\,
      I5 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      O => \FSM_onehot_curr_state[2]_i_1_n_0\
    );
\FSM_onehot_curr_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \write_phase_counter_reg_n_0_[1]\,
      I1 => \write_phase_counter_reg_n_0_[0]\,
      I2 => \write_bit_counter_reg_n_0_[0]\,
      I3 => \write_bit_counter_reg_n_0_[1]\,
      I4 => \write_bit_counter_reg_n_0_[2]\,
      O => \FSM_onehot_curr_state[2]_i_2_n_0\
    );
\FSM_onehot_curr_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I1 => \write_phase_counter_reg_n_0_[1]\,
      I2 => \write_phase_counter_reg_n_0_[0]\,
      O => \FSM_onehot_curr_state[2]_i_3_n_0\
    );
\FSM_onehot_curr_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222E22222222"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_curr_state[3]_i_2_n_0\,
      I2 => \write_bit_counter_reg_n_0_[0]\,
      I3 => \write_bit_counter_reg_n_0_[1]\,
      I4 => \write_bit_counter_reg_n_0_[2]\,
      I5 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      O => \FSM_onehot_curr_state[3]_i_1_n_0\
    );
\FSM_onehot_curr_state[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_phase_counter_reg_n_0_[0]\,
      I1 => \write_phase_counter_reg_n_0_[1]\,
      O => \FSM_onehot_curr_state[3]_i_2_n_0\
    );
\FSM_onehot_curr_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => scl_i_5_n_0,
      I1 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I5 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      O => curr_state
    );
\FSM_onehot_curr_state[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => write_byte_counter(0),
      I1 => write_byte_counter(1),
      I2 => \write_phase_counter_reg_n_0_[0]\,
      I3 => \write_phase_counter_reg_n_0_[1]\,
      I4 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      O => \FSM_onehot_curr_state[4]_i_2_n_0\
    );
\FSM_onehot_curr_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => curr_state,
      D => \FSM_onehot_curr_state[0]_i_1_n_0\,
      Q => \FSM_onehot_curr_state_reg_n_0_[0]\,
      S => \FSM_onehot_curr_state_reg[0]_0\
    );
\FSM_onehot_curr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => curr_state,
      D => \FSM_onehot_curr_state[1]_i_1_n_0\,
      Q => \FSM_onehot_curr_state_reg_n_0_[1]\,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\FSM_onehot_curr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => curr_state,
      D => \FSM_onehot_curr_state[2]_i_1_n_0\,
      Q => \FSM_onehot_curr_state_reg_n_0_[2]\,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\FSM_onehot_curr_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => curr_state,
      D => \FSM_onehot_curr_state[3]_i_1_n_0\,
      Q => \FSM_onehot_curr_state_reg_n_0_[3]\,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\FSM_onehot_curr_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => curr_state,
      D => \FSM_onehot_curr_state[4]_i_2_n_0\,
      Q => \FSM_onehot_curr_state_reg_n_0_[4]\,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
auto_init_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040044440400"
    )
        port map (
      I0 => Q(2),
      I1 => s00_axi_aresetn,
      I2 => auto_init_start_reg_0,
      I3 => auto_init_start_reg_1,
      I4 => auto_init_start_reg_2,
      I5 => init_done,
      O => \slv_reg0_reg[2]\
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33003B08"
    )
        port map (
      I0 => \axi_rdata_reg[0]\(0),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[0]_i_2_n_0\,
      I4 => sel0(0),
      O => D(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => frame_count_reg(0),
      I1 => \axi_rdata_reg[0]_0\(0),
      I2 => sel0(1),
      I3 => init_done,
      I4 => sel0(0),
      I5 => Q(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
boot_init_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => auto_init_start_reg_2,
      I1 => init_done,
      I2 => boot_init_done,
      O => auto_init_start_reg
    );
cam_sda_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sda_drive_low_reg_n_0,
      I1 => hi_z_reg_n_0,
      O => cam_sda
    );
camera_rom: entity work.mb_usb_camera_controller_0_2_OV7670_config_rom
     port map (
      \FSM_onehot_curr_state_reg[1]\ => camera_rom_n_1,
      Q(7) => \rom_addr_counter_reg_n_0_[7]\,
      Q(6) => \rom_addr_counter_reg_n_0_[6]\,
      Q(5) => \rom_addr_counter_reg_n_0_[5]\,
      Q(4) => \rom_addr_counter_reg_n_0_[4]\,
      Q(3) => \rom_addr_counter_reg_n_0_[3]\,
      Q(2) => \rom_addr_counter_reg_n_0_[2]\,
      Q(1) => \rom_addr_counter_reg_n_0_[1]\,
      Q(0) => \rom_addr_counter_reg_n_0_[0]\,
      \rom_addr_counter_reg[7]\ => camera_rom_n_0,
      s00_axi_aclk => s00_axi_aclk,
      sda_drive_low_i_2_0 => \write_bit_counter_reg_n_0_[2]\,
      sda_drive_low_reg(1) => \FSM_onehot_curr_state_reg_n_0_[2]\,
      sda_drive_low_reg(0) => \FSM_onehot_curr_state_reg_n_0_[1]\,
      sda_drive_low_reg_0 => sda_drive_low_i_6_n_0,
      sda_drive_low_reg_1 => sda_drive_low_i_3_n_0,
      sda_drive_low_reg_2 => scl_i_5_n_0,
      sda_drive_low_reg_3 => sda_drive_low_i_4_n_0,
      sda_drive_low_reg_4 => sda_drive_low_reg_n_0,
      sda_drive_low_reg_i_7_0 => \write_bit_counter_reg_n_0_[1]\,
      sda_drive_low_reg_i_7_1 => \write_bit_counter_reg_n_0_[0]\,
      write_byte_counter(1 downto 0) => write_byte_counter(1 downto 0)
    );
hi_z_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I1 => rom_addr_counter,
      I2 => sda_drive_low_i_4_n_0,
      I3 => hi_z_reg_n_0,
      O => hi_z_i_1_n_0
    );
hi_z_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => hi_z_i_1_n_0,
      Q => hi_z_reg_n_0,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\rom_addr_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I1 => \rom_addr_counter_reg_n_0_[0]\,
      O => \rom_addr_counter[0]_i_1_n_0\
    );
\rom_addr_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \rom_addr_counter_reg_n_0_[1]\,
      I1 => \rom_addr_counter_reg_n_0_[0]\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      O => \rom_addr_counter[1]_i_1_n_0\
    );
\rom_addr_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I1 => \rom_addr_counter_reg_n_0_[0]\,
      I2 => \rom_addr_counter_reg_n_0_[1]\,
      I3 => \rom_addr_counter_reg_n_0_[2]\,
      O => \rom_addr_counter[2]_i_1_n_0\
    );
\rom_addr_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I1 => \rom_addr_counter_reg_n_0_[1]\,
      I2 => \rom_addr_counter_reg_n_0_[0]\,
      I3 => \rom_addr_counter_reg_n_0_[2]\,
      I4 => \rom_addr_counter_reg_n_0_[3]\,
      O => \rom_addr_counter[3]_i_1_n_0\
    );
\rom_addr_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I1 => \rom_addr_counter_reg_n_0_[2]\,
      I2 => \rom_addr_counter_reg_n_0_[0]\,
      I3 => \rom_addr_counter_reg_n_0_[1]\,
      I4 => \rom_addr_counter_reg_n_0_[3]\,
      I5 => \rom_addr_counter_reg_n_0_[4]\,
      O => \rom_addr_counter[4]_i_1_n_0\
    );
\rom_addr_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA2A0080"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I1 => \rom_addr_counter_reg_n_0_[4]\,
      I2 => \rom_addr_counter_reg_n_0_[3]\,
      I3 => \rom_addr_counter[6]_i_2_n_0\,
      I4 => \rom_addr_counter_reg_n_0_[5]\,
      O => \rom_addr_counter[5]_i_1_n_0\
    );
\rom_addr_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF400000000000"
    )
        port map (
      I0 => \rom_addr_counter[6]_i_2_n_0\,
      I1 => \rom_addr_counter_reg_n_0_[3]\,
      I2 => \rom_addr_counter_reg_n_0_[4]\,
      I3 => \rom_addr_counter_reg_n_0_[5]\,
      I4 => \rom_addr_counter_reg_n_0_[6]\,
      I5 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      O => \rom_addr_counter[6]_i_1_n_0\
    );
\rom_addr_counter[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \rom_addr_counter_reg_n_0_[1]\,
      I1 => \rom_addr_counter_reg_n_0_[0]\,
      I2 => \rom_addr_counter_reg_n_0_[2]\,
      O => \rom_addr_counter[6]_i_2_n_0\
    );
\rom_addr_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => scl_i_5_n_0,
      I1 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      O => rom_addr_counter
    );
\rom_addr_counter[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I1 => \rom_addr_counter_reg_n_0_[6]\,
      I2 => \rom_addr_counter[7]_i_3_n_0\,
      I3 => \rom_addr_counter_reg_n_0_[7]\,
      O => \rom_addr_counter[7]_i_2_n_0\
    );
\rom_addr_counter[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \rom_addr_counter_reg_n_0_[1]\,
      I1 => \rom_addr_counter_reg_n_0_[0]\,
      I2 => \rom_addr_counter_reg_n_0_[2]\,
      I3 => \rom_addr_counter_reg_n_0_[3]\,
      I4 => \rom_addr_counter_reg_n_0_[4]\,
      I5 => \rom_addr_counter_reg_n_0_[5]\,
      O => \rom_addr_counter[7]_i_3_n_0\
    );
\rom_addr_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rom_addr_counter,
      D => \rom_addr_counter[0]_i_1_n_0\,
      Q => \rom_addr_counter_reg_n_0_[0]\,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\rom_addr_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rom_addr_counter,
      D => \rom_addr_counter[1]_i_1_n_0\,
      Q => \rom_addr_counter_reg_n_0_[1]\,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\rom_addr_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rom_addr_counter,
      D => \rom_addr_counter[2]_i_1_n_0\,
      Q => \rom_addr_counter_reg_n_0_[2]\,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\rom_addr_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rom_addr_counter,
      D => \rom_addr_counter[3]_i_1_n_0\,
      Q => \rom_addr_counter_reg_n_0_[3]\,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\rom_addr_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rom_addr_counter,
      D => \rom_addr_counter[4]_i_1_n_0\,
      Q => \rom_addr_counter_reg_n_0_[4]\,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\rom_addr_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rom_addr_counter,
      D => \rom_addr_counter[5]_i_1_n_0\,
      Q => \rom_addr_counter_reg_n_0_[5]\,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\rom_addr_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rom_addr_counter,
      D => \rom_addr_counter[6]_i_1_n_0\,
      Q => \rom_addr_counter_reg_n_0_[6]\,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\rom_addr_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rom_addr_counter,
      D => \rom_addr_counter[7]_i_2_n_0\,
      Q => \rom_addr_counter_reg_n_0_[7]\,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\scl_div_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => scl_div_cnt_reg(0),
      O => \p_0_in__0\(0)
    );
\scl_div_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => scl_div_cnt_reg(0),
      I1 => scl_div_cnt_reg(1),
      O => \p_0_in__0\(1)
    );
\scl_div_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => scl_div_cnt_reg(2),
      I1 => scl_div_cnt_reg(1),
      I2 => scl_div_cnt_reg(0),
      O => \p_0_in__0\(2)
    );
\scl_div_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => scl_div_cnt_reg(3),
      I1 => scl_div_cnt_reg(0),
      I2 => scl_div_cnt_reg(1),
      I3 => scl_div_cnt_reg(2),
      O => \p_0_in__0\(3)
    );
\scl_div_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => scl_div_cnt_reg(4),
      I1 => scl_div_cnt_reg(2),
      I2 => scl_div_cnt_reg(1),
      I3 => scl_div_cnt_reg(0),
      I4 => scl_div_cnt_reg(3),
      O => \p_0_in__0\(4)
    );
\scl_div_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => scl_div_cnt_reg(5),
      I1 => scl_div_cnt_reg(3),
      I2 => scl_div_cnt_reg(0),
      I3 => scl_div_cnt_reg(1),
      I4 => scl_div_cnt_reg(2),
      I5 => scl_div_cnt_reg(4),
      O => \p_0_in__0\(5)
    );
\scl_div_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => scl_i_5_n_0,
      I1 => Q(2),
      I2 => s00_axi_aresetn,
      O => \scl_div_cnt[6]_i_1_n_0\
    );
\scl_div_cnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => scl_div_cnt_reg(6),
      I1 => \scl_div_cnt[6]_i_3_n_0\,
      I2 => scl_div_cnt_reg(5),
      O => \p_0_in__0\(6)
    );
\scl_div_cnt[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => scl_div_cnt_reg(4),
      I1 => scl_div_cnt_reg(2),
      I2 => scl_div_cnt_reg(1),
      I3 => scl_div_cnt_reg(0),
      I4 => scl_div_cnt_reg(3),
      O => \scl_div_cnt[6]_i_3_n_0\
    );
\scl_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => scl_div_cnt_reg(0),
      R => \scl_div_cnt[6]_i_1_n_0\
    );
\scl_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => scl_div_cnt_reg(1),
      R => \scl_div_cnt[6]_i_1_n_0\
    );
\scl_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => scl_div_cnt_reg(2),
      R => \scl_div_cnt[6]_i_1_n_0\
    );
\scl_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => scl_div_cnt_reg(3),
      R => \scl_div_cnt[6]_i_1_n_0\
    );
\scl_div_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => scl_div_cnt_reg(4),
      R => \scl_div_cnt[6]_i_1_n_0\
    );
\scl_div_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => scl_div_cnt_reg(5),
      R => \scl_div_cnt[6]_i_1_n_0\
    );
\scl_div_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => scl_div_cnt_reg(6),
      R => \scl_div_cnt[6]_i_1_n_0\
    );
scl_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF333B0000"
    )
        port map (
      I0 => \write_phase_counter_reg_n_0_[1]\,
      I1 => scl_i_3_n_0,
      I2 => \write_phase_counter_reg_n_0_[0]\,
      I3 => scl_i_4_n_0,
      I4 => scl_i_5_n_0,
      I5 => \^cam_scl\,
      O => scl_i_2_n_0
    );
scl_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[1]\,
      O => scl_i_3_n_0
    );
scl_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      O => scl_i_4_n_0
    );
scl_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => scl_div_cnt_reg(3),
      I1 => scl_div_cnt_reg(5),
      I2 => scl_div_cnt_reg(0),
      I3 => scl_i_6_n_0,
      O => scl_i_5_n_0
    );
scl_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => scl_div_cnt_reg(1),
      I1 => scl_div_cnt_reg(2),
      I2 => scl_div_cnt_reg(6),
      I3 => scl_div_cnt_reg(4),
      O => scl_i_6_n_0
    );
scl_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => scl_i_2_n_0,
      Q => \^cam_scl\,
      S => \FSM_onehot_curr_state_reg[0]_0\
    );
sda_drive_low_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      O => sda_drive_low_i_3_n_0
    );
sda_drive_low_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202000"
    )
        port map (
      I0 => scl_i_5_n_0,
      I1 => \write_phase_counter_reg_n_0_[1]\,
      I2 => \write_phase_counter_reg_n_0_[0]\,
      I3 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      O => sda_drive_low_i_4_n_0
    );
sda_drive_low_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99099099"
    )
        port map (
      I0 => write_byte_counter(0),
      I1 => write_byte_counter(1),
      I2 => \write_bit_counter_reg_n_0_[1]\,
      I3 => \write_bit_counter_reg_n_0_[0]\,
      I4 => \write_bit_counter_reg_n_0_[2]\,
      O => sda_drive_low_i_6_n_0
    );
sda_drive_low_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => camera_rom_n_1,
      Q => sda_drive_low_reg_n_0,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\write_bit_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEFFFE00"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I3 => write_bit_counter,
      I4 => \write_bit_counter_reg_n_0_[0]\,
      O => \write_bit_counter[0]_i_1_n_0\
    );
\write_bit_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFFFFEFEE0000"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I2 => \write_bit_counter_reg_n_0_[0]\,
      I3 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I4 => write_bit_counter,
      I5 => \write_bit_counter_reg_n_0_[1]\,
      O => \write_bit_counter[1]_i_1_n_0\
    );
\write_bit_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0FFFFFF100000"
    )
        port map (
      I0 => \write_bit_counter_reg_n_0_[1]\,
      I1 => \write_bit_counter_reg_n_0_[0]\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I3 => \write_bit_counter[2]_i_2_n_0\,
      I4 => write_bit_counter,
      I5 => \write_bit_counter_reg_n_0_[2]\,
      O => \write_bit_counter[2]_i_1_n_0\
    );
\write_bit_counter[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      O => \write_bit_counter[2]_i_2_n_0\
    );
\write_bit_counter[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8888888888888"
    )
        port map (
      I0 => scl_i_5_n_0,
      I1 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I4 => \write_phase_counter_reg_n_0_[1]\,
      I5 => \write_phase_counter_reg_n_0_[0]\,
      O => write_bit_counter
    );
\write_bit_counter_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \write_bit_counter[0]_i_1_n_0\,
      Q => \write_bit_counter_reg_n_0_[0]\,
      S => \FSM_onehot_curr_state_reg[0]_0\
    );
\write_bit_counter_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \write_bit_counter[1]_i_1_n_0\,
      Q => \write_bit_counter_reg_n_0_[1]\,
      S => \FSM_onehot_curr_state_reg[0]_0\
    );
\write_bit_counter_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \write_bit_counter[2]_i_1_n_0\,
      Q => \write_bit_counter_reg_n_0_[2]\,
      S => \FSM_onehot_curr_state_reg[0]_0\
    );
\write_byte_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15555555C8888888"
    )
        port map (
      I0 => rom_addr_counter,
      I1 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I2 => \write_phase_counter_reg_n_0_[1]\,
      I3 => \write_phase_counter_reg_n_0_[0]\,
      I4 => scl_i_5_n_0,
      I5 => write_byte_counter(0),
      O => \write_byte_counter[0]_i_1_n_0\
    );
\write_byte_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"53737373A0808080"
    )
        port map (
      I0 => write_byte_counter(0),
      I1 => rom_addr_counter,
      I2 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_curr_state[3]_i_2_n_0\,
      I4 => scl_i_5_n_0,
      I5 => write_byte_counter(1),
      O => \write_byte_counter[1]_i_1_n_0\
    );
\write_byte_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \write_byte_counter[0]_i_1_n_0\,
      Q => write_byte_counter(0),
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\write_byte_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \write_byte_counter[1]_i_1_n_0\,
      Q => write_byte_counter(1),
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
write_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08080808080808"
    )
        port map (
      I0 => init_done,
      I1 => s00_axi_aresetn,
      I2 => Q(2),
      I3 => scl_i_5_n_0,
      I4 => \FSM_onehot_curr_state[1]_i_2_n_0\,
      I5 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      O => write_flag_i_1_n_0
    );
write_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => write_flag_i_1_n_0,
      Q => init_done,
      R => '0'
    );
\write_phase_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555557A8A8A8A8"
    )
        port map (
      I0 => scl_i_5_n_0,
      I1 => \FSM_onehot_curr_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_curr_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I5 => \write_phase_counter_reg_n_0_[0]\,
      O => \write_phase_counter[0]_i_1_n_0\
    );
\write_phase_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"373737F708080808"
    )
        port map (
      I0 => \write_phase_counter_reg_n_0_[0]\,
      I1 => scl_i_5_n_0,
      I2 => scl_i_4_n_0,
      I3 => \FSM_onehot_curr_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_curr_state_reg_n_0_[0]\,
      I5 => \write_phase_counter_reg_n_0_[1]\,
      O => \write_phase_counter[1]_i_1_n_0\
    );
\write_phase_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \write_phase_counter[0]_i_1_n_0\,
      Q => \write_phase_counter_reg_n_0_[0]\,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
\write_phase_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \write_phase_counter[1]_i_1_n_0\,
      Q => \write_phase_counter_reg_n_0_[1]\,
      R => \FSM_onehot_curr_state_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_camera_controller_0_2_camera_controller_v1_0_S00_AXI is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_we : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    hw_reset0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    cam_scl : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    cam_sda : out STD_LOGIC;
    bram_wrdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cam_pclk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \pixel_addr_sync1_reg[0]_0\ : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    cam_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    cam_vsync : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_camera_controller_0_2_camera_controller_v1_0_S00_AXI : entity is "camera_controller_v1_0_S00_AXI";
end mb_usb_camera_controller_0_2_camera_controller_v1_0_S00_AXI;

architecture STRUCTURE of mb_usb_camera_controller_0_2_camera_controller_v1_0_S00_AXI is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_capture_en : STD_LOGIC;
  signal auto_capture_en_i_1_n_0 : STD_LOGIC;
  signal auto_capture_en_i_2_n_0 : STD_LOGIC;
  signal auto_capture_en_i_3_n_0 : STD_LOGIC;
  signal auto_capture_en_i_4_n_0 : STD_LOGIC;
  signal auto_capture_en_i_5_n_0 : STD_LOGIC;
  signal auto_init_start_i_2_n_0 : STD_LOGIC;
  signal auto_init_start_i_3_n_0 : STD_LOGIC;
  signal auto_init_start_i_4_n_0 : STD_LOGIC;
  signal auto_init_start_i_5_n_0 : STD_LOGIC;
  signal auto_init_start_i_6_n_0 : STD_LOGIC;
  signal auto_init_start_i_7_n_0 : STD_LOGIC;
  signal auto_init_start_i_8_n_0 : STD_LOGIC;
  signal auto_init_start_reg_n_0 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal boot_init_done : STD_LOGIC;
  signal \boot_timer[0]_i_1_n_0\ : STD_LOGIC;
  signal \boot_timer[0]_i_3_n_0\ : STD_LOGIC;
  signal \boot_timer[0]_i_4_n_0\ : STD_LOGIC;
  signal \boot_timer[0]_i_5_n_0\ : STD_LOGIC;
  signal \boot_timer[0]_i_6_n_0\ : STD_LOGIC;
  signal \boot_timer[0]_i_7_n_0\ : STD_LOGIC;
  signal boot_timer_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \boot_timer_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \boot_timer_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \boot_timer_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \boot_timer_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \boot_timer_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \boot_timer_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \boot_timer_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \boot_timer_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \boot_timer_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \boot_timer_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \boot_timer_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \boot_timer_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \boot_timer_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \boot_timer_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \boot_timer_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \boot_timer_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \boot_timer_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \boot_timer_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \boot_timer_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \boot_timer_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \boot_timer_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \boot_timer_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \boot_timer_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \boot_timer_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \boot_timer_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \boot_timer_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \boot_timer_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \boot_timer_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \boot_timer_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \boot_timer_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \boot_timer_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \boot_timer_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \boot_timer_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \boot_timer_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \boot_timer_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \boot_timer_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \boot_timer_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \boot_timer_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \boot_timer_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \boot_timer_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \boot_timer_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \boot_timer_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \boot_timer_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \boot_timer_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \boot_timer_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \boot_timer_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \boot_timer_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \boot_timer_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \boot_timer_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \boot_timer_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \boot_timer_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \boot_timer_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \boot_timer_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \boot_timer_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \boot_timer_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal capture_en_sync1 : STD_LOGIC;
  signal capture_en_sync1_i_1_n_0 : STD_LOGIC;
  signal capture_en_sync2 : STD_LOGIC;
  signal capture_en_sync2_i_1_n_0 : STD_LOGIC;
  signal frame_count0 : STD_LOGIC;
  signal \frame_count[0]_i_3_n_0\ : STD_LOGIC;
  signal frame_count_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \frame_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \frame_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \frame_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \frame_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \frame_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \frame_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \frame_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \frame_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \frame_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \frame_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \frame_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \frame_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \frame_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \frame_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \frame_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \frame_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \frame_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \frame_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \frame_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \frame_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \frame_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \frame_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \frame_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \frame_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \frame_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \frame_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \frame_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \frame_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \frame_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \frame_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal frame_done : STD_LOGIC;
  signal frame_done_0 : STD_LOGIC;
  signal frame_done_prev : STD_LOGIC;
  signal frame_done_sync1 : STD_LOGIC;
  signal \^hw_reset0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal pixel_addr_sync1 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal pixel_addr_sync2 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal soft_reset : STD_LOGIC;
  signal u_cam_init_n_2 : STD_LOGIC;
  signal u_cam_init_n_4 : STD_LOGIC;
  signal \NLW_boot_timer_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_frame_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of auto_capture_en_i_5 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \axi_awaddr[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \boot_timer[0]_i_7\ : label is "soft_lutpair40";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \boot_timer_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \boot_timer_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \boot_timer_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \boot_timer_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \boot_timer_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \boot_timer_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \boot_timer_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of capture_en_sync1_i_1 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of capture_en_sync2_i_1 : label is "soft_lutpair39";
  attribute ADDER_THRESHOLD of \frame_count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \frame_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \frame_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \frame_count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair42";
begin
  SS(0) <= \^ss\(0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  bram_addr(16 downto 0) <= \^bram_addr\(16 downto 0);
  hw_reset0 <= \^hw_reset0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
auto_capture_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBAA0000"
    )
        port map (
      I0 => boot_timer_reg(27),
      I1 => auto_capture_en_i_2_n_0,
      I2 => boot_timer_reg(25),
      I3 => boot_timer_reg(26),
      I4 => boot_init_done,
      I5 => auto_capture_en,
      O => auto_capture_en_i_1_n_0
    );
auto_capture_en_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBABABAAAB"
    )
        port map (
      I0 => auto_capture_en_i_3_n_0,
      I1 => auto_capture_en_i_4_n_0,
      I2 => \boot_timer[0]_i_6_n_0\,
      I3 => boot_timer_reg(8),
      I4 => auto_init_start_i_4_n_0,
      I5 => auto_capture_en_i_5_n_0,
      O => auto_capture_en_i_2_n_0
    );
auto_capture_en_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBFFF"
    )
        port map (
      I0 => \boot_timer[0]_i_3_n_0\,
      I1 => boot_timer_reg(24),
      I2 => boot_timer_reg(20),
      I3 => boot_timer_reg(18),
      I4 => boot_timer_reg(19),
      O => auto_capture_en_i_3_n_0
    );
auto_capture_en_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => boot_timer_reg(17),
      I1 => boot_timer_reg(19),
      O => auto_capture_en_i_4_n_0
    );
auto_capture_en_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => boot_timer_reg(14),
      I1 => boot_timer_reg(15),
      I2 => boot_timer_reg(13),
      I3 => boot_timer_reg(16),
      O => auto_capture_en_i_5_n_0
    );
auto_capture_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => auto_capture_en_i_1_n_0,
      Q => auto_capture_en,
      R => \^ss\(0)
    );
auto_init_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => auto_init_start_i_4_n_0,
      I1 => auto_init_start_i_5_n_0,
      I2 => boot_timer_reg(9),
      I3 => boot_timer_reg(12),
      I4 => boot_timer_reg(19),
      I5 => boot_timer_reg(18),
      O => auto_init_start_i_2_n_0
    );
auto_init_start_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => boot_timer_reg(17),
      I1 => boot_timer_reg(27),
      I2 => boot_timer_reg(22),
      I3 => boot_timer_reg(26),
      I4 => auto_init_start_i_6_n_0,
      I5 => auto_init_start_i_7_n_0,
      O => auto_init_start_i_3_n_0
    );
auto_init_start_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => boot_timer_reg(5),
      I1 => boot_timer_reg(3),
      I2 => boot_timer_reg(2),
      I3 => boot_timer_reg(4),
      I4 => auto_init_start_i_8_n_0,
      O => auto_init_start_i_4_n_0
    );
auto_init_start_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => boot_timer_reg(13),
      I1 => boot_timer_reg(16),
      I2 => boot_timer_reg(20),
      I3 => boot_timer_reg(24),
      O => auto_init_start_i_5_n_0
    );
auto_init_start_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => boot_timer_reg(14),
      I1 => boot_timer_reg(15),
      I2 => boot_timer_reg(21),
      I3 => boot_timer_reg(11),
      O => auto_init_start_i_6_n_0
    );
auto_init_start_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => boot_timer_reg(8),
      I1 => boot_timer_reg(23),
      I2 => boot_timer_reg(10),
      I3 => boot_timer_reg(25),
      O => auto_init_start_i_7_n_0
    );
auto_init_start_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => boot_timer_reg(6),
      I1 => boot_timer_reg(0),
      I2 => boot_timer_reg(7),
      I3 => boot_timer_reg(1),
      O => auto_init_start_i_8_n_0
    );
auto_init_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => u_cam_init_n_2,
      Q => auto_init_start_reg_n_0,
      R => '0'
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => \^hw_reset0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => \^hw_reset0\
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => \^hw_reset0\
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => \^hw_reset0\
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => axi_awaddr(4),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => \^hw_reset0\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => \^hw_reset0\
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => axi_awaddr(4),
      R => \^hw_reset0\
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^hw_reset0\
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => \^hw_reset0\
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^axi_wready_reg_0\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \^hw_reset0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => pixel_addr_sync2(10),
      I4 => \axi_rdata[10]_i_2_n_0\,
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[10]\,
      I2 => sel0(1),
      I3 => slv_reg2(10),
      I4 => frame_count_reg(10),
      I5 => sel0(2),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => pixel_addr_sync2(11),
      I4 => \axi_rdata[11]_i_2_n_0\,
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[11]\,
      I2 => sel0(1),
      I3 => slv_reg2(11),
      I4 => frame_count_reg(11),
      I5 => sel0(2),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => pixel_addr_sync2(12),
      I4 => \axi_rdata[12]_i_2_n_0\,
      O => reg_data_out(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[12]\,
      I2 => sel0(1),
      I3 => slv_reg2(12),
      I4 => frame_count_reg(12),
      I5 => sel0(2),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => pixel_addr_sync2(13),
      I4 => \axi_rdata[13]_i_2_n_0\,
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[13]\,
      I2 => sel0(1),
      I3 => slv_reg2(13),
      I4 => frame_count_reg(13),
      I5 => sel0(2),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => pixel_addr_sync2(14),
      I4 => \axi_rdata[14]_i_2_n_0\,
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[14]\,
      I2 => sel0(1),
      I3 => slv_reg2(14),
      I4 => frame_count_reg(14),
      I5 => sel0(2),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => pixel_addr_sync2(15),
      I4 => \axi_rdata[15]_i_2_n_0\,
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[15]\,
      I2 => sel0(1),
      I3 => slv_reg2(15),
      I4 => frame_count_reg(15),
      I5 => sel0(2),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030B0800000B08"
    )
        port map (
      I0 => pixel_addr_sync2(16),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \slv_reg0_reg_n_0_[16]\,
      I4 => sel0(1),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[17]\,
      I1 => sel0(1),
      I2 => slv_reg2(17),
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[18]\,
      I1 => sel0(1),
      I2 => slv_reg2(18),
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[19]\,
      I1 => sel0(1),
      I2 => slv_reg2(19),
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33003B08"
    )
        port map (
      I0 => pixel_addr_sync2(1),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => \axi_rdata[1]_i_2_n_0\,
      I4 => sel0(0),
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => frame_count_reg(1),
      I1 => slv_reg2(1),
      I2 => sel0(1),
      I3 => frame_done_0,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[1]\,
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[20]\,
      I1 => sel0(1),
      I2 => slv_reg2(20),
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[21]\,
      I1 => sel0(1),
      I2 => slv_reg2(21),
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[22]\,
      I1 => sel0(1),
      I2 => slv_reg2(22),
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[23]\,
      I1 => sel0(1),
      I2 => slv_reg2(23),
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[24]\,
      I1 => sel0(1),
      I2 => slv_reg2(24),
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[25]\,
      I1 => sel0(1),
      I2 => slv_reg2(25),
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[26]\,
      I1 => sel0(1),
      I2 => slv_reg2(26),
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => slv_reg2(27),
      I1 => sel0(1),
      I2 => \slv_reg0_reg_n_0_[27]\,
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[28]\,
      I1 => sel0(1),
      I2 => slv_reg2(28),
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[29]\,
      I1 => sel0(1),
      I2 => slv_reg2(29),
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"100010FF10001000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => pixel_addr_sync2(2),
      I3 => sel0(2),
      I4 => \axi_rdata[2]_i_2_n_0\,
      I5 => \axi_rdata[2]_i_3_n_0\,
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ABAB00FF"
    )
        port map (
      I0 => frame_done_0,
      I1 => auto_capture_en,
      I2 => \slv_reg0_reg_n_0_[0]\,
      I3 => soft_reset,
      I4 => sel0(0),
      I5 => sel0(1),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBF3"
    )
        port map (
      I0 => frame_count_reg(2),
      I1 => sel0(1),
      I2 => slv_reg2(2),
      I3 => sel0(0),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[30]\,
      I1 => sel0(1),
      I2 => slv_reg2(30),
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => s00_axi_aresetn,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000B8"
    )
        port map (
      I0 => slv_reg2(31),
      I1 => sel0(1),
      I2 => \slv_reg0_reg_n_0_[31]\,
      I3 => sel0(0),
      I4 => sel0(2),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => pixel_addr_sync2(3),
      I4 => \axi_rdata[3]_i_2_n_0\,
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[3]\,
      I2 => sel0(1),
      I3 => slv_reg2(3),
      I4 => frame_count_reg(3),
      I5 => sel0(2),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => pixel_addr_sync2(4),
      I4 => \axi_rdata[4]_i_2_n_0\,
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[4]\,
      I2 => sel0(1),
      I3 => slv_reg2(4),
      I4 => frame_count_reg(4),
      I5 => sel0(2),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => pixel_addr_sync2(5),
      I4 => \axi_rdata[5]_i_2_n_0\,
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[5]\,
      I2 => sel0(1),
      I3 => slv_reg2(5),
      I4 => frame_count_reg(5),
      I5 => sel0(2),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => pixel_addr_sync2(6),
      I4 => \axi_rdata[6]_i_2_n_0\,
      O => reg_data_out(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[6]\,
      I2 => sel0(1),
      I3 => slv_reg2(6),
      I4 => frame_count_reg(6),
      I5 => sel0(2),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => pixel_addr_sync2(7),
      I4 => \axi_rdata[7]_i_2_n_0\,
      O => reg_data_out(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[7]\,
      I2 => sel0(1),
      I3 => slv_reg2(7),
      I4 => frame_count_reg(7),
      I5 => sel0(2),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => pixel_addr_sync2(8),
      I4 => \axi_rdata[8]_i_2_n_0\,
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[8]\,
      I2 => sel0(1),
      I3 => slv_reg2(8),
      I4 => frame_count_reg(8),
      I5 => sel0(2),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => pixel_addr_sync2(9),
      I4 => \axi_rdata[9]_i_2_n_0\,
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg0_reg_n_0_[9]\,
      I2 => sel0(1),
      I3 => slv_reg2(9),
      I4 => frame_count_reg(9),
      I5 => sel0(2),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => '0'
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => '0'
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => '0'
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => '0'
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => '0'
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => '0'
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => '0'
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => '0'
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => '0'
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => '0'
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => '0'
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => '0'
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => '0'
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => '0'
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => '0'
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => '0'
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => '0'
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => '0'
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => '0'
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => '0'
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => '0'
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => '0'
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => '0'
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => '0'
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => '0'
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => '0'
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => '0'
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => '0'
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => '0'
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => '0'
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => '0'
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => '0'
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^s00_axi_rvalid\,
      I2 => \^axi_arready_reg_0\,
      I3 => s00_axi_arvalid,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => \^hw_reset0\
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => \^hw_reset0\
    );
boot_init_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => u_cam_init_n_4,
      Q => boot_init_done,
      R => \^ss\(0)
    );
\boot_timer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55155555FFFFFFFF"
    )
        port map (
      I0 => boot_timer_reg(26),
      I1 => boot_timer_reg(24),
      I2 => boot_timer_reg(25),
      I3 => \boot_timer[0]_i_3_n_0\,
      I4 => \boot_timer[0]_i_4_n_0\,
      I5 => boot_timer_reg(27),
      O => \boot_timer[0]_i_1_n_0\
    );
\boot_timer[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => boot_timer_reg(22),
      I1 => boot_timer_reg(21),
      I2 => boot_timer_reg(23),
      O => \boot_timer[0]_i_3_n_0\
    );
\boot_timer[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAFEAAAAAAAA"
    )
        port map (
      I0 => boot_timer_reg(20),
      I1 => boot_timer_reg(13),
      I2 => \boot_timer[0]_i_6_n_0\,
      I3 => \boot_timer[0]_i_7_n_0\,
      I4 => boot_timer_reg(18),
      I5 => boot_timer_reg(19),
      O => \boot_timer[0]_i_4_n_0\
    );
\boot_timer[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => boot_timer_reg(0),
      O => \boot_timer[0]_i_5_n_0\
    );
\boot_timer[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => boot_timer_reg(10),
      I1 => boot_timer_reg(11),
      I2 => boot_timer_reg(9),
      I3 => boot_timer_reg(12),
      O => \boot_timer[0]_i_6_n_0\
    );
\boot_timer[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => boot_timer_reg(14),
      I1 => boot_timer_reg(15),
      I2 => boot_timer_reg(17),
      I3 => boot_timer_reg(16),
      O => \boot_timer[0]_i_7_n_0\
    );
\boot_timer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[0]_i_2_n_7\,
      Q => boot_timer_reg(0),
      R => \^ss\(0)
    );
\boot_timer_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \boot_timer_reg[0]_i_2_n_0\,
      CO(2) => \boot_timer_reg[0]_i_2_n_1\,
      CO(1) => \boot_timer_reg[0]_i_2_n_2\,
      CO(0) => \boot_timer_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \boot_timer_reg[0]_i_2_n_4\,
      O(2) => \boot_timer_reg[0]_i_2_n_5\,
      O(1) => \boot_timer_reg[0]_i_2_n_6\,
      O(0) => \boot_timer_reg[0]_i_2_n_7\,
      S(3 downto 1) => boot_timer_reg(3 downto 1),
      S(0) => \boot_timer[0]_i_5_n_0\
    );
\boot_timer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[8]_i_1_n_5\,
      Q => boot_timer_reg(10),
      R => \^ss\(0)
    );
\boot_timer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[8]_i_1_n_4\,
      Q => boot_timer_reg(11),
      R => \^ss\(0)
    );
\boot_timer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[12]_i_1_n_7\,
      Q => boot_timer_reg(12),
      R => \^ss\(0)
    );
\boot_timer_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \boot_timer_reg[8]_i_1_n_0\,
      CO(3) => \boot_timer_reg[12]_i_1_n_0\,
      CO(2) => \boot_timer_reg[12]_i_1_n_1\,
      CO(1) => \boot_timer_reg[12]_i_1_n_2\,
      CO(0) => \boot_timer_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \boot_timer_reg[12]_i_1_n_4\,
      O(2) => \boot_timer_reg[12]_i_1_n_5\,
      O(1) => \boot_timer_reg[12]_i_1_n_6\,
      O(0) => \boot_timer_reg[12]_i_1_n_7\,
      S(3 downto 0) => boot_timer_reg(15 downto 12)
    );
\boot_timer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[12]_i_1_n_6\,
      Q => boot_timer_reg(13),
      R => \^ss\(0)
    );
\boot_timer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[12]_i_1_n_5\,
      Q => boot_timer_reg(14),
      R => \^ss\(0)
    );
\boot_timer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[12]_i_1_n_4\,
      Q => boot_timer_reg(15),
      R => \^ss\(0)
    );
\boot_timer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[16]_i_1_n_7\,
      Q => boot_timer_reg(16),
      R => \^ss\(0)
    );
\boot_timer_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \boot_timer_reg[12]_i_1_n_0\,
      CO(3) => \boot_timer_reg[16]_i_1_n_0\,
      CO(2) => \boot_timer_reg[16]_i_1_n_1\,
      CO(1) => \boot_timer_reg[16]_i_1_n_2\,
      CO(0) => \boot_timer_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \boot_timer_reg[16]_i_1_n_4\,
      O(2) => \boot_timer_reg[16]_i_1_n_5\,
      O(1) => \boot_timer_reg[16]_i_1_n_6\,
      O(0) => \boot_timer_reg[16]_i_1_n_7\,
      S(3 downto 0) => boot_timer_reg(19 downto 16)
    );
\boot_timer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[16]_i_1_n_6\,
      Q => boot_timer_reg(17),
      R => \^ss\(0)
    );
\boot_timer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[16]_i_1_n_5\,
      Q => boot_timer_reg(18),
      R => \^ss\(0)
    );
\boot_timer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[16]_i_1_n_4\,
      Q => boot_timer_reg(19),
      R => \^ss\(0)
    );
\boot_timer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[0]_i_2_n_6\,
      Q => boot_timer_reg(1),
      R => \^ss\(0)
    );
\boot_timer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[20]_i_1_n_7\,
      Q => boot_timer_reg(20),
      R => \^ss\(0)
    );
\boot_timer_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \boot_timer_reg[16]_i_1_n_0\,
      CO(3) => \boot_timer_reg[20]_i_1_n_0\,
      CO(2) => \boot_timer_reg[20]_i_1_n_1\,
      CO(1) => \boot_timer_reg[20]_i_1_n_2\,
      CO(0) => \boot_timer_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \boot_timer_reg[20]_i_1_n_4\,
      O(2) => \boot_timer_reg[20]_i_1_n_5\,
      O(1) => \boot_timer_reg[20]_i_1_n_6\,
      O(0) => \boot_timer_reg[20]_i_1_n_7\,
      S(3 downto 0) => boot_timer_reg(23 downto 20)
    );
\boot_timer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[20]_i_1_n_6\,
      Q => boot_timer_reg(21),
      R => \^ss\(0)
    );
\boot_timer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[20]_i_1_n_5\,
      Q => boot_timer_reg(22),
      R => \^ss\(0)
    );
\boot_timer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[20]_i_1_n_4\,
      Q => boot_timer_reg(23),
      R => \^ss\(0)
    );
\boot_timer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[24]_i_1_n_7\,
      Q => boot_timer_reg(24),
      R => \^ss\(0)
    );
\boot_timer_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \boot_timer_reg[20]_i_1_n_0\,
      CO(3) => \NLW_boot_timer_reg[24]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \boot_timer_reg[24]_i_1_n_1\,
      CO(1) => \boot_timer_reg[24]_i_1_n_2\,
      CO(0) => \boot_timer_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \boot_timer_reg[24]_i_1_n_4\,
      O(2) => \boot_timer_reg[24]_i_1_n_5\,
      O(1) => \boot_timer_reg[24]_i_1_n_6\,
      O(0) => \boot_timer_reg[24]_i_1_n_7\,
      S(3 downto 0) => boot_timer_reg(27 downto 24)
    );
\boot_timer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[24]_i_1_n_6\,
      Q => boot_timer_reg(25),
      R => \^ss\(0)
    );
\boot_timer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[24]_i_1_n_5\,
      Q => boot_timer_reg(26),
      R => \^ss\(0)
    );
\boot_timer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[24]_i_1_n_4\,
      Q => boot_timer_reg(27),
      R => \^ss\(0)
    );
\boot_timer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[0]_i_2_n_5\,
      Q => boot_timer_reg(2),
      R => \^ss\(0)
    );
\boot_timer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[0]_i_2_n_4\,
      Q => boot_timer_reg(3),
      R => \^ss\(0)
    );
\boot_timer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[4]_i_1_n_7\,
      Q => boot_timer_reg(4),
      R => \^ss\(0)
    );
\boot_timer_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \boot_timer_reg[0]_i_2_n_0\,
      CO(3) => \boot_timer_reg[4]_i_1_n_0\,
      CO(2) => \boot_timer_reg[4]_i_1_n_1\,
      CO(1) => \boot_timer_reg[4]_i_1_n_2\,
      CO(0) => \boot_timer_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \boot_timer_reg[4]_i_1_n_4\,
      O(2) => \boot_timer_reg[4]_i_1_n_5\,
      O(1) => \boot_timer_reg[4]_i_1_n_6\,
      O(0) => \boot_timer_reg[4]_i_1_n_7\,
      S(3 downto 0) => boot_timer_reg(7 downto 4)
    );
\boot_timer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[4]_i_1_n_6\,
      Q => boot_timer_reg(5),
      R => \^ss\(0)
    );
\boot_timer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[4]_i_1_n_5\,
      Q => boot_timer_reg(6),
      R => \^ss\(0)
    );
\boot_timer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[4]_i_1_n_4\,
      Q => boot_timer_reg(7),
      R => \^ss\(0)
    );
\boot_timer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[8]_i_1_n_7\,
      Q => boot_timer_reg(8),
      R => \^ss\(0)
    );
\boot_timer_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \boot_timer_reg[4]_i_1_n_0\,
      CO(3) => \boot_timer_reg[8]_i_1_n_0\,
      CO(2) => \boot_timer_reg[8]_i_1_n_1\,
      CO(1) => \boot_timer_reg[8]_i_1_n_2\,
      CO(0) => \boot_timer_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \boot_timer_reg[8]_i_1_n_4\,
      O(2) => \boot_timer_reg[8]_i_1_n_5\,
      O(1) => \boot_timer_reg[8]_i_1_n_6\,
      O(0) => \boot_timer_reg[8]_i_1_n_7\,
      S(3 downto 0) => boot_timer_reg(11 downto 8)
    );
\boot_timer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \boot_timer[0]_i_1_n_0\,
      D => \boot_timer_reg[8]_i_1_n_6\,
      Q => boot_timer_reg(9),
      R => \^ss\(0)
    );
capture_en_sync1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => soft_reset,
      I1 => s00_axi_aresetn,
      I2 => auto_capture_en,
      I3 => \slv_reg0_reg_n_0_[0]\,
      O => capture_en_sync1_i_1_n_0
    );
capture_en_sync1_reg: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => '1',
      D => capture_en_sync1_i_1_n_0,
      Q => capture_en_sync1,
      R => '0'
    );
capture_en_sync2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => soft_reset,
      I1 => s00_axi_aresetn,
      I2 => capture_en_sync1,
      O => capture_en_sync2_i_1_n_0
    );
capture_en_sync2_reg: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => '1',
      D => capture_en_sync2_i_1_n_0,
      Q => capture_en_sync2,
      R => '0'
    );
\frame_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame_done_0,
      I1 => frame_done_prev,
      O => frame_count0
    );
\frame_count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_count_reg(0),
      O => \frame_count[0]_i_3_n_0\
    );
\frame_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[0]_i_2_n_7\,
      Q => frame_count_reg(0),
      R => \^ss\(0)
    );
\frame_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \frame_count_reg[0]_i_2_n_0\,
      CO(2) => \frame_count_reg[0]_i_2_n_1\,
      CO(1) => \frame_count_reg[0]_i_2_n_2\,
      CO(0) => \frame_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \frame_count_reg[0]_i_2_n_4\,
      O(2) => \frame_count_reg[0]_i_2_n_5\,
      O(1) => \frame_count_reg[0]_i_2_n_6\,
      O(0) => \frame_count_reg[0]_i_2_n_7\,
      S(3 downto 1) => frame_count_reg(3 downto 1),
      S(0) => \frame_count[0]_i_3_n_0\
    );
\frame_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[8]_i_1_n_5\,
      Q => frame_count_reg(10),
      R => \^ss\(0)
    );
\frame_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[8]_i_1_n_4\,
      Q => frame_count_reg(11),
      R => \^ss\(0)
    );
\frame_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[12]_i_1_n_7\,
      Q => frame_count_reg(12),
      R => \^ss\(0)
    );
\frame_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_count_reg[8]_i_1_n_0\,
      CO(3) => \NLW_frame_count_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \frame_count_reg[12]_i_1_n_1\,
      CO(1) => \frame_count_reg[12]_i_1_n_2\,
      CO(0) => \frame_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_count_reg[12]_i_1_n_4\,
      O(2) => \frame_count_reg[12]_i_1_n_5\,
      O(1) => \frame_count_reg[12]_i_1_n_6\,
      O(0) => \frame_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => frame_count_reg(15 downto 12)
    );
\frame_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[12]_i_1_n_6\,
      Q => frame_count_reg(13),
      R => \^ss\(0)
    );
\frame_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[12]_i_1_n_5\,
      Q => frame_count_reg(14),
      R => \^ss\(0)
    );
\frame_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[12]_i_1_n_4\,
      Q => frame_count_reg(15),
      R => \^ss\(0)
    );
\frame_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[0]_i_2_n_6\,
      Q => frame_count_reg(1),
      R => \^ss\(0)
    );
\frame_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[0]_i_2_n_5\,
      Q => frame_count_reg(2),
      R => \^ss\(0)
    );
\frame_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[0]_i_2_n_4\,
      Q => frame_count_reg(3),
      R => \^ss\(0)
    );
\frame_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[4]_i_1_n_7\,
      Q => frame_count_reg(4),
      R => \^ss\(0)
    );
\frame_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_count_reg[0]_i_2_n_0\,
      CO(3) => \frame_count_reg[4]_i_1_n_0\,
      CO(2) => \frame_count_reg[4]_i_1_n_1\,
      CO(1) => \frame_count_reg[4]_i_1_n_2\,
      CO(0) => \frame_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_count_reg[4]_i_1_n_4\,
      O(2) => \frame_count_reg[4]_i_1_n_5\,
      O(1) => \frame_count_reg[4]_i_1_n_6\,
      O(0) => \frame_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => frame_count_reg(7 downto 4)
    );
\frame_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[4]_i_1_n_6\,
      Q => frame_count_reg(5),
      R => \^ss\(0)
    );
\frame_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[4]_i_1_n_5\,
      Q => frame_count_reg(6),
      R => \^ss\(0)
    );
\frame_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[4]_i_1_n_4\,
      Q => frame_count_reg(7),
      R => \^ss\(0)
    );
\frame_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[8]_i_1_n_7\,
      Q => frame_count_reg(8),
      R => \^ss\(0)
    );
\frame_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_count_reg[4]_i_1_n_0\,
      CO(3) => \frame_count_reg[8]_i_1_n_0\,
      CO(2) => \frame_count_reg[8]_i_1_n_1\,
      CO(1) => \frame_count_reg[8]_i_1_n_2\,
      CO(0) => \frame_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_count_reg[8]_i_1_n_4\,
      O(2) => \frame_count_reg[8]_i_1_n_5\,
      O(1) => \frame_count_reg[8]_i_1_n_6\,
      O(0) => \frame_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => frame_count_reg(11 downto 8)
    );
\frame_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => frame_count0,
      D => \frame_count_reg[8]_i_1_n_6\,
      Q => frame_count_reg(9),
      R => \^ss\(0)
    );
frame_done_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => frame_done_0,
      Q => frame_done_prev,
      R => \^ss\(0)
    );
frame_done_sync1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => frame_done,
      Q => frame_done_sync1,
      R => \^ss\(0)
    );
frame_done_sync2_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => frame_done_sync1,
      Q => frame_done_0,
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(0),
      Q => pixel_addr_sync1(0),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(10),
      Q => pixel_addr_sync1(10),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(11),
      Q => pixel_addr_sync1(11),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(12),
      Q => pixel_addr_sync1(12),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(13),
      Q => pixel_addr_sync1(13),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(14),
      Q => pixel_addr_sync1(14),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(15),
      Q => pixel_addr_sync1(15),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(16),
      Q => pixel_addr_sync1(16),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(1),
      Q => pixel_addr_sync1(1),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(2),
      Q => pixel_addr_sync1(2),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(3),
      Q => pixel_addr_sync1(3),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(4),
      Q => pixel_addr_sync1(4),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(5),
      Q => pixel_addr_sync1(5),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(6),
      Q => pixel_addr_sync1(6),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(7),
      Q => pixel_addr_sync1(7),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(8),
      Q => pixel_addr_sync1(8),
      R => \^ss\(0)
    );
\pixel_addr_sync1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^bram_addr\(9),
      Q => pixel_addr_sync1(9),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(0),
      Q => pixel_addr_sync2(0),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(10),
      Q => pixel_addr_sync2(10),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(11),
      Q => pixel_addr_sync2(11),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(12),
      Q => pixel_addr_sync2(12),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(13),
      Q => pixel_addr_sync2(13),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(14),
      Q => pixel_addr_sync2(14),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(15),
      Q => pixel_addr_sync2(15),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(16),
      Q => pixel_addr_sync2(16),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(1),
      Q => pixel_addr_sync2(1),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(2),
      Q => pixel_addr_sync2(2),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(3),
      Q => pixel_addr_sync2(3),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(4),
      Q => pixel_addr_sync2(4),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(5),
      Q => pixel_addr_sync2(5),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(6),
      Q => pixel_addr_sync2(6),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(7),
      Q => pixel_addr_sync2(7),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(8),
      Q => pixel_addr_sync2(8),
      R => \^ss\(0)
    );
\pixel_addr_sync2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => pixel_addr_sync1(9),
      Q => pixel_addr_sync2(9),
      R => \^ss\(0)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => s00_axi_wstrb(1),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(3),
      O => p_0_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(3),
      O => p_0_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(3),
      O => p_0_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(3),
      O => p_0_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(23),
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(2),
      Q => soft_reset,
      R => \^hw_reset0\
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(31),
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(7),
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => \^hw_reset0\
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_0_in(15),
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => \^hw_reset0\
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(1),
      I4 => axi_awaddr(3),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(2),
      I4 => axi_awaddr(3),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(3),
      I4 => axi_awaddr(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(0),
      I4 => axi_awaddr(3),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => \^hw_reset0\
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => \^hw_reset0\
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => \^hw_reset0\
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => \^hw_reset0\
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => \^hw_reset0\
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => \^hw_reset0\
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => \^hw_reset0\
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => \^hw_reset0\
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => \^hw_reset0\
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => \^hw_reset0\
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => \^hw_reset0\
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => \^hw_reset0\
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => \^hw_reset0\
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => \^hw_reset0\
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => \^hw_reset0\
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => \^hw_reset0\
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => \^hw_reset0\
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => \^hw_reset0\
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => \^hw_reset0\
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => \^hw_reset0\
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => \^hw_reset0\
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => \^hw_reset0\
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => \^hw_reset0\
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => \^hw_reset0\
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => \^hw_reset0\
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => \^hw_reset0\
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => \^hw_reset0\
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => \^hw_reset0\
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => \^hw_reset0\
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      S => \^hw_reset0\
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => \^hw_reset0\
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => \^hw_reset0\
    );
u_cam_init: entity work.mb_usb_camera_controller_0_2_cam_init
     port map (
      D(0) => reg_data_out(0),
      \FSM_onehot_curr_state_reg[0]_0\ => \^ss\(0),
      Q(2) => soft_reset,
      Q(1) => \slv_reg0_reg_n_0_[1]\,
      Q(0) => \slv_reg0_reg_n_0_[0]\,
      auto_init_start_reg => u_cam_init_n_4,
      auto_init_start_reg_0 => auto_init_start_i_2_n_0,
      auto_init_start_reg_1 => auto_init_start_i_3_n_0,
      auto_init_start_reg_2 => auto_init_start_reg_n_0,
      \axi_rdata_reg[0]\(0) => pixel_addr_sync2(0),
      \axi_rdata_reg[0]_0\(0) => slv_reg2(0),
      boot_init_done => boot_init_done,
      cam_scl => cam_scl,
      cam_sda => cam_sda,
      frame_count_reg(0) => frame_count_reg(0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      sel0(2 downto 0) => sel0(2 downto 0),
      \slv_reg0_reg[2]\ => u_cam_init_n_2
    );
u_capture: entity work.mb_usb_camera_controller_0_2_ov7670_capture
     port map (
      E(0) => E(0),
      Q(0) => soft_reset,
      bram_addr(16 downto 0) => \^bram_addr\(16 downto 0),
      bram_we => bram_we,
      bram_wrdata(7 downto 0) => bram_wrdata(7 downto 0),
      cam_d(7 downto 0) => cam_d(7 downto 0),
      cam_href => cam_href,
      cam_pclk => cam_pclk,
      cam_vsync => cam_vsync,
      capture_en_sync2 => capture_en_sync2,
      frame_done => frame_done,
      \pixel_addr_sync1_reg[0]\ => \pixel_addr_sync1_reg[0]_0\,
      s00_axi_aresetn => s00_axi_aresetn,
      \slv_reg0_reg[2]\ => \^ss\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_camera_controller_0_2_camera_controller_v1_0 is
  port (
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    cam_pwdn : out STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    cam_sda : out STD_LOGIC;
    hw_reset : out STD_LOGIC;
    we_next : out STD_LOGIC;
    bram_wrdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_we : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cam_scl : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \pixel_addr_sync1_reg[0]\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    cam_vsync : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of mb_usb_camera_controller_0_2_camera_controller_v1_0 : entity is "camera_controller_v1_0";
end mb_usb_camera_controller_0_2_camera_controller_v1_0;

architecture STRUCTURE of mb_usb_camera_controller_0_2_camera_controller_v1_0 is
  signal cam_pwdn_INST_0_i_1_n_0 : STD_LOGIC;
  signal cam_pwdn_INST_0_i_2_n_0 : STD_LOGIC;
  signal cam_pwdn_INST_0_i_3_n_0 : STD_LOGIC;
  signal hw_reset0 : STD_LOGIC;
  signal \pwdn_timer[0]_i_1_n_0\ : STD_LOGIC;
  signal \pwdn_timer[0]_i_3_n_0\ : STD_LOGIC;
  signal \pwdn_timer[0]_i_4_n_0\ : STD_LOGIC;
  signal \pwdn_timer[0]_i_5_n_0\ : STD_LOGIC;
  signal \pwdn_timer[0]_i_6_n_0\ : STD_LOGIC;
  signal pwdn_timer_reg : STD_LOGIC_VECTOR ( 23 downto 6 );
  signal \pwdn_timer_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \pwdn_timer_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \pwdn_timer_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \pwdn_timer_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \pwdn_timer_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \pwdn_timer_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \pwdn_timer_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \pwdn_timer_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \pwdn_timer_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \pwdn_timer_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pwdn_timer_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pwdn_timer_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pwdn_timer_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pwdn_timer_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pwdn_timer_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pwdn_timer_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pwdn_timer_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \pwdn_timer_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \pwdn_timer_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \pwdn_timer_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \pwdn_timer_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \pwdn_timer_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \pwdn_timer_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \pwdn_timer_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \pwdn_timer_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \pwdn_timer_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \pwdn_timer_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \pwdn_timer_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \pwdn_timer_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \pwdn_timer_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \pwdn_timer_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \pwdn_timer_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pwdn_timer_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pwdn_timer_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pwdn_timer_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pwdn_timer_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pwdn_timer_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pwdn_timer_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pwdn_timer_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pwdn_timer_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pwdn_timer_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pwdn_timer_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pwdn_timer_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pwdn_timer_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pwdn_timer_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pwdn_timer_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pwdn_timer_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \pwdn_timer_reg_n_0_[0]\ : STD_LOGIC;
  signal \pwdn_timer_reg_n_0_[1]\ : STD_LOGIC;
  signal \pwdn_timer_reg_n_0_[2]\ : STD_LOGIC;
  signal \pwdn_timer_reg_n_0_[3]\ : STD_LOGIC;
  signal \pwdn_timer_reg_n_0_[4]\ : STD_LOGIC;
  signal \pwdn_timer_reg_n_0_[5]\ : STD_LOGIC;
  signal \NLW_pwdn_timer_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pwdn_timer_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \pwdn_timer_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pwdn_timer_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pwdn_timer_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pwdn_timer_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \pwdn_timer_reg[8]_i_1\ : label is 11;
begin
cam_pwdn_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00045555"
    )
        port map (
      I0 => pwdn_timer_reg(23),
      I1 => cam_pwdn_INST_0_i_1_n_0,
      I2 => pwdn_timer_reg(21),
      I3 => pwdn_timer_reg(20),
      I4 => pwdn_timer_reg(22),
      O => cam_pwdn
    );
cam_pwdn_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFFFFFF"
    )
        port map (
      I0 => cam_pwdn_INST_0_i_2_n_0,
      I1 => pwdn_timer_reg(15),
      I2 => pwdn_timer_reg(16),
      I3 => pwdn_timer_reg(17),
      I4 => pwdn_timer_reg(19),
      I5 => pwdn_timer_reg(18),
      O => cam_pwdn_INST_0_i_1_n_0
    );
cam_pwdn_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => pwdn_timer_reg(14),
      I1 => pwdn_timer_reg(13),
      I2 => pwdn_timer_reg(12),
      I3 => cam_pwdn_INST_0_i_3_n_0,
      O => cam_pwdn_INST_0_i_2_n_0
    );
cam_pwdn_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555557FFFFFF"
    )
        port map (
      I0 => pwdn_timer_reg(11),
      I1 => pwdn_timer_reg(6),
      I2 => pwdn_timer_reg(7),
      I3 => pwdn_timer_reg(8),
      I4 => pwdn_timer_reg(9),
      I5 => pwdn_timer_reg(10),
      O => cam_pwdn_INST_0_i_3_n_0
    );
\pwdn_timer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10111111FFFFFFFF"
    )
        port map (
      I0 => pwdn_timer_reg(22),
      I1 => pwdn_timer_reg(21),
      I2 => \pwdn_timer[0]_i_3_n_0\,
      I3 => pwdn_timer_reg(19),
      I4 => pwdn_timer_reg(20),
      I5 => pwdn_timer_reg(23),
      O => \pwdn_timer[0]_i_1_n_0\
    );
\pwdn_timer[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000555D"
    )
        port map (
      I0 => pwdn_timer_reg(15),
      I1 => \pwdn_timer[0]_i_5_n_0\,
      I2 => pwdn_timer_reg(13),
      I3 => pwdn_timer_reg(14),
      I4 => \pwdn_timer[0]_i_6_n_0\,
      I5 => pwdn_timer_reg(18),
      O => \pwdn_timer[0]_i_3_n_0\
    );
\pwdn_timer[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pwdn_timer_reg_n_0_[0]\,
      O => \pwdn_timer[0]_i_4_n_0\
    );
\pwdn_timer[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555557FFFFFF"
    )
        port map (
      I0 => pwdn_timer_reg(12),
      I1 => pwdn_timer_reg(8),
      I2 => pwdn_timer_reg(7),
      I3 => pwdn_timer_reg(9),
      I4 => pwdn_timer_reg(10),
      I5 => pwdn_timer_reg(11),
      O => \pwdn_timer[0]_i_5_n_0\
    );
\pwdn_timer[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwdn_timer_reg(17),
      I1 => pwdn_timer_reg(16),
      O => \pwdn_timer[0]_i_6_n_0\
    );
\pwdn_timer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[0]_i_2_n_7\,
      Q => \pwdn_timer_reg_n_0_[0]\,
      R => hw_reset0
    );
\pwdn_timer_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwdn_timer_reg[0]_i_2_n_0\,
      CO(2) => \pwdn_timer_reg[0]_i_2_n_1\,
      CO(1) => \pwdn_timer_reg[0]_i_2_n_2\,
      CO(0) => \pwdn_timer_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pwdn_timer_reg[0]_i_2_n_4\,
      O(2) => \pwdn_timer_reg[0]_i_2_n_5\,
      O(1) => \pwdn_timer_reg[0]_i_2_n_6\,
      O(0) => \pwdn_timer_reg[0]_i_2_n_7\,
      S(3) => \pwdn_timer_reg_n_0_[3]\,
      S(2) => \pwdn_timer_reg_n_0_[2]\,
      S(1) => \pwdn_timer_reg_n_0_[1]\,
      S(0) => \pwdn_timer[0]_i_4_n_0\
    );
\pwdn_timer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[8]_i_1_n_5\,
      Q => pwdn_timer_reg(10),
      R => hw_reset0
    );
\pwdn_timer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[8]_i_1_n_4\,
      Q => pwdn_timer_reg(11),
      R => hw_reset0
    );
\pwdn_timer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[12]_i_1_n_7\,
      Q => pwdn_timer_reg(12),
      R => hw_reset0
    );
\pwdn_timer_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwdn_timer_reg[8]_i_1_n_0\,
      CO(3) => \pwdn_timer_reg[12]_i_1_n_0\,
      CO(2) => \pwdn_timer_reg[12]_i_1_n_1\,
      CO(1) => \pwdn_timer_reg[12]_i_1_n_2\,
      CO(0) => \pwdn_timer_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwdn_timer_reg[12]_i_1_n_4\,
      O(2) => \pwdn_timer_reg[12]_i_1_n_5\,
      O(1) => \pwdn_timer_reg[12]_i_1_n_6\,
      O(0) => \pwdn_timer_reg[12]_i_1_n_7\,
      S(3 downto 0) => pwdn_timer_reg(15 downto 12)
    );
\pwdn_timer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[12]_i_1_n_6\,
      Q => pwdn_timer_reg(13),
      R => hw_reset0
    );
\pwdn_timer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[12]_i_1_n_5\,
      Q => pwdn_timer_reg(14),
      R => hw_reset0
    );
\pwdn_timer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[12]_i_1_n_4\,
      Q => pwdn_timer_reg(15),
      R => hw_reset0
    );
\pwdn_timer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[16]_i_1_n_7\,
      Q => pwdn_timer_reg(16),
      R => hw_reset0
    );
\pwdn_timer_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwdn_timer_reg[12]_i_1_n_0\,
      CO(3) => \pwdn_timer_reg[16]_i_1_n_0\,
      CO(2) => \pwdn_timer_reg[16]_i_1_n_1\,
      CO(1) => \pwdn_timer_reg[16]_i_1_n_2\,
      CO(0) => \pwdn_timer_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwdn_timer_reg[16]_i_1_n_4\,
      O(2) => \pwdn_timer_reg[16]_i_1_n_5\,
      O(1) => \pwdn_timer_reg[16]_i_1_n_6\,
      O(0) => \pwdn_timer_reg[16]_i_1_n_7\,
      S(3 downto 0) => pwdn_timer_reg(19 downto 16)
    );
\pwdn_timer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[16]_i_1_n_6\,
      Q => pwdn_timer_reg(17),
      R => hw_reset0
    );
\pwdn_timer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[16]_i_1_n_5\,
      Q => pwdn_timer_reg(18),
      R => hw_reset0
    );
\pwdn_timer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[16]_i_1_n_4\,
      Q => pwdn_timer_reg(19),
      R => hw_reset0
    );
\pwdn_timer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[0]_i_2_n_6\,
      Q => \pwdn_timer_reg_n_0_[1]\,
      R => hw_reset0
    );
\pwdn_timer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[20]_i_1_n_7\,
      Q => pwdn_timer_reg(20),
      R => hw_reset0
    );
\pwdn_timer_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwdn_timer_reg[16]_i_1_n_0\,
      CO(3) => \NLW_pwdn_timer_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pwdn_timer_reg[20]_i_1_n_1\,
      CO(1) => \pwdn_timer_reg[20]_i_1_n_2\,
      CO(0) => \pwdn_timer_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwdn_timer_reg[20]_i_1_n_4\,
      O(2) => \pwdn_timer_reg[20]_i_1_n_5\,
      O(1) => \pwdn_timer_reg[20]_i_1_n_6\,
      O(0) => \pwdn_timer_reg[20]_i_1_n_7\,
      S(3 downto 0) => pwdn_timer_reg(23 downto 20)
    );
\pwdn_timer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[20]_i_1_n_6\,
      Q => pwdn_timer_reg(21),
      R => hw_reset0
    );
\pwdn_timer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[20]_i_1_n_5\,
      Q => pwdn_timer_reg(22),
      R => hw_reset0
    );
\pwdn_timer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[20]_i_1_n_4\,
      Q => pwdn_timer_reg(23),
      R => hw_reset0
    );
\pwdn_timer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[0]_i_2_n_5\,
      Q => \pwdn_timer_reg_n_0_[2]\,
      R => hw_reset0
    );
\pwdn_timer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[0]_i_2_n_4\,
      Q => \pwdn_timer_reg_n_0_[3]\,
      R => hw_reset0
    );
\pwdn_timer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[4]_i_1_n_7\,
      Q => \pwdn_timer_reg_n_0_[4]\,
      R => hw_reset0
    );
\pwdn_timer_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwdn_timer_reg[0]_i_2_n_0\,
      CO(3) => \pwdn_timer_reg[4]_i_1_n_0\,
      CO(2) => \pwdn_timer_reg[4]_i_1_n_1\,
      CO(1) => \pwdn_timer_reg[4]_i_1_n_2\,
      CO(0) => \pwdn_timer_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwdn_timer_reg[4]_i_1_n_4\,
      O(2) => \pwdn_timer_reg[4]_i_1_n_5\,
      O(1) => \pwdn_timer_reg[4]_i_1_n_6\,
      O(0) => \pwdn_timer_reg[4]_i_1_n_7\,
      S(3 downto 2) => pwdn_timer_reg(7 downto 6),
      S(1) => \pwdn_timer_reg_n_0_[5]\,
      S(0) => \pwdn_timer_reg_n_0_[4]\
    );
\pwdn_timer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[4]_i_1_n_6\,
      Q => \pwdn_timer_reg_n_0_[5]\,
      R => hw_reset0
    );
\pwdn_timer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[4]_i_1_n_5\,
      Q => pwdn_timer_reg(6),
      R => hw_reset0
    );
\pwdn_timer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[4]_i_1_n_4\,
      Q => pwdn_timer_reg(7),
      R => hw_reset0
    );
\pwdn_timer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[8]_i_1_n_7\,
      Q => pwdn_timer_reg(8),
      R => hw_reset0
    );
\pwdn_timer_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwdn_timer_reg[4]_i_1_n_0\,
      CO(3) => \pwdn_timer_reg[8]_i_1_n_0\,
      CO(2) => \pwdn_timer_reg[8]_i_1_n_1\,
      CO(1) => \pwdn_timer_reg[8]_i_1_n_2\,
      CO(0) => \pwdn_timer_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pwdn_timer_reg[8]_i_1_n_4\,
      O(2) => \pwdn_timer_reg[8]_i_1_n_5\,
      O(1) => \pwdn_timer_reg[8]_i_1_n_6\,
      O(0) => \pwdn_timer_reg[8]_i_1_n_7\,
      S(3 downto 0) => pwdn_timer_reg(11 downto 8)
    );
\pwdn_timer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \pwdn_timer[0]_i_1_n_0\,
      D => \pwdn_timer_reg[8]_i_1_n_6\,
      Q => pwdn_timer_reg(9),
      R => hw_reset0
    );
u_axi_slave: entity work.mb_usb_camera_controller_0_2_camera_controller_v1_0_S00_AXI
     port map (
      E(0) => we_next,
      SS(0) => hw_reset,
      axi_arready_reg_0 => s00_axi_arready,
      axi_awready_reg_0 => s00_axi_awready,
      axi_wready_reg_0 => s00_axi_wready,
      bram_addr(16 downto 0) => bram_addr(16 downto 0),
      bram_we => bram_we,
      bram_wrdata(7 downto 0) => bram_wrdata(7 downto 0),
      cam_d(7 downto 0) => cam_d(7 downto 0),
      cam_href => cam_href,
      cam_pclk => cam_pclk,
      cam_scl => cam_scl,
      cam_sda => cam_sda,
      cam_vsync => cam_vsync,
      hw_reset0 => hw_reset0,
      \pixel_addr_sync1_reg[0]_0\ => \pixel_addr_sync1_reg[0]\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_usb_camera_controller_0_2 is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    cam_sda : inout STD_LOGIC;
    cam_scl : out STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    cam_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_pclk_out : out STD_LOGIC;
    cam_pwdn : out STD_LOGIC;
    cam_reset_n : out STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wrdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_we : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mb_usb_camera_controller_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mb_usb_camera_controller_0_2 : entity is "mb_usb_camera_controller_0_2,camera_controller_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of mb_usb_camera_controller_0_2 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of mb_usb_camera_controller_0_2 : entity is "camera_controller_v1_0,Vivado 2022.2";
end mb_usb_camera_controller_0_2;

architecture STRUCTURE of mb_usb_camera_controller_0_2 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \bram_addr[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^cam_pclk\ : STD_LOGIC;
  signal \u_axi_slave/hw_reset\ : STD_LOGIC;
  signal \u_axi_slave/u_capture/we_next\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_RESET s00_axi_aresetn, ASSOCIATED_BUSIF AXI4-Lite, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME AXI4-Lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 AXI4-Lite WSTRB";
begin
  \^cam_pclk\ <= cam_pclk;
  cam_pclk_out <= \^cam_pclk\;
  cam_reset_n <= \<const1>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\bram_addr[16]_INST_0_i_1\: unisim.vcomponents.FDCE
     port map (
      C => \^cam_pclk\,
      CE => \u_axi_slave/u_capture/we_next\,
      CLR => \u_axi_slave/hw_reset\,
      D => '1',
      Q => \bram_addr[16]_INST_0_i_1_n_0\
    );
inst: entity work.mb_usb_camera_controller_0_2_camera_controller_v1_0
     port map (
      bram_addr(16 downto 0) => bram_addr(16 downto 0),
      bram_we => bram_we,
      bram_wrdata(7 downto 0) => bram_wrdata(7 downto 0),
      cam_d(7 downto 0) => cam_d(7 downto 0),
      cam_href => cam_href,
      cam_pclk => \^cam_pclk\,
      cam_pwdn => cam_pwdn,
      cam_scl => cam_scl,
      cam_sda => cam_sda,
      cam_vsync => cam_vsync,
      hw_reset => \u_axi_slave/hw_reset\,
      \pixel_addr_sync1_reg[0]\ => \bram_addr[16]_INST_0_i_1_n_0\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      we_next => \u_axi_slave/u_capture/we_next\
    );
end STRUCTURE;
