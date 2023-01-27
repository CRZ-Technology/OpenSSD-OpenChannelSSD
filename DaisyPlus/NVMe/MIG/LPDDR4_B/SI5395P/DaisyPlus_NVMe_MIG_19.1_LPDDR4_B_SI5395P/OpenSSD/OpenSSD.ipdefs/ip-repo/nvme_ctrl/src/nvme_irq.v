
/*
----------------------------------------------------------------------------------
Copyright (c) 2013-2014

  Embedded and Network Computing Lab.
  Open SSD Project
  Hanyang University

All rights reserved.

----------------------------------------------------------------------------------

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

  1. Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.

  2. Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in the
     documentation and/or other materials provided with the distribution.

  3. All advertising materials mentioning features or use of this source code
     must display the following acknowledgement:
     This product includes source code developed 
     by the Embedded and Network Computing Lab. and the Open SSD Project.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

----------------------------------------------------------------------------------

http://enclab.hanyang.ac.kr/
http://www.openssd-project.org/
http://www.hanyang.ac.kr/

----------------------------------------------------------------------------------
*/


`timescale 1ns / 1ps

module nvme_irq # (
	parameter	C_PCIE_DATA_WIDTH			= 512,
	parameter	C_PCIE_ADDR_WIDTH			= 48 //modified
)
(
	input									pcie_user_clk,
	input									pcie_user_rst_n,

	input	[3:0]							cfg_command, 

  // Legacy Interrupt Interface

  input                            cfg_interrupt_sent, // Core asserts this signal when it sends out a Legacy interrupt 
  output wire                      cfg_interrupt_pending,
  output wire              [3:0]   cfg_interrupt_int,  // 4 Bits for INTA, INTB, INTC, INTD (assert or deassert)

  // MSI Interrupt Interface

  input                            cfg_interrupt_msi_enable,
  input                            cfg_interrupt_msi_sent,
  input                            cfg_interrupt_msi_fail,
  output wire             [31:0]   cfg_interrupt_msi_int,  
  output wire                      cfg_interrupt_msi_pending_status_data_enable,
  output wire             [31:0]   cfg_interrupt_msi_pending_status,

  //MSI-X Interrupt Interface

  input                            cfg_interrupt_msix_enable,
  input                            cfg_interrupt_msix_sent,
  input                            cfg_interrupt_msix_fail,
  output wire                      cfg_interrupt_msix_int,
  output wire             [63:0]   cfg_interrupt_msix_address,
  output wire             [31:0]   cfg_interrupt_msix_data, 
  
	input									nvme_intms_ivms,
	input									nvme_intmc_ivmc,
	output									cq_irq_status,

	input	[8:0]							cq_rst_n,
	input	[8:0]							cq_valid,
	input	[8:0]							io_cq_irq_en,
	input	[2:0]							io_cq1_iv,
	input	[2:0]							io_cq2_iv,
	input	[2:0]							io_cq3_iv,
	input	[2:0]							io_cq4_iv,
	input	[2:0]							io_cq5_iv,
	input	[2:0]							io_cq6_iv,
	input	[2:0]							io_cq7_iv,
	input	[2:0]							io_cq8_iv,

	input	[7:0]							admin_cq_tail_ptr,
	input	[7:0]							io_cq1_tail_ptr,
	input	[7:0]							io_cq2_tail_ptr,
	input	[7:0]							io_cq3_tail_ptr,
	input	[7:0]							io_cq4_tail_ptr,
	input	[7:0]							io_cq5_tail_ptr,
	input	[7:0]							io_cq6_tail_ptr,
	input	[7:0]							io_cq7_tail_ptr,
	input	[7:0]							io_cq8_tail_ptr,

	input	[7:0]							admin_cq_head_ptr,
	input	[7:0]							io_cq1_head_ptr,
	input	[7:0]							io_cq2_head_ptr,
	input	[7:0]							io_cq3_head_ptr,
	input	[7:0]							io_cq4_head_ptr,
	input	[7:0]							io_cq5_head_ptr,
	input	[7:0]							io_cq6_head_ptr,
	input	[7:0]							io_cq7_head_ptr,
	input	[7:0]							io_cq8_head_ptr,
	input	[8:0]							cq_head_update
);

wire										w_pcie_legacy_irq_set;
wire										w_pcie_msi_irq_set;
wire	[8:0]								w_pcie_irq_vector;
wire										w_pcie_legacy_irq_clear;
wire										w_pcie_irq_done;

pcie_irq_gen
pcie_irq_gen_inst0
(
	.pcie_user_clk							(pcie_user_clk),
	.pcie_user_rst_n						(pcie_user_rst_n),

	.cfg_command							(cfg_command),

    // Legacy Interrupt Interface

    .cfg_interrupt_sent                     ( cfg_interrupt_sent ),
    .cfg_interrupt_pending                  ( cfg_interrupt_pending ),
    .cfg_interrupt_int                      ( cfg_interrupt_int ),

    // MSI Interrupt Interface

    .cfg_interrupt_msi_enable               ( cfg_interrupt_msi_enable ),
    .cfg_interrupt_msi_sent                 ( cfg_interrupt_msi_sent ),
    .cfg_interrupt_msi_fail                 ( cfg_interrupt_msi_fail ),
    .cfg_interrupt_msi_int                  ( cfg_interrupt_msi_int ),
    .cfg_interrupt_msi_pending_status_data_enable   ( cfg_interrupt_msi_pending_status_data_enable ),
    .cfg_interrupt_msi_pending_status       ( cfg_interrupt_msi_pending_status ),

    //MSI-X Interrupt Interface

    .cfg_interrupt_msix_enable              ( cfg_interrupt_msix_enable ),
    .cfg_interrupt_msix_sent                ( cfg_interrupt_msix_sent ),
    .cfg_interrupt_msix_fail                ( cfg_interrupt_msix_fail ),
    .cfg_interrupt_msix_int                 ( cfg_interrupt_msix_int ),
    .cfg_interrupt_msix_address             ( cfg_interrupt_msix_address ),
    .cfg_interrupt_msix_data                ( cfg_interrupt_msix_data ),

    .pcie_legacy_irq_set					(w_pcie_legacy_irq_set),
	.pcie_msi_irq_set						(w_pcie_msi_irq_set),
	.pcie_irq_vector						(w_pcie_irq_vector),
	.pcie_legacy_irq_clear					(w_pcie_legacy_irq_clear),
	.pcie_irq_done							(w_pcie_irq_done)
);

nvme_irq_handler
nvme_irq_handler_inst0
(
	.pcie_user_clk							(pcie_user_clk),
	.pcie_user_rst_n						(pcie_user_rst_n),

	.cfg_command							(cfg_command),
	.cfg_interrupt_msi_enable				(cfg_interrupt_msi_enable),

	.nvme_intms_ivms						(nvme_intms_ivms),
	.nvme_intmc_ivmc						(nvme_intmc_ivmc),
	.cq_irq_status							(cq_irq_status),

	.cq_rst_n								(cq_rst_n),
	.cq_valid								(cq_valid),
	.io_cq_irq_en							(io_cq_irq_en),
	.io_cq1_iv								(io_cq1_iv),
	.io_cq2_iv								(io_cq2_iv),
	.io_cq3_iv								(io_cq3_iv),
	.io_cq4_iv								(io_cq4_iv),
	.io_cq5_iv								(io_cq5_iv),
	.io_cq6_iv								(io_cq6_iv),
	.io_cq7_iv								(io_cq7_iv),
	.io_cq8_iv								(io_cq8_iv),

	.admin_cq_tail_ptr						(admin_cq_tail_ptr),
	.io_cq1_tail_ptr						(io_cq1_tail_ptr),
	.io_cq2_tail_ptr						(io_cq2_tail_ptr),
	.io_cq3_tail_ptr						(io_cq3_tail_ptr),
	.io_cq4_tail_ptr						(io_cq4_tail_ptr),
	.io_cq5_tail_ptr						(io_cq5_tail_ptr),
	.io_cq6_tail_ptr						(io_cq6_tail_ptr),
	.io_cq7_tail_ptr						(io_cq7_tail_ptr),
	.io_cq8_tail_ptr						(io_cq8_tail_ptr),

	.admin_cq_head_ptr						(admin_cq_head_ptr),
	.io_cq1_head_ptr						(io_cq1_head_ptr),
	.io_cq2_head_ptr						(io_cq2_head_ptr),
	.io_cq3_head_ptr						(io_cq3_head_ptr),
	.io_cq4_head_ptr						(io_cq4_head_ptr),
	.io_cq5_head_ptr						(io_cq5_head_ptr),
	.io_cq6_head_ptr						(io_cq6_head_ptr),
	.io_cq7_head_ptr						(io_cq7_head_ptr),
	.io_cq8_head_ptr						(io_cq8_head_ptr),
	.cq_head_update							(cq_head_update),

	.pcie_legacy_irq_set					(w_pcie_legacy_irq_set),
	.pcie_msi_irq_set						(w_pcie_msi_irq_set),
	.pcie_irq_vector						(w_pcie_irq_vector),
	.pcie_legacy_irq_clear					(w_pcie_legacy_irq_clear),
	.pcie_irq_done							(w_pcie_irq_done)
);

endmodule
