//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Jan  2 11:49:38 2023
//Host        : DESKTOP-KFMNFE2 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (pci_exp_0_rxn,
    pci_exp_0_rxp,
    pci_exp_0_txn,
    pci_exp_0_txp,
    pcie_perst_n,
    pcie_ref_clk_n,
    pcie_ref_clk_p,
    user_lnk_up_0);
  input [15:0]pci_exp_0_rxn;
  input [15:0]pci_exp_0_rxp;
  output [15:0]pci_exp_0_txn;
  output [15:0]pci_exp_0_txp;
  input pcie_perst_n;
  input pcie_ref_clk_n;
  input pcie_ref_clk_p;
  output user_lnk_up_0;

  wire [15:0]pci_exp_0_rxn;
  wire [15:0]pci_exp_0_rxp;
  wire [15:0]pci_exp_0_txn;
  wire [15:0]pci_exp_0_txp;
  wire pcie_perst_n;
  wire pcie_ref_clk_n;
  wire pcie_ref_clk_p;
  wire user_lnk_up_0;

  design_1 design_1_i
       (.pci_exp_0_rxn(pci_exp_0_rxn),
        .pci_exp_0_rxp(pci_exp_0_rxp),
        .pci_exp_0_txn(pci_exp_0_txn),
        .pci_exp_0_txp(pci_exp_0_txp),
        .pcie_perst_n(pcie_perst_n),
        .pcie_ref_clk_n(pcie_ref_clk_n),
        .pcie_ref_clk_p(pcie_ref_clk_p),
        .user_lnk_up_0(user_lnk_up_0));
endmodule
