// timescale
`timescale 100ps/100ps
//clock
`define BC (100)  //bus clock cycle
`define NC (100)  //npi clock cycle (mpmc clk)
`define CC (100)  //controller clock cycle

//channel/way
`define CH1
`define WAY8
`define CLST1
`define PORT1

`ifdef       CH4                                  `define CH 4
`else `ifdef CH2                                  `define CH 2
`else `ifdef CH1                                  `define CH 1
`endif `endif `endif
`ifdef       WAY8                                 `define WAY 8
`else `ifdef WAY4                                 `define WAY 4
`else `ifdef WAY2                                 `define WAY 2
`else `ifdef WAY1                                 `define WAY 1
`endif `endif `endif `endif
`ifdef       CLST4                                `define CLST 4 //cluster size (1  means non-clustered architecture)
`else `ifdef CLST2                                `define CLST 2
`else `ifdef CLST1                                `define CLST 1
`endif `endif `endif

`ifdef       PORT8                                `define PORT 8
`else `ifdef PORT4                                `define PORT 4
`else `ifdef PORT2                                `define PORT 2
`else `ifdef PORT1                                `define PORT 1
`endif `endif `endif `endif

//host
`define SLV_DATA_WD                               32        //slave data width
`define SLV_ADDR_WD                               32        //slave address width

