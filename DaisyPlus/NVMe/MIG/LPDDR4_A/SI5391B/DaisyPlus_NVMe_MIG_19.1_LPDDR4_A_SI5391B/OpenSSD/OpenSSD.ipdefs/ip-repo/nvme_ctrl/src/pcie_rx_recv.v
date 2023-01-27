
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


  module pcie_rx_recv # (
	parameter	C_PCIE_DATA_WIDTH			= 512,

	parameter KEEP_WIDTH                                 = C_PCIE_DATA_WIDTH / 32, 
	parameter TCQ                                        = 1,

	parameter [1:0]  AXISTEN_IF_WIDTH               = (C_PCIE_DATA_WIDTH == 512) ? 2'b11:(C_PCIE_DATA_WIDTH == 256) ? 2'b10 : (C_PCIE_DATA_WIDTH == 128) ? 2'b01 : 2'b00, 

	parameter              AXI4_CQ_TUSER_WIDTH = 183,
	parameter              AXI4_CC_TUSER_WIDTH = 81,
	parameter              AXI4_RQ_TUSER_WIDTH = 137,
	parameter              AXI4_RC_TUSER_WIDTH = 161
)
(
	input									pcie_user_clk,
	input									pcie_user_rst_n,

	// Completer Request Interface
	input        [C_PCIE_DATA_WIDTH-1:0]    m_axis_cq_tdata,
	input                              m_axis_cq_tlast,
	input                              m_axis_cq_tvalid,
	input [AXI4_CQ_TUSER_WIDTH-1:0]    m_axis_cq_tuser,
	input          [KEEP_WIDTH-1:0]    m_axis_cq_tkeep,
	output wire                        m_axis_cq_tready,

	// Requester Completion Interface
	input         [C_PCIE_DATA_WIDTH-1:0]    m_axis_rc_tdata,
	input                               m_axis_rc_tlast,
	input                               m_axis_rc_tvalid,
	input           [KEEP_WIDTH-1:0]    m_axis_rc_tkeep,
	input  [AXI4_RC_TUSER_WIDTH-1:0]    m_axis_rc_tuser,
	output wire                         m_axis_rc_tready, 

	input                     [5:0]   pcie_cq_np_req_count,
	output  reg                       pcie_cq_np_req,

	//RX Message Interface
	input                            cfg_msg_received,
	input                    [4:0]   cfg_msg_received_type,
	input                    [7:0]   cfg_msg_data,

 	output									pcie_mreq_err,
 	output									pcie_cpld_err,
 	output									pcie_cpld_len_err,

 	output									mreq_fifo_wr_en,
 	output	[C_PCIE_DATA_WIDTH-1:0]			mreq_fifo_wr_data,

 	output  [7:0]                    req_be,

 	output	[7:0]							cpld_fifo_tag,
 	output	[C_PCIE_DATA_WIDTH-1:0]			cpld_fifo_wr_data,
 	output									cpld_fifo_wr_en,
 	output									cpld_fifo_tag_last
);

localparam	S_CQ_RX_IDLE_SOF					= 2'b01;
localparam	S_CQ_RX_DATA						= 2'b10;

     reg		[1:0]								cq_cur_state;
     reg		[1:0]								cq_next_state;
    
     wire									        w_cq_rx_is_sof;

     reg											r_pcie_mreq_err;
    
     reg											r_mem_req_en;

	reg		[C_PCIE_DATA_WIDTH-1:0]				r_m_axis_cq_rx_tdata; 
	reg                                         r_m_axis_cq_tready;

     reg										r_mreq_fifo_wr_en;
     reg		[C_PCIE_DATA_WIDTH-1:0]			r_mreq_fifo_wr_data;
    
(* KEEP = "TRUE", SHIFT_EXTRACT = "NO" *)      reg		[9:0]									r_mreq_tlp_count;

 	wire  [7:0]                    w_req_be;

 	reg  [7:0]                    r_req_be;

assign pcie_mreq_err = r_pcie_mreq_err;

assign mreq_fifo_wr_en = r_mreq_fifo_wr_en;
assign mreq_fifo_wr_data = r_mreq_fifo_wr_data;

assign w_cq_rx_is_sof = m_axis_cq_tuser[80];
assign w_req_be[7:0] = {m_axis_cq_tuser[11:8], m_axis_cq_tuser[3:0]};

assign req_be = r_req_be;

assign m_axis_cq_tready = r_m_axis_cq_tready;

always @ (posedge pcie_user_clk or negedge pcie_user_rst_n)
begin
	if(pcie_user_rst_n == 0)
		cq_cur_state <= S_CQ_RX_IDLE_SOF;
	else
		cq_cur_state <= cq_next_state;
end

always @ (posedge pcie_user_clk or negedge pcie_user_rst_n)
begin
	if(pcie_user_rst_n == 0)
		r_mreq_tlp_count <= 10'b0;
	else begin
	   if(r_mreq_fifo_wr_en == 1)
		    r_mreq_tlp_count <= r_mreq_tlp_count + 1;
	   else
	        r_mreq_tlp_count <= r_mreq_tlp_count;
	end
