//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Apr  6 17:33:21 2023
//Host        : DESKTOP-KFMNFE2 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (M2_1_PERSTn,
    M2_1_V33_EN,
    M2_2_PERSTn,
    M2_2_V33_EN,
    diff_clock_rtl_0_clk_n,
    diff_clock_rtl_0_clk_p,
    diff_clock_rtl_1_clk_n,
    diff_clock_rtl_1_clk_p,
    pci_exp_0_rxn,
    pci_exp_0_rxp,
    pci_exp_0_txn,
    pci_exp_0_txp,
    pcie_7x_mgt_rtl_0_rxn,
    pcie_7x_mgt_rtl_0_rxp,
    pcie_7x_mgt_rtl_0_txn,
    pcie_7x_mgt_rtl_0_txp,
    pcie_7x_mgt_rtl_1_rxn,
    pcie_7x_mgt_rtl_1_rxp,
    pcie_7x_mgt_rtl_1_txn,
    pcie_7x_mgt_rtl_1_txp,
    pcie_perst_n,
    pcie_ref_clk_n,
    pcie_ref_clk_p,
    user_lnk_up_0,
    user_lnk_up_1,
    user_lnk_up_2);
  output [0:0]M2_1_PERSTn;
  output [0:0]M2_1_V33_EN;
  output [0:0]M2_2_PERSTn;
  output [0:0]M2_2_V33_EN;
  input [0:0]diff_clock_rtl_0_clk_n;
  input [0:0]diff_clock_rtl_0_clk_p;
  input [0:0]diff_clock_rtl_1_clk_n;
  input [0:0]diff_clock_rtl_1_clk_p;
  input [15:0]pci_exp_0_rxn;
  input [15:0]pci_exp_0_rxp;
  output [15:0]pci_exp_0_txn;
  output [15:0]pci_exp_0_txp;
  input [3:0]pcie_7x_mgt_rtl_0_rxn;
  input [3:0]pcie_7x_mgt_rtl_0_rxp;
  output [3:0]pcie_7x_mgt_rtl_0_txn;
  output [3:0]pcie_7x_mgt_rtl_0_txp;
  input [3:0]pcie_7x_mgt_rtl_1_rxn;
  input [3:0]pcie_7x_mgt_rtl_1_rxp;
  output [3:0]pcie_7x_mgt_rtl_1_txn;
  output [3:0]pcie_7x_mgt_rtl_1_txp;
  input pcie_perst_n;
  input pcie_ref_clk_n;
  input pcie_ref_clk_p;
  output user_lnk_up_0;
  output [0:0]user_lnk_up_1;
  output user_lnk_up_2;

  wire [0:0]M2_1_PERSTn;
  wire [0:0]M2_1_V33_EN;
  wire [0:0]M2_2_PERSTn;
  wire [0:0]M2_2_V33_EN;
  wire [0:0]diff_clock_rtl_0_clk_n;
  wire [0:0]diff_clock_rtl_0_clk_p;
  wire [0:0]diff_clock_rtl_1_clk_n;
  wire [0:0]diff_clock_rtl_1_clk_p;
  wire [15:0]pci_exp_0_rxn;
  wire [15:0]pci_exp_0_rxp;
  wire [15:0]pci_exp_0_txn;
  wire [15:0]pci_exp_0_txp;
  wire [3:0]pcie_7x_mgt_rtl_0_rxn;
  wire [3:0]pcie_7x_mgt_rtl_0_rxp;
  wire [3:0]pcie_7x_mgt_rtl_0_txn;
  wire [3:0]pcie_7x_mgt_rtl_0_txp;
  wire [3:0]pcie_7x_mgt_rtl_1_rxn;
  wire [3:0]pcie_7x_mgt_rtl_1_rxp;
  wire [3:0]pcie_7x_mgt_rtl_1_txn;
  wire [3:0]pcie_7x_mgt_rtl_1_txp;
  wire pcie_perst_n;
  wire pcie_ref_clk_n;
  wire pcie_ref_clk_p;
  wire user_lnk_up_0;
  wire [0:0]user_lnk_up_1;
  wire user_lnk_up_2;

  design_1 design_1_i
       (.M2_1_PERSTn(M2_1_PERSTn),
        .M2_1_V33_EN(M2_1_V33_EN),
        .M2_2_PERSTn(M2_2_PERSTn),
        .M2_2_V33_EN(M2_2_V33_EN),
        .diff_clock_rtl_0_clk_n(diff_clock_rtl_0_clk_n),
        .diff_clock_rtl_0_clk_p(diff_clock_rtl_0_clk_p),
        .diff_clock_rtl_1_clk_n(diff_clock_rtl_1_clk_n),
        .diff_clock_rtl_1_clk_p(diff_clock_rtl_1_clk_p),
        .pci_exp_0_rxn(pci_exp_0_rxn),
        .pci_exp_0_rxp(pci_exp_0_rxp),
        .pci_exp_0_txn(pci_exp_0_txn),
        .pci_exp_0_txp(pci_exp_0_txp),
        .pcie_7x_mgt_rtl_0_rxn(pcie_7x_mgt_rtl_0_rxn),
        .pcie_7x_mgt_rtl_0_rxp(pcie_7x_mgt_rtl_0_rxp),
        .pcie_7x_mgt_rtl_0_txn(pcie_7x_mgt_rtl_0_txn),
        .pcie_7x_mgt_rtl_0_txp(pcie_7x_mgt_rtl_0_txp),
        .pcie_7x_mgt_rtl_1_rxn(pcie_7x_mgt_rtl_1_rxn),
        .pcie_7x_mgt_rtl_1_rxp(pcie_7x_mgt_rtl_1_rxp),
        .pcie_7x_mgt_rtl_1_txn(pcie_7x_mgt_rtl_1_txn),
        .pcie_7x_mgt_rtl_1_txp(pcie_7x_mgt_rtl_1_txp),
        .pcie_perst_n(pcie_perst_n),
        .pcie_ref_clk_n(pcie_ref_clk_n),
        .pcie_ref_clk_p(pcie_ref_clk_p),
        .user_lnk_up_0(user_lnk_up_0),
        .user_lnk_up_1(user_lnk_up_1),
        .user_lnk_up_2(user_lnk_up_2));
endmodule
