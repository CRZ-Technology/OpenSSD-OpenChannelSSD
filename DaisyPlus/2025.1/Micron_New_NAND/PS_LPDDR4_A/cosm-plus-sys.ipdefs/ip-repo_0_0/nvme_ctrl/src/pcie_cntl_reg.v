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

`include "def_nvme.vh"

 module pcie_cntl_reg # (
	parameter	C_PCIE_DATA_WIDTH			= 512,
	parameter	C_PCIE_ADDR_WIDTH			= 48  //modified
)
(
	input									pcie_user_clk,
	input									pcie_user_rst_n,

	  output									mreq_fifo_rd_en,
	  input	[C_PCIE_DATA_WIDTH-1:0]			mreq_fifo_rd_data,
      input									mreq_fifo_empty_n,

	input  [7:0]                           req_be,

	  output									tx_cpld_req,
	  output	[7:0]							tx_cpld_tag,
	  output	[15:0]							tx_cpld_req_id,
  	output	[12:2]							tx_cpld_len,
	  output	[6:0]							tx_cpld_laddr,
  	output	[63:0]							tx_cpld_data,
	output    [2:0]                         tx_cpld_tc,             // Memory Read TC
	output    [2:0]                         tx_cpld_attr,           // Memory Read Attribute
	output    [1:0]                         tx_cpld_at,             // Address Translation 
	output  [7:0]                           tx_cpld_be,
  	input									tx_cpld_req_ack,

	output									nvme_cc_en,
	output	[1:0]							nvme_cc_shn,

	input	[1:0]							nvme_csts_shst,
	input									nvme_csts_rdy,

	output									nvme_intms_ivms,
	output									nvme_intmc_ivmc,

    input									cq_irq_status,

	input	[8:0]							sq_rst_n,
	input	[8:0]							cq_rst_n,
	output	[C_PCIE_ADDR_WIDTH-1:2]			admin_sq_bs_addr,
	output	[C_PCIE_ADDR_WIDTH-1:2]			admin_cq_bs_addr,
	output	[7:0]							admin_sq_size,
	output	[7:0]							admin_cq_size,
	
	output	[7:0]							admin_sq_tail_ptr,
	output	[7:0]							io_sq1_tail_ptr,
	output	[7:0]							io_sq2_tail_ptr,
	output	[7:0]							io_sq3_tail_ptr,
	output	[7:0]							io_sq4_tail_ptr,
	output	[7:0]							io_sq5_tail_ptr,
	output	[7:0]							io_sq6_tail_ptr,
	output	[7:0]							io_sq7_tail_ptr,
	output	[7:0]							io_sq8_tail_ptr,

	output	[7:0]							admin_cq_head_ptr,
	output	[7:0]							io_cq1_head_ptr,
	output	[7:0]							io_cq2_head_ptr,
	output	[7:0]							io_cq3_head_ptr,
	output	[7:0]							io_cq4_head_ptr,
	output	[7:0]							io_cq5_head_ptr,
	output	[7:0]							io_cq6_head_ptr,
    output	[7:0]							io_cq7_head_ptr,
	output	[7:0]							io_cq8_head_ptr,
	output	[8:0]							cq_head_update

);

localparam	S_IDLE							= 7'b0000001;
localparam	S_PCIE_RD_HEAD					= 7'b0000010;
localparam	S_PCIE_ADDR						= 7'b0000100;
localparam	S_PCIE_MWR						= 7'b0001000;
localparam	S_PCIE_MRD						= 7'b0010000;
localparam	S_PCIE_CPLD_REQ					= 7'b0100000;
localparam	S_PCIE_CPLD_ACK					= 7'b1000000;


reg		[6:0]								cur_state;
reg		[6:0]								next_state;

reg											r_intms_ivms;
reg											r_intmc_ivmc;

reg											r_cq_irq_status;

reg		[23:20]								r_cc_iocqes;
reg		[19:16]								r_cc_iosqes;
reg		[15:14]								r_cc_shn;
reg		[13:11]								r_cc_asm;
reg		[10:7]								r_cc_mps;
reg		[6:4]								r_cc_ccs;
reg		[0:0]								r_cc_en;

reg		[23:16]								r_aqa_acqs;
reg		[7:0]								r_aqa_asqs;

reg		[C_PCIE_ADDR_WIDTH-1:2]				r_asq_asqb;
reg		[C_PCIE_ADDR_WIDTH-1:2]				r_acq_acqb;

reg		[7:0]								r_reg_sq0tdbl;
reg		[7:0]								r_reg_sq1tdbl;
reg		[7:0]								r_reg_sq2tdbl;
reg		[7:0]								r_reg_sq3tdbl;
reg		[7:0]								r_reg_sq4tdbl;
reg		[7:0]								r_reg_sq5tdbl;
reg		[7:0]								r_reg_sq6tdbl;
reg		[7:0]								r_reg_sq7tdbl;
reg		[7:0]								r_reg_sq8tdbl;

reg		[7:0]								r_reg_cq0hdbl;
reg		[7:0]								r_reg_cq1hdbl;
reg		[7:0]								r_reg_cq2hdbl;
reg		[7:0]								r_reg_cq3hdbl;
reg		[7:0]								r_reg_cq4hdbl;
reg		[7:0]								r_reg_cq5hdbl;
reg		[7:0]								r_reg_cq6hdbl;
reg		[7:0]								r_reg_cq7hdbl;
reg		[7:0]								r_reg_cq8hdbl;
reg		[8:0]								r_cq_head_update;

wire	[31:0]								w_pcie_head0;
wire	[31:0]								w_pcie_head1;
wire	[31:0]								w_pcie_head2;
wire	[31:0]								w_pcie_head3;
    
    reg		[31:0]								r_pcie_head0;
    
    wire	[3:0]								w_mreq_head_fmt;
    wire	[10:0]								w_mreq_head_len;
    wire	[7:0]								w_mreq_head_req_bus_num;
    wire	[4:0]								w_mreq_head_req_dev_num;
    wire	[2:0]								w_mreq_head_req_func_num;
    wire	[15:0]								w_mreq_head_req_id;
    wire	[7:0]								w_mreq_head_tag;
	wire    [2:0]                               w_mreq_head_tc;             // Memory Read TC
	wire    [2:0]                               w_mreq_head_attr;           // Memory Read Attribute
	wire    [1:0]                               w_mreq_head_at;             // Address Translation 
    
    wire										w_mwr;
    
    reg		[3:0]								r_mreq_head_fmt;
    reg		[10:0]								r_mreq_head_len;
    reg		[15:0]								r_mreq_head_req_id;
    reg		[7:0]								r_mreq_head_tag;
	reg     [2:0]                               r_mreq_head_tc;             // Memory Read TC
	reg     [2:0]                               r_mreq_head_attr;           // Memory Read Attribute
	reg     [1:0]                               r_mreq_head_at;             // Address Translation 
    reg		[12:0]								r_mreq_addr;
    reg		[63:0]								r_mreq_data;
    
    reg											r_lbytes_en;
    reg											r_hbytes_en;
    
    reg											r_wr_reg;
    reg											r_wr_doorbell;
    reg											r_tx_cpld_req;
    reg		[63:0]								r_rd_data;
    reg		[63:0]								r_rd_reg;
    reg		[63:0]								r_rd_doorbell;
    
    reg											r_mreq_fifo_rd_en;
    
    wire	[8:0]								w_sq_rst_n;
    wire	[8:0]								w_cq_rst_n;

	reg		[C_PCIE_DATA_WIDTH-1:0]				r_mreq_fifo_rd_data;

//pcie mrd or mwr, memory rd/wr request
assign w_pcie_head0 = mreq_fifo_rd_data[31:0];
assign w_pcie_head1 = mreq_fifo_rd_data[63:32];
assign w_pcie_head2 = mreq_fifo_rd_data[95:64];
assign w_pcie_head3 = mreq_fifo_rd_data[127:96];

assign w_mreq_head_fmt = w_pcie_head2[14:11];
assign w_mreq_head_len = w_pcie_head2[10:0];
assign w_mreq_head_req_bus_num = w_pcie_head2[31:24];
assign w_mreq_head_req_dev_num = w_pcie_head2[23:19];
assign w_mreq_head_req_func_num = w_pcie_head2[18:16];
assign w_mreq_head_req_id = {w_mreq_head_req_bus_num, w_mreq_head_req_dev_num, w_mreq_head_req_func_num};
assign w_mreq_head_tag = w_pcie_head3[7:0];
assign w_mreq_head_tc = w_pcie_head3[27:25];             // Memory Read TC
assign w_mreq_head_attr = w_pcie_head3[30:28];           // Memory Read Attribute
assign w_mreq_head_at = w_pcie_head0[1:0];               // Address Translation 

assign w_mwr = (r_mreq_head_fmt[3:0] == 4'b0001);

assign tx_cpld_req = r_tx_cpld_req;
assign tx_cpld_tag = r_mreq_head_tag;
assign tx_cpld_req_id = r_mreq_head_req_id;
assign tx_cpld_len = {9'b0, r_mreq_head_len[1:0]};
assign tx_cpld_laddr = r_mreq_addr[6:0];
assign tx_cpld_data = (r_mreq_addr[2] == 1) ? {32'b0, r_rd_data[63:32]} : r_rd_data;
assign tx_cpld_tc = r_mreq_head_tc;             // Memory Read TC
assign tx_cpld_attr = r_mreq_head_attr;           // Memory Read Attribute
assign tx_cpld_at = r_mreq_head_at;             // Address Translation 
assign tx_cpld_be = req_be;

assign mreq_fifo_rd_en = r_mreq_fifo_rd_en;

assign admin_sq_bs_addr = r_asq_asqb;
assign admin_cq_bs_addr = r_acq_acqb;

assign nvme_cc_en = r_cc_en;
assign nvme_cc_shn = r_cc_shn;

assign nvme_intms_ivms = r_intms_ivms;
assign nvme_intmc_ivmc = r_intmc_ivmc;

assign admin_sq_size = r_aqa_asqs;
assign admin_cq_size = r_aqa_acqs;

assign admin_sq_tail_ptr = r_reg_sq0tdbl;
assign io_sq1_tail_ptr = r_reg_sq1tdbl;
assign io_sq2_tail_ptr = r_reg_sq2tdbl;
assign io_sq3_tail_ptr = r_reg_sq3tdbl;
assign io_sq4_tail_ptr = r_reg_sq4tdbl;
assign io_sq5_tail_ptr = r_reg_sq5tdbl;
assign io_sq6_tail_ptr = r_reg_sq6tdbl;
assign io_sq7_tail_ptr = r_reg_sq7tdbl;
assign io_sq8_tail_ptr = r_reg_sq8tdbl;

assign admin_cq_head_ptr = r_reg_cq0hdbl;
assign io_cq1_head_ptr = r_reg_cq1hdbl;
assign io_cq2_head_ptr = r_reg_cq2hdbl;
assign io_cq3_head_ptr = r_reg_cq3hdbl;
assign io_cq4_head_ptr = r_reg_cq4hdbl;
assign io_cq5_head_ptr = r_reg_cq5hdbl;
assign io_cq6_head_ptr = r_reg_cq6hdbl;
assign io_cq7_head_ptr = r_reg_cq7hdbl;
assign io_cq8_head_ptr = r_reg_cq8hdbl;
assign cq_head_update = r_cq_head_update;

always @ (posedge pcie_user_clk)
begin
	r_cq_irq_status <= cq_irq_status;
end

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
			if(mreq_fifo_empty_n == 1)
				next_state <= S_PCIE_RD_HEAD;
			else
				next_state <= S_IDLE;
		end
		S_PCIE_RD_HEAD: begin
			next_state <= S_PCIE_ADDR;
		end
		S_PCIE_ADDR: begin
			if(w_mwr == 1)
				next_state <= S_PCIE_MWR;
			else
				next_state <= S_PCIE_MRD;
		end
		S_PCIE_MWR: begin
			next_state <= S_IDLE;
		end
		S_PCIE_MRD: begin
			next_state <= S_PCIE_CPLD_REQ;
		end
		S_PCIE_CPLD_REQ: begin
			next_state <= S_PCIE_CPLD_ACK;
		end
		S_PCIE_CPLD_ACK: begin
			if(tx_cpld_req_ack == 1)
				next_state <= S_IDLE;
			else
				next_state <= S_PCIE_CPLD_ACK;
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

		end
		S_PCIE_RD_HEAD: begin
			r_mreq_head_fmt <= w_mreq_head_fmt;
			r_mreq_head_len <= w_mreq_head_len;
			r_mreq_head_req_id <= w_mreq_head_req_id;
			r_mreq_head_tag <= w_mreq_head_tag;
			r_mreq_head_tc <= w_mreq_head_tc;
			r_mreq_head_attr <= w_mreq_head_attr;
			r_mreq_head_at <= w_mreq_head_at;
			r_pcie_head0 <= w_pcie_head0;
			r_mreq_fifo_rd_data <= mreq_fifo_rd_data;
		end
		S_PCIE_ADDR: begin
			r_mreq_addr[12:2] <= r_pcie_head0[12:2];
			r_lbytes_en <= ~r_pcie_head0[2] & (r_pcie_head0[11:7] == 0);;
			r_hbytes_en <= (r_pcie_head0[2] | r_mreq_head_len[1]) & (r_pcie_head0[11:7] == 0);
			r_mreq_data[63:0] <= r_mreq_fifo_rd_data[191:128];
		end
		S_PCIE_MWR: begin

		end
		S_PCIE_MRD: begin
			if(r_lbytes_en | r_hbytes_en) begin
				if(r_mreq_addr[12] == 1) begin
					r_rd_data[63:0]  <= r_rd_doorbell[63:0];
				end
				else begin
					r_rd_data[63:0]  <= r_rd_reg[63:0];
				end
			end
			else
				r_rd_data <= 64'b0;
		end
		S_PCIE_CPLD_REQ: begin

		end
		S_PCIE_CPLD_ACK: begin

		end
		default: begin

		end
	endcase
end

always @ (*)
begin
	case(cur_state)
		S_IDLE: begin
			r_mreq_fifo_rd_en <= 0;
			r_wr_reg <= 0;
			r_wr_doorbell <= 0;
			r_tx_cpld_req <= 0;
		end
		S_PCIE_RD_HEAD: begin
			r_mreq_fifo_rd_en <= 1;
			r_wr_reg <= 0;
			r_wr_doorbell <= 0;
			r_tx_cpld_req <= 0;
		end
		S_PCIE_ADDR: begin
			r_mreq_fifo_rd_en <= 0;
			r_wr_reg <= 0;
			r_wr_doorbell <= 0;
			r_tx_cpld_req <= 0;
		end
		S_PCIE_MWR: begin
			r_mreq_fifo_rd_en <= 0;
			r_wr_reg <= ~r_mreq_addr[12];
			r_wr_doorbell <= r_mreq_addr[12];
			r_tx_cpld_req <= 0;
		end
		S_PCIE_MRD: begin
			r_mreq_fifo_rd_en <= 0;
			r_wr_reg <= 0;
			r_wr_doorbell <= 0;
			r_tx_cpld_req <= 0;
		end
		S_PCIE_CPLD_REQ: begin
			r_mreq_fifo_rd_en <= 0;
			r_wr_reg <= 0;
			r_wr_doorbell <= 0;
			r_tx_cpld_req <= 1;
		end
		S_PCIE_CPLD_ACK: begin
			r_mreq_fifo_rd_en <= 0;
			r_wr_reg <= 0;
			r_wr_doorbell <= 0;
			r_tx_cpld_req <= 0;
		end
		default: begin
			r_mreq_fifo_rd_en <= 0;
			r_wr_reg <= 0;
			r_wr_doorbell <= 0;
			r_tx_cpld_req <= 0;
		end
	endcase
end

always @ (posedge pcie_user_clk or negedge pcie_user_rst_n)
begin
	if(pcie_user_rst_n == 0) begin
		r_intms_ivms <= 0;
		r_intmc_ivmc <= 0;
		{r_cc_iocqes, r_cc_iosqes, r_cc_shn, r_cc_asm, r_cc_mps, r_cc_ccs, r_cc_en} <= 0;
		{r_aqa_acqs, r_aqa_asqs} <= 0;
		r_asq_asqb <= 0;
		r_acq_acqb <= 0;
	end
	else begin
		if(r_wr_reg == 1) begin
			if(r_lbytes_en == 1) begin
				case(r_mreq_addr[6:3]) // synthesis parallel_case
					4'h5: r_asq_asqb[31:2] <= r_mreq_data[31:2];
					4'h6: r_acq_acqb[31:2] <= r_mreq_data[31:2];
				endcase

				if(r_mreq_addr[6:3] == 4'h2)
					r_intmc_ivmc <= r_mreq_data[0];
				else
					r_intmc_ivmc <= 0;
			end

			if(r_hbytes_en == 1) begin
				case(r_mreq_addr[6:3]) // synthesis parallel_case
					4'h2: {r_cc_iocqes, r_cc_iosqes, r_cc_shn, r_cc_asm, r_cc_mps, r_cc_ccs, r_cc_en}
							 <= {r_mreq_data[23:20], r_mreq_data[19:16], r_mreq_data[15:14], r_mreq_data[13:11], r_mreq_data[10:7], r_mreq_data[6:4],  r_mreq_data[0]};
					4'h4: {r_aqa_acqs, r_aqa_asqs} <= {r_mreq_data[23:16], r_mreq_data[7:0]};
					4'h5: r_asq_asqb[C_PCIE_ADDR_WIDTH-1:32] <= r_mreq_data[C_PCIE_ADDR_WIDTH-1-32:0];
					4'h6: r_acq_acqb[C_PCIE_ADDR_WIDTH-1:32] <= r_mreq_data[C_PCIE_ADDR_WIDTH-1-32:0];
				endcase

				if(r_mreq_addr[6:3] == 4'h1)
					r_intms_ivms <= r_mreq_data[0];
				else
					r_intms_ivms <= 0;
			end
		end
		else begin
			r_intms_ivms <= 0;
			r_intmc_ivmc <= 0;
		end
	end
end

assign w_sq_rst_n[0] = pcie_user_rst_n & sq_rst_n[0];
assign w_sq_rst_n[1] = pcie_user_rst_n & sq_rst_n[1];
assign w_sq_rst_n[2] = pcie_user_rst_n & sq_rst_n[2];
assign w_sq_rst_n[3] = pcie_user_rst_n & sq_rst_n[3];
assign w_sq_rst_n[4] = pcie_user_rst_n & sq_rst_n[4];
assign w_sq_rst_n[5] = pcie_user_rst_n & sq_rst_n[5];
assign w_sq_rst_n[6] = pcie_user_rst_n & sq_rst_n[6];
assign w_sq_rst_n[7] = pcie_user_rst_n & sq_rst_n[7];
assign w_sq_rst_n[8] = pcie_user_rst_n & sq_rst_n[8];

always @ (posedge pcie_user_clk or negedge w_sq_rst_n[0])
begin
	if(w_sq_rst_n[0] == 0) begin
		r_reg_sq0tdbl <= 0;
	end
	else begin
		if((r_wr_doorbell & r_lbytes_en & (r_mreq_addr[6:3] == 4'h0)) == 1)
			r_reg_sq0tdbl <= r_mreq_data[7:0];
	end
end

always @ (posedge pcie_user_clk or negedge w_sq_rst_n[1])
begin
	if(w_sq_rst_n[1] == 0) begin
		r_reg_sq1tdbl <= 0;
	end
	else begin
		if((r_wr_doorbell & r_lbytes_en & (r_mreq_addr[6:3] == 4'h1)) == 1)
			r_reg_sq1tdbl <= r_mreq_data[7:0];
	end
end

always @ (posedge pcie_user_clk or negedge w_sq_rst_n[2])
begin
	if(w_sq_rst_n[2] == 0) begin
		r_reg_sq2tdbl <= 0;
	end
	else begin
		if((r_wr_doorbell & r_lbytes_en & (r_mreq_addr[6:3] == 4'h2)) == 1)
			r_reg_sq2tdbl <= r_mreq_data[7:0];
	end
end

always @ (posedge pcie_user_clk or negedge w_sq_rst_n[3])
begin
	if(w_sq_rst_n[3] == 0) begin
		r_reg_sq3tdbl <= 0;
	end
	else begin
		if((r_wr_doorbell & r_lbytes_en & (r_mreq_addr[6:3] == 4'h3)) == 1)
			r_reg_sq3tdbl <= r_mreq_data[7:0];
	end
end

always @ (posedge pcie_user_clk or negedge w_sq_rst_n[4])
begin
	if(w_sq_rst_n[4] == 0) begin
		r_reg_sq4tdbl <= 0;
	end
	else begin
		if((r_wr_doorbell & r_lbytes_en & (r_mreq_addr[6:3] == 4'h4)) == 1)
			r_reg_sq4tdbl <= r_mreq_data[7:0];
	end
end

always @ (posedge pcie_user_clk or negedge w_sq_rst_n[5])
begin
	if(w_sq_rst_n[5] == 0) begin
		r_reg_sq5tdbl <= 0;
	end
	else begin
		if((r_wr_doorbell & r_lbytes_en & (r_mreq_addr[6:3] == 4'h5)) == 1)
			r_reg_sq5tdbl <= r_mreq_data[7:0];
	end
end

always @ (posedge pcie_user_clk or negedge w_sq_rst_n[6])
begin
	if(w_sq_rst_n[6] == 0) begin
		r_reg_sq6tdbl <= 0;
	end
	else begin
		if((r_wr_doorbell & r_lbytes_en & (r_mreq_addr[6:3] == 4'h6)) == 1)
			r_reg_sq6tdbl <= r_mreq_data[7:0];
	end
end

always @ (posedge pcie_user_clk or negedge w_sq_rst_n[7])
begin
	if(w_sq_rst_n[7] == 0) begin
		r_reg_sq7tdbl <= 0;
	end
	else begin
		if((r_wr_doorbell & r_lbytes_en & (r_mreq_addr[6:3] == 4'h7)) == 1)
			r_reg_sq7tdbl <= r_mreq_data[7:0];
	end
end

always @ (posedge pcie_user_clk or negedge w_sq_rst_n[8])
begin
	if(w_sq_rst_n[8] == 0) begin
		r_reg_sq8tdbl <= 0;
	end
	else begin
		if((r_wr_doorbell & r_lbytes_en & (r_mreq_addr[6:3] == 4'h8)) == 1)
			r_reg_sq8tdbl <= r_mreq_data[7:0];
	end
end

assign w_cq_rst_n[0] = pcie_user_rst_n & cq_rst_n[0];
assign w_cq_rst_n[1] = pcie_user_rst_n & cq_rst_n[1];
assign w_cq_rst_n[2] = pcie_user_rst_n & cq_rst_n[2];
assign w_cq_rst_n[3] = pcie_user_rst_n & cq_rst_n[3];
assign w_cq_rst_n[4] = pcie_user_rst_n & cq_rst_n[4];
assign w_cq_rst_n[5] = pcie_user_rst_n & cq_rst_n[5];
assign w_cq_rst_n[6] = pcie_user_rst_n & cq_rst_n[6];
assign w_cq_rst_n[7] = pcie_user_rst_n & cq_rst_n[7];
assign w_cq_rst_n[8] = pcie_user_rst_n & cq_rst_n[8];

always @ (posedge pcie_user_clk or negedge w_cq_rst_n[0])
begin
	if(w_cq_rst_n[0] == 0) begin
		r_reg_cq0hdbl <= 0;
		r_cq_head_update[0] <= 0;
	end
	else begin
		if((r_wr_doorbell & r_hbytes_en & (r_mreq_addr[6:3] == 4'h0)) == 1) begin
			r_reg_cq0hdbl <= r_mreq_data[7:0];
			r_cq_head_update[0] <= 1;
		end
		else
			r_cq_head_update[0] <= 0;
	end
end

always @ (posedge pcie_user_clk or negedge w_cq_rst_n[1])
begin
	if(w_cq_rst_n[1] == 0) begin
		r_reg_cq1hdbl <= 0;
		r_cq_head_update[1] <= 0;
	end
	else begin
		if((r_wr_doorbell & r_hbytes_en & (r_mreq_addr[6:3] == 4'h1)) == 1) begin
			r_reg_cq1hdbl <= r_mreq_data[7:0];
			r_cq_head_update[1] <= 1;
		end
		else
			r_cq_head_update[1] <= 0;
	end
end

always @ (posedge pcie_user_clk or negedge w_cq_rst_n[2])
begin
	if(w_cq_rst_n[2] == 0) begin
		r_reg_cq2hdbl <= 0;
		r_cq_head_update[2] <= 0;
	end
	else begin
		if((r_wr_doorbell & r_hbytes_en & (r_mreq_addr[6:3] == 4'h2)) == 1) begin
			r_reg_cq2hdbl <= r_mreq_data[7:0];
			r_cq_head_update[2] <= 1;
		end
		else
			r_cq_head_update[2] <= 0;
	end
end

always @ (posedge pcie_user_clk or negedge w_cq_rst_n[3])
begin
	if(w_cq_rst_n[3] == 0) begin
		r_reg_cq3hdbl <= 0;
		r_cq_head_update[3] <= 0;
	end
	else begin
		if((r_wr_doorbell & r_hbytes_en & (r_mreq_addr[6:3] == 4'h3)) == 1) begin
			r_reg_cq3hdbl <= r_mreq_data[7:0];
			r_cq_head_update[3] <= 1;
		end
		else
			r_cq_head_update[3] <= 0;
	end
end

always @ (posedge pcie_user_clk or negedge w_cq_rst_n[4])
begin
	if(w_cq_rst_n[4] == 0) begin
		r_reg_cq4hdbl <= 0;
		r_cq_head_update[4] <= 0;
	end
	else begin
		if((r_wr_doorbell & r_hbytes_en & (r_mreq_addr[6:3] == 4'h4)) == 1) begin
			r_reg_cq4hdbl <= r_mreq_data[7:0];
			r_cq_head_update[4] <= 1;
		end
		else
			r_cq_head_update[4] <= 0;
	end
end

always @ (posedge pcie_user_clk or negedge w_cq_rst_n[5])
begin
	if(w_cq_rst_n[5] == 0) begin
		r_reg_cq5hdbl <= 0;
		r_cq_head_update[5] <= 0;
	end
	else begin
		if((r_wr_doorbell & r_hbytes_en & (r_mreq_addr[6:3] == 4'h5)) == 1) begin
			r_reg_cq5hdbl <= r_mreq_data[7:0];
			r_cq_head_update[5] <= 1;
		end
		else
			r_cq_head_update[5] <= 0;
	end
end

always @ (posedge pcie_user_clk or negedge w_cq_rst_n[6])
begin
	if(w_cq_rst_n[6] == 0) begin
		r_reg_cq6hdbl <= 0;
		r_cq_head_update[6] <= 0;
	end
	else begin
		if((r_wr_doorbell & r_hbytes_en & (r_mreq_addr[6:3] == 4'h6)) == 1) begin
			r_reg_cq6hdbl <= r_mreq_data[7:0];
			r_cq_head_update[6] <= 1;
		end
		else
			r_cq_head_update[6] <= 0;
	end
end

always @ (posedge pcie_user_clk or negedge w_cq_rst_n[7])
begin
	if(w_cq_rst_n[7] == 0) begin
		r_reg_cq7hdbl <= 0;
		r_cq_head_update[7] <= 0;
	end
	else begin
		if((r_wr_doorbell & r_hbytes_en & (r_mreq_addr[6:3] == 4'h7)) == 1) begin
			r_reg_cq7hdbl <= r_mreq_data[7:0];
			r_cq_head_update[7] <= 1;
		end
		else
			r_cq_head_update[7] <= 0;
	end
end

always @ (posedge pcie_user_clk or negedge w_cq_rst_n[8])
begin
	if(w_cq_rst_n[8] == 0) begin
		r_reg_cq8hdbl <= 0;
		r_cq_head_update[8] <= 0;
	end
	else begin
		if((r_wr_doorbell & r_hbytes_en & (r_mreq_addr[6:3] == 4'h8)) == 1) begin
			r_reg_cq8hdbl <= r_mreq_data[7:0];
			r_cq_head_update[8] <= 1;
		end
		else
			r_cq_head_update[8] <= 0;
	end
end


always @ (*)
begin
	case(r_mreq_addr[6:3]) // synthesis parallel_case
		4'h0: r_rd_reg <= {8'h0, `D_CAP_MPSMAX, `D_CAP_MPSMIN, 3'h0, `D_CAP_CSS, `D_CAP_NSSRS, `D_CAP_DSTRD, `D_CAP_TO, 5'h0, `D_CAP_AMS, `D_CAP_CQR, `D_CAP_MQES};
		4'h1: r_rd_reg <= {31'b0, r_cq_irq_status, `D_VS_MJR, `D_VS_MNR, 8'b0};
		4'h2: r_rd_reg <= {8'b0, r_cc_iocqes, r_cc_iosqes, r_cc_shn, r_cc_asm, r_cc_mps, r_cc_ccs, 3'b0, r_cc_en, 31'b0, r_cq_irq_status};
		4'h3: r_rd_reg <= {28'b0, nvme_csts_shst, 1'b0, nvme_csts_rdy, 32'b0};
		4'h4: r_rd_reg <= {8'b0, r_aqa_acqs, 8'b0, r_aqa_asqs, 32'b0};
		4'h5: r_rd_reg <= {16'b0, r_asq_asqb, 2'b0}; //modified
		4'h6: r_rd_reg <= {16'b0, r_acq_acqb, 2'b0}; //modified	
		default: r_rd_reg <= 64'b0;
	endcase
