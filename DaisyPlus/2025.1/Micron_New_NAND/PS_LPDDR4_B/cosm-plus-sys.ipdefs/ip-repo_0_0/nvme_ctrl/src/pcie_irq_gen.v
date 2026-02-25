
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

module pcie_irq_gen # (
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
  
	input									pcie_legacy_irq_set,
	input									pcie_msi_irq_set,
	input	[8:0]							pcie_irq_vector,
	input									pcie_legacy_irq_clear,
	output									pcie_irq_done
);

localparam	S_IDLE							= 8'b00000001;
localparam	S_SEND_MSI						= 8'b00000010;
localparam	S_SEND_MSI_2					= 8'b00000100;
localparam	S_LEGACY_ASSERT					= 8'b00001000;
localparam	S_LEGACY_ASSERT_HOLD			= 8'b00010000;
localparam	S_LEGACY_DEASSERT				= 8'b00100000;
localparam	S_WAIT_RDY_N					= 8'b01000000;
localparam	S_IRQ_DONE						= 8'b10000000;



reg		[7:0]								cur_state;
reg		[7:0]								next_state;

reg                                         r_cfg_interrupt_pending;
reg     [3:0]                               r_cfg_interrupt_int;

reg		[31:0]								r_cfg_interrupt_msi_int;
reg                                         r_cfg_interrupt_msi_pending_status_data_enable;
reg     [31:0]                              r_cfg_interrupt_msi_pending_status;

reg		[8:0]								r_pcie_irq_vector;
reg											r_pcie_irq_done;

assign cfg_interrupt_pending = r_cfg_interrupt_pending;
assign cfg_interrupt_int     = r_cfg_interrupt_int;

assign cfg_interrupt_msi_int                        = r_cfg_interrupt_msi_int;
assign cfg_interrupt_msi_pending_status_data_enable = r_cfg_interrupt_msi_pending_status_data_enable;
assign cfg_interrupt_msi_pending_status             = r_cfg_interrupt_msi_pending_status;

assign cfg_interrupt_msix_int     = 1'b0;
assign cfg_interrupt_msix_address = 64'b0;
assign cfg_interrupt_msix_data    = 32'b0; 

assign pcie_irq_done = r_pcie_irq_done;

always @ (posedge pcie_user_clk or negedge pcie_user_rst_n)
begin
	if(pcie_user_rst_n == 0)
		cur_state <= S_IDLE;
	else
		cur_state <= next_state;
end

always @ (*)
begin
	case(cur_state)
		S_IDLE: begin
			if(pcie_msi_irq_set == 1)
				next_state <= S_SEND_MSI;
			else if(pcie_legacy_irq_set == 1)
				next_state <= S_LEGACY_ASSERT;
			else
				next_state <= S_IDLE;
		end
		S_SEND_MSI: begin
			next_state <= S_SEND_MSI_2;
		end
		S_SEND_MSI_2: begin
			if(cfg_interrupt_msi_sent == 1)
				next_state <= S_WAIT_RDY_N;
			else
				next_state <= S_SEND_MSI_2;
		end
		S_LEGACY_ASSERT: begin
			if(cfg_interrupt_sent == 1)
				next_state <= S_LEGACY_ASSERT_HOLD;
			else
				next_state <= S_LEGACY_ASSERT;
		end
		S_LEGACY_ASSERT_HOLD: begin
			if(pcie_legacy_irq_clear == 1)
				next_state <= S_LEGACY_DEASSERT;
			else
				next_state <= S_LEGACY_ASSERT_HOLD;
		end
		S_LEGACY_DEASSERT: begin
			if(cfg_interrupt_sent == 1)
				next_state <= S_WAIT_RDY_N;
			else
				next_state <= S_LEGACY_DEASSERT;
		end
		S_WAIT_RDY_N: begin
			if(cfg_interrupt_sent == 0 && cfg_interrupt_msi_sent == 0)
				next_state <= S_IRQ_DONE;
			else
				next_state <= S_WAIT_RDY_N;
		end
		S_IRQ_DONE: begin
			next_state <= S_IDLE;
		end
		default: begin
			next_state <= S_IDLE;
		end
	endcase
end


