-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:pcie4_uscale_plus:1.3
-- IP Revision: 5

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT pcie4_uscale_plus_0
  PORT (
    pci_exp_txn : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    pci_exp_txp : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    pci_exp_rxn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    pci_exp_rxp : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    user_clk : OUT STD_LOGIC;
    user_reset : OUT STD_LOGIC;
    user_lnk_up : OUT STD_LOGIC;
    s_axis_rq_tdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    s_axis_rq_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axis_rq_tlast : IN STD_LOGIC;
    s_axis_rq_tready : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axis_rq_tuser : IN STD_LOGIC_VECTOR(61 DOWNTO 0);
    s_axis_rq_tvalid : IN STD_LOGIC;
    m_axis_rc_tdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axis_rc_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_rc_tlast : OUT STD_LOGIC;
    m_axis_rc_tready : IN STD_LOGIC;
    m_axis_rc_tuser : OUT STD_LOGIC_VECTOR(74 DOWNTO 0);
    m_axis_rc_tvalid : OUT STD_LOGIC;
    m_axis_cq_tdata : OUT STD_LOGIC_VECTOR(127 DOWNTO 0);
    m_axis_cq_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_cq_tlast : OUT STD_LOGIC;
    m_axis_cq_tready : IN STD_LOGIC;
    m_axis_cq_tuser : OUT STD_LOGIC_VECTOR(87 DOWNTO 0);
    m_axis_cq_tvalid : OUT STD_LOGIC;
    s_axis_cc_tdata : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    s_axis_cc_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axis_cc_tlast : IN STD_LOGIC;
    s_axis_cc_tready : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axis_cc_tuser : IN STD_LOGIC_VECTOR(32 DOWNTO 0);
    s_axis_cc_tvalid : IN STD_LOGIC;
    pcie_rq_seq_num0 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    pcie_rq_seq_num_vld0 : OUT STD_LOGIC;
    pcie_rq_seq_num1 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    pcie_rq_seq_num_vld1 : OUT STD_LOGIC;
    pcie_rq_tag0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    pcie_rq_tag1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    pcie_rq_tag_av : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pcie_rq_tag_vld0 : OUT STD_LOGIC;
    pcie_rq_tag_vld1 : OUT STD_LOGIC;
    pcie_tfc_nph_av : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pcie_tfc_npd_av : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pcie_cq_np_req : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    pcie_cq_np_req_count : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    cfg_phy_link_down : OUT STD_LOGIC;
    cfg_phy_link_status : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    cfg_negotiated_width : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    cfg_current_speed : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    cfg_max_payload : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    cfg_max_read_req : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    cfg_function_status : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    cfg_function_power_state : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    cfg_vf_status : OUT STD_LOGIC_VECTOR(503 DOWNTO 0);
    cfg_vf_power_state : OUT STD_LOGIC_VECTOR(755 DOWNTO 0);
    cfg_link_power_state : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    cfg_mgmt_addr : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    cfg_mgmt_function_number : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    cfg_mgmt_write : IN STD_LOGIC;
    cfg_mgmt_write_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    cfg_mgmt_byte_enable : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    cfg_mgmt_read : IN STD_LOGIC;
    cfg_mgmt_read_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    cfg_mgmt_read_write_done : OUT STD_LOGIC;
    cfg_mgmt_debug_access : IN STD_LOGIC;
    cfg_err_cor_out : OUT STD_LOGIC;
    cfg_err_nonfatal_out : OUT STD_LOGIC;
    cfg_err_fatal_out : OUT STD_LOGIC;
    cfg_local_error_valid : OUT STD_LOGIC;
    cfg_local_error_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    cfg_ltssm_state : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    cfg_rx_pm_state : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    cfg_tx_pm_state : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    cfg_rcb_status : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cfg_obff_enable : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    cfg_pl_status_change : OUT STD_LOGIC;
    cfg_tph_requester_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cfg_tph_st_mode : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    cfg_vf_tph_requester_enable : OUT STD_LOGIC_VECTOR(251 DOWNTO 0);
    cfg_vf_tph_st_mode : OUT STD_LOGIC_VECTOR(755 DOWNTO 0);
    cfg_msg_received : OUT STD_LOGIC;
    cfg_msg_received_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cfg_msg_received_type : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    cfg_msg_transmit : IN STD_LOGIC;
    cfg_msg_transmit_type : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    cfg_msg_transmit_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    cfg_msg_transmit_done : OUT STD_LOGIC;
    cfg_fc_ph : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cfg_fc_pd : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    cfg_fc_nph : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cfg_fc_npd : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    cfg_fc_cplh : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cfg_fc_cpld : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    cfg_fc_sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    cfg_dsn : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    cfg_bus_number : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    cfg_power_state_change_ack : IN STD_LOGIC;
    cfg_power_state_change_interrupt : OUT STD_LOGIC;
    cfg_err_cor_in : IN STD_LOGIC;
    cfg_err_uncor_in : IN STD_LOGIC;
    cfg_flr_in_process : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cfg_flr_done : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    cfg_vf_flr_in_process : OUT STD_LOGIC_VECTOR(251 DOWNTO 0);
    cfg_vf_flr_func_num : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    cfg_vf_flr_done : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    cfg_link_training_enable : IN STD_LOGIC;
    cfg_interrupt_int : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    cfg_interrupt_pending : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    cfg_interrupt_sent : OUT STD_LOGIC;
    cfg_interrupt_msi_enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    cfg_interrupt_msi_mmenable : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    cfg_interrupt_msi_mask_update : OUT STD_LOGIC;
    cfg_interrupt_msi_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    cfg_interrupt_msi_select : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    cfg_interrupt_msi_int : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    cfg_interrupt_msi_pending_status : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    cfg_interrupt_msi_pending_status_data_enable : IN STD_LOGIC;
    cfg_interrupt_msi_pending_status_function_num : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    cfg_interrupt_msi_sent : OUT STD_LOGIC;
    cfg_interrupt_msi_fail : OUT STD_LOGIC;
    cfg_interrupt_msi_attr : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    cfg_interrupt_msi_tph_present : IN STD_LOGIC;
    cfg_interrupt_msi_tph_type : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    cfg_interrupt_msi_tph_st_tag : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    cfg_interrupt_msi_function_number : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    cfg_pm_aspm_l1_entry_reject : IN STD_LOGIC;
    cfg_pm_aspm_tx_l0s_entry_disable : IN STD_LOGIC;
    cfg_hot_reset_out : OUT STD_LOGIC;
    cfg_config_space_enable : IN STD_LOGIC;
    cfg_req_pm_transition_l23_ready : IN STD_LOGIC;
    cfg_hot_reset_in : IN STD_LOGIC;
    cfg_ds_port_number : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    cfg_ds_bus_number : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    cfg_ds_device_number : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    sys_clk : IN STD_LOGIC;
    sys_clk_gt : IN STD_LOGIC;
    sys_reset : IN STD_LOGIC;
    phy_rdy_out : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : pcie4_uscale_plus_0
  PORT MAP (
    pci_exp_txn => pci_exp_txn,
    pci_exp_txp => pci_exp_txp,
    pci_exp_rxn => pci_exp_rxn,
    pci_exp_rxp => pci_exp_rxp,
    user_clk => user_clk,
    user_reset => user_reset,
    user_lnk_up => user_lnk_up,
    s_axis_rq_tdata => s_axis_rq_tdata,
    s_axis_rq_tkeep => s_axis_rq_tkeep,
    s_axis_rq_tlast => s_axis_rq_tlast,
    s_axis_rq_tready => s_axis_rq_tready,
    s_axis_rq_tuser => s_axis_rq_tuser,
    s_axis_rq_tvalid => s_axis_rq_tvalid,
    m_axis_rc_tdata => m_axis_rc_tdata,
    m_axis_rc_tkeep => m_axis_rc_tkeep,
    m_axis_rc_tlast => m_axis_rc_tlast,
    m_axis_rc_tready => m_axis_rc_tready,
    m_axis_rc_tuser => m_axis_rc_tuser,
    m_axis_rc_tvalid => m_axis_rc_tvalid,
    m_axis_cq_tdata => m_axis_cq_tdata,
    m_axis_cq_tkeep => m_axis_cq_tkeep,
    m_axis_cq_tlast => m_axis_cq_tlast,
    m_axis_cq_tready => m_axis_cq_tready,
    m_axis_cq_tuser => m_axis_cq_tuser,
    m_axis_cq_tvalid => m_axis_cq_tvalid,
    s_axis_cc_tdata => s_axis_cc_tdata,
    s_axis_cc_tkeep => s_axis_cc_tkeep,
    s_axis_cc_tlast => s_axis_cc_tlast,
    s_axis_cc_tready => s_axis_cc_tready,
    s_axis_cc_tuser => s_axis_cc_tuser,
    s_axis_cc_tvalid => s_axis_cc_tvalid,
    pcie_rq_seq_num0 => pcie_rq_seq_num0,
    pcie_rq_seq_num_vld0 => pcie_rq_seq_num_vld0,
    pcie_rq_seq_num1 => pcie_rq_seq_num1,
    pcie_rq_seq_num_vld1 => pcie_rq_seq_num_vld1,
    pcie_rq_tag0 => pcie_rq_tag0,
    pcie_rq_tag1 => pcie_rq_tag1,
    pcie_rq_tag_av => pcie_rq_tag_av,
    pcie_rq_tag_vld0 => pcie_rq_tag_vld0,
    pcie_rq_tag_vld1 => pcie_rq_tag_vld1,
    pcie_tfc_nph_av => pcie_tfc_nph_av,
    pcie_tfc_npd_av => pcie_tfc_npd_av,
    pcie_cq_np_req => pcie_cq_np_req,
    pcie_cq_np_req_count => pcie_cq_np_req_count,
    cfg_phy_link_down => cfg_phy_link_down,
    cfg_phy_link_status => cfg_phy_link_status,
    cfg_negotiated_width => cfg_negotiated_width,
    cfg_current_speed => cfg_current_speed,
    cfg_max_payload => cfg_max_payload,
    cfg_max_read_req => cfg_max_read_req,
    cfg_function_status => cfg_function_status,
    cfg_function_power_state => cfg_function_power_state,
    cfg_vf_status => cfg_vf_status,
    cfg_vf_power_state => cfg_vf_power_state,
    cfg_link_power_state => cfg_link_power_state,
    cfg_mgmt_addr => cfg_mgmt_addr,
    cfg_mgmt_function_number => cfg_mgmt_function_number,
    cfg_mgmt_write => cfg_mgmt_write,
    cfg_mgmt_write_data => cfg_mgmt_write_data,
    cfg_mgmt_byte_enable => cfg_mgmt_byte_enable,
    cfg_mgmt_read => cfg_mgmt_read,
    cfg_mgmt_read_data => cfg_mgmt_read_data,
    cfg_mgmt_read_write_done => cfg_mgmt_read_write_done,
    cfg_mgmt_debug_access => cfg_mgmt_debug_access,
    cfg_err_cor_out => cfg_err_cor_out,
    cfg_err_nonfatal_out => cfg_err_nonfatal_out,
    cfg_err_fatal_out => cfg_err_fatal_out,
    cfg_local_error_valid => cfg_local_error_valid,
    cfg_local_error_out => cfg_local_error_out,
    cfg_ltssm_state => cfg_ltssm_state,
    cfg_rx_pm_state => cfg_rx_pm_state,
    cfg_tx_pm_state => cfg_tx_pm_state,
    cfg_rcb_status => cfg_rcb_status,
    cfg_obff_enable => cfg_obff_enable,
    cfg_pl_status_change => cfg_pl_status_change,
    cfg_tph_requester_enable => cfg_tph_requester_enable,
    cfg_tph_st_mode => cfg_tph_st_mode,
    cfg_vf_tph_requester_enable => cfg_vf_tph_requester_enable,
    cfg_vf_tph_st_mode => cfg_vf_tph_st_mode,
    cfg_msg_received => cfg_msg_received,
    cfg_msg_received_data => cfg_msg_received_data,
    cfg_msg_received_type => cfg_msg_received_type,
    cfg_msg_transmit => cfg_msg_transmit,
    cfg_msg_transmit_type => cfg_msg_transmit_type,
    cfg_msg_transmit_data => cfg_msg_transmit_data,
    cfg_msg_transmit_done => cfg_msg_transmit_done,
    cfg_fc_ph => cfg_fc_ph,
    cfg_fc_pd => cfg_fc_pd,
    cfg_fc_nph => cfg_fc_nph,
    cfg_fc_npd => cfg_fc_npd,
    cfg_fc_cplh => cfg_fc_cplh,
    cfg_fc_cpld => cfg_fc_cpld,
    cfg_fc_sel => cfg_fc_sel,
    cfg_dsn => cfg_dsn,
    cfg_bus_number => cfg_bus_number,
    cfg_power_state_change_ack => cfg_power_state_change_ack,
    cfg_power_state_change_interrupt => cfg_power_state_change_interrupt,
    cfg_err_cor_in => cfg_err_cor_in,
    cfg_err_uncor_in => cfg_err_uncor_in,
    cfg_flr_in_process => cfg_flr_in_process,
    cfg_flr_done => cfg_flr_done,
    cfg_vf_flr_in_process => cfg_vf_flr_in_process,
    cfg_vf_flr_func_num => cfg_vf_flr_func_num,
    cfg_vf_flr_done => cfg_vf_flr_done,
    cfg_link_training_enable => cfg_link_training_enable,
    cfg_interrupt_int => cfg_interrupt_int,
    cfg_interrupt_pending => cfg_interrupt_pending,
    cfg_interrupt_sent => cfg_interrupt_sent,
    cfg_interrupt_msi_enable => cfg_interrupt_msi_enable,
    cfg_interrupt_msi_mmenable => cfg_interrupt_msi_mmenable,
    cfg_interrupt_msi_mask_update => cfg_interrupt_msi_mask_update,
    cfg_interrupt_msi_data => cfg_interrupt_msi_data,
    cfg_interrupt_msi_select => cfg_interrupt_msi_select,
    cfg_interrupt_msi_int => cfg_interrupt_msi_int,
    cfg_interrupt_msi_pending_status => cfg_interrupt_msi_pending_status,
    cfg_interrupt_msi_pending_status_data_enable => cfg_interrupt_msi_pending_status_data_enable,
    cfg_interrupt_msi_pending_status_function_num => cfg_interrupt_msi_pending_status_function_num,
    cfg_interrupt_msi_sent => cfg_interrupt_msi_sent,
    cfg_interrupt_msi_fail => cfg_interrupt_msi_fail,
    cfg_interrupt_msi_attr => cfg_interrupt_msi_attr,
    cfg_interrupt_msi_tph_present => cfg_interrupt_msi_tph_present,
    cfg_interrupt_msi_tph_type => cfg_interrupt_msi_tph_type,
    cfg_interrupt_msi_tph_st_tag => cfg_interrupt_msi_tph_st_tag,
    cfg_interrupt_msi_function_number => cfg_interrupt_msi_function_number,
    cfg_pm_aspm_l1_entry_reject => cfg_pm_aspm_l1_entry_reject,
    cfg_pm_aspm_tx_l0s_entry_disable => cfg_pm_aspm_tx_l0s_entry_disable,
    cfg_hot_reset_out => cfg_hot_reset_out,
    cfg_config_space_enable => cfg_config_space_enable,
    cfg_req_pm_transition_l23_ready => cfg_req_pm_transition_l23_ready,
    cfg_hot_reset_in => cfg_hot_reset_in,
    cfg_ds_port_number => cfg_ds_port_number,
    cfg_ds_bus_number => cfg_ds_bus_number,
    cfg_ds_device_number => cfg_ds_device_number,
    sys_clk => sys_clk,
    sys_clk_gt => sys_clk_gt,
    sys_reset => sys_reset,
    phy_rdy_out => phy_rdy_out
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file pcie4_uscale_plus_0.vhd when simulating
-- the core, pcie4_uscale_plus_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