end

always @ (*)
begin
	case(r_mreq_addr[6:3]) // synthesis parallel_case
		4'h0: r_rd_doorbell <= {24'b0, r_reg_cq0hdbl, 24'b0, r_reg_sq0tdbl};
		4'h1: r_rd_doorbell <= {24'b0, r_reg_cq1hdbl, 24'b0, r_reg_sq1tdbl};
		4'h2: r_rd_doorbell <= {24'b0, r_reg_cq2hdbl, 24'b0, r_reg_sq2tdbl};
		4'h3: r_rd_doorbell <= {24'b0, r_reg_cq3hdbl, 24'b0, r_reg_sq3tdbl};
		4'h4: r_rd_doorbell <= {24'b0, r_reg_cq4hdbl, 24'b0, r_reg_sq4tdbl};
		4'h5: r_rd_doorbell <= {24'b0, r_reg_cq5hdbl, 24'b0, r_reg_sq5tdbl};
		4'h6: r_rd_doorbell <= {24'b0, r_reg_cq6hdbl, 24'b0, r_reg_sq6tdbl};
		4'h7: r_rd_doorbell <= {24'b0, r_reg_cq7hdbl, 24'b0, r_reg_sq7tdbl};
		4'h8: r_rd_doorbell <= {24'b0, r_reg_cq8hdbl, 24'b0, r_reg_sq8tdbl};
		default: r_rd_doorbell <= 64'b0;
	endcase
end

endmodule
