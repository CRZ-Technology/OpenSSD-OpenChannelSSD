-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Jan  9 18:59:46 2023
-- Host        : DESKTOP-KFMNFE2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               F:/cosm-plus-sys.srcs/sources_1/bd/sys_top/ip/sys_top_auto_ds_8/sys_top_auto_ds_8_sim_netlist.vhdl
-- Design      : sys_top_auto_ds_8
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu17eg-ffvc1760-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_axi4lite_downsizer is
  port (
    m_axi_bready : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \gen_write.s_axi_awready_i_reg_0\ : out STD_LOGIC;
    \gen_write.s_axi_bvalid_i_reg_0\ : out STD_LOGIC;
    \gen_read.s_axi_arready_i_reg_0\ : out STD_LOGIC;
    \gen_read.s_axi_rvalid_i_reg_0\ : out STD_LOGIC;
    \gen_write.m_axi_awvalid_i_reg_0\ : out STD_LOGIC;
    \gen_write.m_axi_wvalid_i_reg_0\ : out STD_LOGIC;
    \gen_read.m_axi_arvalid_i_reg_0\ : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \out\ : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    \gen_write.w_done_reg_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \split_aw2__2\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_axi4lite_downsizer : entity is "axi_dwidth_converter_v2_1_19_axi4lite_downsizer";
end sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_axi4lite_downsizer;

architecture STRUCTURE of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_axi4lite_downsizer is
  signal ar_done : STD_LOGIC;
  signal ar_start : STD_LOGIC;
  signal aw_start : STD_LOGIC;
  signal bresp_low : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bresp_low_0 : STD_LOGIC;
  signal \gen_read.ar_done_i_1_n_0\ : STD_LOGIC;
  signal \gen_read.ar_start_reg_n_0\ : STD_LOGIC;
  signal \gen_read.m_axi_arvalid_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_read.m_axi_arvalid_i_i_2_n_0\ : STD_LOGIC;
  signal \^gen_read.m_axi_arvalid_i_reg_0\ : STD_LOGIC;
  signal \gen_read.m_axi_rready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_read.m_axi_rready_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_read.s_axi_arready_i_i_1_n_0\ : STD_LOGIC;
  signal \^gen_read.s_axi_arready_i_reg_0\ : STD_LOGIC;
  signal \gen_read.s_axi_rvalid_i_i_1_n_0\ : STD_LOGIC;
  signal \^gen_read.s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal \gen_read.split_ar_i_3_n_0\ : STD_LOGIC;
  signal \gen_read.split_ar_reg_n_0\ : STD_LOGIC;
  signal \gen_read.split_r_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.aw_done_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.aw_done_reg_n_0\ : STD_LOGIC;
  signal \gen_write.aw_start_reg_n_0\ : STD_LOGIC;
  signal \gen_write.m_axi_awvalid_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.m_axi_awvalid_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_write.m_axi_awvalid_i_i_4_n_0\ : STD_LOGIC;
  signal \^gen_write.m_axi_awvalid_i_reg_0\ : STD_LOGIC;
  signal \gen_write.m_axi_bready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.m_axi_wvalid_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.m_axi_wvalid_i_i_2_n_0\ : STD_LOGIC;
  signal \^gen_write.m_axi_wvalid_i_reg_0\ : STD_LOGIC;
  signal \gen_write.s_axi_awready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.s_axi_awready_i_i_2_n_0\ : STD_LOGIC;
  signal \^gen_write.s_axi_awready_i_reg_0\ : STD_LOGIC;
  signal \gen_write.s_axi_bvalid_i_i_1_n_0\ : STD_LOGIC;
  signal \^gen_write.s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal \gen_write.split_aw_reg_n_0\ : STD_LOGIC;
  signal \gen_write.split_w_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.split_w_reg_n_0\ : STD_LOGIC;
  signal \gen_write.w_done_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_done_reg_n_0\ : STD_LOGIC;
  signal high_aw : STD_LOGIC;
  signal high_aw0 : STD_LOGIC;
  signal m_axi_arvalid_i22_out : STD_LOGIC;
  signal \m_axi_awvalid_i058_out__4\ : STD_LOGIC;
  signal \m_axi_awvalid_i1__0\ : STD_LOGIC;
  signal \m_axi_awvalid_i49_out__0\ : STD_LOGIC;
  signal \m_axi_bready_i__1\ : STD_LOGIC;
  signal m_axi_wvalid_i : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rdata_low : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rdata_low_1 : STD_LOGIC;
  signal rresp_low : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rresp_low_2 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \s_axi_awready_i162_out__0\ : STD_LOGIC;
  signal split_ar : STD_LOGIC;
  signal split_aw0 : STD_LOGIC;
  signal split_aw152_in : STD_LOGIC;
  signal split_aw38_out : STD_LOGIC;
  signal split_r : STD_LOGIC;
  signal w_done : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_read.m_axi_arvalid_i_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gen_read.s_axi_rvalid_i_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gen_write.m_axi_awvalid_i_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_write.m_axi_awvalid_i_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_write.m_axi_wvalid_i_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_write.s_axi_awready_i_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axi_araddr[10]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axi_araddr[11]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axi_araddr[12]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axi_araddr[13]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axi_araddr[14]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axi_araddr[15]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axi_araddr[16]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axi_araddr[17]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axi_araddr[18]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axi_araddr[19]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axi_araddr[20]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axi_araddr[21]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axi_araddr[22]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axi_araddr[23]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axi_araddr[24]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axi_araddr[25]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axi_araddr[26]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axi_araddr[27]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axi_araddr[28]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axi_araddr[29]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axi_araddr[30]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axi_araddr[31]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axi_araddr[32]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axi_araddr[33]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axi_araddr[34]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axi_araddr[35]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axi_araddr[36]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axi_araddr[37]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axi_araddr[38]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axi_araddr[39]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axi_araddr[4]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axi_araddr[5]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axi_araddr[6]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axi_araddr[7]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axi_araddr[8]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axi_araddr[9]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_bresp[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rdata[10]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_rdata[11]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_rdata[12]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata[13]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_rdata[14]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_rdata[15]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_axi_rdata[16]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_axi_rdata[17]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_axi_rdata[18]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_rdata[19]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata[20]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata[21]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_rdata[22]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_rdata[23]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_rdata[24]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_rdata[25]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata[26]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata[27]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_axi_rdata[28]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_rdata[29]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rdata[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rdata[30]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_rdata[3]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata[4]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_axi_rdata[5]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_axi_rdata[7]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata[8]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_rdata[9]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_rresp[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_INST_0\ : label is "soft_lutpair1";
begin
  \gen_read.m_axi_arvalid_i_reg_0\ <= \^gen_read.m_axi_arvalid_i_reg_0\;
  \gen_read.s_axi_arready_i_reg_0\ <= \^gen_read.s_axi_arready_i_reg_0\;
  \gen_read.s_axi_rvalid_i_reg_0\ <= \^gen_read.s_axi_rvalid_i_reg_0\;
  \gen_write.m_axi_awvalid_i_reg_0\ <= \^gen_write.m_axi_awvalid_i_reg_0\;
  \gen_write.m_axi_wvalid_i_reg_0\ <= \^gen_write.m_axi_wvalid_i_reg_0\;
  \gen_write.s_axi_awready_i_reg_0\ <= \^gen_write.s_axi_awready_i_reg_0\;
  \gen_write.s_axi_bvalid_i_reg_0\ <= \^gen_write.s_axi_bvalid_i_reg_0\;
\gen_read.ar_done_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF11EF00EF00EF00"
    )
        port map (
      I0 => \^gen_read.s_axi_rvalid_i_reg_0\,
      I1 => \^gen_read.s_axi_arready_i_reg_0\,
      I2 => m_axi_rvalid,
      I3 => ar_done,
      I4 => m_axi_arready,
      I5 => \^gen_read.m_axi_arvalid_i_reg_0\,
      O => \gen_read.ar_done_i_1_n_0\
    );
\gen_read.ar_done_reg\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \gen_read.ar_done_i_1_n_0\,
      Q => ar_done,
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.ar_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => split_ar,
      D => split_ar,
      Q => \gen_read.ar_start_reg_n_0\,
      R => ar_start
    );
\gen_read.m_axi_arvalid_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0F22FF00"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \gen_write.aw_start_reg_n_0\,
      I2 => m_axi_arready,
      I3 => \^gen_read.m_axi_arvalid_i_reg_0\,
      I4 => \gen_read.m_axi_arvalid_i_i_2_n_0\,
      I5 => m_axi_arvalid_i22_out,
      O => \gen_read.m_axi_arvalid_i_i_1_n_0\
    );
\gen_read.m_axi_arvalid_i_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^gen_read.s_axi_rvalid_i_reg_0\,
      I1 => ar_done,
      I2 => \^gen_read.s_axi_arready_i_reg_0\,
      O => \gen_read.m_axi_arvalid_i_i_2_n_0\
    );
