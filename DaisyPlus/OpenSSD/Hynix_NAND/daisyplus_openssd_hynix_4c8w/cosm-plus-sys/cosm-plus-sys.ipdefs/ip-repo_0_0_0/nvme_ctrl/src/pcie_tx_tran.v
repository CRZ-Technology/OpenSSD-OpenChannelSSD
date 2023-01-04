
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


     module pcie_tx_tran # (
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

	// AXI-S Completer Competion Interface
	output wire        [C_PCIE_DATA_WIDTH-1:0]   s_axis_cc_tdata,
	output wire          [KEEP_WIDTH-1:0]   s_axis_cc_tkeep,
	output wire                             s_axis_cc_tlast,
	output wire                             s_axis_cc_tvalid,
	output wire [AXI4_CC_TUSER_WIDTH-1:0]   s_axis_cc_tuser,
	input                                   s_axis_cc_tready,

	// AXI-S Requester Request Interface
	output wire        [C_PCIE_DATA_WIDTH-1:0]   s_axis_rq_tdata,
	output wire          [KEEP_WIDTH-1:0]   s_axis_rq_tkeep,
	output wire                             s_axis_rq_tlast,
	output wire                             s_axis_rq_tvalid,
	output wire [AXI4_RQ_TUSER_WIDTH-1:0]   s_axis_rq_tuser,
	input                                   s_axis_rq_tready, 

	// TX Message Interface
	input                            cfg_msg_transmit_done,
	output reg                      cfg_msg_transmit,
	output reg              [2:0]   cfg_msg_transmit_type,
	output reg             [31:0]   cfg_msg_transmit_data,

	//Tag availability and Flow control Information
	input                    [5:0]   pcie_rq_tag,
	input                            pcie_rq_tag_vld,
	input                    [1:0]   pcie_tfc_nph_av,
	input                    [1:0]   pcie_tfc_npd_av,
	input                            pcie_tfc_np_pl_empty,
	input                    [3:0]   pcie_rq_seq_num,
	input                            pcie_rq_seq_num_vld,

   	input									tx_arb_valid,
   	input	[5:0]							tx_arb_gnt,
   	input	[2:0]							tx_arb_type,
   	input	[12:2]							tx_pcie_len,
   	input	[127:0]							tx_pcie_head,
   	input	[31:0]							tx_cpld_udata,
   	output									tx_arb_rdy,

   	output									tx_mwr0_rd_en,
   	input	[C_PCIE_DATA_WIDTH-1:0]			tx_mwr0_rd_data,
   	output									tx_mwr0_data_last,

   	output									tx_mwr1_rd_en,
   	input	[C_PCIE_DATA_WIDTH-1:0]			tx_mwr1_rd_data,
   	output									tx_mwr1_data_last
);

