//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Jan 18 11:58:57 2023
//Host        : DESKTOP-KFMNFE2 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (c0_init_calib_complete_0,
    c0_init_calib_complete_1,
    ddr4_rtl_0_act_n,
    ddr4_rtl_0_adr,
    ddr4_rtl_0_ba,
    ddr4_rtl_0_bg,
    ddr4_rtl_0_ck_c,
    ddr4_rtl_0_ck_t,
    ddr4_rtl_0_cke,
    ddr4_rtl_0_cs_n,
    ddr4_rtl_0_dq,
    ddr4_rtl_0_dqs_c,
    ddr4_rtl_0_dqs_t,
    ddr4_rtl_0_odt,
    ddr4_rtl_0_par,
    ddr4_rtl_0_reset_n,
    ddr4_rtl_1_act_n,
    ddr4_rtl_1_adr,
    ddr4_rtl_1_ba,
    ddr4_rtl_1_bg,
    ddr4_rtl_1_ck_c,
    ddr4_rtl_1_ck_t,
    ddr4_rtl_1_cke,
    ddr4_rtl_1_cs_n,
    ddr4_rtl_1_dq,
    ddr4_rtl_1_dqs_c,
    ddr4_rtl_1_dqs_t,
    ddr4_rtl_1_odt,
    ddr4_rtl_1_par,
    ddr4_rtl_1_reset_n,
    diff_clock_rtl_2_clk_n,
    diff_clock_rtl_2_clk_p,
    diff_clock_rtl_3_clk_n,
    diff_clock_rtl_3_clk_p,
    pci_exp_0_rxn,
    pci_exp_0_rxp,
    pci_exp_0_txn,
    pci_exp_0_txp,
    pcie_perst_n,
    pcie_ref_clk_n,
    pcie_ref_clk_p,
    user_lnk_up_0);
  output c0_init_calib_complete_0;
  output c0_init_calib_complete_1;
  output ddr4_rtl_0_act_n;
  output [16:0]ddr4_rtl_0_adr;
  output [1:0]ddr4_rtl_0_ba;
  output [1:0]ddr4_rtl_0_bg;
  output [0:0]ddr4_rtl_0_ck_c;
  output [0:0]ddr4_rtl_0_ck_t;
  output [1:0]ddr4_rtl_0_cke;
  output [1:0]ddr4_rtl_0_cs_n;
  inout [71:0]ddr4_rtl_0_dq;
  inout [17:0]ddr4_rtl_0_dqs_c;
  inout [17:0]ddr4_rtl_0_dqs_t;
  output [1:0]ddr4_rtl_0_odt;
  output ddr4_rtl_0_par;
  output ddr4_rtl_0_reset_n;
  output ddr4_rtl_1_act_n;
  output [16:0]ddr4_rtl_1_adr;
  output [1:0]ddr4_rtl_1_ba;
  output [1:0]ddr4_rtl_1_bg;
  output [0:0]ddr4_rtl_1_ck_c;
  output [0:0]ddr4_rtl_1_ck_t;
  output [1:0]ddr4_rtl_1_cke;
  output [1:0]ddr4_rtl_1_cs_n;
  inout [71:0]ddr4_rtl_1_dq;
  inout [17:0]ddr4_rtl_1_dqs_c;
  inout [17:0]ddr4_rtl_1_dqs_t;
  output [1:0]ddr4_rtl_1_odt;
  output ddr4_rtl_1_par;
  output ddr4_rtl_1_reset_n;
  input diff_clock_rtl_2_clk_n;
  input diff_clock_rtl_2_clk_p;
  input diff_clock_rtl_3_clk_n;
  input diff_clock_rtl_3_clk_p;
  input [15:0]pci_exp_0_rxn;
  input [15:0]pci_exp_0_rxp;
  output [15:0]pci_exp_0_txn;
  output [15:0]pci_exp_0_txp;
  input pcie_perst_n;
  input pcie_ref_clk_n;
  input pcie_ref_clk_p;
  output user_lnk_up_0;

  wire c0_init_calib_complete_0;
  wire c0_init_calib_complete_1;
  wire ddr4_rtl_0_act_n;
  wire [16:0]ddr4_rtl_0_adr;
  wire [1:0]ddr4_rtl_0_ba;
  wire [1:0]ddr4_rtl_0_bg;
  wire [0:0]ddr4_rtl_0_ck_c;
  wire [0:0]ddr4_rtl_0_ck_t;
  wire [1:0]ddr4_rtl_0_cke;
  wire [1:0]ddr4_rtl_0_cs_n;
  wire [71:0]ddr4_rtl_0_dq;
  wire [17:0]ddr4_rtl_0_dqs_c;
  wire [17:0]ddr4_rtl_0_dqs_t;
  wire [1:0]ddr4_rtl_0_odt;
  wire ddr4_rtl_0_par;
  wire ddr4_rtl_0_reset_n;
  wire ddr4_rtl_1_act_n;
  wire [16:0]ddr4_rtl_1_adr;
  wire [1:0]ddr4_rtl_1_ba;
  wire [1:0]ddr4_rtl_1_bg;
  wire [0:0]ddr4_rtl_1_ck_c;
  wire [0:0]ddr4_rtl_1_ck_t;
  wire [1:0]ddr4_rtl_1_cke;
  wire [1:0]ddr4_rtl_1_cs_n;
  wire [71:0]ddr4_rtl_1_dq;
  wire [17:0]ddr4_rtl_1_dqs_c;
  wire [17:0]ddr4_rtl_1_dqs_t;
  wire [1:0]ddr4_rtl_1_odt;
  wire ddr4_rtl_1_par;
  wire ddr4_rtl_1_reset_n;
  wire diff_clock_rtl_2_clk_n;
  wire diff_clock_rtl_2_clk_p;
  wire diff_clock_rtl_3_clk_n;
  wire diff_clock_rtl_3_clk_p;
  wire [15:0]pci_exp_0_rxn;
  wire [15:0]pci_exp_0_rxp;
  wire [15:0]pci_exp_0_txn;
  wire [15:0]pci_exp_0_txp;
  wire pcie_perst_n;
  wire pcie_ref_clk_n;
  wire pcie_ref_clk_p;
  wire user_lnk_up_0;

  design_1 design_1_i
       (.c0_init_calib_complete_0(c0_init_calib_complete_0),
        .c0_init_calib_complete_1(c0_init_calib_complete_1),
        .ddr4_rtl_0_act_n(ddr4_rtl_0_act_n),
        .ddr4_rtl_0_adr(ddr4_rtl_0_adr),
        .ddr4_rtl_0_ba(ddr4_rtl_0_ba),
        .ddr4_rtl_0_bg(ddr4_rtl_0_bg),
        .ddr4_rtl_0_ck_c(ddr4_rtl_0_ck_c),
        .ddr4_rtl_0_ck_t(ddr4_rtl_0_ck_t),
        .ddr4_rtl_0_cke(ddr4_rtl_0_cke),
        .ddr4_rtl_0_cs_n(ddr4_rtl_0_cs_n),
        .ddr4_rtl_0_dq(ddr4_rtl_0_dq),
        .ddr4_rtl_0_dqs_c(ddr4_rtl_0_dqs_c),
        .ddr4_rtl_0_dqs_t(ddr4_rtl_0_dqs_t),
        .ddr4_rtl_0_odt(ddr4_rtl_0_odt),
        .ddr4_rtl_0_par(ddr4_rtl_0_par),
        .ddr4_rtl_0_reset_n(ddr4_rtl_0_reset_n),
        .ddr4_rtl_1_act_n(ddr4_rtl_1_act_n),
        .ddr4_rtl_1_adr(ddr4_rtl_1_adr),
        .ddr4_rtl_1_ba(ddr4_rtl_1_ba),
        .ddr4_rtl_1_bg(ddr4_rtl_1_bg),
        .ddr4_rtl_1_ck_c(ddr4_rtl_1_ck_c),
        .ddr4_rtl_1_ck_t(ddr4_rtl_1_ck_t),
        .ddr4_rtl_1_cke(ddr4_rtl_1_cke),
        .ddr4_rtl_1_cs_n(ddr4_rtl_1_cs_n),
        .ddr4_rtl_1_dq(ddr4_rtl_1_dq),
        .ddr4_rtl_1_dqs_c(ddr4_rtl_1_dqs_c),
        .ddr4_rtl_1_dqs_t(ddr4_rtl_1_dqs_t),
        .ddr4_rtl_1_odt(ddr4_rtl_1_odt),
        .ddr4_rtl_1_par(ddr4_rtl_1_par),
        .ddr4_rtl_1_reset_n(ddr4_rtl_1_reset_n),
        .diff_clock_rtl_2_clk_n(diff_clock_rtl_2_clk_n),
        .diff_clock_rtl_2_clk_p(diff_clock_rtl_2_clk_p),
        .diff_clock_rtl_3_clk_n(diff_clock_rtl_3_clk_n),
        .diff_clock_rtl_3_clk_p(diff_clock_rtl_3_clk_p),
        .pci_exp_0_rxn(pci_exp_0_rxn),
        .pci_exp_0_rxp(pci_exp_0_rxp),
        .pci_exp_0_txn(pci_exp_0_txn),
        .pci_exp_0_txp(pci_exp_0_txp),
        .pcie_perst_n(pcie_perst_n),
        .pcie_ref_clk_n(pcie_ref_clk_n),
        .pcie_ref_clk_p(pcie_ref_clk_p),
        .user_lnk_up_0(user_lnk_up_0));
endmodule
