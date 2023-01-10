
################################################################
# This is a generated script based on design: sys_top
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source sys_top_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu17eg-ffvc1760-2-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name sys_top

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set nand_if_0 [ create_bd_intf_port -mode Master -vlnv enclab:user:nand_if_rtl:1.0 nand_if_0 ]

  set nand_if_1 [ create_bd_intf_port -mode Master -vlnv enclab:user:nand_if_rtl:1.0 nand_if_1 ]

  set nand_if_2 [ create_bd_intf_port -mode Master -vlnv enclab:user:nand_if_rtl:1.0 nand_if_2 ]

  set nand_if_3 [ create_bd_intf_port -mode Master -vlnv enclab:user:nand_if_rtl:1.0 nand_if_3 ]

  set pci_exp_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pci_exp_0 ]

  set pcie_ref [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 pcie_ref ]


  # Create ports
  set pcie_perst_n [ create_bd_port -dir I -type rst pcie_perst_n ]
  set user_lnk_up_0 [ create_bd_port -dir O user_lnk_up_0 ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_1, and set properties
  set axi_bram_ctrl_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_1 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_1

  # Create instance: axi_bram_ctrl_2, and set properties
  set axi_bram_ctrl_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_2 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_2

  # Create instance: axi_bram_ctrl_3, and set properties
  set axi_bram_ctrl_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_3 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_3

  # Create instance: bch_sccs_256B_21B_13b_0, and set properties
  set bch_sccs_256B_21B_13b_0 [ create_bd_cell -type ip -vlnv enclab:user:bch_sccs_256B_21B_13b:1.0.0 bch_sccs_256B_21B_13b_0 ]

  # Create instance: bch_sccs_256B_21B_13b_1, and set properties
  set bch_sccs_256B_21B_13b_1 [ create_bd_cell -type ip -vlnv enclab:user:bch_sccs_256B_21B_13b:1.0.0 bch_sccs_256B_21B_13b_1 ]

  # Create instance: bch_sccs_256B_21B_13b_2, and set properties
  set bch_sccs_256B_21B_13b_2 [ create_bd_cell -type ip -vlnv enclab:user:bch_sccs_256B_21B_13b:1.0.0 bch_sccs_256B_21B_13b_2 ]

  # Create instance: bch_sccs_256B_21B_13b_3, and set properties
  set bch_sccs_256B_21B_13b_3 [ create_bd_cell -type ip -vlnv enclab:user:bch_sccs_256B_21B_13b:1.0.0 bch_sccs_256B_21B_13b_3 ]

  # Create instance: bch_skes_256B_21B_13b_0, and set properties
  set bch_skes_256B_21B_13b_0 [ create_bd_cell -type ip -vlnv enclab:user:bch_skes_256B_21B_13b:1.0.2 bch_skes_256B_21B_13b_0 ]

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_1 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_1

  # Create instance: blk_mem_gen_2, and set properties
  set blk_mem_gen_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_2 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_2

  # Create instance: blk_mem_gen_3, and set properties
  set blk_mem_gen_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_3 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_3

  # Create instance: gpic_0, and set properties
  set gpic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 gpic_0 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.STRATEGY {0} \
 ] $gpic_0

  # Create instance: gpic_0_sub, and set properties
  set gpic_0_sub [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 gpic_0_sub ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.STRATEGY {0} \
 ] $gpic_0_sub

  # Create instance: gpic_0_sub_0, and set properties
  set gpic_0_sub_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 gpic_0_sub_0 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.NUM_MI {8} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.STRATEGY {2} \
 ] $gpic_0_sub_0

  # Create instance: gpic_1, and set properties
  set gpic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 gpic_1 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.STRATEGY {0} \
 ] $gpic_1

  # Create instance: hpic_0, and set properties
  set hpic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 hpic_0 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.M00_HAS_DATA_FIFO {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {4} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.S00_HAS_REGSLICE {4} \
   CONFIG.S01_HAS_DATA_FIFO {2} \
   CONFIG.S01_HAS_REGSLICE {4} \
   CONFIG.S02_HAS_DATA_FIFO {2} \
   CONFIG.S02_HAS_REGSLICE {4} \
   CONFIG.S03_HAS_DATA_FIFO {2} \
   CONFIG.S03_HAS_REGSLICE {4} \
   CONFIG.STRATEGY {2} \
   CONFIG.SYNCHRONIZATION_STAGES {4} \
   CONFIG.XBAR_DATA_WIDTH {64} \
 ] $hpic_0

  # Create instance: iodelay_if_0, and set properties
  set iodelay_if_0 [ create_bd_cell -type ip -vlnv ENCLab:user:iodelay_if:1.0.0 iodelay_if_0 ]

  # Create instance: iodelay_if_0_dqs, and set properties
  set iodelay_if_0_dqs [ create_bd_cell -type ip -vlnv ENCLab:user:iodelay_if:1.0.0 iodelay_if_0_dqs ]

  # Create instance: nvme_ctrl_0, and set properties
  set nvme_ctrl_0 [ create_bd_cell -type ip -vlnv crztech:user:nvme_ctrl:1.0 nvme_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.C_PCIE_DATA_WIDTH {512} \
   CONFIG.C_S0_AXI_HIGHADDR {0xA000FFFF} \
 ] $nvme_ctrl_0

  # Create instance: pll_bank10, and set properties
  set pll_bank10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 pll_bank10 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {200.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {106.955} \
   CONFIG.CLKOUT1_PHASE_ERROR {120.362} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {118.642} \
   CONFIG.CLKOUT2_PHASE_ERROR {120.362} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {50} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT3_JITTER {96.669} \
   CONFIG.CLKOUT3_PHASE_ERROR {120.362} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_DRIVES {Buffer} \
   CONFIG.CLKOUT5_DRIVES {Buffer} \
   CONFIG.CLKOUT6_DRIVES {Buffer} \
   CONFIG.CLKOUT7_DRIVES {Buffer} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.JITTER_SEL {Min_O_Jitter} \
   CONFIG.MMCM_BANDWIDTH {HIGH} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {32.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {20.0} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {16.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {32} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {8} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.PRIM_SOURCE {Global_buffer} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_PHASE_ALIGNMENT {true} \
   CONFIG.USE_RESET {true} \
 ] $pll_bank10

  # Create instance: pll_bank10_psr, and set properties
  set pll_bank10_psr [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 pll_bank10_psr ]

  # Create instance: pll_bank11, and set properties
  set pll_bank11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 pll_bank11 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {200.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {139.132} \
   CONFIG.CLKOUT1_PHASE_ERROR {154.682} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100} \
   CONFIG.CLKOUT1_REQUESTED_PHASE {0} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {163.701} \
   CONFIG.CLKOUT2_PHASE_ERROR {154.682} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {50} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT3_JITTER {124.137} \
   CONFIG.CLKOUT3_PHASE_ERROR {154.682} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_DRIVES {Buffer} \
   CONFIG.CLKOUT5_DRIVES {Buffer} \
   CONFIG.CLKOUT6_DRIVES {Buffer} \
   CONFIG.CLKOUT7_DRIVES {Buffer} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.JITTER_SEL {No_Jitter} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {24.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {20.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {12.000} \
   CONFIG.MMCM_CLKOUT0_PHASE {0.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {24} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {6} \
   CONFIG.MMCM_COMPENSATION {AUTO} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.PHASESHIFT_MODE {LATENCY} \
   CONFIG.PRIM_SOURCE {Global_buffer} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_PHASE_ALIGNMENT {true} \
   CONFIG.USE_RESET {true} \
 ] $pll_bank11

  # Create instance: pll_bank11_psr, and set properties
  set pll_bank11_psr [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 pll_bank11_psr ]

  # Create instance: pll_bank12, and set properties
  set pll_bank12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 pll_bank12 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {200.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {106.955} \
   CONFIG.CLKOUT1_PHASE_ERROR {120.362} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {118.642} \
   CONFIG.CLKOUT2_PHASE_ERROR {120.362} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {50} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT3_JITTER {96.669} \
   CONFIG.CLKOUT3_PHASE_ERROR {120.362} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_DRIVES {Buffer} \
   CONFIG.CLKOUT5_DRIVES {Buffer} \
   CONFIG.CLKOUT6_DRIVES {Buffer} \
   CONFIG.CLKOUT7_DRIVES {Buffer} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.JITTER_SEL {Min_O_Jitter} \
   CONFIG.MMCM_BANDWIDTH {HIGH} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {32.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {20.0} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {16.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {32} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {8} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.PRIM_SOURCE {Global_buffer} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_PHASE_ALIGNMENT {true} \
   CONFIG.USE_RESET {true} \
 ] $pll_bank12

  # Create instance: pll_bank12_psr, and set properties
  set pll_bank12_psr [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 pll_bank12_psr ]

  # Create instance: pll_bank13, and set properties
  set pll_bank13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 pll_bank13 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {200.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {106.955} \
   CONFIG.CLKOUT1_PHASE_ERROR {120.362} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {118.642} \
   CONFIG.CLKOUT2_PHASE_ERROR {120.362} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {50} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT3_JITTER {96.669} \
   CONFIG.CLKOUT3_PHASE_ERROR {120.362} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_DRIVES {Buffer} \
   CONFIG.CLKOUT5_DRIVES {Buffer} \
   CONFIG.CLKOUT6_DRIVES {Buffer} \
   CONFIG.CLKOUT7_DRIVES {Buffer} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.JITTER_SEL {Min_O_Jitter} \
   CONFIG.MMCM_BANDWIDTH {HIGH} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {32.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {20.0} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {16.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {32} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {8} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.PRIM_SOURCE {Global_buffer} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_PHASE_ALIGNMENT {true} \
   CONFIG.USE_RESET {true} \
 ] $pll_bank13

  # Create instance: pll_bank13_psr, and set properties
  set pll_bank13_psr [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 pll_bank13_psr ]

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: proc_sys_reset_2, and set properties
  set proc_sys_reset_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_2 ]

  # Create instance: proc_sys_reset_6, and set properties
  set proc_sys_reset_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_6 ]

  # Create instance: proc_sys_reset_7, and set properties
  set proc_sys_reset_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_7 ]

  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_0

  # Create instance: t4nfc_hlper_0, and set properties
  set t4nfc_hlper_0 [ create_bd_cell -type ip -vlnv enclab:user:t4nfc_hlper:1.0.2 t4nfc_hlper_0 ]

  # Create instance: t4nfc_hlper_1, and set properties
  set t4nfc_hlper_1 [ create_bd_cell -type ip -vlnv enclab:user:t4nfc_hlper:1.0.2 t4nfc_hlper_1 ]

  # Create instance: t4nfc_hlper_2, and set properties
  set t4nfc_hlper_2 [ create_bd_cell -type ip -vlnv enclab:user:t4nfc_hlper:1.0.2 t4nfc_hlper_2 ]

  # Create instance: t4nfc_hlper_3, and set properties
  set t4nfc_hlper_3 [ create_bd_cell -type ip -vlnv enclab:user:t4nfc_hlper:1.0.2 t4nfc_hlper_3 ]

  # Create instance: v2nfc_0, and set properties
  set v2nfc_0 [ create_bd_cell -type ip -vlnv enclab:user:v2nfc:1.4.3 v2nfc_0 ]
  set_property -dict [ list \
   CONFIG.BufferType {1} \
   CONFIG.DQIDelayInst {0} \
   CONFIG.DQIDelayValue {1100} \
   CONFIG.IDelayValue {1100} \
   CONFIG.InputClockBufferType {1} \
 ] $v2nfc_0

  # Create instance: v2nfc_1, and set properties
  set v2nfc_1 [ create_bd_cell -type ip -vlnv enclab:user:v2nfc:1.4.3 v2nfc_1 ]
  set_property -dict [ list \
   CONFIG.BufferType {1} \
   CONFIG.DQIDelayInst {0} \
   CONFIG.DQIDelayValue {1100} \
   CONFIG.IDelayCtrlInst {1} \
   CONFIG.IDelayValue {1100} \
   CONFIG.InputClockBufferType {1} \
 ] $v2nfc_1

  # Create instance: v2nfc_2, and set properties
  set v2nfc_2 [ create_bd_cell -type ip -vlnv enclab:user:v2nfc:1.4.3 v2nfc_2 ]
  set_property -dict [ list \
   CONFIG.BufferType {1} \
   CONFIG.DQIDelayInst {0} \
   CONFIG.DQIDelayValue {1100} \
   CONFIG.IDelayValue {1100} \
   CONFIG.InputClockBufferType {1} \
 ] $v2nfc_2

  # Create instance: v2nfc_3, and set properties
  set v2nfc_3 [ create_bd_cell -type ip -vlnv enclab:user:v2nfc:1.4.3 v2nfc_3 ]
  set_property -dict [ list \
   CONFIG.BufferType {1} \
   CONFIG.DQIDelayInst {0} \
   CONFIG.DQIDelayValue {1100} \
   CONFIG.IDelayValue {1100} \
   CONFIG.InputClockBufferType {1} \
 ] $v2nfc_3

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {1} \
 ] $xlconcat_0

  # Create instance: zynq_ultra_ps_e_0, and set properties
  set zynq_ultra_ps_e_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.3 zynq_ultra_ps_e_0 ]
  set_property -dict [ list \
   CONFIG.PSU_DDR_RAM_HIGHADDR {0x7FFFFFFF} \
   CONFIG.PSU_DDR_RAM_HIGHADDR_OFFSET {0x00000002} \
   CONFIG.PSU_DDR_RAM_LOWADDR_OFFSET {0x80000000} \
   CONFIG.PSU_DYNAMIC_DDR_CONFIG_EN {0} \
   CONFIG.PSU_MIO_0_DIRECTION {out} \
   CONFIG.PSU_MIO_0_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_0_POLARITY {Default} \
   CONFIG.PSU_MIO_10_DIRECTION {inout} \
   CONFIG.PSU_MIO_10_POLARITY {Default} \
   CONFIG.PSU_MIO_11_DIRECTION {inout} \
   CONFIG.PSU_MIO_11_POLARITY {Default} \
   CONFIG.PSU_MIO_12_DIRECTION {out} \
   CONFIG.PSU_MIO_12_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_12_POLARITY {Default} \
   CONFIG.PSU_MIO_14_DIRECTION {inout} \
   CONFIG.PSU_MIO_14_POLARITY {Default} \
   CONFIG.PSU_MIO_15_DIRECTION {inout} \
   CONFIG.PSU_MIO_15_POLARITY {Default} \
   CONFIG.PSU_MIO_16_DIRECTION {inout} \
   CONFIG.PSU_MIO_16_POLARITY {Default} \
   CONFIG.PSU_MIO_17_DIRECTION {inout} \
   CONFIG.PSU_MIO_17_POLARITY {Default} \
   CONFIG.PSU_MIO_18_DIRECTION {in} \
   CONFIG.PSU_MIO_18_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_18_POLARITY {Default} \
   CONFIG.PSU_MIO_18_SLEW {fast} \
   CONFIG.PSU_MIO_19_DIRECTION {out} \
   CONFIG.PSU_MIO_19_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_19_POLARITY {Default} \
   CONFIG.PSU_MIO_1_DIRECTION {inout} \
   CONFIG.PSU_MIO_1_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_1_POLARITY {Default} \
   CONFIG.PSU_MIO_1_SLEW {fast} \
   CONFIG.PSU_MIO_20_DIRECTION {out} \
   CONFIG.PSU_MIO_20_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_20_POLARITY {Default} \
   CONFIG.PSU_MIO_21_DIRECTION {in} \
   CONFIG.PSU_MIO_21_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_21_POLARITY {Default} \
   CONFIG.PSU_MIO_21_SLEW {fast} \
   CONFIG.PSU_MIO_2_DIRECTION {inout} \
   CONFIG.PSU_MIO_2_POLARITY {Default} \
   CONFIG.PSU_MIO_3_DIRECTION {inout} \
   CONFIG.PSU_MIO_3_POLARITY {Default} \
   CONFIG.PSU_MIO_45_DIRECTION {in} \
   CONFIG.PSU_MIO_45_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_45_POLARITY {Default} \
   CONFIG.PSU_MIO_45_SLEW {fast} \
   CONFIG.PSU_MIO_46_DIRECTION {inout} \
   CONFIG.PSU_MIO_46_POLARITY {Default} \
   CONFIG.PSU_MIO_47_DIRECTION {inout} \
   CONFIG.PSU_MIO_47_POLARITY {Default} \
   CONFIG.PSU_MIO_48_DIRECTION {inout} \
   CONFIG.PSU_MIO_48_POLARITY {Default} \
   CONFIG.PSU_MIO_49_DIRECTION {inout} \
   CONFIG.PSU_MIO_49_POLARITY {Default} \
   CONFIG.PSU_MIO_4_DIRECTION {inout} \
   CONFIG.PSU_MIO_4_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_4_POLARITY {Default} \
   CONFIG.PSU_MIO_50_DIRECTION {inout} \
   CONFIG.PSU_MIO_50_POLARITY {Default} \
   CONFIG.PSU_MIO_51_DIRECTION {out} \
   CONFIG.PSU_MIO_51_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_51_POLARITY {Default} \
   CONFIG.PSU_MIO_5_DIRECTION {out} \
   CONFIG.PSU_MIO_5_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_5_POLARITY {Default} \
   CONFIG.PSU_MIO_64_DIRECTION {out} \
   CONFIG.PSU_MIO_64_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_64_POLARITY {Default} \
   CONFIG.PSU_MIO_65_DIRECTION {out} \
   CONFIG.PSU_MIO_65_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_65_POLARITY {Default} \
   CONFIG.PSU_MIO_66_DIRECTION {out} \
   CONFIG.PSU_MIO_66_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_66_POLARITY {Default} \
   CONFIG.PSU_MIO_67_DIRECTION {out} \
   CONFIG.PSU_MIO_67_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_67_POLARITY {Default} \
   CONFIG.PSU_MIO_68_DIRECTION {out} \
   CONFIG.PSU_MIO_68_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_68_POLARITY {Default} \
   CONFIG.PSU_MIO_69_DIRECTION {out} \
   CONFIG.PSU_MIO_69_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_69_POLARITY {Default} \
   CONFIG.PSU_MIO_70_DIRECTION {in} \
   CONFIG.PSU_MIO_70_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_70_POLARITY {Default} \
   CONFIG.PSU_MIO_70_SLEW {fast} \
   CONFIG.PSU_MIO_71_DIRECTION {in} \
   CONFIG.PSU_MIO_71_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_71_POLARITY {Default} \
   CONFIG.PSU_MIO_71_SLEW {fast} \
   CONFIG.PSU_MIO_72_DIRECTION {in} \
   CONFIG.PSU_MIO_72_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_72_POLARITY {Default} \
   CONFIG.PSU_MIO_72_SLEW {fast} \
   CONFIG.PSU_MIO_73_DIRECTION {in} \
   CONFIG.PSU_MIO_73_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_73_POLARITY {Default} \
   CONFIG.PSU_MIO_73_SLEW {fast} \
   CONFIG.PSU_MIO_74_DIRECTION {in} \
   CONFIG.PSU_MIO_74_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_74_POLARITY {Default} \
   CONFIG.PSU_MIO_74_SLEW {fast} \
   CONFIG.PSU_MIO_75_DIRECTION {in} \
   CONFIG.PSU_MIO_75_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_75_POLARITY {Default} \
   CONFIG.PSU_MIO_75_SLEW {fast} \
   CONFIG.PSU_MIO_76_DIRECTION {out} \
   CONFIG.PSU_MIO_76_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_76_POLARITY {Default} \
   CONFIG.PSU_MIO_77_DIRECTION {inout} \
   CONFIG.PSU_MIO_77_POLARITY {Default} \
   CONFIG.PSU_MIO_7_DIRECTION {out} \
   CONFIG.PSU_MIO_7_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_7_POLARITY {Default} \
   CONFIG.PSU_MIO_8_DIRECTION {inout} \
   CONFIG.PSU_MIO_8_POLARITY {Default} \
   CONFIG.PSU_MIO_9_DIRECTION {inout} \
   CONFIG.PSU_MIO_9_POLARITY {Default} \
   CONFIG.PSU_MIO_TREE_PERIPHERALS {Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash##Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash##I2C 0#I2C 0#I2C 1#I2C 1#UART 0#UART 0#UART 1#UART 1########################SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#############Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#MDIO 3#MDIO 3} \
   CONFIG.PSU_MIO_TREE_SIGNALS {sclk_out#miso_mo1#mo2#mo3#mosi_mi0#n_ss_out##n_ss_out_upper#mo_upper[0]#mo_upper[1]#mo_upper[2]#mo_upper[3]#sclk_out_upper##scl_out#sda_out#scl_out#sda_out#rxd#txd#txd#rxd########################sdio1_cd_n#sdio1_data_out[0]#sdio1_data_out[1]#sdio1_data_out[2]#sdio1_data_out[3]#sdio1_cmd_out#sdio1_clk_out#############rgmii_tx_clk#rgmii_txd[0]#rgmii_txd[1]#rgmii_txd[2]#rgmii_txd[3]#rgmii_tx_ctl#rgmii_rx_clk#rgmii_rxd[0]#rgmii_rxd[1]#rgmii_rxd[2]#rgmii_rxd[3]#rgmii_rx_ctl#gem3_mdc#gem3_mdio_out} \
   CONFIG.PSU_SD1_INTERNAL_BUS_WIDTH {4} \
   CONFIG.PSU__ACT_DDR_FREQ_MHZ {799.992004} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__ACT_FREQMHZ {1333.320068} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__DIVISOR0 {1} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__FBDIV {80} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__APLL_TO_LPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__ACT_FREQMHZ {399.996002} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__FREQMHZ {1066} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__ACT_FREQMHZ {599.994019} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FBDIV {72} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__DPLL_TO_LPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR0 {63} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR1 {10} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__ACT_FREQMHZ {599.994019} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__ACT_FREQMHZ {599.994019} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__ACT_FREQMHZ {533.328003} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FBDIV {64} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__VPLL_TO_LPD_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__ACT_FREQMHZ {499.994995} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__ACT_FREQMHZ {49.999500} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR0 {30} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__ACT_FREQMHZ {499.994995} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__DLL_REF_CTRL__ACT_FREQMHZ {1499.984985} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__ACT_FREQMHZ {124.998749} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FBDIV {90} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRL_APB__IOPLL_TO_FPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__DIVISOR0 {4} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__ACT_FREQMHZ {499.994995} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__ACT_FREQMHZ {187.498123} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__DIVISOR0 {8} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__ACT_FREQMHZ {49.999500} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR0 {8} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {50} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__ACT_FREQMHZ {199.998001} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__ACT_FREQMHZ {199.998001} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR0 {4} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__ACT_FREQMHZ {299.997009} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FBDIV {60} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRL_APB__RPLL_TO_FPD_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR0 {7} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__ACT_FREQMHZ {199.998001} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR0 {7} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR0 {7} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__ACT_FREQMHZ {33.333000} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__DIVISOR0 {1} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR1 {15} \
   CONFIG.PSU__DDRC__ADDR_MIRROR {1} \
   CONFIG.PSU__DDRC__AL {0} \
   CONFIG.PSU__DDRC__BANK_ADDR_COUNT {3} \
   CONFIG.PSU__DDRC__BG_ADDR_COUNT {NA} \
   CONFIG.PSU__DDRC__BUS_WIDTH {32 Bit} \
   CONFIG.PSU__DDRC__CL {NA} \
   CONFIG.PSU__DDRC__COL_ADDR_COUNT {10} \
   CONFIG.PSU__DDRC__COMPONENTS {Components} \
   CONFIG.PSU__DDRC__CWL {NA} \
   CONFIG.PSU__DDRC__DDR3L_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__DDR3_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__DDR4_ADDR_MAPPING {NA} \
   CONFIG.PSU__DDRC__DDR4_CAL_MODE_ENABLE {NA} \
   CONFIG.PSU__DDRC__DDR4_CRC_CONTROL {NA} \
   CONFIG.PSU__DDRC__DDR4_MAXPWR_SAVING_EN {NA} \
   CONFIG.PSU__DDRC__DDR4_T_REF_MODE {NA} \
   CONFIG.PSU__DDRC__DDR4_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__DEEP_PWR_DOWN_EN {0} \
   CONFIG.PSU__DDRC__DEVICE_CAPACITY {8192 MBits} \
   CONFIG.PSU__DDRC__DIMM_ADDR_MIRROR {NA} \
   CONFIG.PSU__DDRC__DM_DBI {DM_NO_DBI} \
   CONFIG.PSU__DDRC__DQMAP_0_3 {0} \
   CONFIG.PSU__DDRC__DQMAP_12_15 {0} \
   CONFIG.PSU__DDRC__DQMAP_16_19 {0} \
   CONFIG.PSU__DDRC__DQMAP_20_23 {0} \
   CONFIG.PSU__DDRC__DQMAP_24_27 {0} \
   CONFIG.PSU__DDRC__DQMAP_28_31 {0} \
   CONFIG.PSU__DDRC__DQMAP_32_35 {0} \
   CONFIG.PSU__DDRC__DQMAP_36_39 {0} \
   CONFIG.PSU__DDRC__DQMAP_40_43 {0} \
   CONFIG.PSU__DDRC__DQMAP_44_47 {0} \
   CONFIG.PSU__DDRC__DQMAP_48_51 {0} \
   CONFIG.PSU__DDRC__DQMAP_4_7 {0} \
   CONFIG.PSU__DDRC__DQMAP_52_55 {0} \
   CONFIG.PSU__DDRC__DQMAP_56_59 {0} \
   CONFIG.PSU__DDRC__DQMAP_60_63 {0} \
   CONFIG.PSU__DDRC__DQMAP_64_67 {0} \
   CONFIG.PSU__DDRC__DQMAP_68_71 {0} \
   CONFIG.PSU__DDRC__DQMAP_8_11 {0} \
   CONFIG.PSU__DDRC__DRAM_WIDTH {32 Bits} \
   CONFIG.PSU__DDRC__ENABLE_2T_TIMING {0} \
   CONFIG.PSU__DDRC__ENABLE_LP4_HAS_ECC_COMP {0} \
   CONFIG.PSU__DDRC__ENABLE_LP4_SLOWBOOT {1} \
   CONFIG.PSU__DDRC__FGRM {NA} \
   CONFIG.PSU__DDRC__LPDDR3_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__LPDDR4_T_REF_RANGE {Normal (0-85)} \
   CONFIG.PSU__DDRC__LP_ASR {NA} \
   CONFIG.PSU__DDRC__MEMORY_TYPE {LPDDR 4} \
   CONFIG.PSU__DDRC__PARITY_ENABLE {NA} \
   CONFIG.PSU__DDRC__RANK_ADDR_COUNT {1} \
   CONFIG.PSU__DDRC__ROW_ADDR_COUNT {15} \
   CONFIG.PSU__DDRC__SB_TARGET {NA} \
   CONFIG.PSU__DDRC__SELF_REF_ABORT {NA} \
   CONFIG.PSU__DDRC__SPEED_BIN {LPDDR4_2133} \
   CONFIG.PSU__DDRC__T_FAW {40.0} \
   CONFIG.PSU__DDRC__T_RAS_MIN {42} \
   CONFIG.PSU__DDRC__T_RC {63} \
   CONFIG.PSU__DDRC__T_RCD {20} \
   CONFIG.PSU__DDRC__T_RP {23} \
   CONFIG.PSU__DDRC__VENDOR_PART {OTHERS} \
   CONFIG.PSU__DDR_HIGH_ADDRESS_GUI_ENABLE {0} \
   CONFIG.PSU__DDR__INTERFACE__FREQMHZ {533.000} \
   CONFIG.PSU__DLL__ISUSED {1} \
   CONFIG.PSU__ENET3__FIFO__ENABLE {0} \
   CONFIG.PSU__ENET3__GRP_MDIO__ENABLE {1} \
   CONFIG.PSU__ENET3__GRP_MDIO__IO {MIO 76 .. 77} \
   CONFIG.PSU__ENET3__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__ENET3__PERIPHERAL__IO {MIO 64 .. 75} \
   CONFIG.PSU__ENET3__PTP__ENABLE {0} \
   CONFIG.PSU__ENET3__TSU__ENABLE {0} \
   CONFIG.PSU__FPGA_PL1_ENABLE {1} \
   CONFIG.PSU__FPGA_PL2_ENABLE {1} \
   CONFIG.PSU__FPGA_PL3_ENABLE {1} \
   CONFIG.PSU__GEM3_COHERENCY {0} \
   CONFIG.PSU__GEM3_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__GEM__TSU__ENABLE {0} \
   CONFIG.PSU__GPIO_EMIO__WIDTH {[91:0]} \
   CONFIG.PSU__HIGH_ADDRESS__ENABLE {0} \
   CONFIG.PSU__I2C0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__I2C0__PERIPHERAL__IO {MIO 14 .. 15} \
   CONFIG.PSU__I2C1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__I2C1__PERIPHERAL__IO {MIO 16 .. 17} \
   CONFIG.PSU__MAXIGP0__DATA_WIDTH {64} \
   CONFIG.PSU__MAXIGP1__DATA_WIDTH {64} \
   CONFIG.PSU__MAXIGP2__DATA_WIDTH {32} \
   CONFIG.PSU__NUM_FABRIC_RESETS {4} \
   CONFIG.PSU__PL_CLK1_BUF {TRUE} \
   CONFIG.PSU__PL_CLK2_BUF {TRUE} \
   CONFIG.PSU__PL_CLK3_BUF {TRUE} \
   CONFIG.PSU__PROTECTION__MASTERS {USB1:NonSecure;0|USB0:NonSecure;0|S_AXI_LPD:NA;0|S_AXI_HPC1_FPD:NA;0|S_AXI_HPC0_FPD:NA;0|S_AXI_HP3_FPD:NA;0|S_AXI_HP2_FPD:NA;0|S_AXI_HP1_FPD:NA;1|S_AXI_HP0_FPD:NA;1|S_AXI_ACP:NA;0|S_AXI_ACE:NA;0|SD1:NonSecure;1|SD0:NonSecure;0|SATA1:NonSecure;0|SATA0:NonSecure;0|RPU1:Secure;1|RPU0:Secure;1|QSPI:NonSecure;1|PMU:NA;1|PCIe:NonSecure;0|NAND:NonSecure;0|LDMA:NonSecure;1|GPU:NonSecure;1|GEM3:NonSecure;1|GEM2:NonSecure;0|GEM1:NonSecure;0|GEM0:NonSecure;0|FDMA:NonSecure;1|DP:NonSecure;0|DAP:NA;1|Coresight:NA;1|CSU:NA;1|APU:NA;1} \
   CONFIG.PSU__PROTECTION__SLAVES {LPD;USB3_1_XHCI;FE300000;FE3FFFFF;0|LPD;USB3_1;FF9E0000;FF9EFFFF;0|LPD;USB3_0_XHCI;FE200000;FE2FFFFF;0|LPD;USB3_0;FF9D0000;FF9DFFFF;0|LPD;UART1;FF010000;FF01FFFF;1|LPD;UART0;FF000000;FF00FFFF;1|LPD;TTC3;FF140000;FF14FFFF;0|LPD;TTC2;FF130000;FF13FFFF;0|LPD;TTC1;FF120000;FF12FFFF;0|LPD;TTC0;FF110000;FF11FFFF;0|FPD;SWDT1;FD4D0000;FD4DFFFF;0|LPD;SWDT0;FF150000;FF15FFFF;0|LPD;SPI1;FF050000;FF05FFFF;0|LPD;SPI0;FF040000;FF04FFFF;0|FPD;SMMU_REG;FD5F0000;FD5FFFFF;1|FPD;SMMU;FD800000;FDFFFFFF;1|FPD;SIOU;FD3D0000;FD3DFFFF;1|FPD;SERDES;FD400000;FD47FFFF;1|LPD;SD1;FF170000;FF17FFFF;1|LPD;SD0;FF160000;FF16FFFF;0|FPD;SATA;FD0C0000;FD0CFFFF;0|LPD;RTC;FFA60000;FFA6FFFF;1|LPD;RSA_CORE;FFCE0000;FFCEFFFF;1|LPD;RPU;FF9A0000;FF9AFFFF;1|LPD;R5_TCM_RAM_GLOBAL;FFE00000;FFE3FFFF;1|LPD;R5_1_Instruction_Cache;FFEC0000;FFECFFFF;1|LPD;R5_1_Data_Cache;FFED0000;FFEDFFFF;1|LPD;R5_1_BTCM_GLOBAL;FFEB0000;FFEBFFFF;1|LPD;R5_1_ATCM_GLOBAL;FFE90000;FFE9FFFF;1|LPD;R5_0_Instruction_Cache;FFE40000;FFE4FFFF;1|LPD;R5_0_Data_Cache;FFE50000;FFE5FFFF;1|LPD;R5_0_BTCM_GLOBAL;FFE20000;FFE2FFFF;1|LPD;R5_0_ATCM_GLOBAL;FFE00000;FFE0FFFF;1|LPD;QSPI_Linear_Address;C0000000;DFFFFFFF;1|LPD;QSPI;FF0F0000;FF0FFFFF;1|LPD;PMU_RAM;FFDC0000;FFDDFFFF;1|LPD;PMU_GLOBAL;FFD80000;FFDBFFFF;1|FPD;PCIE_MAIN;FD0E0000;FD0EFFFF;0|FPD;PCIE_LOW;E0000000;EFFFFFFF;0|FPD;PCIE_HIGH2;8000000000;BFFFFFFFFF;0|FPD;PCIE_HIGH1;600000000;7FFFFFFFF;0|FPD;PCIE_DMA;FD0F0000;FD0FFFFF;0|FPD;PCIE_ATTRIB;FD480000;FD48FFFF;0|LPD;OCM_XMPU_CFG;FFA70000;FFA7FFFF;1|LPD;OCM_SLCR;FF960000;FF96FFFF;1|OCM;OCM;FFFC0000;FFFFFFFF;1|LPD;NAND;FF100000;FF10FFFF;0|LPD;MBISTJTAG;FFCF0000;FFCFFFFF;1|LPD;LPD_XPPU_SINK;FF9C0000;FF9CFFFF;1|LPD;LPD_XPPU;FF980000;FF98FFFF;1|LPD;LPD_SLCR_SECURE;FF4B0000;FF4DFFFF;1|LPD;LPD_SLCR;FF410000;FF4AFFFF;1|LPD;LPD_GPV;FE100000;FE1FFFFF;1|LPD;LPD_DMA_7;FFAF0000;FFAFFFFF;1|LPD;LPD_DMA_6;FFAE0000;FFAEFFFF;1|LPD;LPD_DMA_5;FFAD0000;FFADFFFF;1|LPD;LPD_DMA_4;FFAC0000;FFACFFFF;1|LPD;LPD_DMA_3;FFAB0000;FFABFFFF;1|LPD;LPD_DMA_2;FFAA0000;FFAAFFFF;1|LPD;LPD_DMA_1;FFA90000;FFA9FFFF;1|LPD;LPD_DMA_0;FFA80000;FFA8FFFF;1|LPD;IPI_CTRL;FF380000;FF3FFFFF;1|LPD;IOU_SLCR;FF180000;FF23FFFF;1|LPD;IOU_SECURE_SLCR;FF240000;FF24FFFF;1|LPD;IOU_SCNTRS;FF260000;FF26FFFF;1|LPD;IOU_SCNTR;FF250000;FF25FFFF;1|LPD;IOU_GPV;FE000000;FE0FFFFF;1|LPD;I2C1;FF030000;FF03FFFF;1|LPD;I2C0;FF020000;FF02FFFF;1|FPD;GPU;FD4B0000;FD4BFFFF;1|LPD;GPIO;FF0A0000;FF0AFFFF;1|LPD;GEM3;FF0E0000;FF0EFFFF;1|LPD;GEM2;FF0D0000;FF0DFFFF;0|LPD;GEM1;FF0C0000;FF0CFFFF;0|LPD;GEM0;FF0B0000;FF0BFFFF;0|FPD;FPD_XMPU_SINK;FD4F0000;FD4FFFFF;1|FPD;FPD_XMPU_CFG;FD5D0000;FD5DFFFF;1|FPD;FPD_SLCR_SECURE;FD690000;FD6CFFFF;1|FPD;FPD_SLCR;FD610000;FD68FFFF;1|FPD;FPD_GPV;FD700000;FD7FFFFF;1|FPD;FPD_DMA_CH7;FD570000;FD57FFFF;1|FPD;FPD_DMA_CH6;FD560000;FD56FFFF;1|FPD;FPD_DMA_CH5;FD550000;FD55FFFF;1|FPD;FPD_DMA_CH4;FD540000;FD54FFFF;1|FPD;FPD_DMA_CH3;FD530000;FD53FFFF;1|FPD;FPD_DMA_CH2;FD520000;FD52FFFF;1|FPD;FPD_DMA_CH1;FD510000;FD51FFFF;1|FPD;FPD_DMA_CH0;FD500000;FD50FFFF;1|LPD;EFUSE;FFCC0000;FFCCFFFF;1|FPD;Display Port;FD4A0000;FD4AFFFF;0|FPD;DPDMA;FD4C0000;FD4CFFFF;0|FPD;DDR_XMPU5_CFG;FD050000;FD05FFFF;1|FPD;DDR_XMPU4_CFG;FD040000;FD04FFFF;1|FPD;DDR_XMPU3_CFG;FD030000;FD03FFFF;1|FPD;DDR_XMPU2_CFG;FD020000;FD02FFFF;1|FPD;DDR_XMPU1_CFG;FD010000;FD01FFFF;1|FPD;DDR_XMPU0_CFG;FD000000;FD00FFFF;1|FPD;DDR_QOS_CTRL;FD090000;FD09FFFF;1|FPD;DDR_PHY;FD080000;FD08FFFF;1|DDR;DDR_LOW;0;7FFFFFFF;1|DDR;DDR_HIGH;800000000;800000000;0|FPD;DDDR_CTRL;FD070000;FD070FFF;1|LPD;Coresight;FE800000;FEFFFFFF;1|LPD;CSU_DMA;FFC80000;FFC9FFFF;1|LPD;CSU;FFCA0000;FFCAFFFF;0|LPD;CRL_APB;FF5E0000;FF85FFFF;1|FPD;CRF_APB;FD1A0000;FD2DFFFF;1|FPD;CCI_REG;FD5E0000;FD5EFFFF;1|FPD;CCI_GPV;FD6E0000;FD6EFFFF;1|LPD;CAN1;FF070000;FF07FFFF;0|LPD;CAN0;FF060000;FF06FFFF;0|FPD;APU;FD5C0000;FD5CFFFF;1|LPD;APM_INTC_IOU;FFA20000;FFA2FFFF;1|LPD;APM_FPD_LPD;FFA30000;FFA3FFFF;1|FPD;APM_5;FD490000;FD49FFFF;1|FPD;APM_0;FD0B0000;FD0BFFFF;1|LPD;APM2;FFA10000;FFA1FFFF;1|LPD;APM1;FFA00000;FFA0FFFF;1|LPD;AMS;FFA50000;FFA5FFFF;1|FPD;AFI_5;FD3B0000;FD3BFFFF;1|FPD;AFI_4;FD3A0000;FD3AFFFF;1|FPD;AFI_3;FD390000;FD39FFFF;1|FPD;AFI_2;FD380000;FD38FFFF;1|FPD;AFI_1;FD370000;FD37FFFF;1|FPD;AFI_0;FD360000;FD36FFFF;1|LPD;AFIFM6;FF9B0000;FF9BFFFF;1|FPD;ACPU_GIC;F9010000;F907FFFF;1} \
   CONFIG.PSU__QSPI_COHERENCY {0} \
   CONFIG.PSU__QSPI_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__QSPI__GRP_FBCLK__ENABLE {0} \
   CONFIG.PSU__QSPI__PERIPHERAL__DATA_MODE {x4} \
   CONFIG.PSU__QSPI__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__QSPI__PERIPHERAL__IO {MIO 0 .. 12} \
   CONFIG.PSU__QSPI__PERIPHERAL__MODE {Dual Parallel} \
   CONFIG.PSU__SAXIGP2__DATA_WIDTH {64} \
   CONFIG.PSU__SAXIGP3__DATA_WIDTH {64} \
   CONFIG.PSU__SAXIGP4__DATA_WIDTH {64} \
   CONFIG.PSU__SD1_COHERENCY {0} \
   CONFIG.PSU__SD1_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__SD1__DATA_TRANSFER_MODE {4Bit} \
   CONFIG.PSU__SD1__GRP_CD__ENABLE {1} \
   CONFIG.PSU__SD1__GRP_CD__IO {MIO 45} \
   CONFIG.PSU__SD1__GRP_POW__ENABLE {0} \
   CONFIG.PSU__SD1__GRP_WP__ENABLE {0} \
   CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__SD1__PERIPHERAL__IO {MIO 46 .. 51} \
   CONFIG.PSU__SD1__RESET__ENABLE {0} \
   CONFIG.PSU__SD1__SLOT_TYPE {SD 2.0} \
   CONFIG.PSU__TSU__BUFG_PORT_PAIR {0} \
   CONFIG.PSU__UART0__BAUD_RATE {115200} \
   CONFIG.PSU__UART0__MODEM__ENABLE {0} \
   CONFIG.PSU__UART0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__UART0__PERIPHERAL__IO {MIO 18 .. 19} \
   CONFIG.PSU__UART1__BAUD_RATE {115200} \
   CONFIG.PSU__UART1__MODEM__ENABLE {0} \
   CONFIG.PSU__UART1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__UART1__PERIPHERAL__IO {MIO 20 .. 21} \
   CONFIG.PSU__USE__IRQ0 {1} \
   CONFIG.PSU__USE__M_AXI_GP0 {1} \
   CONFIG.PSU__USE__M_AXI_GP1 {1} \
   CONFIG.PSU__USE__M_AXI_GP2 {0} \
   CONFIG.PSU__USE__S_AXI_GP2 {1} \
   CONFIG.PSU__USE__S_AXI_GP3 {1} \
   CONFIG.PSU__USE__S_AXI_GP4 {0} \
   CONFIG.SUBPRESET1 {Custom} \
 ] $zynq_ultra_ps_e_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins gpic_1/S00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM1_FPD]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_pins hpic_0/S01_AXI] [get_bd_intf_pins t4nfc_hlper_1/nfch_data_if]
  connect_bd_intf_net -intf_net S02_AXI_1 [get_bd_intf_pins hpic_0/S02_AXI] [get_bd_intf_pins t4nfc_hlper_2/nfch_data_if]
  connect_bd_intf_net -intf_net S03_AXI_1 [get_bd_intf_pins hpic_0/S03_AXI] [get_bd_intf_pins t4nfc_hlper_3/nfch_data_if]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_1/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_1/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_bram_ctrl_2_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_2/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_2/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_bram_ctrl_3_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_3/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_3/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins gpic_0/M00_AXI] [get_bd_intf_pins gpic_0_sub_0/S00_AXI]
  connect_bd_intf_net -intf_net bch_sccs_256B_21B_13b_0_bch_skes_if [get_bd_intf_pins bch_sccs_256B_21B_13b_0/bch_skes_if] [get_bd_intf_pins bch_skes_256B_21B_13b_0/bch_skes_ch0_if]
  connect_bd_intf_net -intf_net bch_sccs_256B_21B_13b_0_from_ecc_if [get_bd_intf_pins bch_sccs_256B_21B_13b_0/from_ecc_if] [get_bd_intf_pins t4nfc_hlper_0/from_ecc_if]
  connect_bd_intf_net -intf_net bch_sccs_256B_21B_13b_1_bch_skes_if [get_bd_intf_pins bch_sccs_256B_21B_13b_1/bch_skes_if] [get_bd_intf_pins bch_skes_256B_21B_13b_0/bch_skes_ch1_if]
  connect_bd_intf_net -intf_net bch_sccs_256B_21B_13b_1_from_ecc_if [get_bd_intf_pins bch_sccs_256B_21B_13b_1/from_ecc_if] [get_bd_intf_pins t4nfc_hlper_1/from_ecc_if]
  connect_bd_intf_net -intf_net bch_sccs_256B_21B_13b_2_bch_skes_if [get_bd_intf_pins bch_sccs_256B_21B_13b_2/bch_skes_if] [get_bd_intf_pins bch_skes_256B_21B_13b_0/bch_skes_ch2_if]
  connect_bd_intf_net -intf_net bch_sccs_256B_21B_13b_2_from_ecc_if [get_bd_intf_pins bch_sccs_256B_21B_13b_2/from_ecc_if] [get_bd_intf_pins t4nfc_hlper_2/from_ecc_if]
  connect_bd_intf_net -intf_net bch_sccs_256B_21B_13b_3_bch_skes_if [get_bd_intf_pins bch_sccs_256B_21B_13b_3/bch_skes_if] [get_bd_intf_pins bch_skes_256B_21B_13b_0/bch_skes_ch3_if]
  connect_bd_intf_net -intf_net bch_sccs_256B_21B_13b_3_from_ecc_if [get_bd_intf_pins bch_sccs_256B_21B_13b_3/from_ecc_if] [get_bd_intf_pins t4nfc_hlper_3/from_ecc_if]
  connect_bd_intf_net -intf_net gpic_0_M01_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins gpic_0_sub_0/M01_AXI]
  connect_bd_intf_net -intf_net gpic_0_M03_AXI [get_bd_intf_pins axi_bram_ctrl_1/S_AXI] [get_bd_intf_pins gpic_0_sub_0/M03_AXI]
  connect_bd_intf_net -intf_net gpic_0_M05_AXI [get_bd_intf_pins axi_bram_ctrl_2/S_AXI] [get_bd_intf_pins gpic_0_sub_0/M05_AXI]
  connect_bd_intf_net -intf_net gpic_0_M07_AXI [get_bd_intf_pins axi_bram_ctrl_3/S_AXI] [get_bd_intf_pins gpic_0_sub_0/M07_AXI]
  connect_bd_intf_net -intf_net gpic_0_sub_0_M00_AXI [get_bd_intf_pins gpic_0_sub_0/M00_AXI] [get_bd_intf_pins t4nfc_hlper_0/nfch_cmd_if]
  connect_bd_intf_net -intf_net gpic_0_sub_0_M02_AXI [get_bd_intf_pins gpic_0_sub_0/M02_AXI] [get_bd_intf_pins t4nfc_hlper_1/nfch_cmd_if]
  connect_bd_intf_net -intf_net gpic_0_sub_0_M04_AXI [get_bd_intf_pins gpic_0_sub_0/M04_AXI] [get_bd_intf_pins t4nfc_hlper_2/nfch_cmd_if]
  connect_bd_intf_net -intf_net gpic_0_sub_0_M06_AXI [get_bd_intf_pins gpic_0_sub_0/M06_AXI] [get_bd_intf_pins t4nfc_hlper_3/nfch_cmd_if]
  connect_bd_intf_net -intf_net gpic_0_sub_M00_AXI [get_bd_intf_pins gpic_0_sub/M00_AXI] [get_bd_intf_pins iodelay_if_0/ctrl__s]
  connect_bd_intf_net -intf_net gpic_0_sub_M01_AXI [get_bd_intf_pins gpic_0_sub/M01_AXI] [get_bd_intf_pins iodelay_if_0_dqs/ctrl__s]
  connect_bd_intf_net -intf_net gpic_1_M00_AXI [get_bd_intf_pins gpic_0_sub/S00_AXI] [get_bd_intf_pins gpic_1/M00_AXI]
  connect_bd_intf_net -intf_net gpic_1_M01_AXI [get_bd_intf_pins gpic_1/M01_AXI] [get_bd_intf_pins nvme_ctrl_0/s0_axi]
  connect_bd_intf_net -intf_net hpic_0_M00_AXI [get_bd_intf_pins hpic_0/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HP0_FPD]
  connect_bd_intf_net -intf_net nvme_ctrl_0_m0_axi [get_bd_intf_pins nvme_ctrl_0/m0_axi] [get_bd_intf_pins smartconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net nvme_ctrl_0_pci_exp [get_bd_intf_ports pci_exp_0] [get_bd_intf_pins nvme_ctrl_0/pci_exp]
  connect_bd_intf_net -intf_net pcie_ref_0_1 [get_bd_intf_ports pcie_ref] [get_bd_intf_pins nvme_ctrl_0/pcie_ref]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_pins smartconnect_0/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HP1_FPD]
  connect_bd_intf_net -intf_net t4nfc_hlper_0_nfch_data_if [get_bd_intf_pins hpic_0/S00_AXI] [get_bd_intf_pins t4nfc_hlper_0/nfch_data_if]
  connect_bd_intf_net -intf_net t4nfc_hlper_0_to_ecc_if [get_bd_intf_pins bch_sccs_256B_21B_13b_0/to_ecc_if] [get_bd_intf_pins t4nfc_hlper_0/to_ecc_if]
  connect_bd_intf_net -intf_net t4nfc_hlper_0_ucode_if [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA] [get_bd_intf_pins t4nfc_hlper_0/ucode_if]
  connect_bd_intf_net -intf_net t4nfc_hlper_0_v2nfc_if [get_bd_intf_pins t4nfc_hlper_0/v2nfc_if] [get_bd_intf_pins v2nfc_0/v2nfc_if]
  connect_bd_intf_net -intf_net t4nfc_hlper_1_to_ecc_if [get_bd_intf_pins bch_sccs_256B_21B_13b_1/to_ecc_if] [get_bd_intf_pins t4nfc_hlper_1/to_ecc_if]
  connect_bd_intf_net -intf_net t4nfc_hlper_1_ucode_if [get_bd_intf_pins blk_mem_gen_1/BRAM_PORTA] [get_bd_intf_pins t4nfc_hlper_1/ucode_if]
  connect_bd_intf_net -intf_net t4nfc_hlper_1_v2nfc_if [get_bd_intf_pins t4nfc_hlper_1/v2nfc_if] [get_bd_intf_pins v2nfc_1/v2nfc_if]
  connect_bd_intf_net -intf_net t4nfc_hlper_2_to_ecc_if [get_bd_intf_pins bch_sccs_256B_21B_13b_2/to_ecc_if] [get_bd_intf_pins t4nfc_hlper_2/to_ecc_if]
  connect_bd_intf_net -intf_net t4nfc_hlper_2_ucode_if [get_bd_intf_pins blk_mem_gen_2/BRAM_PORTA] [get_bd_intf_pins t4nfc_hlper_2/ucode_if]
  connect_bd_intf_net -intf_net t4nfc_hlper_2_v2nfc_if [get_bd_intf_pins t4nfc_hlper_2/v2nfc_if] [get_bd_intf_pins v2nfc_2/v2nfc_if]
  connect_bd_intf_net -intf_net t4nfc_hlper_3_to_ecc_if [get_bd_intf_pins bch_sccs_256B_21B_13b_3/to_ecc_if] [get_bd_intf_pins t4nfc_hlper_3/to_ecc_if]
  connect_bd_intf_net -intf_net t4nfc_hlper_3_ucode_if [get_bd_intf_pins blk_mem_gen_3/BRAM_PORTA] [get_bd_intf_pins t4nfc_hlper_3/ucode_if]
  connect_bd_intf_net -intf_net t4nfc_hlper_3_v2nfc_if [get_bd_intf_pins t4nfc_hlper_3/v2nfc_if] [get_bd_intf_pins v2nfc_3/v2nfc_if]
  connect_bd_intf_net -intf_net v2nfc_0_nand_if [get_bd_intf_ports nand_if_0] [get_bd_intf_pins v2nfc_0/nand_if]
  connect_bd_intf_net -intf_net v2nfc_1_nand_if [get_bd_intf_ports nand_if_1] [get_bd_intf_pins v2nfc_1/nand_if]
  connect_bd_intf_net -intf_net v2nfc_2_nand_if [get_bd_intf_ports nand_if_2] [get_bd_intf_pins v2nfc_2/nand_if]
  connect_bd_intf_net -intf_net v2nfc_3_nand_if [get_bd_intf_ports nand_if_3] [get_bd_intf_pins v2nfc_3/nand_if]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_M_AXI_HPM0_FPD [get_bd_intf_pins gpic_0/S00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM0_FPD]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins gpic_0_sub_0/ARESETN] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net CH0C133BUF_BUFGCE_O [get_bd_pins pll_bank10/clk_out1] [get_bd_pins v2nfc_0/iOutputDrivingClock] [get_bd_pins v2nfc_0/iOutputStrobeClock]
  connect_bd_net -net CH1C133BUF_BUFGCE_O [get_bd_pins pll_bank11/clk_out1] [get_bd_pins v2nfc_1/iOutputDrivingClock] [get_bd_pins v2nfc_1/iOutputStrobeClock]
  connect_bd_net -net CH2C133BUF_BUFGCE_O [get_bd_pins pll_bank12/clk_out1] [get_bd_pins v2nfc_2/iOutputDrivingClock] [get_bd_pins v2nfc_2/iOutputStrobeClock]
  connect_bd_net -net CH3C133BUF_BUFGCE_O [get_bd_pins pll_bank13/clk_out1] [get_bd_pins v2nfc_3/iOutputDrivingClock] [get_bd_pins v2nfc_3/iOutputStrobeClock]
  connect_bd_net -net M00_ARESETN_1 [get_bd_pins gpic_0/S00_ARESETN] [get_bd_pins gpic_0_sub/S00_ARESETN] [get_bd_pins gpic_1/M00_ARESETN] [get_bd_pins gpic_1/S00_ARESETN] [get_bd_pins hpic_0/M00_ARESETN] [get_bd_pins proc_sys_reset_2/peripheral_aresetn]
  connect_bd_net -net M00_ARESETN_2 [get_bd_pins gpic_0_sub_0/M00_ARESETN] [get_bd_pins gpic_0_sub_0/M01_ARESETN] [get_bd_pins hpic_0/S00_ARESETN] [get_bd_pins pll_bank10_psr/interconnect_aresetn]
  connect_bd_net -net M02_ARESETN_1 [get_bd_pins gpic_0_sub_0/M02_ARESETN] [get_bd_pins gpic_0_sub_0/M03_ARESETN] [get_bd_pins hpic_0/S01_ARESETN] [get_bd_pins pll_bank11_psr/interconnect_aresetn]
  connect_bd_net -net M04_ARESETN_1 [get_bd_pins gpic_0_sub_0/M04_ARESETN] [get_bd_pins gpic_0_sub_0/M05_ARESETN] [get_bd_pins hpic_0/S02_ARESETN] [get_bd_pins pll_bank12_psr/interconnect_aresetn]
  connect_bd_net -net M06_ARESETN_1 [get_bd_pins gpic_0_sub_0/M06_ARESETN] [get_bd_pins gpic_0_sub_0/M07_ARESETN] [get_bd_pins hpic_0/S03_ARESETN] [get_bd_pins pll_bank13_psr/interconnect_aresetn]
  connect_bd_net -net S00_ARESETN_1 [get_bd_pins gpic_0/M00_ARESETN] [get_bd_pins gpic_0_sub/M00_ARESETN] [get_bd_pins gpic_0_sub/M01_ARESETN] [get_bd_pins gpic_0_sub_0/S00_ARESETN] [get_bd_pins iodelay_if_0/sys__srstn] [get_bd_pins iodelay_if_0_dqs/sys__srstn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net iodelay_if_0_dqs_iodly_00__tap [get_bd_pins iodelay_if_0_dqs/iodly_00__tap] [get_bd_pins v2nfc_0/iDQSIDelayTap]
  connect_bd_net -net iodelay_if_0_dqs_iodly_00__tap_load [get_bd_pins iodelay_if_0_dqs/iodly_00__tap_load] [get_bd_pins v2nfc_0/iDQSIDelayTapLoad]
  connect_bd_net -net iodelay_if_0_dqs_iodly_01__tap [get_bd_pins iodelay_if_0_dqs/iodly_01__tap] [get_bd_pins v2nfc_1/iDQSIDelayTap]
  connect_bd_net -net iodelay_if_0_dqs_iodly_01__tap_load [get_bd_pins iodelay_if_0_dqs/iodly_01__tap_load] [get_bd_pins v2nfc_1/iDQSIDelayTapLoad]
  connect_bd_net -net iodelay_if_0_dqs_iodly_02__tap [get_bd_pins iodelay_if_0_dqs/iodly_02__tap] [get_bd_pins v2nfc_2/iDQSIDelayTap]
  connect_bd_net -net iodelay_if_0_dqs_iodly_02__tap_load [get_bd_pins iodelay_if_0_dqs/iodly_02__tap_load] [get_bd_pins v2nfc_2/iDQSIDelayTapLoad]
  connect_bd_net -net iodelay_if_0_dqs_iodly_03__tap [get_bd_pins iodelay_if_0_dqs/iodly_03__tap] [get_bd_pins v2nfc_3/iDQSIDelayTap]
  connect_bd_net -net iodelay_if_0_dqs_iodly_03__tap_load [get_bd_pins iodelay_if_0_dqs/iodly_03__tap_load] [get_bd_pins v2nfc_3/iDQSIDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_00__tap [get_bd_pins iodelay_if_0/iodly_00__tap] [get_bd_pins v2nfc_0/iDQ0IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_00__tap_load [get_bd_pins iodelay_if_0/iodly_00__tap_load] [get_bd_pins v2nfc_0/iDQ0IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_01__tap [get_bd_pins iodelay_if_0/iodly_01__tap] [get_bd_pins v2nfc_0/iDQ1IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_01__tap_load [get_bd_pins iodelay_if_0/iodly_01__tap_load] [get_bd_pins v2nfc_0/iDQ1IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_02__tap [get_bd_pins iodelay_if_0/iodly_02__tap] [get_bd_pins v2nfc_0/iDQ2IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_02__tap_load [get_bd_pins iodelay_if_0/iodly_02__tap_load] [get_bd_pins v2nfc_0/iDQ2IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_03__tap [get_bd_pins iodelay_if_0/iodly_03__tap] [get_bd_pins v2nfc_0/iDQ3IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_03__tap_load [get_bd_pins iodelay_if_0/iodly_03__tap_load] [get_bd_pins v2nfc_0/iDQ3IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_04__tap [get_bd_pins iodelay_if_0/iodly_04__tap] [get_bd_pins v2nfc_0/iDQ4IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_04__tap_load [get_bd_pins iodelay_if_0/iodly_04__tap_load] [get_bd_pins v2nfc_0/iDQ4IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_05__tap [get_bd_pins iodelay_if_0/iodly_05__tap] [get_bd_pins v2nfc_0/iDQ5IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_05__tap_load [get_bd_pins iodelay_if_0/iodly_05__tap_load] [get_bd_pins v2nfc_0/iDQ5IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_06__tap [get_bd_pins iodelay_if_0/iodly_06__tap] [get_bd_pins v2nfc_0/iDQ6IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_06__tap_load [get_bd_pins iodelay_if_0/iodly_06__tap_load] [get_bd_pins v2nfc_0/iDQ6IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_07__tap [get_bd_pins iodelay_if_0/iodly_07__tap] [get_bd_pins v2nfc_0/iDQ7IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_07__tap_load [get_bd_pins iodelay_if_0/iodly_07__tap_load] [get_bd_pins v2nfc_0/iDQ7IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_08__tap [get_bd_pins iodelay_if_0/iodly_08__tap] [get_bd_pins v2nfc_1/iDQ0IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_08__tap_load [get_bd_pins iodelay_if_0/iodly_08__tap_load] [get_bd_pins v2nfc_1/iDQ0IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_09__tap [get_bd_pins iodelay_if_0/iodly_09__tap] [get_bd_pins v2nfc_1/iDQ1IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_09__tap_load [get_bd_pins iodelay_if_0/iodly_09__tap_load] [get_bd_pins v2nfc_1/iDQ1IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_10__tap [get_bd_pins iodelay_if_0/iodly_10__tap] [get_bd_pins v2nfc_1/iDQ2IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_10__tap_load [get_bd_pins iodelay_if_0/iodly_10__tap_load] [get_bd_pins v2nfc_1/iDQ2IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_11__tap [get_bd_pins iodelay_if_0/iodly_11__tap] [get_bd_pins v2nfc_1/iDQ3IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_11__tap_load [get_bd_pins iodelay_if_0/iodly_11__tap_load] [get_bd_pins v2nfc_1/iDQ3IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_12__tap [get_bd_pins iodelay_if_0/iodly_12__tap] [get_bd_pins v2nfc_1/iDQ4IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_12__tap_load [get_bd_pins iodelay_if_0/iodly_12__tap_load] [get_bd_pins v2nfc_1/iDQ4IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_13__tap [get_bd_pins iodelay_if_0/iodly_13__tap] [get_bd_pins v2nfc_1/iDQ5IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_13__tap_load [get_bd_pins iodelay_if_0/iodly_13__tap_load] [get_bd_pins v2nfc_1/iDQ5IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_14__tap [get_bd_pins iodelay_if_0/iodly_14__tap] [get_bd_pins v2nfc_1/iDQ6IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_14__tap_load [get_bd_pins iodelay_if_0/iodly_14__tap_load] [get_bd_pins v2nfc_1/iDQ6IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_15__tap [get_bd_pins iodelay_if_0/iodly_15__tap] [get_bd_pins v2nfc_1/iDQ7IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_15__tap_load [get_bd_pins iodelay_if_0/iodly_15__tap_load] [get_bd_pins v2nfc_1/iDQ7IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_16__tap [get_bd_pins iodelay_if_0/iodly_16__tap] [get_bd_pins v2nfc_2/iDQ0IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_16__tap_load [get_bd_pins iodelay_if_0/iodly_16__tap_load] [get_bd_pins v2nfc_2/iDQ0IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_17__tap [get_bd_pins iodelay_if_0/iodly_17__tap] [get_bd_pins v2nfc_2/iDQ1IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_17__tap_load [get_bd_pins iodelay_if_0/iodly_17__tap_load] [get_bd_pins v2nfc_2/iDQ1IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_18__tap [get_bd_pins iodelay_if_0/iodly_18__tap] [get_bd_pins v2nfc_2/iDQ2IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_18__tap_load [get_bd_pins iodelay_if_0/iodly_18__tap_load] [get_bd_pins v2nfc_2/iDQ2IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_19__tap [get_bd_pins iodelay_if_0/iodly_19__tap] [get_bd_pins v2nfc_2/iDQ3IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_19__tap_load [get_bd_pins iodelay_if_0/iodly_19__tap_load] [get_bd_pins v2nfc_2/iDQ3IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_20__tap [get_bd_pins iodelay_if_0/iodly_20__tap] [get_bd_pins v2nfc_2/iDQ4IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_20__tap_load [get_bd_pins iodelay_if_0/iodly_20__tap_load] [get_bd_pins v2nfc_2/iDQ4IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_21__tap [get_bd_pins iodelay_if_0/iodly_21__tap] [get_bd_pins v2nfc_2/iDQ5IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_21__tap_load [get_bd_pins iodelay_if_0/iodly_21__tap_load] [get_bd_pins v2nfc_2/iDQ5IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_22__tap [get_bd_pins iodelay_if_0/iodly_22__tap] [get_bd_pins v2nfc_2/iDQ6IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_22__tap_load [get_bd_pins iodelay_if_0/iodly_22__tap_load] [get_bd_pins v2nfc_2/iDQ6IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_23__tap [get_bd_pins iodelay_if_0/iodly_23__tap] [get_bd_pins v2nfc_2/iDQ7IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_23__tap_load [get_bd_pins iodelay_if_0/iodly_23__tap_load] [get_bd_pins v2nfc_2/iDQ7IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_24__tap [get_bd_pins iodelay_if_0/iodly_24__tap] [get_bd_pins v2nfc_3/iDQ0IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_24__tap_load [get_bd_pins iodelay_if_0/iodly_24__tap_load] [get_bd_pins v2nfc_3/iDQ0IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_25__tap [get_bd_pins iodelay_if_0/iodly_25__tap] [get_bd_pins v2nfc_3/iDQ1IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_25__tap_load [get_bd_pins iodelay_if_0/iodly_25__tap_load] [get_bd_pins v2nfc_3/iDQ1IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_26__tap [get_bd_pins iodelay_if_0/iodly_26__tap] [get_bd_pins v2nfc_3/iDQ2IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_26__tap_load [get_bd_pins iodelay_if_0/iodly_26__tap_load] [get_bd_pins v2nfc_3/iDQ2IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_27__tap [get_bd_pins iodelay_if_0/iodly_27__tap] [get_bd_pins v2nfc_3/iDQ3IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_27__tap_load [get_bd_pins iodelay_if_0/iodly_27__tap_load] [get_bd_pins v2nfc_3/iDQ3IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_28__tap [get_bd_pins iodelay_if_0/iodly_28__tap] [get_bd_pins v2nfc_3/iDQ4IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_28__tap_load [get_bd_pins iodelay_if_0/iodly_28__tap_load] [get_bd_pins v2nfc_3/iDQ4IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_29__tap [get_bd_pins iodelay_if_0/iodly_29__tap] [get_bd_pins v2nfc_3/iDQ5IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_29__tap_load [get_bd_pins iodelay_if_0/iodly_29__tap_load] [get_bd_pins v2nfc_3/iDQ5IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_30__tap [get_bd_pins iodelay_if_0/iodly_30__tap] [get_bd_pins v2nfc_3/iDQ6IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_30__tap_load [get_bd_pins iodelay_if_0/iodly_30__tap_load] [get_bd_pins v2nfc_3/iDQ6IDelayTapLoad]
  connect_bd_net -net iodelay_if_0_iodly_31__tap [get_bd_pins iodelay_if_0/iodly_31__tap] [get_bd_pins v2nfc_3/iDQ7IDelayTap]
  connect_bd_net -net iodelay_if_0_iodly_31__tap_load [get_bd_pins iodelay_if_0/iodly_31__tap_load] [get_bd_pins v2nfc_3/iDQ7IDelayTapLoad]
  connect_bd_net -net nvme_ctrl_0_dev_irq_assert [get_bd_pins nvme_ctrl_0/dev_irq_assert] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net nvme_ctrl_0_user_lnk_up [get_bd_ports user_lnk_up_0] [get_bd_pins nvme_ctrl_0/user_lnk_up]
  connect_bd_net -net pcie_perst_n_0_1 [get_bd_ports pcie_perst_n] [get_bd_pins nvme_ctrl_0/pcie_perst_n]
  connect_bd_net -net pll_bank10_clk_out2 [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins bch_sccs_256B_21B_13b_0/iClock] [get_bd_pins gpic_0_sub_0/M00_ACLK] [get_bd_pins gpic_0_sub_0/M01_ACLK] [get_bd_pins hpic_0/S00_ACLK] [get_bd_pins pll_bank10/clk_out2] [get_bd_pins pll_bank10_psr/slowest_sync_clk] [get_bd_pins t4nfc_hlper_0/iClock] [get_bd_pins v2nfc_0/iSystemClock]
  connect_bd_net -net pll_bank10_clk_out3 [get_bd_pins pll_bank10/clk_out3] [get_bd_pins v2nfc_0/iDelayRefClock]
  connect_bd_net -net pll_bank10_locked [get_bd_pins pll_bank10/locked] [get_bd_pins pll_bank10_psr/dcm_locked]
  connect_bd_net -net pll_bank11_clk_out2 [get_bd_pins axi_bram_ctrl_1/s_axi_aclk] [get_bd_pins bch_sccs_256B_21B_13b_1/iClock] [get_bd_pins gpic_0_sub_0/M02_ACLK] [get_bd_pins gpic_0_sub_0/M03_ACLK] [get_bd_pins hpic_0/S01_ACLK] [get_bd_pins pll_bank11/clk_out2] [get_bd_pins pll_bank11_psr/slowest_sync_clk] [get_bd_pins t4nfc_hlper_1/iClock] [get_bd_pins v2nfc_1/iSystemClock]
  connect_bd_net -net pll_bank11_clk_out3 [get_bd_pins pll_bank11/clk_out3] [get_bd_pins v2nfc_1/iDelayRefClock]
  connect_bd_net -net pll_bank11_locked [get_bd_pins pll_bank11/locked] [get_bd_pins pll_bank11_psr/dcm_locked]
  connect_bd_net -net pll_bank12_clk_out2 [get_bd_pins axi_bram_ctrl_2/s_axi_aclk] [get_bd_pins bch_sccs_256B_21B_13b_2/iClock] [get_bd_pins gpic_0_sub_0/M04_ACLK] [get_bd_pins gpic_0_sub_0/M05_ACLK] [get_bd_pins hpic_0/S02_ACLK] [get_bd_pins pll_bank12/clk_out2] [get_bd_pins pll_bank12_psr/slowest_sync_clk] [get_bd_pins t4nfc_hlper_2/iClock] [get_bd_pins v2nfc_2/iSystemClock]
  connect_bd_net -net pll_bank12_clk_out3 [get_bd_pins pll_bank12/clk_out3] [get_bd_pins v2nfc_2/iDelayRefClock]
  connect_bd_net -net pll_bank12_locked [get_bd_pins pll_bank12/locked] [get_bd_pins pll_bank12_psr/dcm_locked]
  connect_bd_net -net pll_bank13_clk_out2 [get_bd_pins axi_bram_ctrl_3/s_axi_aclk] [get_bd_pins bch_sccs_256B_21B_13b_3/iClock] [get_bd_pins gpic_0_sub_0/M06_ACLK] [get_bd_pins gpic_0_sub_0/M07_ACLK] [get_bd_pins hpic_0/S03_ACLK] [get_bd_pins pll_bank13/clk_out2] [get_bd_pins pll_bank13_psr/slowest_sync_clk] [get_bd_pins t4nfc_hlper_3/iClock] [get_bd_pins v2nfc_3/iSystemClock]
  connect_bd_net -net pll_bank13_clk_out3 [get_bd_pins pll_bank13/clk_out3] [get_bd_pins v2nfc_3/iDelayRefClock]
  connect_bd_net -net pll_bank13_locked [get_bd_pins pll_bank13/locked] [get_bd_pins pll_bank13_psr/dcm_locked]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins bch_skes_256B_21B_13b_0/iReset] [get_bd_pins pll_bank10/reset] [get_bd_pins pll_bank11/reset] [get_bd_pins pll_bank12/reset] [get_bd_pins pll_bank13/reset] [get_bd_pins proc_sys_reset_0/peripheral_reset]
  connect_bd_net -net proc_sys_reset_1_peripheral_aresetn [get_bd_pins axi_bram_ctrl_3/s_axi_aresetn] [get_bd_pins pll_bank13_psr/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_1_peripheral_reset [get_bd_pins bch_sccs_256B_21B_13b_3/iReset] [get_bd_pins pll_bank13_psr/peripheral_reset] [get_bd_pins t4nfc_hlper_3/iReset] [get_bd_pins v2nfc_3/iReset]
  connect_bd_net -net proc_sys_reset_2_interconnect_aresetn [get_bd_pins gpic_0/ARESETN] [get_bd_pins gpic_0_sub/ARESETN] [get_bd_pins gpic_1/ARESETN] [get_bd_pins hpic_0/ARESETN] [get_bd_pins proc_sys_reset_2/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_3_peripheral_aresetn [get_bd_pins axi_bram_ctrl_1/s_axi_aresetn] [get_bd_pins pll_bank11_psr/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_3_peripheral_reset [get_bd_pins bch_sccs_256B_21B_13b_1/iReset] [get_bd_pins pll_bank11_psr/peripheral_reset] [get_bd_pins t4nfc_hlper_1/iReset] [get_bd_pins v2nfc_1/iReset]
  connect_bd_net -net proc_sys_reset_4_peripheral_aresetn [get_bd_pins axi_bram_ctrl_2/s_axi_aresetn] [get_bd_pins pll_bank12_psr/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_4_peripheral_reset [get_bd_pins bch_sccs_256B_21B_13b_2/iReset] [get_bd_pins pll_bank12_psr/peripheral_reset] [get_bd_pins t4nfc_hlper_2/iReset] [get_bd_pins v2nfc_2/iReset]
  connect_bd_net -net proc_sys_reset_5_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins pll_bank10_psr/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_5_peripheral_reset [get_bd_pins bch_sccs_256B_21B_13b_0/iReset] [get_bd_pins pll_bank10_psr/peripheral_reset] [get_bd_pins t4nfc_hlper_0/iReset] [get_bd_pins v2nfc_0/iReset]
  connect_bd_net -net proc_sys_reset_6_peripheral_aresetn [get_bd_pins nvme_ctrl_0/m0_axi_aresetn] [get_bd_pins proc_sys_reset_6/peripheral_aresetn] [get_bd_pins smartconnect_0/aresetn]
  connect_bd_net -net proc_sys_reset_7_peripheral_aresetn [get_bd_pins gpic_1/M01_ARESETN] [get_bd_pins nvme_ctrl_0/s0_axi_aresetn] [get_bd_pins proc_sys_reset_7/peripheral_aresetn]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins bch_skes_256B_21B_13b_0/iClock] [get_bd_pins gpic_0/M00_ACLK] [get_bd_pins gpic_0_sub/M00_ACLK] [get_bd_pins gpic_0_sub/M01_ACLK] [get_bd_pins gpic_0_sub_0/ACLK] [get_bd_pins gpic_0_sub_0/S00_ACLK] [get_bd_pins iodelay_if_0/sys__clk] [get_bd_pins iodelay_if_0_dqs/sys__clk] [get_bd_pins pll_bank10/clk_in1] [get_bd_pins pll_bank11/clk_in1] [get_bd_pins pll_bank12/clk_in1] [get_bd_pins pll_bank13/clk_in1] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
  connect_bd_net -net processing_system7_0_FCLK_CLK2 [get_bd_pins gpic_0/ACLK] [get_bd_pins gpic_0/S00_ACLK] [get_bd_pins gpic_0_sub/ACLK] [get_bd_pins gpic_0_sub/S00_ACLK] [get_bd_pins gpic_1/ACLK] [get_bd_pins gpic_1/M00_ACLK] [get_bd_pins gpic_1/S00_ACLK] [get_bd_pins hpic_0/ACLK] [get_bd_pins hpic_0/M00_ACLK] [get_bd_pins proc_sys_reset_2/slowest_sync_clk] [get_bd_pins zynq_ultra_ps_e_0/maxihpm0_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/maxihpm1_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1] [get_bd_pins zynq_ultra_ps_e_0/saxihp0_fpd_aclk]
  connect_bd_net -net v2nfc_0_oReadyBusy [get_bd_pins t4nfc_hlper_0/iReadyBusy] [get_bd_pins v2nfc_0/oReadyBusy]
  connect_bd_net -net v2nfc_1_oReadyBusy [get_bd_pins t4nfc_hlper_1/iReadyBusy] [get_bd_pins v2nfc_1/oReadyBusy]
  connect_bd_net -net v2nfc_2_oReadyBusy [get_bd_pins t4nfc_hlper_2/iReadyBusy] [get_bd_pins v2nfc_2/oReadyBusy]
  connect_bd_net -net v2nfc_3_oReadyBusy [get_bd_pins t4nfc_hlper_3/iReadyBusy] [get_bd_pins v2nfc_3/oReadyBusy]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins xlconcat_0/dout] [get_bd_pins zynq_ultra_ps_e_0/pl_ps_irq0]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk2 [get_bd_pins gpic_1/M01_ACLK] [get_bd_pins nvme_ctrl_0/s0_axi_aclk] [get_bd_pins proc_sys_reset_7/slowest_sync_clk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk2]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk3 [get_bd_pins nvme_ctrl_0/m0_axi_aclk] [get_bd_pins proc_sys_reset_6/slowest_sync_clk] [get_bd_pins smartconnect_0/aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk3] [get_bd_pins zynq_ultra_ps_e_0/saxihp1_fpd_aclk]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_resetn0 [get_bd_pins pll_bank10_psr/ext_reset_in] [get_bd_pins pll_bank11_psr/ext_reset_in] [get_bd_pins pll_bank12_psr/ext_reset_in] [get_bd_pins pll_bank13_psr/ext_reset_in] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_resetn1 [get_bd_pins proc_sys_reset_2/ext_reset_in] [get_bd_pins zynq_ultra_ps_e_0/pl_resetn1]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_resetn2 [get_bd_pins proc_sys_reset_7/ext_reset_in] [get_bd_pins zynq_ultra_ps_e_0/pl_resetn2]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_resetn3 [get_bd_pins proc_sys_reset_6/ext_reset_in] [get_bd_pins zynq_ultra_ps_e_0/pl_resetn3]

  # Create address segments
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces nvme_ctrl_0/m0_axi] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_DDR_LOW] SEG_zynq_ultra_ps_e_0_HP1_DDR_LOW
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces t4nfc_hlper_0/D] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_DDR_LOW] SEG_zynq_ultra_ps_e_0_HP0_DDR_LOW
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces t4nfc_hlper_1/D] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_DDR_LOW] SEG_zynq_ultra_ps_e_0_HP0_DDR_LOW
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces t4nfc_hlper_2/D] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_DDR_LOW] SEG_zynq_ultra_ps_e_0_HP0_DDR_LOW
  create_bd_addr_seg -range 0x80000000 -offset 0x00000000 [get_bd_addr_spaces t4nfc_hlper_3/D] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_DDR_LOW] SEG_zynq_ultra_ps_e_0_HP0_DDR_LOW
  create_bd_addr_seg -range 0x00001000 -offset 0xA0000000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00001000 -offset 0xA0001000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_bram_ctrl_1/S_AXI/Mem0] SEG_axi_bram_ctrl_1_Mem0
  create_bd_addr_seg -range 0x00001000 -offset 0xA0002000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_bram_ctrl_2/S_AXI/Mem0] SEG_axi_bram_ctrl_2_Mem0
  create_bd_addr_seg -range 0x00001000 -offset 0xA0003000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_bram_ctrl_3/S_AXI/Mem0] SEG_axi_bram_ctrl_3_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0xB0010000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs iodelay_if_0_dqs/ctrl__s/reg0] SEG_iodelay_if_0_dqs_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0xB0000000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs iodelay_if_0/ctrl__s/reg0] SEG_iodelay_if_0_reg0
  create_bd_addr_seg -range 0x00020000 -offset 0xB0020000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs nvme_ctrl_0/s0_axi/reg0] SEG_nvme_ctrl_0_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0xA0010000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs t4nfc_hlper_0/C/reg0] SEG_t4nfc_hlper_0_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0xA0020000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs t4nfc_hlper_1/C/reg0] SEG_t4nfc_hlper_1_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0xA0030000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs t4nfc_hlper_2/C/reg0] SEG_t4nfc_hlper_2_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0xA0040000 [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs t4nfc_hlper_3/C/reg0] SEG_t4nfc_hlper_3_reg0

  # Exclude Address Segments
  create_bd_addr_seg -range 0x01000000 -offset 0xFF000000 [get_bd_addr_spaces nvme_ctrl_0/m0_axi] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_LPS_OCM] SEG_zynq_ultra_ps_e_0_HP1_LPS_OCM
  exclude_bd_addr_seg [get_bd_addr_segs nvme_ctrl_0/m0_axi/SEG_zynq_ultra_ps_e_0_HP1_LPS_OCM]

  create_bd_addr_seg -range 0x20000000 -offset 0xC0000000 [get_bd_addr_spaces nvme_ctrl_0/m0_axi] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_QSPI] SEG_zynq_ultra_ps_e_0_HP1_QSPI
  exclude_bd_addr_seg [get_bd_addr_segs nvme_ctrl_0/m0_axi/SEG_zynq_ultra_ps_e_0_HP1_QSPI]

  create_bd_addr_seg -range 0x01000000 -offset 0xFF000000 [get_bd_addr_spaces t4nfc_hlper_0/D] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_LPS_OCM] SEG_zynq_ultra_ps_e_0_HP0_LPS_OCM
  exclude_bd_addr_seg [get_bd_addr_segs t4nfc_hlper_0/D/SEG_zynq_ultra_ps_e_0_HP0_LPS_OCM]

  create_bd_addr_seg -range 0x20000000 -offset 0xC0000000 [get_bd_addr_spaces t4nfc_hlper_0/D] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_QSPI] SEG_zynq_ultra_ps_e_0_HP0_QSPI
  exclude_bd_addr_seg [get_bd_addr_segs t4nfc_hlper_0/D/SEG_zynq_ultra_ps_e_0_HP0_QSPI]

  create_bd_addr_seg -range 0x01000000 -offset 0xFF000000 [get_bd_addr_spaces t4nfc_hlper_1/D] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_LPS_OCM] SEG_zynq_ultra_ps_e_0_HP0_LPS_OCM
  exclude_bd_addr_seg [get_bd_addr_segs t4nfc_hlper_1/D/SEG_zynq_ultra_ps_e_0_HP0_LPS_OCM]

  create_bd_addr_seg -range 0x20000000 -offset 0xC0000000 [get_bd_addr_spaces t4nfc_hlper_1/D] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_QSPI] SEG_zynq_ultra_ps_e_0_HP0_QSPI
  exclude_bd_addr_seg [get_bd_addr_segs t4nfc_hlper_1/D/SEG_zynq_ultra_ps_e_0_HP0_QSPI]

  create_bd_addr_seg -range 0x01000000 -offset 0xFF000000 [get_bd_addr_spaces t4nfc_hlper_2/D] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_LPS_OCM] SEG_zynq_ultra_ps_e_0_HP0_LPS_OCM
  exclude_bd_addr_seg [get_bd_addr_segs t4nfc_hlper_2/D/SEG_zynq_ultra_ps_e_0_HP0_LPS_OCM]

  create_bd_addr_seg -range 0x20000000 -offset 0xC0000000 [get_bd_addr_spaces t4nfc_hlper_2/D] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_QSPI] SEG_zynq_ultra_ps_e_0_HP0_QSPI
  exclude_bd_addr_seg [get_bd_addr_segs t4nfc_hlper_2/D/SEG_zynq_ultra_ps_e_0_HP0_QSPI]

  create_bd_addr_seg -range 0x01000000 -offset 0xFF000000 [get_bd_addr_spaces t4nfc_hlper_3/D] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_LPS_OCM] SEG_zynq_ultra_ps_e_0_HP0_LPS_OCM
  exclude_bd_addr_seg [get_bd_addr_segs t4nfc_hlper_3/D/SEG_zynq_ultra_ps_e_0_HP0_LPS_OCM]

  create_bd_addr_seg -range 0x20000000 -offset 0xC0000000 [get_bd_addr_spaces t4nfc_hlper_3/D] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_QSPI] SEG_zynq_ultra_ps_e_0_HP0_QSPI
  exclude_bd_addr_seg [get_bd_addr_segs t4nfc_hlper_3/D/SEG_zynq_ultra_ps_e_0_HP0_QSPI]



  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