\gen_read.m_axi_arvalid_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => ar_done,
      I2 => split_r,
      I3 => \gen_read.split_ar_reg_n_0\,
      I4 => \^gen_read.s_axi_arready_i_reg_0\,
      I5 => \^gen_read.s_axi_rvalid_i_reg_0\,
      O => m_axi_arvalid_i22_out
    );
\gen_read.m_axi_arvalid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_read.m_axi_arvalid_i_i_1_n_0\,
      Q => \^gen_read.m_axi_arvalid_i_reg_0\,
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.m_axi_rready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888B8888888888"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_read.s_axi_rvalid_i_reg_0\,
      I2 => \^gen_read.s_axi_arready_i_reg_0\,
      I3 => \gen_read.split_ar_reg_n_0\,
      I4 => split_r,
      I5 => \gen_read.m_axi_rready_i_i_2_n_0\,
      O => \gen_read.m_axi_rready_i_i_1_n_0\
    );
\gen_read.m_axi_rready_i_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => ar_done,
      O => \gen_read.m_axi_rready_i_i_2_n_0\
    );
\gen_read.m_axi_rready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_read.m_axi_rready_i_i_1_n_0\,
      Q => m_axi_rready,
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \gen_read.split_ar_reg_n_0\,
      I1 => split_r,
      I2 => \^gen_read.s_axi_arready_i_reg_0\,
      I3 => \^gen_read.s_axi_rvalid_i_reg_0\,
      I4 => ar_done,
      I5 => m_axi_rvalid,
      O => rdata_low_1
    );