always @ (posedge pcie_user_clk)
begin
	case(cur_state)
		S_IDLE: begin
			r_pcie_irq_vector <= pcie_irq_vector;
		end
		S_SEND_MSI: begin

		end
		S_SEND_MSI_2: begin

		end
		S_LEGACY_ASSERT: begin

		end
		S_LEGACY_ASSERT_HOLD: begin

		end
		S_LEGACY_DEASSERT: begin

		end
		S_WAIT_RDY_N: begin

		end
		S_IRQ_DONE: begin

		end
		default: begin

		end
	endcase
end

always @ (*)
begin
	case(cur_state)
		S_IDLE: begin
            r_cfg_interrupt_pending                        <= 0;
            r_cfg_interrupt_int                            <= 4'b0000;
			r_cfg_interrupt_msi_int                        <= 0;
            r_cfg_interrupt_msi_pending_status_data_enable <= 0;
            r_cfg_interrupt_msi_pending_status             <= 0;
			r_pcie_irq_done                                <= 0;
		end
		S_SEND_MSI: begin
            r_cfg_interrupt_pending                        <= 0;
            r_cfg_interrupt_int                            <= 4'b0000;
			r_cfg_interrupt_msi_int                        <= {23'b0, r_pcie_irq_vector};
            r_cfg_interrupt_msi_pending_status_data_enable <= 1;
            r_cfg_interrupt_msi_pending_status             <= {23'b0, r_pcie_irq_vector};
			r_pcie_irq_done                                <= 0;
		end
		S_SEND_MSI_2: begin
            r_cfg_interrupt_pending                        <= 0;
            r_cfg_interrupt_int                            <= 4'b0000;
			r_cfg_interrupt_msi_int                        <= 0;
            r_cfg_interrupt_msi_pending_status_data_enable <= 1;
            r_cfg_interrupt_msi_pending_status             <= {23'b0, r_pcie_irq_vector};
			r_pcie_irq_done                                <= 0;
		end
		S_LEGACY_ASSERT: begin
            r_cfg_interrupt_pending                        <= 1;
            r_cfg_interrupt_int                            <= 4'b0001;
			r_cfg_interrupt_msi_int                        <= 0;
            r_cfg_interrupt_msi_pending_status_data_enable <= 0;
            r_cfg_interrupt_msi_pending_status             <= 0;
			r_pcie_irq_done                                <= 0;
		end
		S_LEGACY_ASSERT_HOLD: begin
            r_cfg_interrupt_pending                        <= 1;
            r_cfg_interrupt_int                            <= 4'b0001;
			r_cfg_interrupt_msi_int                        <= 0;
            r_cfg_interrupt_msi_pending_status_data_enable <= 0;
            r_cfg_interrupt_msi_pending_status             <= 0;
			r_pcie_irq_done                                <= 0;
		end
		S_LEGACY_DEASSERT: begin
            r_cfg_interrupt_pending                        <= 0;
            r_cfg_interrupt_int                            <= 4'b0000;
			r_cfg_interrupt_msi_int                        <= 0;
            r_cfg_interrupt_msi_pending_status_data_enable <= 0;
            r_cfg_interrupt_msi_pending_status             <= 0;
			r_pcie_irq_done                                <= 0;
		end
		S_WAIT_RDY_N: begin
            r_cfg_interrupt_pending                        <= 0;
            r_cfg_interrupt_int                            <= 4'b0000;
			r_cfg_interrupt_msi_int                        <= 0;
            r_cfg_interrupt_msi_pending_status_data_enable <= 0;
            r_cfg_interrupt_msi_pending_status             <= 0;
			r_pcie_irq_done                                <= 0;
		end
		S_IRQ_DONE: begin
            r_cfg_interrupt_pending                        <= 0;
            r_cfg_interrupt_int                            <= 4'b0000;
			r_cfg_interrupt_msi_int                        <= 0;
            r_cfg_interrupt_msi_pending_status_data_enable <= 0;
            r_cfg_interrupt_msi_pending_status             <= 0;
			r_pcie_irq_done                                <= 1;
		end
		default: begin
            r_cfg_interrupt_pending                        <= 0;
            r_cfg_interrupt_int                            <= 4'b0000;
			r_cfg_interrupt_msi_int                        <= 0;
            r_cfg_interrupt_msi_pending_status_data_enable <= 0;
            r_cfg_interrupt_msi_pending_status             <= 0;
			r_pcie_irq_done                                <= 0;
		end
	endcase
end

endmodule
