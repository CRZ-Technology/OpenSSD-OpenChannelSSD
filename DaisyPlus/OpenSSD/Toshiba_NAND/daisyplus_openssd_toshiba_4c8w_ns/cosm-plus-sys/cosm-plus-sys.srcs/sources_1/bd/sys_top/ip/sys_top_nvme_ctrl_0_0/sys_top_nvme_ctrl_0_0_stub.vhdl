-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Jan  9 19:10:40 2023
-- Host        : DESKTOP-KFMNFE2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/cosm-plus-sys.srcs/sources_1/bd/sys_top/ip/sys_top_nvme_ctrl_0_0/sys_top_nvme_ctrl_0_0_stub.vhdl
-- Design      : sys_top_nvme_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu17eg-ffvc1760-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sys_top_nvme_ctrl_0_0 is
  Port ( 
    s0_axi_aclk : in STD_LOGIC;
    s0_axi_aresetn : in STD_LOGIC;
    s0_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axi_awready : out STD_LOGIC;
    s0_axi_awvalid : in STD_LOGIC;
    s0_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s0_axi_wvalid : in STD_LOGIC;
    s0_axi_wready : out STD_LOGIC;
    s0_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s0_axi_bvalid : out STD_LOGIC;
    s0_axi_bready : in STD_LOGIC;
    s0_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s0_axi_arvalid : in STD_LOGIC;
    s0_axi_arready : out STD_LOGIC;
    s0_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s0_axi_rvalid : out STD_LOGIC;
    s0_axi_rready : in STD_LOGIC;
    s0_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axi_aclk : in STD_LOGIC;
    m0_axi_aresetn : in STD_LOGIC;
    m0_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m0_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m0_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m0_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m0_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axi_awlock : out STD_LOGIC;
    m0_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m0_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m0_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m0_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m0_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m0_axi_awvalid : out STD_LOGIC;
    m0_axi_awready : in STD_LOGIC;
    m0_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m0_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m0_axi_wlast : out STD_LOGIC;
    m0_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m0_axi_wvalid : out STD_LOGIC;
    m0_axi_wready : in STD_LOGIC;
    m0_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m0_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axi_bvalid : in STD_LOGIC;
    m0_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m0_axi_bready : out STD_LOGIC;
    m0_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m0_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m0_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m0_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m0_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axi_arlock : out STD_LOGIC;
    m0_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m0_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m0_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m0_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m0_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m0_axi_arvalid : out STD_LOGIC;
    m0_axi_arready : in STD_LOGIC;
    m0_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m0_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m0_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axi_rlast : in STD_LOGIC;
    m0_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m0_axi_rvalid : in STD_LOGIC;
    m0_axi_rready : out STD_LOGIC;
    dev_irq_assert : out STD_LOGIC;
    pcie_ref_clk_p : in STD_LOGIC;
    pcie_ref_clk_n : in STD_LOGIC;
    pcie_perst_n : in STD_LOGIC;
    pci_exp_txp : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pci_exp_txn : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pci_exp_rxp : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pci_exp_rxn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    user_lnk_up : out STD_LOGIC
  );

end sys_top_nvme_ctrl_0_0;

architecture stub of sys_top_nvme_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s0_axi_aclk,s0_axi_aresetn,s0_axi_awaddr[31:0],s0_axi_awready,s0_axi_awvalid,s0_axi_awprot[2:0],s0_axi_wvalid,s0_axi_wready,s0_axi_wdata[31:0],s0_axi_wstrb[3:0],s0_axi_bvalid,s0_axi_bready,s0_axi_bresp[1:0],s0_axi_arvalid,s0_axi_arready,s0_axi_araddr[31:0],s0_axi_arprot[2:0],s0_axi_rvalid,s0_axi_rready,s0_axi_rdata[31:0],s0_axi_rresp[1:0],m0_axi_aclk,m0_axi_aresetn,m0_axi_awid[0:0],m0_axi_awaddr[31:0],m0_axi_awlen[7:0],m0_axi_awsize[2:0],m0_axi_awburst[1:0],m0_axi_awlock,m0_axi_awcache[3:0],m0_axi_awprot[2:0],m0_axi_awregion[3:0],m0_axi_awqos[3:0],m0_axi_awuser[0:0],m0_axi_awvalid,m0_axi_awready,m0_axi_wid[0:0],m0_axi_wdata[63:0],m0_axi_wstrb[7:0],m0_axi_wlast,m0_axi_wuser[0:0],m0_axi_wvalid,m0_axi_wready,m0_axi_bid[0:0],m0_axi_bresp[1:0],m0_axi_bvalid,m0_axi_buser[0:0],m0_axi_bready,m0_axi_arid[0:0],m0_axi_araddr[31:0],m0_axi_arlen[7:0],m0_axi_arsize[2:0],m0_axi_arburst[1:0],m0_axi_arlock,m0_axi_arcache[3:0],m0_axi_arprot[2:0],m0_axi_arregion[3:0],m0_axi_arqos[3:0],m0_axi_aruser[0:0],m0_axi_arvalid,m0_axi_arready,m0_axi_rid[0:0],m0_axi_rdata[63:0],m0_axi_rresp[1:0],m0_axi_rlast,m0_axi_ruser[0:0],m0_axi_rvalid,m0_axi_rready,dev_irq_assert,pcie_ref_clk_p,pcie_ref_clk_n,pcie_perst_n,pci_exp_txp[15:0],pci_exp_txn[15:0],pci_exp_rxp[15:0],pci_exp_rxn[15:0],user_lnk_up";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "s_axi_nvme,Vivado 2019.1";
begin
end;