\gen_read.rdata_low_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(0),
      Q => rdata_low(0),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(10),
      Q => rdata_low(10),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(11),
      Q => rdata_low(11),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(12),
      Q => rdata_low(12),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(13),
      Q => rdata_low(13),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(14),
      Q => rdata_low(14),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(15),
      Q => rdata_low(15),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(16),
      Q => rdata_low(16),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(17),
      Q => rdata_low(17),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(18),
      Q => rdata_low(18),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(19),
      Q => rdata_low(19),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(1),
      Q => rdata_low(1),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(20),
      Q => rdata_low(20),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(21),
      Q => rdata_low(21),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(22),
      Q => rdata_low(22),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(23),
      Q => rdata_low(23),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(24),
      Q => rdata_low(24),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(25),
      Q => rdata_low(25),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(26),
      Q => rdata_low(26),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(27),
      Q => rdata_low(27),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(28),
      Q => rdata_low(28),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(29),
      Q => rdata_low(29),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(2),
      Q => rdata_low(2),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(30),
      Q => rdata_low(30),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(31),
      Q => rdata_low(31),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(3),
      Q => rdata_low(3),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(4),
      Q => rdata_low(4),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(5),
      Q => rdata_low(5),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(6),
      Q => rdata_low(6),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(7),
      Q => rdata_low(7),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(8),
      Q => rdata_low(8),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rdata_low_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rdata(9),
      Q => rdata_low(9),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rresp_low_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rresp(0),
      Q => rresp_low(0),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.rresp_low_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => rdata_low_1,
      D => m_axi_rresp(1),
      Q => rresp_low_2(1),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.s_axi_arready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000008088"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => ar_done,
      I2 => split_r,
      I3 => \gen_read.split_ar_reg_n_0\,
      I4 => \^gen_read.s_axi_rvalid_i_reg_0\,
      I5 => \^gen_read.s_axi_arready_i_reg_0\,
      O => \gen_read.s_axi_arready_i_i_1_n_0\
    );
\gen_read.s_axi_arready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_read.s_axi_arready_i_i_1_n_0\,
      Q => \^gen_read.s_axi_arready_i_reg_0\,
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.s_axi_rvalid_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_read.s_axi_rvalid_i_reg_0\,
      I2 => \^gen_read.s_axi_arready_i_reg_0\,
      O => \gen_read.s_axi_rvalid_i_i_1_n_0\
    );
\gen_read.s_axi_rvalid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_read.s_axi_rvalid_i_i_1_n_0\,
      Q => \^gen_read.s_axi_rvalid_i_reg_0\,
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_read.split_ar_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gen_read.s_axi_rvalid_i_reg_0\,
      I2 => \gen_write.w_done_reg_0\,
      O => ar_start
    );
\gen_read.split_ar_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \^gen_read.s_axi_arready_i_reg_0\,
      I1 => ar_done,
      I2 => \^gen_read.s_axi_rvalid_i_reg_0\,
      I3 => s_axi_arvalid,
      I4 => \gen_write.aw_start_reg_n_0\,
      I5 => \^gen_read.m_axi_arvalid_i_reg_0\,
      O => split_ar
    );
\gen_read.split_ar_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_araddr(2),
      O => \gen_read.split_ar_i_3_n_0\
    );
\gen_read.split_ar_reg\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => split_ar,
      D => \gen_read.split_ar_i_3_n_0\,
      Q => \gen_read.split_ar_reg_n_0\,
      R => ar_start
    );
\gen_read.split_r_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E0E0E0"
    )
        port map (
      I0 => split_r,
      I1 => m_axi_arvalid_i22_out,
      I2 => \gen_write.w_done_reg_0\,
      I3 => \^gen_read.s_axi_rvalid_i_reg_0\,
      I4 => s_axi_rready,
      O => \gen_read.split_r_i_1_n_0\
    );
\gen_read.split_r_reg\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \gen_read.split_r_i_1_n_0\,
      Q => split_r,
      R => '0'
    );
\gen_write.aw_done_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10000000FFFFFFFF"
    )
        port map (
      I0 => \^gen_write.s_axi_bvalid_i_reg_0\,
      I1 => \^gen_write.s_axi_awready_i_reg_0\,
      I2 => \gen_write.w_done_reg_n_0\,
      I3 => \gen_write.aw_done_reg_n_0\,
      I4 => m_axi_bvalid,
      I5 => \gen_write.w_done_reg_0\,
      O => w_done
    );
\gen_write.aw_done_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => \^gen_write.s_axi_bvalid_i_reg_0\,
      I1 => \^gen_write.s_axi_awready_i_reg_0\,
      I2 => \^gen_write.m_axi_awvalid_i_reg_0\,
      I3 => m_axi_awready,
      I4 => \gen_write.aw_done_reg_n_0\,
      O => \gen_write.aw_done_i_2_n_0\
    );
\gen_write.aw_done_reg\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \gen_write.aw_done_i_2_n_0\,
      Q => \gen_write.aw_done_reg_n_0\,
      R => w_done
    );
\gen_write.aw_start_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^gen_write.s_axi_bvalid_i_reg_0\,
      I2 => \gen_write.w_done_reg_0\,
      O => aw_start
    );
\gen_write.aw_start_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^gen_write.s_axi_bvalid_i_reg_0\,
      I1 => \^gen_write.s_axi_awready_i_reg_0\,
      I2 => \^gen_write.m_axi_wvalid_i_reg_0\,
      I3 => \^gen_write.m_axi_awvalid_i_reg_0\,
      I4 => \s_axi_awready_i162_out__0\,
      I5 => \m_axi_awvalid_i058_out__4\,
      O => split_aw38_out
    );
\gen_write.aw_start_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \gen_write.aw_done_reg_n_0\,
      I2 => s_axi_wvalid,
      I3 => \gen_read.ar_start_reg_n_0\,
      I4 => s_axi_arvalid,
      I5 => \gen_write.w_done_reg_n_0\,
      O => \m_axi_awvalid_i058_out__4\
    );
\gen_write.aw_start_reg\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => split_aw38_out,
      D => split_aw38_out,
      Q => \gen_write.aw_start_reg_n_0\,
      R => aw_start
    );
\gen_write.bresp_low[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \s_axi_awready_i162_out__0\,
      I1 => \^gen_write.s_axi_awready_i_reg_0\,
      I2 => \^gen_write.s_axi_bvalid_i_reg_0\,
      I3 => m_axi_bvalid,
      I4 => \gen_write.split_aw_reg_n_0\,
      I5 => \gen_write.split_w_reg_n_0\,
      O => bresp_low_0
    );