localparam	S_TX_IDLE						= 10'b0000000001;
localparam	S_TX_CPLD_HEAD					= 10'b0000000010;
localparam	S_TX_MRD_HEAD					= 10'b0000000100;
localparam	S_TX_MWR_HEAD					= 10'b0000001000;
localparam	S_TX_MWR_HEAD_DATA				= 10'b0000010000;
localparam	S_TX_MWR_HEAD_DATA_WAIT			= 10'b0000100000;
localparam	S_TX_MWR_HEAD_DATA_LAST			= 10'b0001000000;
localparam	S_TX_MWR_DATA					= 10'b0010000000;
localparam	S_TX_MWR_WAIT					= 10'b0100000000;
localparam	S_TX_MWR_DATA_LAST				= 10'b1000000000;

       reg		[9:0]								cur_state;
       reg		[9:0]								next_state;
    
   reg		[C_PCIE_DATA_WIDTH-1:0]				r_s_axis_cc_tx_tdata;
   reg      [KEEP_WIDTH-1:0]		         	r_s_axis_cc_tx_tkeep;
   reg		[AXI4_CC_TUSER_WIDTH - 1:0]			r_s_axis_cc_tx_tuser;
   reg											r_s_axis_cc_tx_tlast;
   reg											r_s_axis_cc_tx_tvalid;

   reg      [C_PCIE_DATA_WIDTH-1:0]             r_s_axis_rq_tx_tdata;
   reg      [KEEP_WIDTH-1:0]                    r_s_axis_rq_tx_tkeep;
   reg      [AXI4_RQ_TUSER_WIDTH-1:0]           r_s_axis_rq_tx_tuser;
   reg                                          r_s_axis_rq_tx_tlast;
   reg                                          r_s_axis_rq_tx_tvalid;
    
       reg		[5:0]								r_tx_arb_gnt;
   reg		[12:2]								r_tx_pcie_len;
   reg		[12:2]								r_tx_pcie_data_cnt;
       reg		[127:0]				r_tx_pcie_head;
       reg		[31:0]								r_tx_cpld_udata;
       reg											r_tx_arb_rdy;
    
       reg		[C_PCIE_DATA_WIDTH-1:0]				r_tx_mwr_rd_data;
       reg		[C_PCIE_DATA_WIDTH-1:0]				r_tx_mwr_data;
      reg		[C_PCIE_DATA_WIDTH-1:0]				r_tx_mwr_data_d1;
      reg		[C_PCIE_DATA_WIDTH-1:0]				r_tx_mwr_data_d2;
    
       reg											r_tx_mwr0_rd_en;
       reg											r_tx_mwr0_data_last;
       reg											r_tx_mwr1_rd_en;
       reg											r_tx_mwr1_data_last;

(* KEEP = "TRUE", SHIFT_EXTRACT = "NO" *)   reg       [9:0]                               r_tlp_count =10'b0;

assign s_axis_cc_tdata  = r_s_axis_cc_tx_tdata;
assign s_axis_cc_tkeep  = r_s_axis_cc_tx_tkeep;
assign s_axis_cc_tuser  = r_s_axis_cc_tx_tuser;
assign s_axis_cc_tlast  = r_s_axis_cc_tx_tlast;
assign s_axis_cc_tvalid = r_s_axis_cc_tx_tvalid;

assign s_axis_rq_tdata  = r_s_axis_rq_tx_tdata;
assign s_axis_rq_tkeep  = r_s_axis_rq_tx_tkeep;
assign s_axis_rq_tuser  = r_s_axis_rq_tx_tuser;
assign s_axis_rq_tlast  = r_s_axis_rq_tx_tlast;
assign s_axis_rq_tvalid = r_s_axis_rq_tx_tvalid;

assign tx_arb_rdy = r_tx_arb_rdy;

assign tx_mwr0_rd_en = r_tx_mwr0_rd_en;
assign tx_mwr0_data_last = r_tx_mwr0_data_last;
assign tx_mwr1_rd_en = r_tx_mwr1_rd_en;
assign tx_mwr1_data_last = r_tx_mwr1_data_last;

always @ (posedge pcie_user_clk or negedge pcie_user_rst_n)
begin
	if(pcie_user_rst_n == 0)
		cur_state <= S_TX_IDLE;
	else
		cur_state <= next_state;
end

