//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue May 16 19:54:11 2023
//Host        : DESKTOP-JP2R5GF running 64-bit major release  (build 9200)
//Command     : generate_target sys_top_wrapper.bd
//Design      : sys_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module sys_top_wrapper
   (nand_if_0_nand_ale,
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
    pci_exp_0_rxn,
    pci_exp_0_rxp,
    pci_exp_0_txn,
    pci_exp_0_txp,
    pcie_perst_n,
    pcie_ref_clk_n,
    pcie_ref_clk_p,
    user_lnk_up_0);
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
  input [15:0]pci_exp_0_rxn;
  input [15:0]pci_exp_0_rxp;
  output [15:0]pci_exp_0_txn;
  output [15:0]pci_exp_0_txp;
  input pcie_perst_n;
  input pcie_ref_clk_n;
  input pcie_ref_clk_p;
  output user_lnk_up_0;

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
  wire [15:0]pci_exp_0_rxn;
  wire [15:0]pci_exp_0_rxp;
  wire [15:0]pci_exp_0_txn;
  wire [15:0]pci_exp_0_txp;
  wire pcie_perst_n;
  wire pcie_ref_clk_n;
  wire pcie_ref_clk_p;
  wire user_lnk_up_0;

  sys_top sys_top_i
       (.nand_if_0_nand_ale(nand_if_0_nand_ale),
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
        .pci_exp_0_rxn(pci_exp_0_rxn),
        .pci_exp_0_rxp(pci_exp_0_rxp),
        .pci_exp_0_txn(pci_exp_0_txn),
        .pci_exp_0_txp(pci_exp_0_txp),
        .pcie_perst_n(pcie_perst_n),
        .pcie_ref_clk_n(pcie_ref_clk_n),
        .pcie_ref_clk_p(pcie_ref_clk_p),
        .user_lnk_up_0(user_lnk_up_0));
endmodule