\gen_write.bresp_low_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => bresp_low_0,
      D => m_axi_bresp(0),
      Q => bresp_low(0),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_write.bresp_low_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => bresp_low_0,
      D => m_axi_bresp(1),
      Q => p_0_in2_in(1),
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_write.high_aw_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055555554"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_wstrb(7),
      I2 => s_axi_wstrb(6),
      I3 => s_axi_wstrb(5),
      I4 => s_axi_wstrb(4),
      I5 => split_aw152_in,
      O => high_aw0
    );
\gen_write.high_aw_reg\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => split_aw38_out,
      D => high_aw0,
      Q => high_aw,
      R => aw_start
    );
\gen_write.m_axi_awvalid_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFF02020200"
    )
        port map (
      I0 => m_axi_wvalid_i,
      I1 => \^gen_write.s_axi_awready_i_reg_0\,
      I2 => \^gen_write.s_axi_bvalid_i_reg_0\,
      I3 => \gen_write.m_axi_awvalid_i_i_3_n_0\,
      I4 => \gen_write.m_axi_awvalid_i_i_4_n_0\,
      I5 => \^gen_write.m_axi_awvalid_i_reg_0\,
      O => \gen_write.m_axi_awvalid_i_i_1_n_0\
    );
\gen_write.m_axi_awvalid_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22002200220022F0"
    )
        port map (
      I0 => \gen_write.split_aw_reg_n_0\,
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => \m_axi_awvalid_i058_out__4\,
      I3 => \s_axi_awready_i162_out__0\,
      I4 => \^gen_write.m_axi_wvalid_i_reg_0\,
      I5 => \^gen_write.m_axi_awvalid_i_reg_0\,
      O => m_axi_wvalid_i
    );
\gen_write.m_axi_awvalid_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02F2020202020202"
    )
        port map (
      I0 => \m_axi_awvalid_i058_out__4\,
      I1 => \m_axi_awvalid_i1__0\,
      I2 => \s_axi_awready_i162_out__0\,
      I3 => \gen_write.split_w_reg_n_0\,
      I4 => \gen_write.split_aw_reg_n_0\,
      I5 => m_axi_bvalid,
      O => \gen_write.m_axi_awvalid_i_i_3_n_0\
    );
\gen_write.m_axi_awvalid_i_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \gen_write.aw_done_reg_n_0\,
      I1 => \gen_write.w_done_reg_n_0\,
      I2 => m_axi_awready,
      I3 => \^gen_write.m_axi_awvalid_i_reg_0\,
      O => \gen_write.m_axi_awvalid_i_i_4_n_0\
    );
\gen_write.m_axi_awvalid_i_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_write.m_axi_awvalid_i_reg_0\,
      I1 => \^gen_write.m_axi_wvalid_i_reg_0\,
      O => \m_axi_awvalid_i1__0\
    );
\gen_write.m_axi_awvalid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_write.m_axi_awvalid_i_i_1_n_0\,
      Q => \^gen_write.m_axi_awvalid_i_reg_0\,
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_write.m_axi_bready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88888888888888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^gen_write.s_axi_bvalid_i_reg_0\,
      I2 => \^gen_write.s_axi_awready_i_reg_0\,
      I3 => \gen_write.aw_done_reg_n_0\,
      I4 => \gen_write.w_done_reg_n_0\,
      I5 => \m_axi_awvalid_i49_out__0\,
      O => \gen_write.m_axi_bready_i_i_1_n_0\
    );
\gen_write.m_axi_bready_i_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \gen_write.split_w_reg_n_0\,
      I1 => \gen_write.split_aw_reg_n_0\,
      I2 => m_axi_bvalid,
      O => \m_axi_awvalid_i49_out__0\
    );
\gen_write.m_axi_bready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_write.m_axi_bready_i_i_1_n_0\,
      Q => m_axi_bready,
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_write.m_axi_wvalid_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFF02020200"
    )
        port map (
      I0 => m_axi_wvalid_i,
      I1 => \^gen_write.s_axi_awready_i_reg_0\,
      I2 => \^gen_write.s_axi_bvalid_i_reg_0\,
      I3 => \gen_write.m_axi_awvalid_i_i_3_n_0\,
      I4 => \gen_write.m_axi_wvalid_i_i_2_n_0\,
      I5 => \^gen_write.m_axi_wvalid_i_reg_0\,
      O => \gen_write.m_axi_wvalid_i_i_1_n_0\
    );
\gen_write.m_axi_wvalid_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \gen_write.aw_done_reg_n_0\,
      I1 => \gen_write.w_done_reg_n_0\,
      I2 => m_axi_wready,
      I3 => \^gen_write.m_axi_wvalid_i_reg_0\,
      O => \gen_write.m_axi_wvalid_i_i_2_n_0\
    );
\gen_write.m_axi_wvalid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_write.m_axi_wvalid_i_i_1_n_0\,
      Q => \^gen_write.m_axi_wvalid_i_reg_0\,
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_write.s_axi_awready_i_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_write.w_done_reg_0\,
      O => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_write.s_axi_awready_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000000D000"
    )
        port map (
      I0 => \gen_write.split_aw_reg_n_0\,
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => m_axi_bvalid,
      I3 => \s_axi_awready_i162_out__0\,
      I4 => \^gen_write.s_axi_bvalid_i_reg_0\,
      I5 => \^gen_write.s_axi_awready_i_reg_0\,
      O => \gen_write.s_axi_awready_i_i_2_n_0\
    );
\gen_write.s_axi_awready_i_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_write.aw_done_reg_n_0\,
      I1 => \gen_write.w_done_reg_n_0\,
      O => \s_axi_awready_i162_out__0\
    );
