------------------------------------------------------------------------------
-- sync_ch_ctl_bl16.vhd - entity/architecture pair
------------------------------------------------------------------------------
-- IMPORTANT:
-- DO NOT MODIFY THIS FILE EXCEPT IN THE DESIGNATED SECTIONS.
--
-- SEARCH FOR --USER TO DETERMINE WHERE CHANGES ARE ALLOWED.
--
-- TYPICALLY, THE ONLY ACCEPTABLE CHANGES INVOLVE ADDING NEW
-- PORTS AND GENERICS THAT GET PASSED THROUGH TO THE INSTANTIATION
-- OF THE USER_LOGIC ENTITY.
------------------------------------------------------------------------------
--
-- ***************************************************************************
-- ** Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.            **
-- **                                                                       **
-- ** Xilinx, Inc.                                                          **
-- ** XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"         **
-- ** AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND       **
-- ** SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,        **
-- ** OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,        **
-- ** APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION           **
-- ** THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,     **
-- ** AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE      **
-- ** FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY              **
-- ** WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE               **
-- ** IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR        **
-- ** REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF       **
-- ** INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS       **
-- ** FOR A PARTICULAR PURPOSE.                                             **
-- **                                                                       **
-- ***************************************************************************
--
------------------------------------------------------------------------------
-- Filename:          sync_ch_ctl_bl16.vhd
-- Version:           1.00.a
-- Description:       Top level design, instantiates library components and user logic.
-- Date:              Fri Sep 19 19:34:37 2014 (by Create and Import Peripheral Wizard)
-- VHDL Standard:     VHDL'93
------------------------------------------------------------------------------
-- Naming Conventions:
--   active low signals:                    "*_n"
--   clock signals:                         "clk", "clk_div#", "clk_#x"
--   reset signals:                         "rst", "rst_n"
--   generics:                              "C_*"
--   user defined types:                    "*_TYPE"
--   state machine next state:              "*_ns"
--   state machine current state:           "*_cs"
--   combinatorial signals:                 "*_com"
--   pipelined or register delay signals:   "*_d#"
--   counter signals:                       "*cnt*"
--   clock enable signals:                  "*_ce"
--   internal version of output port:       "*_i"
--   device pins:                           "*_pin"
--   ports:                                 "- Names begin with Uppercase"
--   processes:                             "*_PROCESS"
--   component instantiations:              "<ENTITY_>I_<#|FUNC>"
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library proc_common_v3_00_a;
use proc_common_v3_00_a.proc_common_pkg.all;
use proc_common_v3_00_a.ipif_pkg.all;

library axi_lite_ipif_v1_01_a;
use axi_lite_ipif_v1_01_a.axi_lite_ipif;

library axi_master_burst_v1_00_a;
use axi_master_burst_v1_00_a.axi_master_burst;

------------------------------------------------------------------------------
-- Entity section
------------------------------------------------------------------------------
-- Definition of Generics:
--   C_S_AXI_DATA_WIDTH           -- AXI4LITE slave: Data width
--   C_S_AXI_ADDR_WIDTH           -- AXI4LITE slave: Address Width
--   C_S_AXI_MIN_SIZE             -- AXI4LITE slave: Min Size
--   C_USE_WSTRB                  -- AXI4LITE slave: Write Strobe
--   C_DPHASE_TIMEOUT             -- AXI4LITE slave: Data Phase Timeout
--   C_BASEADDR                   -- AXI4LITE slave: base address
--   C_HIGHADDR                   -- AXI4LITE slave: high address
--   C_FAMILY                     -- FPGA Family
--   C_NUM_REG                    -- Number of software accessible registers
--   C_NUM_MEM                    -- Number of address-ranges
--   C_SLV_AWIDTH                 -- Slave interface address bus width
--   C_SLV_DWIDTH                 -- Slave interface data bus width
--   C_M_AXI_ADDR_WIDTH           -- Master-Intf address bus width
--   C_M_AXI_DATA_WIDTH           -- Master-Intf data bus width
--   C_MAX_BURST_LEN              -- Max no. of data-beats allowed in burst
--   C_NATIVE_DATA_WIDTH          -- Internal bus width on user-side
--   C_LENGTH_WIDTH               -- Master interface data bus width
--   C_ADDR_PIPE_DEPTH            -- Depth of Address pipelining
--
-- Definition of Ports:
--   S_AXI_ACLK                   -- AXI4LITE slave: Clock 
--   S_AXI_ARESETN                -- AXI4LITE slave: Reset
--   S_AXI_AWADDR                 -- AXI4LITE slave: Write address
--   S_AXI_AWVALID                -- AXI4LITE slave: Write address valid
--   S_AXI_WDATA                  -- AXI4LITE slave: Write data
--   S_AXI_WSTRB                  -- AXI4LITE slave: Write strobe
--   S_AXI_WVALID                 -- AXI4LITE slave: Write data valid
--   S_AXI_BREADY                 -- AXI4LITE slave: Response ready
--   S_AXI_ARADDR                 -- AXI4LITE slave: Read address
--   S_AXI_ARVALID                -- AXI4LITE slave: Read address valid
--   S_AXI_RREADY                 -- AXI4LITE slave: Read data ready
--   S_AXI_ARREADY                -- AXI4LITE slave: read addres ready
--   S_AXI_RDATA                  -- AXI4LITE slave: Read data
--   S_AXI_RRESP                  -- AXI4LITE slave: Read data response
--   S_AXI_RVALID                 -- AXI4LITE slave: Read data valid
--   S_AXI_WREADY                 -- AXI4LITE slave: Write data ready
--   S_AXI_BRESP                  -- AXI4LITE slave: Response
--   S_AXI_BVALID                 -- AXI4LITE slave: Resonse valid
--   S_AXI_AWREADY                -- AXI4LITE slave: Wrte address ready
--   m_axi_aclk                   -- AXI4 master: Clock
--   m_axi_aresetn                -- AXI4 master: Reset
--   md_error                     -- AXI4 master: Error
--   m_axi_arready                -- AXI4 master: read address ready
--   m_axi_arvalid                -- AXI4 master: read address valid
--   m_axi_araddr                 -- AXI4 master: read address
--   m_axi_arlen                  -- AXI4 master: read adress length
--   m_axi_arsize                 -- AXI4 master: read address size
--   m_axi_arburst                -- AXI4 master: read address burst
--   m_axi_arprot                 -- AXI4 master: read address protection
--   m_axi_arcache                -- AXI4 master: read adddress cache
--   m_axi_rready                 -- AXI4 master: read data ready
--   m_axi_rvalid                 -- AXI4 master: read data valid
--   m_axi_rdata                  -- AXI4 master: read data
--   m_axi_rresp                  -- AXI4 master: read data response
--   m_axi_rlast                  -- AXI4 master: read data last
--   m_axi_awready                -- AXI4 master: write address ready
--   m_axi_awvalid                -- AXI4 master: write address valid
--   m_axi_awaddr                 -- AXI4 master: write address
--   m_axi_awlen                  -- AXI4 master: write address length
--   m_axi_awsize                 -- AXI4 master: write address size
--   m_axi_awburst                -- AXI4 master: write address burst
--   m_axi_awprot                 -- AXI4 master: write address protection
--   m_axi_awcache                -- AXI4 master: write address cache
--   m_axi_wready                 -- AXI4 master: write data ready
--   m_axi_wvalid                 -- AXI4 master: write data valid
--   m_axi_wdata                  -- AXI4 master: write data 
--   m_axi_wstrb                  -- AXI4 master: write data strobe
--   m_axi_wlast                  -- AXI4 master: write data last
--   m_axi_bready                 -- AXI4 master: read response ready
--   m_axi_bvalid                 -- AXI4 master: read response valid
--   m_axi_bresp                  -- AXI4 master: read response 
------------------------------------------------------------------------------

