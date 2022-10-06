##################################################################################
## pinmap_nvme for Cosmos OpenSSD
## Copyright (c) 2015 Hanyang University ENC Lab.
## Contributed by Kibin Park <kbpark@enc.hanyang.ac.kr>
##                Yong Ho Song <yhsong@enc.hanyang.ac.kr>
##
## This file is part of Cosmos OpenSSD.
##
## Cosmos OpenSSD is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3, or (at your option)
## any later version.
##
## Cosmos OpenSSD is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
## See the GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with Cosmos OpenSSD; see the file COPYING.
## If not, see <http://www.gnu.org/licenses/>.
##################################################################################

##################################################################################
## Company: ENC Lab. <http://enc.hanyang.ac.kr>
## Engineer: Kibin Park <kbpark@enc.hanyang.ac.kr>
##
## Project Name: Cosmos OpenSSD
## Design Name: pinmap_nvme
## File Name: pinmap_nvme.xdc
##
## Version: v1.0.0
##
## Description: pinmaps for NVMe/PCIe
##
##################################################################################

##################################################################################
## Revision History:
##
## * v1.0.0
##   - first draft
##################################################################################

set_property PACKAGE_PIN N8 [get_ports pcie_ref_clk_clk_p]
set_property PACKAGE_PIN N7 [get_ports pcie_ref_clk_clk_n]

set_property IOSTANDARD LVCMOS33 [get_ports pcie_perst_n]
set_property PACKAGE_PIN AB16 [get_ports pcie_perst_n]
set_property PULLDOWN true [get_ports pcie_perst_n]




set_property LOC GTXE2_CHANNEL_X0Y15 [get_cells {sys_top_i/nvme_ctrl_0/inst/pcie_7x_0_core_top_inst0/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN P5 [get_ports {pcie_lane_rxn[0]}]
set_property PACKAGE_PIN P6 [get_ports {pcie_lane_rxp[0]}]
set_property PACKAGE_PIN N3 [get_ports {pcie_lane_txn[0]}]
set_property PACKAGE_PIN N4 [get_ports {pcie_lane_txp[0]}]
set_property LOC GTXE2_CHANNEL_X0Y14 [get_cells {sys_top_i/nvme_ctrl_0/inst/pcie_7x_0_core_top_inst0/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN T5 [get_ports {pcie_lane_rxn[1]}]
set_property PACKAGE_PIN T6 [get_ports {pcie_lane_rxp[1]}]
set_property PACKAGE_PIN P1 [get_ports {pcie_lane_txn[1]}]
set_property PACKAGE_PIN P2 [get_ports {pcie_lane_txp[1]}]
set_property LOC GTXE2_CHANNEL_X0Y13 [get_cells {sys_top_i/nvme_ctrl_0/inst/pcie_7x_0_core_top_inst0/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN U3 [get_ports {pcie_lane_rxn[2]}]
set_property PACKAGE_PIN U4 [get_ports {pcie_lane_rxp[2]}]
set_property PACKAGE_PIN R3 [get_ports {pcie_lane_txn[2]}]
set_property PACKAGE_PIN R4 [get_ports {pcie_lane_txp[2]}]
set_property LOC GTXE2_CHANNEL_X0Y12 [get_cells {sys_top_i/nvme_ctrl_0/inst/pcie_7x_0_core_top_inst0/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN V5 [get_ports {pcie_lane_rxn[3]}]
set_property PACKAGE_PIN V6 [get_ports {pcie_lane_rxp[3]}]
set_property PACKAGE_PIN T1 [get_ports {pcie_lane_txn[3]}]
set_property PACKAGE_PIN T2 [get_ports {pcie_lane_txp[3]}]
set_property LOC GTXE2_CHANNEL_X0Y11 [get_cells {sys_top_i/nvme_ctrl_0/inst/pcie_7x_0_core_top_inst0/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[4].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN AA3 [get_ports {pcie_lane_rxn[4]}]
set_property PACKAGE_PIN AA4 [get_ports {pcie_lane_rxp[4]}]
set_property PACKAGE_PIN V1 [get_ports {pcie_lane_txn[4]}]
set_property PACKAGE_PIN V2 [get_ports {pcie_lane_txp[4]}]
set_property LOC GTXE2_CHANNEL_X0Y10 [get_cells {sys_top_i/nvme_ctrl_0/inst/pcie_7x_0_core_top_inst0/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[5].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN Y5 [get_ports {pcie_lane_rxn[5]}]
set_property PACKAGE_PIN Y6 [get_ports {pcie_lane_rxp[5]}]
set_property PACKAGE_PIN W3 [get_ports {pcie_lane_txn[5]}]
set_property PACKAGE_PIN W4 [get_ports {pcie_lane_txp[5]}]
set_property LOC GTXE2_CHANNEL_X0Y9 [get_cells {sys_top_i/nvme_ctrl_0/inst/pcie_7x_0_core_top_inst0/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[6].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN AB5 [get_ports {pcie_lane_rxn[6]}]
set_property PACKAGE_PIN AB6 [get_ports {pcie_lane_rxp[6]}]
set_property PACKAGE_PIN Y1 [get_ports {pcie_lane_txn[6]}]
set_property PACKAGE_PIN Y2 [get_ports {pcie_lane_txp[6]}]
set_property LOC GTXE2_CHANNEL_X0Y8 [get_cells {sys_top_i/nvme_ctrl_0/inst/pcie_7x_0_core_top_inst0/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[7].gt_wrapper_i/gtx_channel.gtxe2_channel_i}]
set_property PACKAGE_PIN AC3 [get_ports {pcie_lane_rxn[7]}]
set_property PACKAGE_PIN AC4 [get_ports {pcie_lane_rxp[7]}]
set_property PACKAGE_PIN AB1 [get_ports {pcie_lane_txn[7]}]
set_property PACKAGE_PIN AB2 [get_ports {pcie_lane_txp[7]}]