\gen_write.s_axi_awready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_write.s_axi_awready_i_i_2_n_0\,
      Q => \^gen_write.s_axi_awready_i_reg_0\,
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_write.s_axi_bvalid_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^gen_write.s_axi_bvalid_i_reg_0\,
      I2 => \^gen_write.s_axi_awready_i_reg_0\,
      O => \gen_write.s_axi_bvalid_i_i_1_n_0\
    );
\gen_write.s_axi_bvalid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \out\,
      CE => '1',
      D => \gen_write.s_axi_bvalid_i_i_1_n_0\,
      Q => \^gen_write.s_axi_bvalid_i_reg_0\,
      R => \gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_write.split_aw_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_wstrb(7),
      I2 => s_axi_wstrb(6),
      I3 => s_axi_wstrb(5),
      I4 => s_axi_wstrb(4),
      I5 => split_aw152_in,
      O => split_aw0
    );
\gen_write.split_aw_reg\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => split_aw38_out,
      D => split_aw0,
      Q => \gen_write.split_aw_reg_n_0\,
      R => aw_start
    );
\gen_write.split_w_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E0A0E0"
    )
        port map (
      I0 => \gen_write.split_w_reg_n_0\,
      I1 => \m_axi_bready_i__1\,
      I2 => \gen_write.w_done_reg_0\,
      I3 => \^gen_write.s_axi_bvalid_i_reg_0\,
      I4 => s_axi_bready,
      O => \gen_write.split_w_i_1_n_0\
    );
\gen_write.split_w_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \^gen_write.s_axi_awready_i_reg_0\,
      I1 => \gen_write.aw_done_reg_n_0\,
      I2 => \gen_write.w_done_reg_n_0\,
      I3 => m_axi_bvalid,
      I4 => \gen_write.split_aw_reg_n_0\,
      I5 => \gen_write.split_w_reg_n_0\,
      O => \m_axi_bready_i__1\
    );
\gen_write.split_w_reg\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \gen_write.split_w_i_1_n_0\,
      Q => \gen_write.split_w_reg_n_0\,
      R => '0'
    );
\gen_write.w_done_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => \^gen_write.s_axi_bvalid_i_reg_0\,
      I1 => \^gen_write.s_axi_awready_i_reg_0\,
      I2 => \^gen_write.m_axi_wvalid_i_reg_0\,
      I3 => m_axi_wready,
      I4 => \gen_write.w_done_reg_n_0\,
      O => \gen_write.w_done_i_1_n_0\
    );
\gen_write.w_done_reg\: unisim.vcomponents.FDRE
     port map (
      C => \out\,
      CE => '1',
      D => \gen_write.w_done_i_1_n_0\,
      Q => \gen_write.w_done_reg_n_0\,
      R => w_done
    );
\m_axi_araddr[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200030000"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => split_r,
      I2 => high_aw,
      I3 => \gen_write.split_w_reg_n_0\,
      I4 => s_axi_awaddr(0),
      I5 => \gen_read.ar_start_reg_n_0\,
      O => m_axi_araddr(0)
    );
\m_axi_araddr[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(10),
      O => m_axi_araddr(10)
    );
\m_axi_araddr[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(11),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(11),
      O => m_axi_araddr(11)
    );
\m_axi_araddr[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(12),
      O => m_axi_araddr(12)
    );
\m_axi_araddr[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(13),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(13),
      O => m_axi_araddr(13)
    );
\m_axi_araddr[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(14),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(14),
      O => m_axi_araddr(14)
    );
\m_axi_araddr[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(15),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(15),
      O => m_axi_araddr(15)
    );
\m_axi_araddr[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(16),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(16),
      O => m_axi_araddr(16)
    );
\m_axi_araddr[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(17),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(17),
      O => m_axi_araddr(17)
    );
\m_axi_araddr[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(18),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(18),
      O => m_axi_araddr(18)
    );
\m_axi_araddr[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(19),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(19),
      O => m_axi_araddr(19)
    );
\m_axi_araddr[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000200030000"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => split_r,
      I2 => high_aw,
      I3 => \gen_write.split_w_reg_n_0\,
      I4 => s_axi_awaddr(1),
      I5 => \gen_read.ar_start_reg_n_0\,
      O => m_axi_araddr(1)
    );
\m_axi_araddr[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(20),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(20),
      O => m_axi_araddr(20)
    );
\m_axi_araddr[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(21),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(21),
      O => m_axi_araddr(21)
    );
\m_axi_araddr[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(22),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(22),
      O => m_axi_araddr(22)
    );
\m_axi_araddr[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(23),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(23),
      O => m_axi_araddr(23)
    );
\m_axi_araddr[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(24),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(24),
      O => m_axi_araddr(24)
    );
\m_axi_araddr[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(25),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(25),
      O => m_axi_araddr(25)
    );
\m_axi_araddr[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(26),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(26),
      O => m_axi_araddr(26)
    );
\m_axi_araddr[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(27),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(27),
      O => m_axi_araddr(27)
    );
\m_axi_araddr[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(28),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(28),
      O => m_axi_araddr(28)
    );
\m_axi_araddr[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(29),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(29),
      O => m_axi_araddr(29)
    );
\m_axi_araddr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFEFEFFFE"
    )
        port map (
      I0 => split_r,
      I1 => high_aw,
      I2 => \gen_write.split_w_reg_n_0\,
      I3 => s_axi_awaddr(2),
      I4 => \gen_read.ar_start_reg_n_0\,
      I5 => s_axi_araddr(2),
      O => m_axi_araddr(2)
    );
\m_axi_araddr[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(30),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(30),
      O => m_axi_araddr(30)
    );
\m_axi_araddr[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(31),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(31),
      O => m_axi_araddr(31)
    );