end

always @ (*)
begin
	case(cq_cur_state)
		S_CQ_RX_IDLE_SOF: begin
			pcie_cq_np_req   <= 1'b1;
			if(m_axis_cq_tvalid == 1 && w_cq_rx_is_sof == 1) begin
				if(m_axis_cq_tlast == 1)
					cq_next_state <= S_CQ_RX_IDLE_SOF;
				else
					cq_next_state <= S_CQ_RX_DATA;
			end
			else
				cq_next_state <= S_CQ_RX_IDLE_SOF;
		end
		S_CQ_RX_DATA: begin
			if(m_axis_cq_tvalid == 1 && m_axis_cq_tlast == 1)
				cq_next_state <= S_CQ_RX_IDLE_SOF;
			else
				cq_next_state <= S_CQ_RX_DATA;				
		end
		default: begin
			cq_next_state <= S_CQ_RX_IDLE_SOF;
		end
	endcase
end

always @ (posedge pcie_user_clk)
begin
	if(m_axis_cq_tvalid == 1 && w_cq_rx_is_sof == 1)
		r_req_be <= w_req_be;
end


always @ (posedge pcie_user_clk or negedge pcie_user_rst_n)
begin
	if(pcie_user_rst_n == 0)
		r_pcie_mreq_err <= 0;
end


always @ (*)
begin
	case(cq_cur_state)
		S_CQ_RX_IDLE_SOF: begin
			r_m_axis_cq_tready <= 1'b1;
			r_mem_req_en <= m_axis_cq_tvalid & w_cq_rx_is_sof;
		end
		S_CQ_RX_DATA: begin
			r_m_axis_cq_tready <= 1'b1;
			r_mem_req_en <= m_axis_cq_tvalid;
		end
		default: begin
			r_m_axis_cq_tready   <= 1'b0;
			r_mem_req_en <= 0;
		end
	endcase
end

always @ (posedge pcie_user_clk)
begin
	r_mreq_fifo_wr_en <= r_mem_req_en;

	if(m_axis_cq_tvalid == 1) begin 	
		r_m_axis_cq_rx_tdata <= m_axis_cq_tdata;
	end
end

always @ (*) 
begin 
	r_mreq_fifo_wr_data <= r_m_axis_cq_rx_tdata;
end

localparam	S_RC_RX_IDLE_SOF					= 3'b001;
localparam	S_RC_RX_HEAD						= 3'b010;
localparam	S_RC_RX_DATA						= 3'b100;

     reg		[2:0]								rc_cur_state;
     reg		[2:0]								rc_next_state;
    
     wire									        w_rc_rx_is_sof;

(* KEEP = "TRUE", SHIFT_EXTRACT = "NO" *)     reg		[31:0]								r_rc_pcie_head0;
(* KEEP = "TRUE", SHIFT_EXTRACT = "NO" *)     reg		[31:0]								r_rc_pcie_head1;
(* KEEP = "TRUE", SHIFT_EXTRACT = "NO" *)     reg		[31:0]								r_rc_pcie_head2;
(* KEEP = "TRUE", SHIFT_EXTRACT = "NO" *)     reg		[31:0]								r_rc_pcie_head3;

     wire	[10:0]								w_cpld_head_len;
     wire	[2:0]								w_cpld_head_cs;
     wire	[12:0]								w_cpld_head_bc;
     wire	[7:0]								w_cpld_head_tag;
     wire										w_cpld_head_rc;

     reg											r_pcie_cpld_err;
     reg											r_pcie_cpld_len_err;

     reg		[7:0]								r_cpld_tag;
     reg											r_cpld_rc;

     reg											r_cpld_data_en;
     reg											r_cpld_tag_last;

     reg		[C_PCIE_DATA_WIDTH-1:0]								r_m_axis_rc_rx_tdata;
     reg		[C_PCIE_DATA_WIDTH-1:0]								r_m_axis_rc_rx_tdata_d1;
	 reg                                            r_m_axis_rc_tready;

     reg											r_cpld_fifo_tag_en;
     reg											r_cpld_fifo_wr_en;
     reg		[C_PCIE_DATA_WIDTH-1:0]								r_cpld_fifo_wr_data;
     reg											r_cpld_fifo_tag_last;
	 reg     	[10:0]								r_cpld_head_len;

(* KEEP = "TRUE", SHIFT_EXTRACT = "NO" *)      reg        [9:0]                                    r_cpld_tlp_count;

assign pcie_cpld_err = r_pcie_cpld_err;
assign pcie_cpld_len_err = r_pcie_cpld_len_err;

assign cpld_fifo_tag = r_cpld_tag;
assign cpld_fifo_wr_en = r_cpld_fifo_wr_en;

assign cpld_fifo_wr_data = r_cpld_fifo_wr_data;
assign cpld_fifo_tag_last = r_cpld_fifo_tag_last;

assign w_rc_rx_is_sof = m_axis_rc_tuser[64];

always @ (*)
begin
	r_rc_pcie_head0 <= m_axis_rc_tdata[31:0];
	r_rc_pcie_head1 <= m_axis_rc_tdata[63:32];
	r_rc_pcie_head2 <= m_axis_rc_tdata[95:64];
	r_rc_pcie_head3 <= m_axis_rc_tdata[127:96];
