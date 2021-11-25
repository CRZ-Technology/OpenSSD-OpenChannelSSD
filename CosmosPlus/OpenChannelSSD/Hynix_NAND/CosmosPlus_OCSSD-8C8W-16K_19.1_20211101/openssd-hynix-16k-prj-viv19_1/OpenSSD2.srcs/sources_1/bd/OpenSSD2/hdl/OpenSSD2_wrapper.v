//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Nov  1 17:44:54 2021
//Host        : DESKTOP-KFMNFE2 running 64-bit major release  (build 9200)
//Command     : generate_target OpenSSD2_wrapper.bd
//Design      : OpenSSD2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module OpenSSD2_wrapper
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
    IO_NAND_CH0_DQ,
    IO_NAND_CH0_DQS_N,
    IO_NAND_CH0_DQS_P,
    IO_NAND_CH1_DQ,
    IO_NAND_CH1_DQS_N,
    IO_NAND_CH1_DQS_P,
    IO_NAND_CH2_DQ,
    IO_NAND_CH2_DQS_N,
    IO_NAND_CH2_DQS_P,
    IO_NAND_CH3_DQ,
    IO_NAND_CH3_DQS_N,
    IO_NAND_CH3_DQS_P,
    IO_NAND_CH4_DQ,
    IO_NAND_CH4_DQS_N,
    IO_NAND_CH4_DQS_P,
    IO_NAND_CH5_DQ,
    IO_NAND_CH5_DQS_N,
    IO_NAND_CH5_DQS_P,
    IO_NAND_CH6_DQ,
    IO_NAND_CH6_DQS_N,
    IO_NAND_CH6_DQS_P,
    IO_NAND_CH7_DQ,
    IO_NAND_CH7_DQS_N,
    IO_NAND_CH7_DQS_P,
    I_NAND_CH0_RB,
    I_NAND_CH1_RB,
    I_NAND_CH2_RB,
    I_NAND_CH3_RB,
    I_NAND_CH4_RB,
    I_NAND_CH5_RB,
    I_NAND_CH6_RB,
    I_NAND_CH7_RB,
    O_DEBUG,
    O_NAND_CH0_ALE,
    O_NAND_CH0_CE,
    O_NAND_CH0_CLE,
    O_NAND_CH0_RE_N,
    O_NAND_CH0_RE_P,
    O_NAND_CH0_WE,
    O_NAND_CH0_WP,
    O_NAND_CH1_ALE,
    O_NAND_CH1_CE,
    O_NAND_CH1_CLE,
    O_NAND_CH1_RE_N,
    O_NAND_CH1_RE_P,
    O_NAND_CH1_WE,
    O_NAND_CH1_WP,
    O_NAND_CH2_ALE,
    O_NAND_CH2_CE,
    O_NAND_CH2_CLE,
    O_NAND_CH2_RE_N,
    O_NAND_CH2_RE_P,
    O_NAND_CH2_WE,
    O_NAND_CH2_WP,
    O_NAND_CH3_ALE,
    O_NAND_CH3_CE,
    O_NAND_CH3_CLE,
    O_NAND_CH3_RE_N,
    O_NAND_CH3_RE_P,
    O_NAND_CH3_WE,
    O_NAND_CH3_WP,
    O_NAND_CH4_ALE,
    O_NAND_CH4_CE,
    O_NAND_CH4_CLE,
    O_NAND_CH4_RE_N,
    O_NAND_CH4_RE_P,
    O_NAND_CH4_WE,
    O_NAND_CH4_WP,
    O_NAND_CH5_ALE,
    O_NAND_CH5_CE,
    O_NAND_CH5_CLE,
    O_NAND_CH5_RE_N,
    O_NAND_CH5_RE_P,
    O_NAND_CH5_WE,
    O_NAND_CH5_WP,
    O_NAND_CH6_ALE,
    O_NAND_CH6_CE,
    O_NAND_CH6_CLE,
    O_NAND_CH6_RE_N,
    O_NAND_CH6_RE_P,
    O_NAND_CH6_WE,
    O_NAND_CH6_WP,
    O_NAND_CH7_ALE,
    O_NAND_CH7_CE,
    O_NAND_CH7_CLE,
    O_NAND_CH7_RE_N,
    O_NAND_CH7_RE_P,
    O_NAND_CH7_WE,
    O_NAND_CH7_WP,
    pcie_perst_n,
    pcie_ref_clk_n,
    pcie_ref_clk_p,
    pcie_rx_n,
    pcie_rx_p,
    pcie_tx_n,
    pcie_tx_p);
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
  inout [7:0]IO_NAND_CH0_DQ;
  inout IO_NAND_CH0_DQS_N;
  inout IO_NAND_CH0_DQS_P;
  inout [7:0]IO_NAND_CH1_DQ;
  inout IO_NAND_CH1_DQS_N;
  inout IO_NAND_CH1_DQS_P;
  inout [7:0]IO_NAND_CH2_DQ;
  inout IO_NAND_CH2_DQS_N;
  inout IO_NAND_CH2_DQS_P;
  inout [7:0]IO_NAND_CH3_DQ;
  inout IO_NAND_CH3_DQS_N;
  inout IO_NAND_CH3_DQS_P;
  inout [7:0]IO_NAND_CH4_DQ;
  inout IO_NAND_CH4_DQS_N;
  inout IO_NAND_CH4_DQS_P;
  inout [7:0]IO_NAND_CH5_DQ;
  inout IO_NAND_CH5_DQS_N;
  inout IO_NAND_CH5_DQS_P;
  inout [7:0]IO_NAND_CH6_DQ;
  inout IO_NAND_CH6_DQS_N;
  inout IO_NAND_CH6_DQS_P;
  inout [7:0]IO_NAND_CH7_DQ;
  inout IO_NAND_CH7_DQS_N;
  inout IO_NAND_CH7_DQS_P;
  input [7:0]I_NAND_CH0_RB;
  input [7:0]I_NAND_CH1_RB;
  input [7:0]I_NAND_CH2_RB;
  input [7:0]I_NAND_CH3_RB;
  input [7:0]I_NAND_CH4_RB;
  input [7:0]I_NAND_CH5_RB;
  input [7:0]I_NAND_CH6_RB;
  input [7:0]I_NAND_CH7_RB;
  output [31:0]O_DEBUG;
  output O_NAND_CH0_ALE;
  output [7:0]O_NAND_CH0_CE;
  output O_NAND_CH0_CLE;
  output O_NAND_CH0_RE_N;
  output O_NAND_CH0_RE_P;
  output O_NAND_CH0_WE;
  output O_NAND_CH0_WP;
  output O_NAND_CH1_ALE;
  output [7:0]O_NAND_CH1_CE;
  output O_NAND_CH1_CLE;
  output O_NAND_CH1_RE_N;
  output O_NAND_CH1_RE_P;
  output O_NAND_CH1_WE;
  output O_NAND_CH1_WP;
  output O_NAND_CH2_ALE;
  output [7:0]O_NAND_CH2_CE;
  output O_NAND_CH2_CLE;
  output O_NAND_CH2_RE_N;
  output O_NAND_CH2_RE_P;
  output O_NAND_CH2_WE;
  output O_NAND_CH2_WP;
  output O_NAND_CH3_ALE;
  output [7:0]O_NAND_CH3_CE;
  output O_NAND_CH3_CLE;
  output O_NAND_CH3_RE_N;
  output O_NAND_CH3_RE_P;
  output O_NAND_CH3_WE;
  output O_NAND_CH3_WP;
  output O_NAND_CH4_ALE;
  output [7:0]O_NAND_CH4_CE;
  output O_NAND_CH4_CLE;
  output O_NAND_CH4_RE_N;
  output O_NAND_CH4_RE_P;
  output O_NAND_CH4_WE;
  output O_NAND_CH4_WP;
  output O_NAND_CH5_ALE;
  output [7:0]O_NAND_CH5_CE;
  output O_NAND_CH5_CLE;
  output O_NAND_CH5_RE_N;
  output O_NAND_CH5_RE_P;
  output O_NAND_CH5_WE;
  output O_NAND_CH5_WP;
  output O_NAND_CH6_ALE;
  output [7:0]O_NAND_CH6_CE;
  output O_NAND_CH6_CLE;
  output O_NAND_CH6_RE_N;
  output O_NAND_CH6_RE_P;
  output O_NAND_CH6_WE;
  output O_NAND_CH6_WP;
  output O_NAND_CH7_ALE;
  output [7:0]O_NAND_CH7_CE;
  output O_NAND_CH7_CLE;
  output O_NAND_CH7_RE_N;
  output O_NAND_CH7_RE_P;
  output O_NAND_CH7_WE;
  output O_NAND_CH7_WP;
  input pcie_perst_n;
  input pcie_ref_clk_n;
  input pcie_ref_clk_p;
  input [7:0]pcie_rx_n;
  input [7:0]pcie_rx_p;
  output [7:0]pcie_tx_n;
  output [7:0]pcie_tx_p;

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
  wire [7:0]IO_NAND_CH0_DQ;
  wire IO_NAND_CH0_DQS_N;
  wire IO_NAND_CH0_DQS_P;
  wire [7:0]IO_NAND_CH1_DQ;
  wire IO_NAND_CH1_DQS_N;
  wire IO_NAND_CH1_DQS_P;
  wire [7:0]IO_NAND_CH2_DQ;
  wire IO_NAND_CH2_DQS_N;
  wire IO_NAND_CH2_DQS_P;
  wire [7:0]IO_NAND_CH3_DQ;
  wire IO_NAND_CH3_DQS_N;
  wire IO_NAND_CH3_DQS_P;
  wire [7:0]IO_NAND_CH4_DQ;
  wire IO_NAND_CH4_DQS_N;
  wire IO_NAND_CH4_DQS_P;
  wire [7:0]IO_NAND_CH5_DQ;
  wire IO_NAND_CH5_DQS_N;
  wire IO_NAND_CH5_DQS_P;
  wire [7:0]IO_NAND_CH6_DQ;
  wire IO_NAND_CH6_DQS_N;
  wire IO_NAND_CH6_DQS_P;
  wire [7:0]IO_NAND_CH7_DQ;
  wire IO_NAND_CH7_DQS_N;
  wire IO_NAND_CH7_DQS_P;
  wire [7:0]I_NAND_CH0_RB;
  wire [7:0]I_NAND_CH1_RB;
  wire [7:0]I_NAND_CH2_RB;
  wire [7:0]I_NAND_CH3_RB;
  wire [7:0]I_NAND_CH4_RB;
  wire [7:0]I_NAND_CH5_RB;
  wire [7:0]I_NAND_CH6_RB;
  wire [7:0]I_NAND_CH7_RB;
  wire [31:0]O_DEBUG;
  wire O_NAND_CH0_ALE;
  wire [7:0]O_NAND_CH0_CE;
  wire O_NAND_CH0_CLE;
  wire O_NAND_CH0_RE_N;
  wire O_NAND_CH0_RE_P;
  wire O_NAND_CH0_WE;
  wire O_NAND_CH0_WP;
  wire O_NAND_CH1_ALE;
  wire [7:0]O_NAND_CH1_CE;
  wire O_NAND_CH1_CLE;
  wire O_NAND_CH1_RE_N;
  wire O_NAND_CH1_RE_P;
  wire O_NAND_CH1_WE;
  wire O_NAND_CH1_WP;
  wire O_NAND_CH2_ALE;
  wire [7:0]O_NAND_CH2_CE;
  wire O_NAND_CH2_CLE;
  wire O_NAND_CH2_RE_N;
  wire O_NAND_CH2_RE_P;
  wire O_NAND_CH2_WE;
  wire O_NAND_CH2_WP;
  wire O_NAND_CH3_ALE;
  wire [7:0]O_NAND_CH3_CE;
  wire O_NAND_CH3_CLE;
  wire O_NAND_CH3_RE_N;
  wire O_NAND_CH3_RE_P;
  wire O_NAND_CH3_WE;
  wire O_NAND_CH3_WP;
  wire O_NAND_CH4_ALE;
  wire [7:0]O_NAND_CH4_CE;
  wire O_NAND_CH4_CLE;
  wire O_NAND_CH4_RE_N;
  wire O_NAND_CH4_RE_P;
  wire O_NAND_CH4_WE;
  wire O_NAND_CH4_WP;
  wire O_NAND_CH5_ALE;
  wire [7:0]O_NAND_CH5_CE;
  wire O_NAND_CH5_CLE;
  wire O_NAND_CH5_RE_N;
  wire O_NAND_CH5_RE_P;
  wire O_NAND_CH5_WE;
  wire O_NAND_CH5_WP;
  wire O_NAND_CH6_ALE;
  wire [7:0]O_NAND_CH6_CE;
  wire O_NAND_CH6_CLE;
  wire O_NAND_CH6_RE_N;
  wire O_NAND_CH6_RE_P;
  wire O_NAND_CH6_WE;
  wire O_NAND_CH6_WP;
  wire O_NAND_CH7_ALE;
  wire [7:0]O_NAND_CH7_CE;
  wire O_NAND_CH7_CLE;
  wire O_NAND_CH7_RE_N;
  wire O_NAND_CH7_RE_P;
  wire O_NAND_CH7_WE;
  wire O_NAND_CH7_WP;
  wire pcie_perst_n;
  wire pcie_ref_clk_n;
  wire pcie_ref_clk_p;
  wire [7:0]pcie_rx_n;
  wire [7:0]pcie_rx_p;
  wire [7:0]pcie_tx_n;
  wire [7:0]pcie_tx_p;

  OpenSSD2 OpenSSD2_i
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
        .IO_NAND_CH0_DQ(IO_NAND_CH0_DQ),
        .IO_NAND_CH0_DQS_N(IO_NAND_CH0_DQS_N),
        .IO_NAND_CH0_DQS_P(IO_NAND_CH0_DQS_P),
        .IO_NAND_CH1_DQ(IO_NAND_CH1_DQ),
        .IO_NAND_CH1_DQS_N(IO_NAND_CH1_DQS_N),
        .IO_NAND_CH1_DQS_P(IO_NAND_CH1_DQS_P),
        .IO_NAND_CH2_DQ(IO_NAND_CH2_DQ),
        .IO_NAND_CH2_DQS_N(IO_NAND_CH2_DQS_N),
        .IO_NAND_CH2_DQS_P(IO_NAND_CH2_DQS_P),
        .IO_NAND_CH3_DQ(IO_NAND_CH3_DQ),
        .IO_NAND_CH3_DQS_N(IO_NAND_CH3_DQS_N),
        .IO_NAND_CH3_DQS_P(IO_NAND_CH3_DQS_P),
        .IO_NAND_CH4_DQ(IO_NAND_CH4_DQ),
        .IO_NAND_CH4_DQS_N(IO_NAND_CH4_DQS_N),
        .IO_NAND_CH4_DQS_P(IO_NAND_CH4_DQS_P),
        .IO_NAND_CH5_DQ(IO_NAND_CH5_DQ),
        .IO_NAND_CH5_DQS_N(IO_NAND_CH5_DQS_N),
        .IO_NAND_CH5_DQS_P(IO_NAND_CH5_DQS_P),
        .IO_NAND_CH6_DQ(IO_NAND_CH6_DQ),
        .IO_NAND_CH6_DQS_N(IO_NAND_CH6_DQS_N),
        .IO_NAND_CH6_DQS_P(IO_NAND_CH6_DQS_P),
        .IO_NAND_CH7_DQ(IO_NAND_CH7_DQ),
        .IO_NAND_CH7_DQS_N(IO_NAND_CH7_DQS_N),
        .IO_NAND_CH7_DQS_P(IO_NAND_CH7_DQS_P),
        .I_NAND_CH0_RB(I_NAND_CH0_RB),
        .I_NAND_CH1_RB(I_NAND_CH1_RB),
        .I_NAND_CH2_RB(I_NAND_CH2_RB),
        .I_NAND_CH3_RB(I_NAND_CH3_RB),
        .I_NAND_CH4_RB(I_NAND_CH4_RB),
        .I_NAND_CH5_RB(I_NAND_CH5_RB),
        .I_NAND_CH6_RB(I_NAND_CH6_RB),
        .I_NAND_CH7_RB(I_NAND_CH7_RB),
        .O_DEBUG(O_DEBUG),
        .O_NAND_CH0_ALE(O_NAND_CH0_ALE),
        .O_NAND_CH0_CE(O_NAND_CH0_CE),
        .O_NAND_CH0_CLE(O_NAND_CH0_CLE),
        .O_NAND_CH0_RE_N(O_NAND_CH0_RE_N),
        .O_NAND_CH0_RE_P(O_NAND_CH0_RE_P),
        .O_NAND_CH0_WE(O_NAND_CH0_WE),
        .O_NAND_CH0_WP(O_NAND_CH0_WP),
        .O_NAND_CH1_ALE(O_NAND_CH1_ALE),
        .O_NAND_CH1_CE(O_NAND_CH1_CE),
        .O_NAND_CH1_CLE(O_NAND_CH1_CLE),
        .O_NAND_CH1_RE_N(O_NAND_CH1_RE_N),
        .O_NAND_CH1_RE_P(O_NAND_CH1_RE_P),
        .O_NAND_CH1_WE(O_NAND_CH1_WE),
        .O_NAND_CH1_WP(O_NAND_CH1_WP),
        .O_NAND_CH2_ALE(O_NAND_CH2_ALE),
        .O_NAND_CH2_CE(O_NAND_CH2_CE),
        .O_NAND_CH2_CLE(O_NAND_CH2_CLE),
        .O_NAND_CH2_RE_N(O_NAND_CH2_RE_N),
        .O_NAND_CH2_RE_P(O_NAND_CH2_RE_P),
        .O_NAND_CH2_WE(O_NAND_CH2_WE),
        .O_NAND_CH2_WP(O_NAND_CH2_WP),
        .O_NAND_CH3_ALE(O_NAND_CH3_ALE),
        .O_NAND_CH3_CE(O_NAND_CH3_CE),
        .O_NAND_CH3_CLE(O_NAND_CH3_CLE),
        .O_NAND_CH3_RE_N(O_NAND_CH3_RE_N),
        .O_NAND_CH3_RE_P(O_NAND_CH3_RE_P),
        .O_NAND_CH3_WE(O_NAND_CH3_WE),
        .O_NAND_CH3_WP(O_NAND_CH3_WP),
        .O_NAND_CH4_ALE(O_NAND_CH4_ALE),
        .O_NAND_CH4_CE(O_NAND_CH4_CE),
        .O_NAND_CH4_CLE(O_NAND_CH4_CLE),
        .O_NAND_CH4_RE_N(O_NAND_CH4_RE_N),
        .O_NAND_CH4_RE_P(O_NAND_CH4_RE_P),
        .O_NAND_CH4_WE(O_NAND_CH4_WE),
        .O_NAND_CH4_WP(O_NAND_CH4_WP),
        .O_NAND_CH5_ALE(O_NAND_CH5_ALE),
        .O_NAND_CH5_CE(O_NAND_CH5_CE),
        .O_NAND_CH5_CLE(O_NAND_CH5_CLE),
        .O_NAND_CH5_RE_N(O_NAND_CH5_RE_N),
        .O_NAND_CH5_RE_P(O_NAND_CH5_RE_P),
        .O_NAND_CH5_WE(O_NAND_CH5_WE),
        .O_NAND_CH5_WP(O_NAND_CH5_WP),
        .O_NAND_CH6_ALE(O_NAND_CH6_ALE),
        .O_NAND_CH6_CE(O_NAND_CH6_CE),
        .O_NAND_CH6_CLE(O_NAND_CH6_CLE),
        .O_NAND_CH6_RE_N(O_NAND_CH6_RE_N),
        .O_NAND_CH6_RE_P(O_NAND_CH6_RE_P),
        .O_NAND_CH6_WE(O_NAND_CH6_WE),
        .O_NAND_CH6_WP(O_NAND_CH6_WP),
        .O_NAND_CH7_ALE(O_NAND_CH7_ALE),
        .O_NAND_CH7_CE(O_NAND_CH7_CE),
        .O_NAND_CH7_CLE(O_NAND_CH7_CLE),
        .O_NAND_CH7_RE_N(O_NAND_CH7_RE_N),
        .O_NAND_CH7_RE_P(O_NAND_CH7_RE_P),
        .O_NAND_CH7_WE(O_NAND_CH7_WE),
        .O_NAND_CH7_WP(O_NAND_CH7_WP),
        .pcie_perst_n(pcie_perst_n),
        .pcie_ref_clk_n(pcie_ref_clk_n),
        .pcie_ref_clk_p(pcie_ref_clk_p),
        .pcie_rx_n(pcie_rx_n),
        .pcie_rx_p(pcie_rx_p),
        .pcie_tx_n(pcie_tx_n),
        .pcie_tx_p(pcie_tx_p));
endmodule