entity sync_ch_ctl_bl16 is
  generic
  (
    -- ADD USER GENERICS BELOW THIS LINE ---------------
    --USER generics added here
    -- ADD USER GENERICS ABOVE THIS LINE ---------------

    -- DO NOT EDIT BELOW THIS LINE ---------------------
    -- Bus protocol parameters, do not add to or delete
    C_S_AXI_DATA_WIDTH             : integer              := 32;
    C_S_AXI_ADDR_WIDTH             : integer              := 32;
    C_S_AXI_MIN_SIZE               : std_logic_vector     := X"000001FF";
    C_USE_WSTRB                    : integer              := 0;
    C_DPHASE_TIMEOUT               : integer              := 8;
    C_BASEADDR                     : std_logic_vector     := X"FFFFFFFF";
    C_HIGHADDR                     : std_logic_vector     := X"00000000";
    C_FAMILY                       : string               := "virtex6";
    C_NUM_REG                      : integer              := 32;
    C_NUM_MEM                      : integer              := 1;
    C_SLV_AWIDTH                   : integer              := 32;
    C_SLV_DWIDTH                   : integer              := 32;
    C_M_AXI_ADDR_WIDTH             : integer              := 32;
    C_M_AXI_DATA_WIDTH             : integer              := 64;
    C_MAX_BURST_LEN                : integer              := 16;
    C_NATIVE_DATA_WIDTH            : integer              := 64;
    C_LENGTH_WIDTH                 : integer              := 12;
    C_ADDR_PIPE_DEPTH              : integer              := 1
    -- DO NOT EDIT ABOVE THIS LINE ---------------------
  );
  port
  (
    -- ADD USER PORTS BELOW THIS LINE ------------------
    SSD_CLK_100M                  : in  std_logic;
    SSD_CLK_200M                  : in  std_logic;
    SSD_RSTN                      : in  std_logic;
    SSD_DQ_I                      : in  std_logic_vector(7 downto 0);
    SSD_DQ_O                      : out std_logic_vector(7 downto 0);
    SSD_DQ_T                      : out std_logic_vector(7 downto 0);
    SSD_CLE                       : out std_logic;
    SSD_ALE                       : out std_logic;
    SSD_CEN                       : out std_logic_vector(7 downto 0);
    SSD_CLK                       : out std_logic;
    SSD_WRN                       : out std_logic;
    SSD_WPN                       : out std_logic;
    SSD_RB                        : in  std_logic_vector(7 downto 0);
    SSD_DQS_I                     : in  std_logic;
    SSD_DQS_O                     : out std_logic;
    SSD_DQS_T                     : out std_logic;
    PROG_START_O                  : out std_logic_vector(7 downto 0);
    PROG_END_O                    : out std_logic_vector(7 downto 0);
    READ_START_O                  : out std_logic_vector(7 downto 0);
    READ_END_O                    : out std_logic_vector(7 downto 0);
    ERASE_START_O                 : out std_logic_vector(7 downto 0);
    ERASE_END_O                   : out std_logic_vector(7 downto 0);
    OP_FAIL_O                     : out std_logic_vector(7 downto 0);
    -- ADD USER PORTS ABOVE THIS LINE ------------------

    -- DO NOT EDIT BELOW THIS LINE ---------------------
    -- Bus protocol ports, do not add to or delete
    S_AXI_ACLK                     : in  std_logic;
    S_AXI_ARESETN                  : in  std_logic;
    S_AXI_AWADDR                   : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_AWVALID                  : in  std_logic;
    S_AXI_WDATA                    : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_WSTRB                    : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI_WVALID                   : in  std_logic;
    S_AXI_BREADY                   : in  std_logic;
    S_AXI_ARADDR                   : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ARVALID                  : in  std_logic;
    S_AXI_RREADY                   : in  std_logic;
    S_AXI_ARREADY                  : out std_logic;
    S_AXI_RDATA                    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_RRESP                    : out std_logic_vector(1 downto 0);
    S_AXI_RVALID                   : out std_logic;
    S_AXI_WREADY                   : out std_logic;
    S_AXI_BRESP                    : out std_logic_vector(1 downto 0);
    S_AXI_BVALID                   : out std_logic;
    S_AXI_AWREADY                  : out std_logic;
    m_axi_aclk                     : in  std_logic;
    m_axi_aresetn                  : in  std_logic;
    md_error                       : out std_logic;
    m_axi_arready                  : in  std_logic;
    m_axi_arvalid                  : out std_logic;
    m_axi_araddr                   : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    m_axi_arlen                    : out std_logic_vector(7 downto 0);
    m_axi_arsize                   : out std_logic_vector(2 downto 0);
    m_axi_arburst                  : out std_logic_vector(1 downto 0);
    m_axi_arprot                   : out std_logic_vector(2 downto 0);
    m_axi_arcache                  : out std_logic_vector(3 downto 0);
    m_axi_rready                   : out std_logic;
    m_axi_rvalid                   : in  std_logic;
    m_axi_rdata                    : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    m_axi_rresp                    : in  std_logic_vector(1 downto 0);
    m_axi_rlast                    : in  std_logic;
    m_axi_awready                  : in  std_logic;
    m_axi_awvalid                  : out std_logic;
    m_axi_awaddr                   : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    m_axi_awlen                    : out std_logic_vector(7 downto 0);
    m_axi_awsize                   : out std_logic_vector(2 downto 0);
    m_axi_awburst                  : out std_logic_vector(1 downto 0);
    m_axi_awprot                   : out std_logic_vector(2 downto 0);
    m_axi_awcache                  : out std_logic_vector(3 downto 0);
    m_axi_wready                   : in  std_logic;
    m_axi_wvalid                   : out std_logic;
    m_axi_wdata                    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    m_axi_wstrb                    : out std_logic_vector((C_M_AXI_DATA_WIDTH)/8 - 1 downto 0);
    m_axi_wlast                    : out std_logic;
    m_axi_bready                   : out std_logic;
    m_axi_bvalid                   : in  std_logic;
    m_axi_bresp                    : in  std_logic_vector(1 downto 0)
    -- DO NOT EDIT ABOVE THIS LINE ---------------------
  );

  attribute MAX_FANOUT : string;
  attribute SIGIS : string;
  attribute MAX_FANOUT of S_AXI_ACLK       : signal is "10000";
  attribute MAX_FANOUT of S_AXI_ARESETN       : signal is "10000";
  attribute SIGIS of S_AXI_ACLK       : signal is "Clk";
  attribute SIGIS of S_AXI_ARESETN       : signal is "Rst";

  attribute MAX_FANOUT of m_axi_aclk       : signal is "10000";
  attribute MAX_FANOUT of m_axi_aresetn       : signal is "10000";
  attribute SIGIS of m_axi_aclk       : signal is "Clk";
  attribute SIGIS of m_axi_aresetn       : signal is "Rst";
