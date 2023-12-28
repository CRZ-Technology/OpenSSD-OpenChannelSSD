//////////////////////////////////////////////////////////////////////////////////
// CS_parameters.vh for Cosmos OpenSSD
// Copyright (c) 2015 Hanyang University ENC Lab.
// Contributed by Ilyong Jung <iyjung@enc.hanyang.ac.kr>
//                Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//
// This file is part of Cosmos OpenSSD.
//
// Cosmos OpenSSD is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3, or (at your option)
// any later version.
//
// Cosmos OpenSSD is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Cosmos OpenSSD; see the file COPYING.
// If not, see <http://www.gnu.org/licenses/>. 
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Company: ENC Lab. <http://enc.hanyang.ac.kr>
// Engineer: Ilyong Jung <iyjung@enc.hanyang.ac.kr>
// 
// Project Name: Cosmos OpenSSD
// Design Name: BCH Decoder
// Module Name: -
// File Name: CS_parameters.vh
//
// Version: v1.0.2-2KB_T32
//
// Description: 
//   - global parameters for BCH decoder: Chien search (CS)
//   - for data area
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.2
//   - temporary roll-back for releasing
//   - coding style of this version is not unified
//
// * v1.0.1
//   - minor modification for releasing
//
// * v1.0.0
//   - first draft
//////////////////////////////////////////////////////////////////////////////////

`define GF_ORDER 15 // GF(2^GF_ORDER)

`define CS_PARALLEL 8

`define ECC_PARAM_T 32 // t = 32

`define CS_OUTPUT_LOOP_COUNT 2048 // 2KB chunk / 8b = 2048, no corrected parity output
`define CS_OUTPUT_LOOP_COUNT_BIT 12 // bigger than CS_OUTPUT_LOOP_COUNT, 2^11 = 2048