end

//pcie cpl or cpld
assign w_cpld_head_bc  = r_rc_pcie_head0[28:16];
assign w_cpld_head_rc  = r_rc_pcie_head0[30];
assign w_cpld_head_len = r_rc_pcie_head1[10:0];
assign w_cpld_head_cs  = r_rc_pcie_head1[13:11];
assign w_cpld_head_ep  = r_rc_pcie_head1[14];
assign w_cpld_head_tag = r_rc_pcie_head2[7:0];

assign m_axis_rc_tready = r_m_axis_rc_tready;

always @ (posedge pcie_user_clk or negedge pcie_user_rst_n)
begin
	if(pcie_user_rst_n == 0)
		rc_cur_state <= S_RC_RX_IDLE_SOF;
	else
		rc_cur_state <= rc_next_state;
end

always @ (posedge pcie_user_clk or negedge pcie_user_rst_n)
begin
	if(pcie_user_rst_n == 0)
		r_cpld_tlp_count <= 10'b0;
	else begin
	   if(r_cpld_fifo_wr_en == 1)
		    r_cpld_tlp_count <= r_cpld_tlp_count + 1;
	   else
	        r_cpld_tlp_count <= r_cpld_tlp_count;
	end
end

always @ (*)
begin
	case(rc_cur_state)
		S_RC_RX_IDLE_SOF: begin
			if(m_axis_rc_tvalid == 1 && w_rc_rx_is_sof == 1) begin
				if(m_axis_rc_tlast == 1)
					rc_next_state <= S_RC_RX_HEAD;
				else
					rc_next_state <= S_RC_RX_DATA;
			end
			else
				rc_next_state <= S_RC_RX_IDLE_SOF;
		end
		S_RC_RX_HEAD: begin
				rc_next_state <= S_RC_RX_IDLE_SOF;
		end
		S_RC_RX_DATA: begin
			if(m_axis_rc_tvalid == 1 && m_axis_rc_tlast == 1)
				rc_next_state <= S_RC_RX_IDLE_SOF;
			else
				rc_next_state <= S_RC_RX_DATA;
		end

		default: begin
			rc_next_state <= S_RC_RX_IDLE_SOF;
		end
	endcase
end

always @ (posedge pcie_user_clk or negedge pcie_user_rst_n)
begin
	if(pcie_user_rst_n == 0) begin
		r_pcie_cpld_err <= 0;
		r_pcie_cpld_len_err <= 0;
	end
	else begin

		if(m_axis_rc_tvalid == 1 && w_rc_rx_is_sof == 1) begin
			r_pcie_cpld_err <= (w_cpld_head_ep | (w_cpld_head_cs != 0));
		end
	end
end

always @ (posedge pcie_user_clk)
begin
	case(rc_cur_state)
		S_RC_RX_IDLE_SOF: begin
			r_cpld_tag <= w_cpld_head_tag;
			r_cpld_rc  <= w_cpld_head_rc;
			r_cpld_head_len <= w_cpld_head_len;
		end
		S_RC_RX_HEAD: begin

		end
		S_RC_RX_DATA: begin

		end
		default: begin

		end
	endcase
end

always @ (*)
begin
	case(rc_cur_state)
		S_RC_RX_IDLE_SOF: begin
			r_m_axis_rc_tready <= 1'b1;
			r_cpld_data_en <= 0;
			r_cpld_tag_last <= 0;
		end
		S_RC_RX_HEAD: begin
			r_m_axis_rc_tready <= 1'b0;
			r_cpld_data_en <= 1'b1;
			r_cpld_tag_last <= r_cpld_rc;
		end
		S_RC_RX_DATA: begin
			r_m_axis_rc_tready <= 1'b1;
			r_cpld_data_en <= m_axis_rc_tvalid;
			r_cpld_tag_last <= (r_cpld_rc & m_axis_rc_tvalid & m_axis_rc_tlast);
		end
		default: begin
			r_m_axis_rc_tready <= 1'b0;
			r_cpld_data_en <= 0;
			r_cpld_tag_last <= 0;
		end
	endcase
end

always @ (posedge pcie_user_clk)
begin
	r_cpld_fifo_wr_en    <= r_cpld_data_en;
	r_cpld_fifo_tag_last <= r_cpld_tag_last;

	if(m_axis_rc_tvalid == 1 && r_m_axis_rc_tready == 1) begin
		r_m_axis_rc_rx_tdata    <= m_axis_rc_tdata;
		r_m_axis_rc_rx_tdata_d1 <= r_m_axis_rc_rx_tdata;
	end
end

always @ (*)
begin
	if(r_cpld_head_len <= 13)
		r_cpld_fifo_wr_data <= {96'b0, r_m_axis_rc_rx_tdata[511:96]};
	else
		r_cpld_fifo_wr_data <= {r_m_axis_rc_rx_tdata[95:0], r_m_axis_rc_rx_tdata_d1[511:96]};
end
 
endmodule
