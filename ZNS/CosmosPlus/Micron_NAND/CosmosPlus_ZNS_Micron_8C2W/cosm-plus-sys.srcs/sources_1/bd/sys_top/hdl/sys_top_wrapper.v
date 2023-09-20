//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Fri Sep  3 11:37:20 2021
//Host        : DESKTOP-KFMNFE2 running 64-bit major release  (build 9200)
//Command     : generate_target sys_top_wrapper.bd
//Design      : sys_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module sys_top_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    nand_if_0_nand_ale,
    nand_if_0_nand_ce,
    nand_if_0_nand_cle,
    nand_if_0_nand_dq,
    nand_if_0_nand_dqs_n,
    nand_if_0_nand_dqs_p,
    nand_if_0_nand_rb,
    nand_if_0_nand_re_n,
    nand_if_0_nand_re_p,
    nand_if_0_nand_we,
    nand_if_0_nand_wp,
    nand_if_1_nand_ale,
    nand_if_1_nand_ce,
    nand_if_1_nand_cle,
    nand_if_1_nand_dq,
    nand_if_1_nand_dqs_n,
    nand_if_1_nand_dqs_p,
    nand_if_1_nand_rb,
    nand_if_1_nand_re_n,
    nand_if_1_nand_re_p,
    nand_if_1_nand_we,
    nand_if_1_nand_wp,
    nand_if_2_nand_ale,
    nand_if_2_nand_ce,
    nand_if_2_nand_cle,
    nand_if_2_nand_dq,
    nand_if_2_nand_dqs_n,
    nand_if_2_nand_dqs_p,
    nand_if_2_nand_rb,
    nand_if_2_nand_re_n,
    nand_if_2_nand_re_p,
    nand_if_2_nand_we,
    nand_if_2_nand_wp,
    nand_if_3_nand_ale,
    nand_if_3_nand_ce,
    nand_if_3_nand_cle,
    nand_if_3_nand_dq,
    nand_if_3_nand_dqs_n,
    nand_if_3_nand_dqs_p,
    nand_if_3_nand_rb,
    nand_if_3_nand_re_n,
    nand_if_3_nand_re_p,
    nand_if_3_nand_we,
    nand_if_3_nand_wp,
    nand_if_4_nand_ale,
    nand_if_4_nand_ce,
    nand_if_4_nand_cle,
    nand_if_4_nand_dq,
    nand_if_4_nand_dqs_n,
    nand_if_4_nand_dqs_p,
    nand_if_4_nand_rb,
    nand_if_4_nand_re_n,
    nand_if_4_nand_re_p,
    nand_if_4_nand_we,
    nand_if_4_nand_wp,
    nand_if_5_nand_ale,
    nand_if_5_nand_ce,
    nand_if_5_nand_cle,
    nand_if_5_nand_dq,
    nand_if_5_nand_dqs_n,
    nand_if_5_nand_dqs_p,
    nand_if_5_nand_rb,
    nand_if_5_nand_re_n,
    nand_if_5_nand_re_p,
    nand_if_5_nand_we,
    nand_if_5_nand_wp,
    nand_if_6_nand_ale,
    nand_if_6_nand_ce,
    nand_if_6_nand_cle,
    nand_if_6_nand_dq,
    nand_if_6_nand_dqs_n,
    nand_if_6_nand_dqs_p,
    nand_if_6_nand_rb,
    nand_if_6_nand_re_n,
    nand_if_6_nand_re_p,
    nand_if_6_nand_we,
    nand_if_6_nand_wp,
    nand_if_7_nand_ale,
    nand_if_7_nand_ce,
    nand_if_7_nand_cle,
    nand_if_7_nand_dq,
    nand_if_7_nand_dqs_n,
    nand_if_7_nand_dqs_p,
    nand_if_7_nand_rb,
    nand_if_7_nand_re_n,
    nand_if_7_nand_re_p,
    nand_if_7_nand_we,
    nand_if_7_nand_wp,
    pcie_lane_rxn,
    pcie_lane_rxp,
    pcie_lane_txn,
    pcie_lane_txp,
    pcie_perst_n,
    pcie_ref_clk_clk_n,
    pcie_ref_clk_clk_p,
    user_led_tri_o,
    user_sw_tri_i);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output nand_if_0_nand_ale;
  output [7:0]nand_if_0_nand_ce;
  output nand_if_0_nand_cle;
  inout [7:0]nand_if_0_nand_dq;
  inout nand_if_0_nand_dqs_n;
  inout nand_if_0_nand_dqs_p;
  input [7:0]nand_if_0_nand_rb;
  output nand_if_0_nand_re_n;
  output nand_if_0_nand_re_p;
  output nand_if_0_nand_we;
  output nand_if_0_nand_wp;
  output nand_if_1_nand_ale;
  output [7:0]nand_if_1_nand_ce;
  output nand_if_1_nand_cle;
  inout [7:0]nand_if_1_nand_dq;
  inout nand_if_1_nand_dqs_n;
  inout nand_if_1_nand_dqs_p;
  input [7:0]nand_if_1_nand_rb;
  output nand_if_1_nand_re_n;
  output nand_if_1_nand_re_p;
  output nand_if_1_nand_we;
  output nand_if_1_nand_wp;
  output nand_if_2_nand_ale;
  output [7:0]nand_if_2_nand_ce;
  output nand_if_2_nand_cle;
  inout [7:0]nand_if_2_nand_dq;
  inout nand_if_2_nand_dqs_n;
  inout nand_if_2_nand_dqs_p;
  input [7:0]nand_if_2_nand_rb;
  output nand_if_2_nand_re_n;
  output nand_if_2_nand_re_p;
  output nand_if_2_nand_we;
  output nand_if_2_nand_wp;
  output nand_if_3_nand_ale;
  output [7:0]nand_if_3_nand_ce;
  output nand_if_3_nand_cle;
  inout [7:0]nand_if_3_nand_dq;
  inout nand_if_3_nand_dqs_n;
  inout nand_if_3_nand_dqs_p;
  input [7:0]nand_if_3_nand_rb;
  output nand_if_3_nand_re_n;
  output nand_if_3_nand_re_p;
  output nand_if_3_nand_we;
  output nand_if_3_nand_wp;
  output nand_if_4_nand_ale;
  output [7:0]nand_if_4_nand_ce;
  output nand_if_4_nand_cle;
  inout [7:0]nand_if_4_nand_dq;
  inout nand_if_4_nand_dqs_n;
  inout nand_if_4_nand_dqs_p;
  input [7:0]nand_if_4_nand_rb;
  output nand_if_4_nand_re_n;
  output nand_if_4_nand_re_p;
  output nand_if_4_nand_we;
  output nand_if_4_nand_wp;
  output nand_if_5_nand_ale;
  output [7:0]nand_if_5_nand_ce;
  output nand_if_5_nand_cle;
  inout [7:0]nand_if_5_nand_dq;
  inout nand_if_5_nand_dqs_n;
  inout nand_if_5_nand_dqs_p;
  input [7:0]nand_if_5_nand_rb;
  output nand_if_5_nand_re_n;
  output nand_if_5_nand_re_p;
  output nand_if_5_nand_we;
  output nand_if_5_nand_wp;
  output nand_if_6_nand_ale;
  output [7:0]nand_if_6_nand_ce;
  output nand_if_6_nand_cle;
  inout [7:0]nand_if_6_nand_dq;
  inout nand_if_6_nand_dqs_n;
  inout nand_if_6_nand_dqs_p;
  input [7:0]nand_if_6_nand_rb;
  output nand_if_6_nand_re_n;
  output nand_if_6_nand_re_p;
  output nand_if_6_nand_we;
  output nand_if_6_nand_wp;
  output nand_if_7_nand_ale;
  output [7:0]nand_if_7_nand_ce;
  output nand_if_7_nand_cle;
  inout [7:0]nand_if_7_nand_dq;
  inout nand_if_7_nand_dqs_n;
  inout nand_if_7_nand_dqs_p;
  input [7:0]nand_if_7_nand_rb;
  output nand_if_7_nand_re_n;
  output nand_if_7_nand_re_p;
  output nand_if_7_nand_we;
  output nand_if_7_nand_wp;
  input [7:0]pcie_lane_rxn;
  input [7:0]pcie_lane_rxp;
  output [7:0]pcie_lane_txn;
  output [7:0]pcie_lane_txp;
  input pcie_perst_n;
  input pcie_ref_clk_clk_n;
  input pcie_ref_clk_clk_p;
  output [7:0]user_led_tri_o;
  input [7:0]user_sw_tri_i;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire nand_if_0_nand_ale;
  wire [7:0]nand_if_0_nand_ce;
  wire nand_if_0_nand_cle;
  wire [7:0]nand_if_0_nand_dq;
  wire nand_if_0_nand_dqs_n;
  wire nand_if_0_nand_dqs_p;
  wire [7:0]nand_if_0_nand_rb;
  wire nand_if_0_nand_re_n;
  wire nand_if_0_nand_re_p;
  wire nand_if_0_nand_we;
  wire nand_if_0_nand_wp;
  wire nand_if_1_nand_ale;
  wire [7:0]nand_if_1_nand_ce;
  wire nand_if_1_nand_cle;
  wire [7:0]nand_if_1_nand_dq;
  wire nand_if_1_nand_dqs_n;
  wire nand_if_1_nand_dqs_p;
  wire [7:0]nand_if_1_nand_rb;
  wire nand_if_1_nand_re_n;
  wire nand_if_1_nand_re_p;
  wire nand_if_1_nand_we;
  wire nand_if_1_nand_wp;
  wire nand_if_2_nand_ale;
  wire [7:0]nand_if_2_nand_ce;
  wire nand_if_2_nand_cle;
  wire [7:0]nand_if_2_nand_dq;
  wire nand_if_2_nand_dqs_n;
  wire nand_if_2_nand_dqs_p;
  wire [7:0]nand_if_2_nand_rb;
  wire nand_if_2_nand_re_n;
  wire nand_if_2_nand_re_p;
  wire nand_if_2_nand_we;
  wire nand_if_2_nand_wp;
  wire nand_if_3_nand_ale;
  wire [7:0]nand_if_3_nand_ce;
  wire nand_if_3_nand_cle;
  wire [7:0]nand_if_3_nand_dq;
  wire nand_if_3_nand_dqs_n;
  wire nand_if_3_nand_dqs_p;
  wire [7:0]nand_if_3_nand_rb;
  wire nand_if_3_nand_re_n;
  wire nand_if_3_nand_re_p;
  wire nand_if_3_nand_we;
  wire nand_if_3_nand_wp;
  wire nand_if_4_nand_ale;
  wire [7:0]nand_if_4_nand_ce;
  wire nand_if_4_nand_cle;
  wire [7:0]nand_if_4_nand_dq;
  wire nand_if_4_nand_dqs_n;
  wire nand_if_4_nand_dqs_p;
  wire [7:0]nand_if_4_nand_rb;
  wire nand_if_4_nand_re_n;
  wire nand_if_4_nand_re_p;
  wire nand_if_4_nand_we;
  wire nand_if_4_nand_wp;
  wire nand_if_5_nand_ale;
  wire [7:0]nand_if_5_nand_ce;
  wire nand_if_5_nand_cle;
  wire [7:0]nand_if_5_nand_dq;
  wire nand_if_5_nand_dqs_n;
  wire nand_if_5_nand_dqs_p;
  wire [7:0]nand_if_5_nand_rb;
  wire nand_if_5_nand_re_n;
  wire nand_if_5_nand_re_p;
  wire nand_if_5_nand_we;
  wire nand_if_5_nand_wp;
  wire nand_if_6_nand_ale;
  wire [7:0]nand_if_6_nand_ce;
  wire nand_if_6_nand_cle;
  wire [7:0]nand_if_6_nand_dq;
  wire nand_if_6_nand_dqs_n;
  wire nand_if_6_nand_dqs_p;
  wire [7:0]nand_if_6_nand_rb;
  wire nand_if_6_nand_re_n;
  wire nand_if_6_nand_re_p;
  wire nand_if_6_nand_we;
  wire nand_if_6_nand_wp;
  wire nand_if_7_nand_ale;
  wire [7:0]nand_if_7_nand_ce;
  wire nand_if_7_nand_cle;
  wire [7:0]nand_if_7_nand_dq;
  wire nand_if_7_nand_dqs_n;
  wire nand_if_7_nand_dqs_p;
  wire [7:0]nand_if_7_nand_rb;
  wire nand_if_7_nand_re_n;
  wire nand_if_7_nand_re_p;
  wire nand_if_7_nand_we;
  wire nand_if_7_nand_wp;
  wire [7:0]pcie_lane_rxn;
  wire [7:0]pcie_lane_rxp;
  wire [7:0]pcie_lane_txn;
  wire [7:0]pcie_lane_txp;
  wire pcie_perst_n;
  wire pcie_ref_clk_clk_n;
  wire pcie_ref_clk_clk_p;
  wire [7:0]user_led_tri_o;
  wire [7:0]user_sw_tri_i;

  sys_top sys_top_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .nand_if_0_nand_ale(nand_if_0_nand_ale),
        .nand_if_0_nand_ce(nand_if_0_nand_ce),
        .nand_if_0_nand_cle(nand_if_0_nand_cle),
        .nand_if_0_nand_dq(nand_if_0_nand_dq),
        .nand_if_0_nand_dqs_n(nand_if_0_nand_dqs_n),
        .nand_if_0_nand_dqs_p(nand_if_0_nand_dqs_p),
        .nand_if_0_nand_rb(nand_if_0_nand_rb),
        .nand_if_0_nand_re_n(nand_if_0_nand_re_n),
        .nand_if_0_nand_re_p(nand_if_0_nand_re_p),
        .nand_if_0_nand_we(nand_if_0_nand_we),
        .nand_if_0_nand_wp(nand_if_0_nand_wp),
        .nand_if_1_nand_ale(nand_if_1_nand_ale),
        .nand_if_1_nand_ce(nand_if_1_nand_ce),
        .nand_if_1_nand_cle(nand_if_1_nand_cle),
        .nand_if_1_nand_dq(nand_if_1_nand_dq),
        .nand_if_1_nand_dqs_n(nand_if_1_nand_dqs_n),
        .nand_if_1_nand_dqs_p(nand_if_1_nand_dqs_p),
        .nand_if_1_nand_rb(nand_if_1_nand_rb),
        .nand_if_1_nand_re_n(nand_if_1_nand_re_n),
        .nand_if_1_nand_re_p(nand_if_1_nand_re_p),
        .nand_if_1_nand_we(nand_if_1_nand_we),
        .nand_if_1_nand_wp(nand_if_1_nand_wp),
        .nand_if_2_nand_ale(nand_if_2_nand_ale),
        .nand_if_2_nand_ce(nand_if_2_nand_ce),
        .nand_if_2_nand_cle(nand_if_2_nand_cle),
        .nand_if_2_nand_dq(nand_if_2_nand_dq),
        .nand_if_2_nand_dqs_n(nand_if_2_nand_dqs_n),
        .nand_if_2_nand_dqs_p(nand_if_2_nand_dqs_p),
        .nand_if_2_nand_rb(nand_if_2_nand_rb),
        .nand_if_2_nand_re_n(nand_if_2_nand_re_n),
        .nand_if_2_nand_re_p(nand_if_2_nand_re_p),
        .nand_if_2_nand_we(nand_if_2_nand_we),
        .nand_if_2_nand_wp(nand_if_2_nand_wp),
        .nand_if_3_nand_ale(nand_if_3_nand_ale),
        .nand_if_3_nand_ce(nand_if_3_nand_ce),
        .nand_if_3_nand_cle(nand_if_3_nand_cle),
        .nand_if_3_nand_dq(nand_if_3_nand_dq),
        .nand_if_3_nand_dqs_n(nand_if_3_nand_dqs_n),
        .nand_if_3_nand_dqs_p(nand_if_3_nand_dqs_p),
        .nand_if_3_nand_rb(nand_if_3_nand_rb),
        .nand_if_3_nand_re_n(nand_if_3_nand_re_n),
        .nand_if_3_nand_re_p(nand_if_3_nand_re_p),
        .nand_if_3_nand_we(nand_if_3_nand_we),
        .nand_if_3_nand_wp(nand_if_3_nand_wp),
        .nand_if_4_nand_ale(nand_if_4_nand_ale),
        .nand_if_4_nand_ce(nand_if_4_nand_ce),
        .nand_if_4_nand_cle(nand_if_4_nand_cle),
        .nand_if_4_nand_dq(nand_if_4_nand_dq),
        .nand_if_4_nand_dqs_n(nand_if_4_nand_dqs_n),
        .nand_if_4_nand_dqs_p(nand_if_4_nand_dqs_p),
        .nand_if_4_nand_rb(nand_if_4_nand_rb),
        .nand_if_4_nand_re_n(nand_if_4_nand_re_n),
        .nand_if_4_nand_re_p(nand_if_4_nand_re_p),
        .nand_if_4_nand_we(nand_if_4_nand_we),
        .nand_if_4_nand_wp(nand_if_4_nand_wp),
        .nand_if_5_nand_ale(nand_if_5_nand_ale),
        .nand_if_5_nand_ce(nand_if_5_nand_ce),
        .nand_if_5_nand_cle(nand_if_5_nand_cle),
        .nand_if_5_nand_dq(nand_if_5_nand_dq),
        .nand_if_5_nand_dqs_n(nand_if_5_nand_dqs_n),
        .nand_if_5_nand_dqs_p(nand_if_5_nand_dqs_p),
        .nand_if_5_nand_rb(nand_if_5_nand_rb),
        .nand_if_5_nand_re_n(nand_if_5_nand_re_n),
        .nand_if_5_nand_re_p(nand_if_5_nand_re_p),
        .nand_if_5_nand_we(nand_if_5_nand_we),
        .nand_if_5_nand_wp(nand_if_5_nand_wp),
        .nand_if_6_nand_ale(nand_if_6_nand_ale),
        .nand_if_6_nand_ce(nand_if_6_nand_ce),
        .nand_if_6_nand_cle(nand_if_6_nand_cle),
        .nand_if_6_nand_dq(nand_if_6_nand_dq),
        .nand_if_6_nand_dqs_n(nand_if_6_nand_dqs_n),
        .nand_if_6_nand_dqs_p(nand_if_6_nand_dqs_p),
        .nand_if_6_nand_rb(nand_if_6_nand_rb),
        .nand_if_6_nand_re_n(nand_if_6_nand_re_n),
        .nand_if_6_nand_re_p(nand_if_6_nand_re_p),
        .nand_if_6_nand_we(nand_if_6_nand_we),
        .nand_if_6_nand_wp(nand_if_6_nand_wp),
        .nand_if_7_nand_ale(nand_if_7_nand_ale),
        .nand_if_7_nand_ce(nand_if_7_nand_ce),
        .nand_if_7_nand_cle(nand_if_7_nand_cle),
        .nand_if_7_nand_dq(nand_if_7_nand_dq),
        .nand_if_7_nand_dqs_n(nand_if_7_nand_dqs_n),
        .nand_if_7_nand_dqs_p(nand_if_7_nand_dqs_p),
        .nand_if_7_nand_rb(nand_if_7_nand_rb),
        .nand_if_7_nand_re_n(nand_if_7_nand_re_n),
        .nand_if_7_nand_re_p(nand_if_7_nand_re_p),
        .nand_if_7_nand_we(nand_if_7_nand_we),
        .nand_if_7_nand_wp(nand_if_7_nand_wp),
        .pcie_lane_rxn(pcie_lane_rxn),
        .pcie_lane_rxp(pcie_lane_rxp),
        .pcie_lane_txn(pcie_lane_txn),
        .pcie_lane_txp(pcie_lane_txp),
        .pcie_perst_n(pcie_perst_n),
        .pcie_ref_clk_clk_n(pcie_ref_clk_clk_n),
        .pcie_ref_clk_clk_p(pcie_ref_clk_clk_p),
        .user_led_tri_o(user_led_tri_o),
        .user_sw_tri_i(user_sw_tri_i));
endmodule