always @ (*)
begin
	case(cur_state)
		S_TX_IDLE: begin
	        cfg_msg_transmit        <= #TCQ 1'b0;
	        cfg_msg_transmit_type   <= #TCQ 3'b0;
	        cfg_msg_transmit_data   <= #TCQ 32'b0; 
			if(tx_arb_valid == 1) begin
				case(tx_arb_type) // synthesis parallel_case full_case
					3'b001: next_state <= S_TX_CPLD_HEAD;
					3'b010: next_state <= S_TX_MRD_HEAD;
					3'b100: next_state <= S_TX_MWR_HEAD;
				endcase
			end
			else
				next_state <= S_TX_IDLE;
		end
		S_TX_CPLD_HEAD: begin
			if(s_axis_cc_tready == 1) begin
				if(tx_arb_valid == 1) begin
					case(tx_arb_type) // synthesis parallel_case full_case
						3'b001: next_state <= S_TX_CPLD_HEAD;
						3'b010: next_state <= S_TX_MRD_HEAD;
						3'b100: next_state <= S_TX_MWR_HEAD;
					endcase
				end
				else
					next_state <= S_TX_IDLE;
			end
			else
				next_state <= S_TX_CPLD_HEAD;
		end
		S_TX_MRD_HEAD: begin
			if(s_axis_rq_tready == 1) begin
				if(tx_arb_valid == 1) begin
					case(tx_arb_type) // synthesis parallel_case full_case
						3'b001: next_state <= S_TX_CPLD_HEAD;
						3'b010: next_state <= S_TX_MRD_HEAD;
						3'b100: next_state <= S_TX_MWR_HEAD;
					endcase
				end
				else
					next_state <= S_TX_IDLE;
			end
			else
				next_state <= S_TX_MRD_HEAD;
		end
		S_TX_MWR_HEAD: begin
			if(r_tx_pcie_len <= 12)
				next_state <= S_TX_MWR_HEAD_DATA_LAST;
			else
				next_state <= S_TX_MWR_HEAD_DATA;
		end
		S_TX_MWR_HEAD_DATA: begin
			if(s_axis_rq_tready == 1) begin
				if(r_tx_pcie_data_cnt <= 28)
					next_state <= S_TX_MWR_DATA_LAST;
				else
					next_state <= S_TX_MWR_DATA;
			end
			else
				next_state <= S_TX_MWR_HEAD_DATA_WAIT;
		end
		S_TX_MWR_HEAD_DATA_WAIT: begin
			if(s_axis_rq_tready == 1) begin
				if(r_tx_pcie_data_cnt <= 16)
					next_state <= S_TX_MWR_DATA_LAST;
				else
					next_state <= S_TX_MWR_DATA;
			end
			else
				next_state <= S_TX_MWR_HEAD_DATA_WAIT;
		end
		S_TX_MWR_HEAD_DATA_LAST: begin
			if(s_axis_rq_tready == 1) begin
				if(tx_arb_valid == 1) begin
					case(tx_arb_type) // synthesis parallel_case full_case
						3'b001: next_state <= S_TX_CPLD_HEAD;
						3'b010: next_state <= S_TX_MRD_HEAD;
						3'b100: next_state <= S_TX_MWR_HEAD;
					endcase
				end
				else
					next_state <= S_TX_IDLE;
			end
			else
				next_state <= S_TX_MWR_HEAD_DATA_LAST;
		end
		S_TX_MWR_DATA: begin
			if(s_axis_rq_tready == 1) begin
				if(r_tx_pcie_data_cnt <= 32)
					next_state <= S_TX_MWR_DATA_LAST;
				else
					next_state <= S_TX_MWR_DATA;
			end
			else
				next_state <= S_TX_MWR_WAIT;
		end
		S_TX_MWR_WAIT: begin
			if(s_axis_rq_tready == 1) begin
				if(r_tx_pcie_data_cnt <= 16)
					next_state <= S_TX_MWR_DATA_LAST;
				else
					next_state <= S_TX_MWR_DATA;
			end
			else
				next_state <= S_TX_MWR_WAIT;
		end
		S_TX_MWR_DATA_LAST: begin
			if(s_axis_rq_tready == 1) begin
				if(tx_arb_valid == 1) begin
					case(tx_arb_type) // synthesis parallel_case full_case
						3'b001: next_state <= S_TX_CPLD_HEAD;
						3'b010: next_state <= S_TX_MRD_HEAD;
						3'b100: next_state <= S_TX_MWR_HEAD;
					endcase
				end
				else
					next_state <= S_TX_IDLE;
			end
			else
				next_state <= S_TX_MWR_DATA_LAST;
		end
		default: begin
			next_state <= S_TX_IDLE;
		end
	endcase
end

always @ (*)
begin
	case(r_tx_arb_gnt[5:4]) // synthesis parallel_case full_case
		2'b01: begin
			r_tx_mwr_rd_data		  <= tx_mwr0_rd_data; 
		end
		2'b10: begin
			r_tx_mwr_rd_data  		  <= tx_mwr1_rd_data;
		end
	endcase