end entity sync_ch_ctl_bl16;

------------------------------------------------------------------------------
-- Architecture section
------------------------------------------------------------------------------

architecture IMP of sync_ch_ctl_bl16 is

  constant USER_SLV_DWIDTH                : integer              := C_S_AXI_DATA_WIDTH;

  constant IPIF_SLV_DWIDTH                : integer              := C_S_AXI_DATA_WIDTH;

  constant ZERO_ADDR_PAD                  : std_logic_vector(0 to 31) := (others => '0');
  constant USER_SLV_BASEADDR              : std_logic_vector     := C_BASEADDR or X"00000000";
  constant USER_SLV_HIGHADDR              : std_logic_vector     := C_BASEADDR or X"000000FF";
  constant USER_MST_BASEADDR              : std_logic_vector     := C_BASEADDR or X"00000100";
  constant USER_MST_HIGHADDR              : std_logic_vector     := C_BASEADDR or X"000001FF";

  constant IPIF_ARD_ADDR_RANGE_ARRAY      : SLV64_ARRAY_TYPE     := 
    (
      ZERO_ADDR_PAD & USER_SLV_BASEADDR,  -- user logic slave space base address
      ZERO_ADDR_PAD & USER_SLV_HIGHADDR,  -- user logic slave space high address
      ZERO_ADDR_PAD & USER_MST_BASEADDR,  -- user logic master space base address
      ZERO_ADDR_PAD & USER_MST_HIGHADDR   -- user logic master space high address
    );

  constant USER_SLV_NUM_REG               : integer              := C_NUM_REG;
  constant USER_MST_NUM_REG               : integer              := 4;
  constant USER_NUM_REG                   : integer              := USER_SLV_NUM_REG+USER_MST_NUM_REG;
  constant TOTAL_IPIF_CE                  : integer              := USER_NUM_REG;

  constant IPIF_ARD_NUM_CE_ARRAY          : INTEGER_ARRAY_TYPE   := 
    (
      0  => (USER_SLV_NUM_REG),           -- number of ce for user logic slave space
      1  =>  USER_MST_NUM_REG             -- number of ce for user logic master space
    );

  ------------------------------------------
  -- Width of the master address bus (32 only)
  ------------------------------------------
  constant USER_MST_AWIDTH                : integer              := C_M_AXI_ADDR_WIDTH;

  ------------------------------------------
  -- Width of the master data bus 
  ------------------------------------------
  constant USER_MST_DWIDTH                : integer              := C_M_AXI_DATA_WIDTH;

  ------------------------------------------
  -- Width of data-bus going to user-logic
  ------------------------------------------
  constant USER_MST_NATIVE_DATA_WIDTH     : integer              := C_NATIVE_DATA_WIDTH;

  ------------------------------------------
  -- Width of the master data bus (12-20 )
  ------------------------------------------
  constant USER_LENGTH_WIDTH              : integer              := C_LENGTH_WIDTH;

  ------------------------------------------
  -- Index for CS/CE
  ------------------------------------------
  constant USER_SLV_CS_INDEX              : integer              := 0;
  constant USER_SLV_CE_INDEX              : integer              := calc_start_ce_index(IPIF_ARD_NUM_CE_ARRAY, USER_SLV_CS_INDEX);
  constant USER_MST_CS_INDEX              : integer              := 1;
  constant USER_MST_CE_INDEX              : integer              := calc_start_ce_index(IPIF_ARD_NUM_CE_ARRAY, USER_MST_CS_INDEX);

  constant USER_CE_INDEX                  : integer              := USER_SLV_CE_INDEX;

  ------------------------------------------
  -- IP Interconnect (IPIC) signal declarations
  ------------------------------------------
  signal ipif_Bus2IP_Clk                : std_logic;
  signal ipif_Bus2IP_Resetn             : std_logic;
  signal ipif_Bus2IP_Addr               : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  signal ipif_Bus2IP_RNW                : std_logic;
  signal ipif_Bus2IP_BE                 : std_logic_vector(IPIF_SLV_DWIDTH/8-1 downto 0);
  signal ipif_Bus2IP_CS                 : std_logic_vector((IPIF_ARD_ADDR_RANGE_ARRAY'LENGTH)/2-1 downto 0);
  signal ipif_Bus2IP_RdCE               : std_logic_vector(calc_num_ce(IPIF_ARD_NUM_CE_ARRAY)-1 downto 0);
  signal ipif_Bus2IP_WrCE               : std_logic_vector(calc_num_ce(IPIF_ARD_NUM_CE_ARRAY)-1 downto 0);
  signal ipif_Bus2IP_Data               : std_logic_vector(IPIF_SLV_DWIDTH-1 downto 0);
  signal ipif_IP2Bus_WrAck              : std_logic;
  signal ipif_IP2Bus_RdAck              : std_logic;
  signal ipif_IP2Bus_Error              : std_logic;
  signal ipif_IP2Bus_Data               : std_logic_vector(IPIF_SLV_DWIDTH-1 downto 0);
  signal ipif_ip2bus_mstrd_req          : std_logic;
  signal ipif_ip2bus_mstwr_req          : std_logic;
  signal ipif_ip2bus_mst_addr           : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal ipif_ip2bus_mst_be             : std_logic_vector((C_NATIVE_DATA_WIDTH)/8-1 downto 0);
  signal ipif_ip2bus_mst_length         : std_logic_vector(C_LENGTH_WIDTH-1 downto 0);
  signal ipif_ip2bus_mst_type           : std_logic;
  signal ipif_ip2bus_mst_lock           : std_logic;
  signal ipif_ip2bus_mst_reset          : std_logic;
  signal ipif_bus2ip_mst_cmdack         : std_logic;
  signal ipif_bus2ip_mst_cmplt          : std_logic;
  signal ipif_bus2ip_mst_error          : std_logic;
  signal ipif_bus2ip_mst_rearbitrate    : std_logic;
  signal ipif_bus2ip_mst_cmd_timeout    : std_logic;
  signal ipif_bus2ip_mstrd_d            : std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0);
  signal ipif_bus2ip_mstrd_rem          : std_logic_vector((C_NATIVE_DATA_WIDTH)/8-1 downto 0);
  signal ipif_bus2ip_mstrd_sof_n        : std_logic;
  signal ipif_bus2ip_mstrd_eof_n        : std_logic;
  signal ipif_bus2ip_mstrd_src_rdy_n    : std_logic;
  signal ipif_bus2ip_mstrd_src_dsc_n    : std_logic;
  signal ipif_ip2bus_mstrd_dst_rdy_n    : std_logic;
  signal ipif_ip2bus_mstrd_dst_dsc_n    : std_logic;
  signal ipif_ip2bus_mstwr_d            : std_logic_vector(C_NATIVE_DATA_WIDTH-1 downto 0);
  signal ipif_ip2bus_mstwr_rem          : std_logic_vector((C_NATIVE_DATA_WIDTH)/8-1 downto 0);
  signal ipif_ip2bus_mstwr_src_rdy_n    : std_logic;
  signal ipif_ip2bus_mstwr_src_dsc_n    : std_logic;
  signal ipif_ip2bus_mstwr_sof_n        : std_logic;
  signal ipif_ip2bus_mstwr_eof_n        : std_logic;
  signal ipif_bus2ip_mstwr_dst_rdy_n    : std_logic;
  signal ipif_bus2ip_mstwr_dst_dsc_n    : std_logic;
  signal user_Bus2IP_RdCE               : std_logic_vector(USER_NUM_REG-1 downto 0);
  signal user_Bus2IP_WrCE               : std_logic_vector(USER_NUM_REG-1 downto 0);
  signal user_IP2Bus_Data               : std_logic_vector(USER_SLV_DWIDTH-1 downto 0);
  signal user_IP2Bus_RdAck              : std_logic;
  signal user_IP2Bus_WrAck              : std_logic;
  signal user_IP2Bus_Error              : std_logic;

  ------------------------------------------
  -- Component declaration for verilog user logic
  ------------------------------------------
  component ipif is
    generic
    (
      -- ADD USER GENERICS BELOW THIS LINE ---------------
      --USER generics added here
      -- ADD USER GENERICS ABOVE THIS LINE ---------------

      -- DO NOT EDIT BELOW THIS LINE ---------------------
      -- Bus protocol parameters, do not add to or delete
      C_MST_NATIVE_DATA_WIDTH        : integer              := 32;
      C_LENGTH_WIDTH                 : integer              := 12;
      C_MST_AWIDTH                   : integer              := 32;
      C_NUM_REG                      : integer              := 34;
      C_SLV_DWIDTH                   : integer              := 32
      -- DO NOT EDIT ABOVE THIS LINE ---------------------
    );
    port
    (
      -- ADD USER PORTS BELOW THIS LINE ------------------
      i_clk                          : in std_logic;
      i_clk_200                      : in std_logic;
      i_rstn                         : in std_logic;
      i_nand_dq_i                    : in  std_logic_vector(7 downto 0);
      o_nand_dq_o                    : out std_logic_vector(7 downto 0);
      o_nand_dq_t                    : out std_logic_vector(7 downto 0);
      o_nand_cle                     : out std_logic;
      o_nand_ale                     : out std_logic;
      o_nand_ce_n                    : out std_logic_vector(7 downto 0);
      o_nand_clk                     : out std_logic;
      o_nand_wr_n                    : out std_logic;
      o_nand_wp_n                    : out std_logic;
      i_nand_rb                      : in  std_logic_vector(7 downto 0);
      i_nand_dqs                     : in  std_logic;
      o_nand_dqs                     : out std_logic;
      o_nand_dqs_t                   : out std_logic;
      o_prog_start                   : out std_logic_vector(7 downto 0);
      o_prog_end                     : out std_logic_vector(7 downto 0);
      o_read_start                   : out std_logic_vector(7 downto 0);
      o_read_end                     : out std_logic_vector(7 downto 0);
      o_erase_start                  : out std_logic_vector(7 downto 0);
      o_erase_end                    : out std_logic_vector(7 downto 0);
      o_op_fail                      : out std_logic_vector(7 downto 0);
      -- ADD USER PORTS ABOVE THIS LINE ------------------

      -- DO NOT EDIT BELOW THIS LINE ---------------------
      -- Bus protocol ports, do not add to or delete
      Bus2IP_Clk                     : in  std_logic;
      Bus2IP_Resetn                  : in  std_logic;
      Bus2IP_Addr                    : in  std_logic_vector(0 to 31);
      Bus2IP_RNW                     : in  std_logic;
      Bus2IP_Data                    : in  std_logic_vector(C_SLV_DWIDTH-1 downto 0);
      Bus2IP_BE                      : in  std_logic_vector(C_SLV_DWIDTH/8-1 downto 0);
      Bus2IP_RdCE                    : in  std_logic_vector(C_NUM_REG-1 downto 0);
      Bus2IP_WrCE                    : in  std_logic_vector(C_NUM_REG-1 downto 0);
      IP2Bus_Data                    : out std_logic_vector(C_SLV_DWIDTH-1 downto 0);
      IP2Bus_RdAck                   : out std_logic;
      IP2Bus_WrAck                   : out std_logic;
      IP2Bus_Error                   : out std_logic;
      ip2bus_mstrd_req               : out std_logic;
      ip2bus_mstwr_req               : out std_logic;
      ip2bus_mst_addr                : out std_logic_vector(C_MST_AWIDTH-1 downto 0);
      ip2bus_mst_be                  : out std_logic_vector((C_MST_NATIVE_DATA_WIDTH/8)-1 downto 0);
      ip2bus_mst_length              : out std_logic_vector(C_LENGTH_WIDTH-1 downto 0);
      ip2bus_mst_type                : out std_logic;
      ip2bus_mst_lock                : out std_logic;
      ip2bus_mst_reset               : out std_logic;
      bus2ip_mst_cmdack              : in  std_logic;
      bus2ip_mst_cmplt               : in  std_logic;
      bus2ip_mst_error               : in  std_logic;
      bus2ip_mst_rearbitrate         : in  std_logic;
      bus2ip_mst_cmd_timeout         : in  std_logic;
      bus2ip_mstrd_d                 : in  std_logic_vector(C_MST_NATIVE_DATA_WIDTH-1 downto 0);
      bus2ip_mstrd_rem               : in  std_logic_vector((C_MST_NATIVE_DATA_WIDTH)/8-1 downto 0);
      bus2ip_mstrd_sof_n             : in  std_logic;
      bus2ip_mstrd_eof_n             : in  std_logic;
      bus2ip_mstrd_src_rdy_n         : in  std_logic;
      bus2ip_mstrd_src_dsc_n         : in  std_logic;
      ip2bus_mstrd_dst_rdy_n         : out std_logic;
      ip2bus_mstrd_dst_dsc_n         : out std_logic;
      ip2bus_mstwr_d                 : out std_logic_vector(C_MST_NATIVE_DATA_WIDTH-1 downto 0);
      ip2bus_mstwr_rem               : out std_logic_vector((C_MST_NATIVE_DATA_WIDTH)/8-1 downto 0);
      ip2bus_mstwr_src_rdy_n         : out std_logic;
      ip2bus_mstwr_src_dsc_n         : out std_logic;
      ip2bus_mstwr_sof_n             : out std_logic;
      ip2bus_mstwr_eof_n             : out std_logic;
      bus2ip_mstwr_dst_rdy_n         : in  std_logic;
      bus2ip_mstwr_dst_dsc_n         : in  std_logic
      -- DO NOT EDIT ABOVE THIS LINE ---------------------
    );
  end component ipif;

begin

  ------------------------------------------
  -- instantiate axi_lite_ipif
  ------------------------------------------
  AXI_LITE_IPIF_I : entity axi_lite_ipif_v1_01_a.axi_lite_ipif
    generic map
    (
      C_S_AXI_DATA_WIDTH             => IPIF_SLV_DWIDTH,
      C_S_AXI_ADDR_WIDTH             => C_S_AXI_ADDR_WIDTH,
      C_S_AXI_MIN_SIZE               => C_S_AXI_MIN_SIZE,
      C_USE_WSTRB                    => C_USE_WSTRB,
      C_DPHASE_TIMEOUT               => C_DPHASE_TIMEOUT,
      C_ARD_ADDR_RANGE_ARRAY         => IPIF_ARD_ADDR_RANGE_ARRAY,
      C_ARD_NUM_CE_ARRAY             => IPIF_ARD_NUM_CE_ARRAY,
      C_FAMILY                       => C_FAMILY
    )
    port map
    (
      S_AXI_ACLK                     => S_AXI_ACLK,
      S_AXI_ARESETN                  => S_AXI_ARESETN,
      S_AXI_AWADDR                   => S_AXI_AWADDR,
      S_AXI_AWVALID                  => S_AXI_AWVALID,
      S_AXI_WDATA                    => S_AXI_WDATA,
      S_AXI_WSTRB                    => S_AXI_WSTRB,
      S_AXI_WVALID                   => S_AXI_WVALID,
      S_AXI_BREADY                   => S_AXI_BREADY,
      S_AXI_ARADDR                   => S_AXI_ARADDR,
      S_AXI_ARVALID                  => S_AXI_ARVALID,
      S_AXI_RREADY                   => S_AXI_RREADY,
      S_AXI_ARREADY                  => S_AXI_ARREADY,
      S_AXI_RDATA                    => S_AXI_RDATA,
      S_AXI_RRESP                    => S_AXI_RRESP,
      S_AXI_RVALID                   => S_AXI_RVALID,
      S_AXI_WREADY                   => S_AXI_WREADY,
      S_AXI_BRESP                    => S_AXI_BRESP,
      S_AXI_BVALID                   => S_AXI_BVALID,
      S_AXI_AWREADY                  => S_AXI_AWREADY,
      Bus2IP_Clk                     => ipif_Bus2IP_Clk,
      Bus2IP_Resetn                  => ipif_Bus2IP_Resetn,
      Bus2IP_Addr                    => ipif_Bus2IP_Addr,
      Bus2IP_RNW                     => ipif_Bus2IP_RNW,
      Bus2IP_BE                      => ipif_Bus2IP_BE,
      Bus2IP_CS                      => ipif_Bus2IP_CS,
      Bus2IP_RdCE                    => ipif_Bus2IP_RdCE,
      Bus2IP_WrCE                    => ipif_Bus2IP_WrCE,
      Bus2IP_Data                    => ipif_Bus2IP_Data,
      IP2Bus_WrAck                   => ipif_IP2Bus_WrAck,
      IP2Bus_RdAck                   => ipif_IP2Bus_RdAck,
      IP2Bus_Error                   => ipif_IP2Bus_Error,
      IP2Bus_Data                    => ipif_IP2Bus_Data
    );

  ------------------------------------------
  -- instantiate axi_master_burst
  ------------------------------------------
  AXI_MASTER_BURST_I : entity axi_master_burst_v1_00_a.axi_master_burst
    generic map
    (
      C_M_AXI_ADDR_WIDTH             => C_M_AXI_ADDR_WIDTH,
      C_M_AXI_DATA_WIDTH             => C_M_AXI_DATA_WIDTH,
      C_MAX_BURST_LEN                => C_MAX_BURST_LEN,
      C_NATIVE_DATA_WIDTH            => C_NATIVE_DATA_WIDTH,
      C_LENGTH_WIDTH                 => C_LENGTH_WIDTH,
      C_ADDR_PIPE_DEPTH              => C_ADDR_PIPE_DEPTH,
      C_FAMILY                       => C_FAMILY
    )
    port map
    (
      m_axi_aclk                     => m_axi_aclk,
      m_axi_aresetn                  => m_axi_aresetn,
      md_error                       => md_error,
      m_axi_arready                  => m_axi_arready,
      m_axi_arvalid                  => m_axi_arvalid,
      m_axi_araddr                   => m_axi_araddr,
      m_axi_arlen                    => m_axi_arlen,
      m_axi_arsize                   => m_axi_arsize,
      m_axi_arburst                  => m_axi_arburst,
      m_axi_arprot                   => m_axi_arprot,
      m_axi_arcache                  => m_axi_arcache,
      m_axi_rready                   => m_axi_rready,
      m_axi_rvalid                   => m_axi_rvalid,
      m_axi_rdata                    => m_axi_rdata,
      m_axi_rresp                    => m_axi_rresp,
      m_axi_rlast                    => m_axi_rlast,
      m_axi_awready                  => m_axi_awready,
      m_axi_awvalid                  => m_axi_awvalid,
      m_axi_awaddr                   => m_axi_awaddr,
      m_axi_awlen                    => m_axi_awlen,
      m_axi_awsize                   => m_axi_awsize,
      m_axi_awburst                  => m_axi_awburst,
      m_axi_awprot                   => m_axi_awprot,
      m_axi_awcache                  => m_axi_awcache,
      m_axi_wready                   => m_axi_wready,
      m_axi_wvalid                   => m_axi_wvalid,
      m_axi_wdata                    => m_axi_wdata,
      m_axi_wstrb                    => m_axi_wstrb,
      m_axi_wlast                    => m_axi_wlast,
      m_axi_bready                   => m_axi_bready,
      m_axi_bvalid                   => m_axi_bvalid,
      m_axi_bresp                    => m_axi_bresp,
      ip2bus_mstrd_req               => ipif_ip2bus_mstrd_req,
      ip2bus_mstwr_req               => ipif_ip2bus_mstwr_req,
      ip2bus_mst_addr                => ipif_ip2bus_mst_addr,
      ip2bus_mst_be                  => ipif_ip2bus_mst_be,
      ip2bus_mst_length              => ipif_ip2bus_mst_length,
      ip2bus_mst_type                => ipif_ip2bus_mst_type,
      ip2bus_mst_lock                => ipif_ip2bus_mst_lock,
      ip2bus_mst_reset               => ipif_ip2bus_mst_reset,
      bus2ip_mst_cmdack              => ipif_bus2ip_mst_cmdack,
      bus2ip_mst_cmplt               => ipif_bus2ip_mst_cmplt,
      bus2ip_mst_error               => ipif_bus2ip_mst_error,
      bus2ip_mst_rearbitrate         => ipif_bus2ip_mst_rearbitrate,
      bus2ip_mst_cmd_timeout         => ipif_bus2ip_mst_cmd_timeout,
      bus2ip_mstrd_d                 => ipif_bus2ip_mstrd_d,
      bus2ip_mstrd_rem               => ipif_bus2ip_mstrd_rem,
      bus2ip_mstrd_sof_n             => ipif_bus2ip_mstrd_sof_n,
      bus2ip_mstrd_eof_n             => ipif_bus2ip_mstrd_eof_n,
      bus2ip_mstrd_src_rdy_n         => ipif_bus2ip_mstrd_src_rdy_n,
      bus2ip_mstrd_src_dsc_n         => ipif_bus2ip_mstrd_src_dsc_n,
      ip2bus_mstrd_dst_rdy_n         => ipif_ip2bus_mstrd_dst_rdy_n,
      ip2bus_mstrd_dst_dsc_n         => ipif_ip2bus_mstrd_dst_dsc_n,
      ip2bus_mstwr_d                 => ipif_ip2bus_mstwr_d,
      ip2bus_mstwr_rem               => ipif_ip2bus_mstwr_rem,
      ip2bus_mstwr_src_rdy_n         => ipif_ip2bus_mstwr_src_rdy_n,
      ip2bus_mstwr_src_dsc_n         => ipif_ip2bus_mstwr_src_dsc_n,
      ip2bus_mstwr_sof_n             => ipif_ip2bus_mstwr_sof_n,
      ip2bus_mstwr_eof_n             => ipif_ip2bus_mstwr_eof_n,
      bus2ip_mstwr_dst_rdy_n         => ipif_bus2ip_mstwr_dst_rdy_n,
      bus2ip_mstwr_dst_dsc_n         => ipif_bus2ip_mstwr_dst_dsc_n
    );

  ------------------------------------------
  -- instantiate User Logic
  ------------------------------------------
  IPIF_I : component ipif
    generic map
    (
      -- MAP USER GENERICS BELOW THIS LINE ---------------
      --USER generics mapped here
      -- MAP USER GENERICS ABOVE THIS LINE ---------------

      C_MST_NATIVE_DATA_WIDTH        => USER_MST_NATIVE_DATA_WIDTH,
      C_LENGTH_WIDTH                 => USER_LENGTH_WIDTH,
      C_MST_AWIDTH                   => USER_MST_AWIDTH,
      C_NUM_REG                      => USER_NUM_REG,
      C_SLV_DWIDTH                   => USER_SLV_DWIDTH
    )
    port map
    (
      -- MAP USER PORTS BELOW THIS LINE ------------------
      i_clk                          => SSD_CLK_100M,
      i_clk_200                      => SSD_CLK_200M,
      i_rstn                         => SSD_RSTN,
      i_nand_dq_i                    => SSD_DQ_I,
      o_nand_dq_o                    => SSD_DQ_O,
      o_nand_dq_t                    => SSD_DQ_T,
      o_nand_cle                     => SSD_CLE,
      o_nand_ale                     => SSD_ALE,
      o_nand_ce_n                    => SSD_CEN,
      o_nand_clk                     => SSD_CLK,
      o_nand_wr_n                    => SSD_WRN,
      o_nand_wp_n                    => SSD_WPN,
      i_nand_rb                      => SSD_RB,
      i_nand_dqs                     => SSD_DQS_I,
      o_nand_dqs                     => SSD_DQS_O,
      o_nand_dqs_t                   => SSD_DQS_T,
      o_prog_start                   => PROG_START_O, 
      o_prog_end                     => PROG_END_O,   
      o_read_start                   => READ_START_O, 
      o_read_end                     => READ_END_O,
      o_erase_start                  => ERASE_START_O,
      o_erase_end                    => ERASE_END_O,  
      o_op_fail                      => OP_FAIL_O,
      -- MAP USER PORTS ABOVE THIS LINE ------------------

      Bus2IP_Clk                     => ipif_Bus2IP_Clk,
      Bus2IP_Resetn                  => ipif_Bus2IP_Resetn,
      Bus2IP_Addr                    => ipif_Bus2IP_Addr,
      Bus2IP_RNW                     => ipif_Bus2IP_RNW,
      Bus2IP_Data                    => ipif_Bus2IP_Data,
      Bus2IP_BE                      => ipif_Bus2IP_BE,
      Bus2IP_RdCE                    => user_Bus2IP_RdCE,
      Bus2IP_WrCE                    => user_Bus2IP_WrCE,
      IP2Bus_Data                    => user_IP2Bus_Data,
      IP2Bus_RdAck                   => user_IP2Bus_RdAck,
      IP2Bus_WrAck                   => user_IP2Bus_WrAck,
      IP2Bus_Error                   => user_IP2Bus_Error,
      ip2bus_mstrd_req               => ipif_ip2bus_mstrd_req,
      ip2bus_mstwr_req               => ipif_ip2bus_mstwr_req,
      ip2bus_mst_addr                => ipif_ip2bus_mst_addr,
      ip2bus_mst_be                  => ipif_ip2bus_mst_be,
      ip2bus_mst_length              => ipif_ip2bus_mst_length,
      ip2bus_mst_type                => ipif_ip2bus_mst_type,
      ip2bus_mst_lock                => ipif_ip2bus_mst_lock,
      ip2bus_mst_reset               => ipif_ip2bus_mst_reset,
      bus2ip_mst_cmdack              => ipif_bus2ip_mst_cmdack,
      bus2ip_mst_cmplt               => ipif_bus2ip_mst_cmplt,
      bus2ip_mst_error               => ipif_bus2ip_mst_error,
      bus2ip_mst_rearbitrate         => ipif_bus2ip_mst_rearbitrate,
      bus2ip_mst_cmd_timeout         => ipif_bus2ip_mst_cmd_timeout,
      bus2ip_mstrd_d                 => ipif_bus2ip_mstrd_d,
      bus2ip_mstrd_rem               => ipif_bus2ip_mstrd_rem,
      bus2ip_mstrd_sof_n             => ipif_bus2ip_mstrd_sof_n,
      bus2ip_mstrd_eof_n             => ipif_bus2ip_mstrd_eof_n,
      bus2ip_mstrd_src_rdy_n         => ipif_bus2ip_mstrd_src_rdy_n,
      bus2ip_mstrd_src_dsc_n         => ipif_bus2ip_mstrd_src_dsc_n,
      ip2bus_mstrd_dst_rdy_n         => ipif_ip2bus_mstrd_dst_rdy_n,
      ip2bus_mstrd_dst_dsc_n         => ipif_ip2bus_mstrd_dst_dsc_n,
      ip2bus_mstwr_d                 => ipif_ip2bus_mstwr_d,
      ip2bus_mstwr_rem               => ipif_ip2bus_mstwr_rem,
      ip2bus_mstwr_src_rdy_n         => ipif_ip2bus_mstwr_src_rdy_n,
      ip2bus_mstwr_src_dsc_n         => ipif_ip2bus_mstwr_src_dsc_n,
      ip2bus_mstwr_sof_n             => ipif_ip2bus_mstwr_sof_n,
      ip2bus_mstwr_eof_n             => ipif_ip2bus_mstwr_eof_n,
      bus2ip_mstwr_dst_rdy_n         => ipif_bus2ip_mstwr_dst_rdy_n,
      bus2ip_mstwr_dst_dsc_n         => ipif_bus2ip_mstwr_dst_dsc_n
    );

  ------------------------------------------
  -- connect internal signals
  ------------------------------------------
  IP2BUS_DATA_MUX_PROC : process( ipif_Bus2IP_CS, user_IP2Bus_Data ) is
  begin

    case ipif_Bus2IP_CS (1 downto 0)  is
      when "01" => ipif_IP2Bus_Data <= user_IP2Bus_Data;
      when "10" => ipif_IP2Bus_Data <= user_IP2Bus_Data;
      when others => ipif_IP2Bus_Data <= (others => '0');
    end case;

  end process IP2BUS_DATA_MUX_PROC;

  ipif_IP2Bus_WrAck <= user_IP2Bus_WrAck;
  ipif_IP2Bus_RdAck <= user_IP2Bus_RdAck;
  ipif_IP2Bus_Error <= user_IP2Bus_Error;

  user_Bus2IP_RdCE(USER_SLV_NUM_REG-1 downto 0) <= ipif_Bus2IP_RdCE(TOTAL_IPIF_CE -USER_SLV_CE_INDEX -1 downto TOTAL_IPIF_CE - USER_SLV_CE_INDEX -USER_SLV_NUM_REG);
  user_Bus2IP_WrCE(USER_SLV_NUM_REG-1 downto 0) <= ipif_Bus2IP_WrCE(TOTAL_IPIF_CE -USER_SLV_CE_INDEX -1 downto TOTAL_IPIF_CE - USER_SLV_CE_INDEX -USER_SLV_NUM_REG);
  user_Bus2IP_RdCE(USER_NUM_REG -1 downto USER_NUM_REG - USER_MST_NUM_REG) <= ipif_Bus2IP_RdCE(TOTAL_IPIF_CE - USER_MST_CE_INDEX -1 downto TOTAL_IPIF_CE - USER_MST_CE_INDEX -USER_MST_NUM_REG);
  user_Bus2IP_WrCE(USER_NUM_REG -1 downto USER_NUM_REG - USER_MST_NUM_REG) <= ipif_Bus2IP_WrCE(TOTAL_IPIF_CE - USER_MST_CE_INDEX -1 downto TOTAL_IPIF_CE - USER_MST_CE_INDEX -USER_MST_NUM_REG);

end IMP;