\m_axi_araddr[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(32),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(32),
      O => m_axi_araddr(32)
    );
\m_axi_araddr[33]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(33),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(33),
      O => m_axi_araddr(33)
    );
\m_axi_araddr[34]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(34),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(34),
      O => m_axi_araddr(34)
    );
\m_axi_araddr[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(35),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(35),
      O => m_axi_araddr(35)
    );
\m_axi_araddr[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(36),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(36),
      O => m_axi_araddr(36)
    );
\m_axi_araddr[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(37),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(37),
      O => m_axi_araddr(37)
    );
\m_axi_araddr[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(38),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(38),
      O => m_axi_araddr(38)
    );
\m_axi_araddr[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(39),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(39),
      O => m_axi_araddr(39)
    );
\m_axi_araddr[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(3),
      O => m_axi_araddr(3)
    );
\m_axi_araddr[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(4),
      O => m_axi_araddr(4)
    );
\m_axi_araddr[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(5),
      O => m_axi_araddr(5)
    );
\m_axi_araddr[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(6),
      O => m_axi_araddr(6)
    );
\m_axi_araddr[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(7),
      O => m_axi_araddr(7)
    );
\m_axi_araddr[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(8),
      O => m_axi_araddr(8)
    );
\m_axi_araddr[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => \gen_read.ar_start_reg_n_0\,
      I2 => s_axi_awaddr(9),
      O => m_axi_araddr(9)
    );
\m_axi_wdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(32),
      I5 => s_axi_wdata(0),
      O => m_axi_wdata(0)
    );
\m_axi_wdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(42),
      I5 => s_axi_wdata(10),
      O => m_axi_wdata(10)
    );
\m_axi_wdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(43),
      I5 => s_axi_wdata(11),
      O => m_axi_wdata(11)
    );
\m_axi_wdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(44),
      I5 => s_axi_wdata(12),
      O => m_axi_wdata(12)
    );
\m_axi_wdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(45),
      I5 => s_axi_wdata(13),
      O => m_axi_wdata(13)
    );
\m_axi_wdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(46),
      I5 => s_axi_wdata(14),
      O => m_axi_wdata(14)
    );
\m_axi_wdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(47),
      I5 => s_axi_wdata(15),
      O => m_axi_wdata(15)
    );
\m_axi_wdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(48),
      I5 => s_axi_wdata(16),
      O => m_axi_wdata(16)
    );
\m_axi_wdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(49),
      I5 => s_axi_wdata(17),
      O => m_axi_wdata(17)
    );
\m_axi_wdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(50),
      I5 => s_axi_wdata(18),
      O => m_axi_wdata(18)
    );
\m_axi_wdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(51),
      I5 => s_axi_wdata(19),
      O => m_axi_wdata(19)
    );
\m_axi_wdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(33),
      I5 => s_axi_wdata(1),
      O => m_axi_wdata(1)
    );
\m_axi_wdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(52),
      I5 => s_axi_wdata(20),
      O => m_axi_wdata(20)
    );
\m_axi_wdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(53),
      I5 => s_axi_wdata(21),
      O => m_axi_wdata(21)
    );
\m_axi_wdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(54),
      I5 => s_axi_wdata(22),
      O => m_axi_wdata(22)
    );
\m_axi_wdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(55),
      I5 => s_axi_wdata(23),
      O => m_axi_wdata(23)
    );
\m_axi_wdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(56),
      I5 => s_axi_wdata(24),
      O => m_axi_wdata(24)
    );
\m_axi_wdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(57),
      I5 => s_axi_wdata(25),
      O => m_axi_wdata(25)
    );
\m_axi_wdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(58),
      I5 => s_axi_wdata(26),
      O => m_axi_wdata(26)
    );
\m_axi_wdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(59),
      I5 => s_axi_wdata(27),
      O => m_axi_wdata(27)
    );
\m_axi_wdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(60),
      I5 => s_axi_wdata(28),
      O => m_axi_wdata(28)
    );
\m_axi_wdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(61),
      I5 => s_axi_wdata(29),
      O => m_axi_wdata(29)
    );
\m_axi_wdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(34),
      I5 => s_axi_wdata(2),
      O => m_axi_wdata(2)
    );
\m_axi_wdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(62),
      I5 => s_axi_wdata(30),
      O => m_axi_wdata(30)
    );
\m_axi_wdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(63),
      I5 => s_axi_wdata(31),
      O => m_axi_wdata(31)
    );
\m_axi_wdata[31]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => s_axi_wstrb(2),
      I2 => s_axi_wstrb(1),
      I3 => s_axi_wstrb(0),
      O => split_aw152_in
    );
\m_axi_wdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(35),
      I5 => s_axi_wdata(3),
      O => m_axi_wdata(3)
    );
\m_axi_wdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(36),
      I5 => s_axi_wdata(4),
      O => m_axi_wdata(4)
    );
\m_axi_wdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(37),
      I5 => s_axi_wdata(5),
      O => m_axi_wdata(5)
    );
\m_axi_wdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(38),
      I5 => s_axi_wdata(6),
      O => m_axi_wdata(6)
    );
\m_axi_wdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(39),
      I5 => s_axi_wdata(7),
      O => m_axi_wdata(7)
    );
\m_axi_wdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(40),
      I5 => s_axi_wdata(8),
      O => m_axi_wdata(8)
    );
\m_axi_wdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wdata(41),
      I5 => s_axi_wdata(9),
      O => m_axi_wdata(9)
    );
\m_axi_wstrb[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wstrb(4),
      I5 => s_axi_wstrb(0),
      O => m_axi_wstrb(0)
    );
\m_axi_wstrb[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wstrb(5),
      I5 => s_axi_wstrb(1),
      O => m_axi_wstrb(1)
    );