end

always @ (posedge pcie_user_clk)
begin
	if(r_tx_arb_rdy == 1) begin
		r_tx_arb_gnt <= tx_arb_gnt;
		r_tx_pcie_len <= tx_pcie_len;
		r_tx_pcie_head <= tx_pcie_head;
		r_tx_cpld_udata <= tx_cpld_udata;
	end
end

always @ (posedge pcie_user_clk)
begin
	case(cur_state)
		S_TX_IDLE: begin

		end
		S_TX_CPLD_HEAD: begin

		end
		S_TX_MRD_HEAD: begin
            if(s_axis_rq_tready == 1)
                r_tlp_count <= r_tlp_count + 1;
            else
                r_tlp_count <= r_tlp_count;
		end
		S_TX_MWR_HEAD: begin
			r_tx_pcie_data_cnt <= r_tx_pcie_len;
			r_tx_mwr_data      <= r_tx_mwr_rd_data;
			r_tx_mwr_data_d1   <= r_tx_mwr_data;
			r_tx_mwr_data_d2   <= r_tx_mwr_data_d1;
		    if(s_axis_rq_tready == 1)
                r_tlp_count <= r_tlp_count + 1;
            else
                r_tlp_count <= r_tlp_count;
		end
		S_TX_MWR_HEAD_DATA: begin
			r_tx_pcie_data_cnt <= r_tx_pcie_data_cnt - 12;
			r_tx_mwr_data    <= r_tx_mwr_rd_data;
			r_tx_mwr_data_d1 <= r_tx_mwr_data;
			r_tx_mwr_data_d2 <= r_tx_mwr_data_d1;
		end
		S_TX_MWR_HEAD_DATA_WAIT: begin

		end
		S_TX_MWR_HEAD_DATA_LAST: begin

		end
		S_TX_MWR_DATA: begin
			r_tx_pcie_data_cnt <= r_tx_pcie_data_cnt - 16;
			r_tx_mwr_data <= r_tx_mwr_rd_data;
			r_tx_mwr_data_d1 <= r_tx_mwr_data;
			r_tx_mwr_data_d2 <= r_tx_mwr_data_d1;
		end
		S_TX_MWR_WAIT: begin

		end
		S_TX_MWR_DATA_LAST: begin

		end
		default: begin
		end
	endcase
end


