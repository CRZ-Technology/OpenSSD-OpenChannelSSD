##################################################################################
## pinmap_nand_ch2 for Cosmos OpenSSD
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
## Design Name: pinmap_nand_ch2
## File Name: pinmap_nand_ch2.xdc
##
## Version: v1.0.0
##
## Description: pinmaps for nand channel 2
##
##################################################################################

##################################################################################
## Revision History:
##
## * v1.0.0
##   - first draft
##################################################################################

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[0]}]
set_property PACKAGE_PIN AK26 [get_ports {nand_if_2_nand_dq[0]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[0]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[1]}]
set_property PACKAGE_PIN AJ26 [get_ports {nand_if_2_nand_dq[1]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[1]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[1]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[2]}]
set_property PACKAGE_PIN AH27 [get_ports {nand_if_2_nand_dq[2]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[2]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[2]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[3]}]
set_property PACKAGE_PIN AH26 [get_ports {nand_if_2_nand_dq[3]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[3]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[3]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[4]}]
set_property PACKAGE_PIN AK28 [get_ports {nand_if_2_nand_dq[4]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[4]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[4]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[5]}]
set_property PACKAGE_PIN AK27 [get_ports {nand_if_2_nand_dq[5]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[5]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[5]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[6]}]
set_property PACKAGE_PIN AK30 [get_ports {nand_if_2_nand_dq[6]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[6]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[6]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[7]}]
set_property PACKAGE_PIN AJ30 [get_ports {nand_if_2_nand_dq[7]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[7]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[7]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[0]}]
set_property PACKAGE_PIN AE28 [get_ports {nand_if_2_nand_ce[0]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[0]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[1]}]
set_property PACKAGE_PIN AF28 [get_ports {nand_if_2_nand_ce[1]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[1]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[1]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[2]}]
set_property PACKAGE_PIN AF29 [get_ports {nand_if_2_nand_ce[2]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[2]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[2]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[3]}]
set_property PACKAGE_PIN AG29 [get_ports {nand_if_2_nand_ce[3]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[3]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[3]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[4]}]
set_property PACKAGE_PIN AF30 [get_ports {nand_if_2_nand_ce[4]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[4]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[4]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[5]}]
set_property PACKAGE_PIN AG30 [get_ports {nand_if_2_nand_ce[5]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[5]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[5]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[6]}]
set_property PACKAGE_PIN AG26 [get_ports {nand_if_2_nand_ce[6]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[6]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[6]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[7]}]
set_property PACKAGE_PIN AG27 [get_ports {nand_if_2_nand_ce[7]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[7]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[7]}]

set_property IOSTANDARD SSTL18_II [get_ports nand_if_2_nand_cle]
set_property PACKAGE_PIN AH28 [get_ports nand_if_2_nand_cle]
set_property SLEW SLOW [get_ports nand_if_2_nand_cle]
set_property DRIVE 12 [get_ports nand_if_2_nand_cle]

set_property IOSTANDARD SSTL18_II [get_ports nand_if_2_nand_ale]
set_property PACKAGE_PIN AD25 [get_ports nand_if_2_nand_ale]
set_property SLEW SLOW [get_ports nand_if_2_nand_ale]
set_property DRIVE 12 [get_ports nand_if_2_nand_ale]

set_property IOSTANDARD SSTL18_II [get_ports nand_if_2_nand_we]
set_property PACKAGE_PIN AE25 [get_ports nand_if_2_nand_we]
set_property SLEW SLOW [get_ports nand_if_2_nand_we]
set_property DRIVE 12 [get_ports nand_if_2_nand_we]

set_property IOSTANDARD DIFF_SSTL18_II [get_ports nand_if_2_nand_re_p]
set_property SLEW SLOW [get_ports nand_if_2_nand_re_p]
set_property DRIVE 12 [get_ports nand_if_2_nand_re_p]

set_property IOSTANDARD DIFF_SSTL18_II [get_ports nand_if_2_nand_re_n]
set_property PACKAGE_PIN AJ28 [get_ports nand_if_2_nand_re_p]
set_property PACKAGE_PIN AJ29 [get_ports nand_if_2_nand_re_n]
set_property SLEW SLOW [get_ports nand_if_2_nand_re_n]
set_property DRIVE 12 [get_ports nand_if_2_nand_re_n]

set_property IOSTANDARD DIFF_SSTL18_II [get_ports nand_if_2_nand_dqs_p]
set_property SLEW SLOW [get_ports nand_if_2_nand_dqs_p]
set_property DRIVE 12 [get_ports nand_if_2_nand_dqs_p]

set_property IOSTANDARD DIFF_SSTL18_II [get_ports nand_if_2_nand_dqs_n]
set_property PACKAGE_PIN AE27 [get_ports nand_if_2_nand_dqs_p]
set_property PACKAGE_PIN AF27 [get_ports nand_if_2_nand_dqs_n]
set_property SLEW SLOW [get_ports nand_if_2_nand_dqs_n]
set_property DRIVE 12 [get_ports nand_if_2_nand_dqs_n]

set_property IOSTANDARD SSTL18_II [get_ports {nand_if_2_nand_rb[0]}]
set_property PACKAGE_PIN V27 [get_ports {nand_if_2_nand_rb[0]}]

set_property IOSTANDARD SSTL18_II [get_ports {nand_if_2_nand_rb[1]}]
set_property PACKAGE_PIN W28 [get_ports {nand_if_2_nand_rb[1]}]

set_property IOSTANDARD SSTL18_II [get_ports {nand_if_2_nand_rb[2]}]
set_property PACKAGE_PIN U26 [get_ports {nand_if_2_nand_rb[2]}]

set_property IOSTANDARD SSTL18_II [get_ports {nand_if_2_nand_rb[3]}]
set_property PACKAGE_PIN AE26 [get_ports {nand_if_2_nand_rb[3]}]

set_property IOSTANDARD SSTL18_II [get_ports {nand_if_2_nand_rb[4]}]
set_property PACKAGE_PIN AB27 [get_ports {nand_if_2_nand_rb[4]}]

set_property IOSTANDARD SSTL18_II [get_ports {nand_if_2_nand_rb[5]}]
set_property PACKAGE_PIN AC27 [get_ports {nand_if_2_nand_rb[5]}]

set_property IOSTANDARD SSTL18_II [get_ports {nand_if_2_nand_rb[6]}]
set_property PACKAGE_PIN AC28 [get_ports {nand_if_2_nand_rb[6]}]

set_property IOSTANDARD SSTL18_II [get_ports {nand_if_2_nand_rb[7]}]
set_property PACKAGE_PIN AD28 [get_ports {nand_if_2_nand_rb[7]}]

set_property IOSTANDARD LVCMOS18 [get_ports nand_if_2_nand_wp]
set_property PACKAGE_PIN AA25 [get_ports nand_if_2_nand_wp]
set_property SLEW SLOW [get_ports nand_if_2_nand_wp]
set_property DRIVE 12 [get_ports nand_if_2_nand_wp]