\m_axi_wstrb[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wstrb(6),
      I5 => s_axi_wstrb(2),
      O => m_axi_wstrb(2)
    );
\m_axi_wstrb[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1011EFEE0000"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => split_aw152_in,
      I3 => \split_aw2__2\,
      I4 => s_axi_wstrb(7),
      I5 => s_axi_wstrb(3),
      O => m_axi_wstrb(3)
    );
\s_axi_bresp[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA8A8A8A"
    )
        port map (
      I0 => m_axi_bresp(0),
      I1 => m_axi_bresp(1),
      I2 => \gen_write.split_w_reg_n_0\,
      I3 => bresp_low(0),
      I4 => p_0_in2_in(1),
      O => s_axi_bresp(0)
    );
\s_axi_bresp[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_0_in2_in(1),
      I1 => \gen_write.split_w_reg_n_0\,
      I2 => m_axi_bresp(1),
      O => s_axi_bresp(1)
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(0),
      I1 => split_r,
      I2 => m_axi_rdata(0),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(10),
      I1 => split_r,
      I2 => m_axi_rdata(10),
      O => s_axi_rdata(10)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(11),
      I1 => split_r,
      I2 => m_axi_rdata(11),
      O => s_axi_rdata(11)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(12),
      I1 => split_r,
      I2 => m_axi_rdata(12),
      O => s_axi_rdata(12)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(13),
      I1 => split_r,
      I2 => m_axi_rdata(13),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(14),
      I1 => split_r,
      I2 => m_axi_rdata(14),
      O => s_axi_rdata(14)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(15),
      I1 => split_r,
      I2 => m_axi_rdata(15),
      O => s_axi_rdata(15)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(16),
      I1 => split_r,
      I2 => m_axi_rdata(16),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(17),
      I1 => split_r,
      I2 => m_axi_rdata(17),
      O => s_axi_rdata(17)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(18),
      I1 => split_r,
      I2 => m_axi_rdata(18),
      O => s_axi_rdata(18)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(19),
      I1 => split_r,
      I2 => m_axi_rdata(19),
      O => s_axi_rdata(19)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(1),
      I1 => split_r,
      I2 => m_axi_rdata(1),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(20),
      I1 => split_r,
      I2 => m_axi_rdata(20),
      O => s_axi_rdata(20)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(21),
      I1 => split_r,
      I2 => m_axi_rdata(21),
      O => s_axi_rdata(21)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(22),
      I1 => split_r,
      I2 => m_axi_rdata(22),
      O => s_axi_rdata(22)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(23),
      I1 => split_r,
      I2 => m_axi_rdata(23),
      O => s_axi_rdata(23)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(24),
      I1 => split_r,
      I2 => m_axi_rdata(24),
      O => s_axi_rdata(24)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(25),
      I1 => split_r,
      I2 => m_axi_rdata(25),
      O => s_axi_rdata(25)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(26),
      I1 => split_r,
      I2 => m_axi_rdata(26),
      O => s_axi_rdata(26)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(27),
      I1 => split_r,
      I2 => m_axi_rdata(27),
      O => s_axi_rdata(27)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(28),
      I1 => split_r,
      I2 => m_axi_rdata(28),
      O => s_axi_rdata(28)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(29),
      I1 => split_r,
      I2 => m_axi_rdata(29),
      O => s_axi_rdata(29)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(2),
      I1 => split_r,
      I2 => m_axi_rdata(2),
      O => s_axi_rdata(2)
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(30),
      I1 => split_r,
      I2 => m_axi_rdata(30),
      O => s_axi_rdata(30)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(31),
      I1 => split_r,
      I2 => m_axi_rdata(31),
      O => s_axi_rdata(31)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(3),
      I1 => split_r,
      I2 => m_axi_rdata(3),
      O => s_axi_rdata(3)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(4),
      I1 => split_r,
      I2 => m_axi_rdata(4),
      O => s_axi_rdata(4)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(5),
      I1 => split_r,
      I2 => m_axi_rdata(5),
      O => s_axi_rdata(5)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(6),
      I1 => split_r,
      I2 => m_axi_rdata(6),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(7),
      I1 => split_r,
      I2 => m_axi_rdata(7),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(8),
      I1 => split_r,
      I2 => m_axi_rdata(8),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rdata_low(9),
      I1 => split_r,
      I2 => m_axi_rdata(9),
      O => s_axi_rdata(9)
    );
\s_axi_rresp[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA8A8A8A"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => m_axi_rresp(1),
      I2 => split_r,
      I3 => rresp_low(0),
      I4 => rresp_low_2(1),
      O => s_axi_rresp(0)
    );