always @ (*)
begin
	case(cur_state)
		S_TX_IDLE: begin
			r_s_axis_cc_tx_tdata <= {C_PCIE_DATA_WIDTH{1'b0}};
			r_s_axis_cc_tx_tkeep <= {KEEP_WIDTH{1'b0}};
			r_s_axis_cc_tx_tuser <= {AXI4_CC_TUSER_WIDTH{1'b0}};
			r_s_axis_cc_tx_tlast <= 0;
			r_s_axis_cc_tx_tvalid <= 0;
			r_s_axis_rq_tx_tdata <= {C_PCIE_DATA_WIDTH{1'b0}};
			r_s_axis_rq_tx_tkeep <= {KEEP_WIDTH{1'b0}};
			r_s_axis_rq_tx_tuser <= {AXI4_RQ_TUSER_WIDTH{1'b0}};
			r_s_axis_rq_tx_tlast <= 0;
			r_s_axis_rq_tx_tvalid <= 0;
			r_tx_arb_rdy <= 1;
			r_tx_mwr0_rd_en <= 0;
			r_tx_mwr0_data_last <= 0;
			r_tx_mwr1_rd_en <= 0;
			r_tx_mwr1_data_last <= 0;
		end
		S_TX_CPLD_HEAD: begin
			if(r_tx_pcie_len[3] == 1) begin
				r_s_axis_cc_tx_tdata  <= {352'b0, r_tx_cpld_udata, r_tx_pcie_head};
				r_s_axis_cc_tx_tkeep  <= 16'h1F;
			end
			else begin
				r_s_axis_cc_tx_tdata  <= {384'b0, r_tx_pcie_head};
				r_s_axis_cc_tx_tkeep  <= 16'hF;
			end
			r_s_axis_cc_tx_tuser  <= {80'b0, 1'b1};
			r_s_axis_cc_tx_tlast  <= 1;
			r_s_axis_cc_tx_tvalid <= 1;
			r_s_axis_rq_tx_tdata  <= {C_PCIE_DATA_WIDTH{1'b0}};
			r_s_axis_rq_tx_tkeep  <= {KEEP_WIDTH{1'b0}};
			r_s_axis_rq_tx_tuser  <= {AXI4_RQ_TUSER_WIDTH{1'b0}};
			r_s_axis_rq_tx_tlast  <= 0;
			r_s_axis_rq_tx_tvalid <= 0;
			r_tx_arb_rdy <= s_axis_cc_tready;
			r_tx_mwr0_rd_en <= 0;
			r_tx_mwr0_data_last <= 0;
			r_tx_mwr1_rd_en <= 0;
			r_tx_mwr1_data_last <= 0;
		end
		S_TX_MRD_HEAD: begin
			r_s_axis_cc_tx_tdata <= {C_PCIE_DATA_WIDTH{1'b0}};
			r_s_axis_cc_tx_tkeep <= {KEEP_WIDTH{1'b0}};
			r_s_axis_cc_tx_tuser <= {AXI4_CC_TUSER_WIDTH{1'b0}};
			r_s_axis_cc_tx_tlast <= 0;
			r_s_axis_cc_tx_tvalid <= 0;
			r_s_axis_rq_tx_tdata <= {384'b0, r_tx_pcie_head};
			r_s_axis_rq_tx_tkeep <= 16'hF;
			r_s_axis_rq_tx_tuser <= {115'b0,2'b01,4'b0,`D_MRD_LAST_BE,`D_MRD_1ST_BE};
			r_s_axis_rq_tx_tlast <= 1;
			r_s_axis_rq_tx_tvalid <= 1;
			r_tx_arb_rdy <= s_axis_rq_tready;
			r_tx_mwr0_rd_en <= 0;
			r_tx_mwr0_data_last <= 0;
			r_tx_mwr1_rd_en <= 0;
			r_tx_mwr1_data_last <= 0;
		end
		S_TX_MWR_HEAD: begin
			r_s_axis_cc_tx_tdata <= {C_PCIE_DATA_WIDTH{1'b0}};
			r_s_axis_cc_tx_tkeep <= {KEEP_WIDTH{1'b0}};
			r_s_axis_cc_tx_tuser <= {AXI4_CC_TUSER_WIDTH{1'b0}};
			r_s_axis_cc_tx_tlast <= 0;
			r_s_axis_cc_tx_tvalid <= 0;
			r_s_axis_rq_tx_tdata <= {C_PCIE_DATA_WIDTH{1'b0}};
			r_s_axis_rq_tx_tkeep <= {KEEP_WIDTH{1'b0}};
			r_s_axis_rq_tx_tuser <= {AXI4_RQ_TUSER_WIDTH{1'b0}};
			r_s_axis_rq_tx_tlast <= 0;
			r_s_axis_rq_tx_tvalid <= 0;
			r_tx_arb_rdy <= 0;
			r_tx_mwr0_rd_en <= r_tx_arb_gnt[4];
			r_tx_mwr0_data_last <= 0;
			r_tx_mwr1_rd_en <= r_tx_arb_gnt[5]; 
			r_tx_mwr1_data_last <= 0;
		end
		S_TX_MWR_HEAD_DATA: begin
			r_s_axis_cc_tx_tdata <= {C_PCIE_DATA_WIDTH{1'b0}};
			r_s_axis_cc_tx_tkeep <= {KEEP_WIDTH{1'b0}};
			r_s_axis_cc_tx_tuser <= {AXI4_CC_TUSER_WIDTH{1'b0}};
			r_s_axis_cc_tx_tlast <= 0;
			r_s_axis_cc_tx_tvalid <= 0;
			r_s_axis_rq_tx_tdata <= {r_tx_mwr_data[383:0], r_tx_pcie_head};
			r_s_axis_rq_tx_tkeep <= 16'hFFFF;
			r_s_axis_rq_tx_tuser <= {115'b0,2'b01,4'b0,`D_MWR_LAST_BE,`D_MWR_1ST_BE};
			r_s_axis_rq_tx_tlast <= 0;
			r_s_axis_rq_tx_tvalid <= 1;
			r_tx_arb_rdy <= 0;
			r_tx_mwr0_rd_en <= r_tx_arb_gnt[4];
			r_tx_mwr0_data_last <= 0;
			r_tx_mwr1_rd_en <= (r_tx_pcie_data_cnt <= 16) ? 0 : r_tx_arb_gnt[5]; 
			r_tx_mwr1_data_last <= 0;
		end
		S_TX_MWR_HEAD_DATA_WAIT: begin
			r_s_axis_cc_tx_tdata <= {C_PCIE_DATA_WIDTH{1'b0}};
			r_s_axis_cc_tx_tkeep <= {KEEP_WIDTH{1'b0}};
			r_s_axis_cc_tx_tuser <= {AXI4_CC_TUSER_WIDTH{1'b0}};
			r_s_axis_cc_tx_tlast <= 0;
			r_s_axis_cc_tx_tvalid <= 0;
			r_s_axis_rq_tx_tdata <= {r_tx_mwr_data_d1[383:0], r_tx_pcie_head};
			r_s_axis_rq_tx_tkeep <= 16'hFFFF;
			r_s_axis_rq_tx_tuser <= {115'b0,2'b01,4'b0,`D_MWR_LAST_BE,`D_MWR_1ST_BE};
			r_s_axis_rq_tx_tlast <= 0;
			r_s_axis_rq_tx_tvalid <= 1;
			r_tx_arb_rdy <= 0;
			r_tx_mwr0_rd_en <= 0;
			r_tx_mwr0_data_last <= 0;
			r_tx_mwr1_rd_en <= 0;
			r_tx_mwr1_data_last <= 0;
		end
		S_TX_MWR_HEAD_DATA_LAST: begin
			r_s_axis_cc_tx_tdata <= {C_PCIE_DATA_WIDTH{1'b0}};
			r_s_axis_cc_tx_tkeep <= {KEEP_WIDTH{1'b0}};
			r_s_axis_cc_tx_tuser <= {AXI4_CC_TUSER_WIDTH{1'b0}};
			r_s_axis_cc_tx_tlast <= 0;
			r_s_axis_cc_tx_tvalid <= 0;
			r_s_axis_rq_tx_tdata <= {r_tx_mwr_data[383:0], r_tx_pcie_head};
			if(r_tx_pcie_data_cnt == 1)
				r_s_axis_rq_tx_tkeep <= 16'h1F;
			else if(r_tx_pcie_data_cnt == 2)
				r_s_axis_rq_tx_tkeep <= 16'h3F;
			else if(r_tx_pcie_data_cnt == 3)
				r_s_axis_rq_tx_tkeep <= 16'h7F;
			else if(r_tx_pcie_data_cnt == 4)
				r_s_axis_rq_tx_tkeep <= 16'hFF;
			else if(r_tx_pcie_data_cnt == 5)
				r_s_axis_rq_tx_tkeep <= 16'h1FF;
			else if(r_tx_pcie_data_cnt == 6)
				r_s_axis_rq_tx_tkeep <= 16'h3FF;
			else if(r_tx_pcie_data_cnt == 7)
				r_s_axis_rq_tx_tkeep <= 16'h7FF;
			else if(r_tx_pcie_data_cnt == 8)
				r_s_axis_rq_tx_tkeep <= 16'hFFF;
			else if(r_tx_pcie_data_cnt == 9)
				r_s_axis_rq_tx_tkeep <= 16'h1FFF;
			else if(r_tx_pcie_data_cnt == 10)
				r_s_axis_rq_tx_tkeep <= 16'h3FFF;
			else if(r_tx_pcie_data_cnt == 11)
				r_s_axis_rq_tx_tkeep <= 16'h7FFF;
			else
				r_s_axis_rq_tx_tkeep <= 16'hFFFF;
			r_s_axis_rq_tx_tuser <= {115'b0,2'b01,4'b0,`D_MWR_LAST_BE,`D_MWR_1ST_BE};
			r_s_axis_rq_tx_tlast <= 1;
			r_s_axis_rq_tx_tvalid <= 1;
			r_tx_arb_rdy <= s_axis_rq_tready;
			r_tx_mwr0_rd_en <= 0;
			r_tx_mwr0_data_last <= r_tx_arb_gnt[4] & s_axis_rq_tready;
			r_tx_mwr1_rd_en <= 0;
			r_tx_mwr1_data_last <= r_tx_arb_gnt[5] & s_axis_rq_tready;
		end
		S_TX_MWR_DATA: begin
			r_s_axis_cc_tx_tdata <= {C_PCIE_DATA_WIDTH{1'b0}};
			r_s_axis_cc_tx_tkeep <= {KEEP_WIDTH{1'b0}};
			r_s_axis_cc_tx_tuser <= {AXI4_CC_TUSER_WIDTH{1'b0}};
			r_s_axis_cc_tx_tlast <= 0;
			r_s_axis_cc_tx_tvalid <= 0;
			r_s_axis_rq_tx_tdata <= {r_tx_mwr_data[383:0], r_tx_mwr_data_d1[511:384]};
			r_s_axis_rq_tx_tkeep <= 16'hFFFF;
			r_s_axis_rq_tx_tuser <= {121'b0,`D_MWR_LAST_BE,`D_MWR_1ST_BE};
			r_s_axis_rq_tx_tlast <= 0;
			r_s_axis_rq_tx_tvalid <= 1;
			r_tx_arb_rdy <= 0;
			r_tx_mwr0_rd_en <= r_tx_arb_gnt[4];
			r_tx_mwr0_data_last <= 0;
			r_tx_mwr1_rd_en <= (r_tx_pcie_data_cnt <= 20) ? 0 : r_tx_arb_gnt[5];
			r_tx_mwr1_data_last <= 0;
		end
		S_TX_MWR_WAIT: begin
			r_s_axis_cc_tx_tdata <= {C_PCIE_DATA_WIDTH{1'b0}};
			r_s_axis_cc_tx_tkeep <= {KEEP_WIDTH{1'b0}};
			r_s_axis_cc_tx_tuser <= {AXI4_CC_TUSER_WIDTH{1'b0}};
			r_s_axis_cc_tx_tlast <= 0;
			r_s_axis_cc_tx_tvalid <= 0;
			r_s_axis_rq_tx_tdata <= {r_tx_mwr_data_d1[383:0], r_tx_mwr_data_d2[511:384]};
			r_s_axis_rq_tx_tkeep <= 16'hFFFF;
			r_s_axis_rq_tx_tuser <= {121'b0,`D_MWR_LAST_BE,`D_MWR_1ST_BE};
			r_s_axis_rq_tx_tlast <= 0;
			r_s_axis_rq_tx_tvalid <= 1;
			r_tx_arb_rdy <= 0;
			r_tx_mwr0_rd_en <= 0;
			r_tx_mwr0_data_last <= 0;
			r_tx_mwr1_rd_en <= 0;
			r_tx_mwr1_data_last <= 0;
		end
		S_TX_MWR_DATA_LAST: begin
			r_s_axis_cc_tx_tdata <= {C_PCIE_DATA_WIDTH{1'b0}};
			r_s_axis_cc_tx_tkeep <= {KEEP_WIDTH{1'b0}};
			r_s_axis_cc_tx_tuser <= {AXI4_CC_TUSER_WIDTH{1'b0}};
			r_s_axis_cc_tx_tlast <= 0;
			r_s_axis_cc_tx_tvalid <= 0;
			r_s_axis_rq_tx_tdata <= {r_tx_mwr_data[383:0], r_tx_mwr_data_d1[511:384]};
			if(r_tx_pcie_data_cnt == 1)
				r_s_axis_rq_tx_tkeep <= 16'h1;
			else if(r_tx_pcie_data_cnt == 2)
				r_s_axis_rq_tx_tkeep <= 16'h3;
			else if(r_tx_pcie_data_cnt == 3)
				r_s_axis_rq_tx_tkeep <= 16'h7;
			else if(r_tx_pcie_data_cnt == 4)
				r_s_axis_rq_tx_tkeep <= 16'hF;
			else if(r_tx_pcie_data_cnt == 5)
				r_s_axis_rq_tx_tkeep <= 16'h1F;
			else if(r_tx_pcie_data_cnt == 6)
				r_s_axis_rq_tx_tkeep <= 16'h3F;
			else if(r_tx_pcie_data_cnt == 7)
				r_s_axis_rq_tx_tkeep <= 16'h7F;
			else if(r_tx_pcie_data_cnt == 8)
				r_s_axis_rq_tx_tkeep <= 16'hFF;
			else if(r_tx_pcie_data_cnt == 9)
				r_s_axis_rq_tx_tkeep <= 16'h1FF;
			else if(r_tx_pcie_data_cnt == 10)
				r_s_axis_rq_tx_tkeep <= 16'h3FF;
			else if(r_tx_pcie_data_cnt == 11)
				r_s_axis_rq_tx_tkeep <= 16'h7FF;
			else if(r_tx_pcie_data_cnt == 12)
				r_s_axis_rq_tx_tkeep <= 16'hFFF;
			else if(r_tx_pcie_data_cnt == 13)
				r_s_axis_rq_tx_tkeep <= 16'h1FFF;
			else if(r_tx_pcie_data_cnt == 14)
				r_s_axis_rq_tx_tkeep <= 16'h3FFF;
			else if(r_tx_pcie_data_cnt == 15)
				r_s_axis_rq_tx_tkeep <= 16'h7FFF;
			else
				r_s_axis_rq_tx_tkeep <= 16'hFFFF;
			r_s_axis_rq_tx_tuser <= {121'b0,`D_MWR_LAST_BE,`D_MWR_1ST_BE};
			r_s_axis_rq_tx_tlast <= 1;
			r_s_axis_rq_tx_tvalid <= 1;
			r_tx_arb_rdy <= s_axis_rq_tready;
			r_tx_mwr0_rd_en <= 0;
			r_tx_mwr0_data_last <= r_tx_arb_gnt[4] & s_axis_rq_tready;
			r_tx_mwr1_rd_en <= 0;
			r_tx_mwr1_data_last <= r_tx_arb_gnt[5] & s_axis_rq_tready;
		end
		default: begin
			r_s_axis_cc_tx_tdata <= {C_PCIE_DATA_WIDTH{1'b0}};
			r_s_axis_cc_tx_tkeep <= {KEEP_WIDTH{1'b0}};
			r_s_axis_cc_tx_tuser <= {AXI4_CC_TUSER_WIDTH{1'b0}};
			r_s_axis_cc_tx_tlast <= 0;
			r_s_axis_cc_tx_tvalid <= 0;
			r_s_axis_rq_tx_tdata <= {C_PCIE_DATA_WIDTH{1'b0}};
			r_s_axis_rq_tx_tkeep <= {KEEP_WIDTH{1'b0}};
			r_s_axis_rq_tx_tuser <= {AXI4_RQ_TUSER_WIDTH{1'b0}};
			r_s_axis_rq_tx_tlast <= 0;
			r_s_axis_rq_tx_tvalid <= 0;
			r_tx_arb_rdy <= 0;
			r_tx_mwr0_rd_en <= 0;
			r_tx_mwr0_data_last <= 0;
			r_tx_mwr1_rd_en <= 0;
			r_tx_mwr1_data_last <= 0;
		end
	endcase
end

endmodule