\s_axi_rresp[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => rresp_low_2(1),
      I1 => split_r,
      I2 => m_axi_rresp(1),
      O => s_axi_rresp(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 40;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 0;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 2;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 1;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is "zynquplus";
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 0;
  attribute C_MAX_SPLIT_BEATS : integer;
  attribute C_MAX_SPLIT_BEATS of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 16;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 2;
  attribute C_M_AXI_BYTES_LOG : integer;
  attribute C_M_AXI_BYTES_LOG of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 2;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 32;
  attribute C_PACKING_LEVEL : integer;
  attribute C_PACKING_LEVEL of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 1;
  attribute C_RATIO : integer;
  attribute C_RATIO of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 2;
  attribute C_RATIO_LOG : integer;
  attribute C_RATIO_LOG of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 1;
  attribute C_SUPPORTS_ID : integer;
  attribute C_SUPPORTS_ID of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 1;
  attribute C_S_AXI_BYTES_LOG : integer;
  attribute C_S_AXI_BYTES_LOG of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 3;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 64;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is "axi_dwidth_converter_v2_1_19_top";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 2;
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 2;
  attribute P_MAX_SPLIT_BEATS : integer;
  attribute P_MAX_SPLIT_BEATS of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top : entity is 16;
end sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top;

architecture STRUCTURE of sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \split_aw2__2\ : STD_LOGIC;
  attribute keep : string;
  attribute keep of m_axi_aclk : signal is "true";
  attribute keep of m_axi_aresetn : signal is "true";
  attribute keep of s_axi_aclk : signal is "true";
  attribute keep of s_axi_aresetn : signal is "true";
begin
  \^m_axi_rdata\(31 downto 0) <= m_axi_rdata(31 downto 0);
  \^s_axi_arprot\(2 downto 0) <= s_axi_arprot(2 downto 0);
  \^s_axi_awprot\(2 downto 0) <= s_axi_awprot(2 downto 0);
  m_axi_araddr(39 downto 0) <= \^m_axi_araddr\(39 downto 0);
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2 downto 0) <= \^s_axi_arprot\(2 downto 0);
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_awaddr(39 downto 0) <= \^m_axi_araddr\(39 downto 0);
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2 downto 0) <= \^s_axi_awprot\(2 downto 0);
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_rdata(63 downto 32) <= \^m_axi_rdata\(31 downto 0);
  s_axi_rdata(31 downto 0) <= \^s_axi_rdata\(31 downto 0);
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_downsizer.gen_lite_downsizer.lite_downsizer_inst\: entity work.sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_axi4lite_downsizer
     port map (
      \gen_read.m_axi_arvalid_i_reg_0\ => m_axi_arvalid,
      \gen_read.s_axi_arready_i_reg_0\ => s_axi_arready,
      \gen_read.s_axi_rvalid_i_reg_0\ => s_axi_rvalid,
      \gen_write.m_axi_awvalid_i_reg_0\ => m_axi_awvalid,
      \gen_write.m_axi_wvalid_i_reg_0\ => m_axi_wvalid,
      \gen_write.s_axi_awready_i_reg_0\ => \^s_axi_awready\,
      \gen_write.s_axi_bvalid_i_reg_0\ => s_axi_bvalid,
      \gen_write.w_done_reg_0\ => s_axi_aresetn,
      m_axi_araddr(39 downto 0) => \^m_axi_araddr\(39 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_awready => m_axi_awready,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => \^m_axi_rdata\(31 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      \out\ => s_axi_aclk,
      s_axi_araddr(39 downto 0) => s_axi_araddr(39 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(39 downto 0) => s_axi_awaddr(39 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_rdata(31 downto 0) => \^s_axi_rdata\(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \split_aw2__2\ => \split_aw2__2\
    );
\m_axi_wdata[31]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_wstrb(7),
      I1 => s_axi_wstrb(6),
      I2 => s_axi_wstrb(5),
      I3 => s_axi_wstrb(4),
      O => \split_aw2__2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sys_top_auto_ds_8 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of sys_top_auto_ds_8 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of sys_top_auto_ds_8 : entity is "sys_top_auto_ds_8,axi_dwidth_converter_v2_1_19_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of sys_top_auto_ds_8 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of sys_top_auto_ds_8 : entity is "axi_dwidth_converter_v2_1_19_top,Vivado 2019.1";
end sys_top_auto_ds_8;

architecture STRUCTURE of sys_top_auto_ds_8 is
  signal NLW_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 40;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of inst : label is 0;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 2;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of inst : label is 1;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynquplus";
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of inst : label is 0;
  attribute C_MAX_SPLIT_BEATS : integer;
  attribute C_MAX_SPLIT_BEATS of inst : label is 16;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of inst : label is 2;
  attribute C_M_AXI_BYTES_LOG : integer;
  attribute C_M_AXI_BYTES_LOG of inst : label is 2;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_PACKING_LEVEL : integer;
  attribute C_PACKING_LEVEL of inst : label is 1;
  attribute C_RATIO : integer;
  attribute C_RATIO of inst : label is 2;
  attribute C_RATIO_LOG : integer;
  attribute C_RATIO_LOG of inst : label is 1;
  attribute C_SUPPORTS_ID : integer;
  attribute C_SUPPORTS_ID of inst : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of inst : label is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of inst : label is 1;
  attribute C_S_AXI_BYTES_LOG : integer;
  attribute C_S_AXI_BYTES_LOG of inst : label is 3;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 64;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of inst : label is 1;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of inst : label is 2;
  attribute P_MAX_SPLIT_BEATS : integer;
  attribute P_MAX_SPLIT_BEATS of inst : label is 16;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 199998001, ID_WIDTH 0, ADDR_WIDTH 40, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN sys_top_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 SI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME SI_CLK, FREQ_HZ 199998001, PHASE 0.000, CLK_DOMAIN sys_top_zynq_ultra_ps_e_0_0_pl_clk1, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET S_AXI_ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 SI_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4LITE, FREQ_HZ 199998001, ID_WIDTH 0, ADDR_WIDTH 40, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN sys_top_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top
     port map (
      m_axi_aclk => '0',
      m_axi_araddr(39 downto 0) => m_axi_araddr(39 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_aresetn => '0',
      m_axi_arlen(7 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_inst_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(39 downto 0) => m_axi_awaddr(39 downto 0),
      m_axi_awburst(1 downto 0) => NLW_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awlen(7 downto 0) => NLW_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_inst_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rlast => '1',
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast => NLW_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(39 downto 0) => s_axi_araddr(39 downto 0),
      s_axi_arburst(1 downto 0) => B"01",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(39 downto 0) => s_axi_awaddr(39 downto 0),
      s_axi_awburst(1 downto 0) => B"01",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wlast => '1',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
