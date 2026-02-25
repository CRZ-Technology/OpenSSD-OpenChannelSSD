`timescale 1ns / 1ps

module AXI4MasterInterface
#
(
	parameter AddressWidth          = 32    ,
	parameter DataWidth             = 32    ,
    parameter InnerIFLengthWidth    = 16    ,
    parameter MaxDivider            = 16
)
(
    ACLK                ,
    ARESETN             ,
    
    M_AWADDR            ,
    M_AWLEN             ,
    M_AWSIZE            ,
    M_AWBURST           ,
    M_AWCACHE           ,
    M_AWPROT            ,
    M_AWVALID           ,
    M_AWREADY           ,
    M_WDATA             ,
    M_WSTRB             ,
    M_WLAST             ,
    M_WVALID            ,
    M_WREADY            ,
    M_BRESP             ,
    M_BVALID            ,
    M_BREADY            ,
    M_ARADDR            ,
    M_ARLEN             ,
    M_ARSIZE            ,
    M_ARBURST           ,
    M_ARCACHE           ,
    M_ARPROT            ,
    M_ARVALID           ,
    M_ARREADY           ,
    M_RDATA             ,
    M_RRESP             ,
    M_RLAST             ,
    M_RVALID            ,
    M_RREADY            ,
    
    iWriteAddress       ,
    iWriteBeats         ,
    iWriteCommandReq    ,
    oWriteCommandAck    ,
    iWriteData          ,
    iWriteLast          ,
    iWriteValid         ,
    oWriteReady         ,
    iReadAddress        ,
    iReadBeats          ,
    iReadCommandReq     ,
    oReadCommandAck     ,
    oReadData           ,
    oReadLast           ,
    oReadValid          ,
    iReadReady
);
    input                               ACLK            ;
    input                               ARESETN         ;
    
    // AXI4 Interface
    output  [AddressWidth - 1:0]        M_AWADDR        ;
    output  [7:0]                       M_AWLEN         ;
    output  [2:0]                       M_AWSIZE        ;
    output  [1:0]                       M_AWBURST       ;
    output  [3:0]                       M_AWCACHE       ;
    output  [2:0]                       M_AWPROT        ;
    output                              M_AWVALID       ;
    input                               M_AWREADY       ;
    output  [DataWidth - 1:0]           M_WDATA         ;
    output  [(DataWidth/8) - 1:0]       M_WSTRB         ;
    output                              M_WLAST         ;
    output                              M_WVALID        ;
    input                               M_WREADY        ;
    input   [1:0]                       M_BRESP         ;
    input                               M_BVALID        ;
    output                              M_BREADY        ;
    
    output  [AddressWidth - 1:0]        M_ARADDR        ;
    output  [7:0]                       M_ARLEN         ;
    output  [2:0]                       M_ARSIZE        ;
    output  [1:0]                       M_ARBURST       ;
    output  [3:0]                       M_ARCACHE       ;
    output  [2:0]                       M_ARPROT        ;
    output                              M_ARVALID       ;
    input                               M_ARREADY       ;
    input   [DataWidth - 1:0]           M_RDATA         ;
    input   [1:0]                       M_RRESP         ;
    input                               M_RLAST         ;
    input                               M_RVALID        ;
    output                              M_RREADY        ;

    // Inner AXI-like Interface
    input   [AddressWidth - 1:0]        iWriteAddress   ;
    input   [InnerIFLengthWidth - 1:0]  iWriteBeats     ;
    input                               iWriteCommandReq;
    output                              oWriteCommandAck;
    input   [DataWidth - 1:0]           iWriteData      ;
    input                               iWriteLast      ;
    input                               iWriteValid     ;
    output                              oWriteReady     ;
    
    input   [AddressWidth - 1:0]        iReadAddress    ;
    input   [InnerIFLengthWidth - 1:0]  iReadBeats      ;
    input                               iReadCommandReq ;
    output                              oReadCommandAck ;
    output  [DataWidth - 1:0]           oReadData       ;
    output                              oReadLast       ;
    output                              oReadValid      ;
    input                               iReadReady      ;
    
    assign M_AWSIZE     = $clog2(DataWidth / 8);
    assign M_AWBURST    = 2'b01;
    assign M_AWCACHE    = 4'b0010;
    assign M_AWPROT     = 3'b0;
    
    assign M_ARSIZE     = $clog2(DataWidth / 8);
    assign M_ARBURST    = 2'b01;
    assign M_ARCACHE    = 4'b0010;
    assign M_ARPROT     = 3'b0;
    
    
    reg     [AddressWidth - 1:0]        rCurWriteAddress;
    reg     [InnerIFLengthWidth - 1:0]  rRemainingWBeats;
    reg     [InnerIFLengthWidth - 1:0]  rCurDividedWBeats;
    reg     [InnerIFLengthWidth - 1:0]  rCurWLength;
    reg     [7:0]                       rCurWLengthZeroBase;
    
    localparam WState_Idle      = 3'b000;
    localparam WState_Divide    = 3'b001;
    localparam WState_Request   = 3'b011;
    localparam WState_Forward   = 3'b010;
    localparam WState_Wait      = 3'b110;
    
    reg [2:0] rWCurState;
    reg [2:0] rWNextState;
    
    always @ (posedge ACLK)
        if (!ARESETN)
            rWCurState <= WState_Idle;
        else
            rWCurState <= rWNextState;
    
    always @ (*)
        case (rWCurState)
        WState_Idle:
            if (iWriteCommandReq && (iWriteBeats != 0))
                rWNextState = WState_Divide;
            else
                rWNextState = WState_Idle;
        WState_Divide:
            if (rRemainingWBeats != 0)
                rWNextState = WState_Request;
            else
                rWNextState = WState_Wait;
        WState_Request:
            if (M_AWVALID && M_AWREADY)
                rWNextState = WState_Forward;
            else
                rWNextState = WState_Request;
        WState_Forward:
            if (M_WVALID && M_WREADY && M_WLAST)
                rWNextState = WState_Divide;
            else
                rWNextState = WState_Forward;
        WState_Wait:
            if (M_BVALID && M_BREADY)
                rWNextState = WState_Idle;
            else
                rWNextState = WState_Wait;
        default:
            rWNextState = WState_Idle;
        endcase
    
    assign oWriteCommandAck = (rWCurState == WState_Idle);
    assign M_AWADDR = rCurWriteAddress;
    assign M_AWVALID = (rWCurState == WState_Request);
    assign M_AWLEN = rCurWLengthZeroBase;
    
    assign M_WDATA = iWriteData;
    assign M_WSTRB = {(DataWidth/8){1'b1}};
    assign M_WVALID = (rWCurState == WState_Forward) && iWriteValid;
    assign oWriteReady = (rWCurState == WState_Forward) && M_WREADY;
    assign M_WLAST = (rCurWLengthZeroBase == 0);
    assign M_BREADY = 1'b1;
    
    wire    [InnerIFLengthWidth - 1:0]  wCurWPageRemained;
    wire    [InnerIFLengthWidth - 1:0]  wWMaxByteLength;
    wire    [InnerIFLengthWidth - 1:0]  wWLimitBytes;
    wire    [InnerIFLengthWidth - 1:0]  wWLimitBeats;
    assign wCurWPageRemained = 4096 - rCurWriteAddress[11:0];
    assign wWMaxByteLength = (256 << $clog2(DataWidth / 8));
    assign wWLimitBytes = (wCurWPageRemained > wWMaxByteLength)?wWMaxByteLength:wCurWPageRemained;
    assign wWLimitBeats = wWLimitBytes[InnerIFLengthWidth - 1:$clog2(DataWidth / 8)];
    
    always @ (*)
        if (rRemainingWBeats < wWLimitBeats)
            rCurDividedWBeats = rRemainingWBeats;
        else
            rCurDividedWBeats = wWLimitBeats;
    
    always @ (posedge ACLK)
        if (!ARESETN)
            rCurWriteAddress <= 'b0;
        else if (rWCurState == WState_Idle)
            rCurWriteAddress <= iWriteAddress;
        else if (rWCurState == WState_Request && M_AWVALID && M_AWREADY)
            rCurWriteAddress <= rCurWriteAddress + {rCurWLength, {($clog2(DataWidth / 8)){1'b0}}};
    
    always @ (posedge ACLK)
        if (!ARESETN)
            rRemainingWBeats <= 'b0;
        else if (rWCurState == WState_Idle)
            rRemainingWBeats <= iWriteBeats;
        else if (rWCurState == WState_Request && M_AWVALID && M_AWREADY)
            rRemainingWBeats <= rRemainingWBeats - rCurWLength;
    
    always @ (posedge ACLK)
        if (!ARESETN)
            rCurWLength <= 'b0;
        else if (rWCurState == WState_Divide)
            rCurWLength <= rCurDividedWBeats;
    
    always @ (posedge ACLK)
        if (!ARESETN)
            rCurWLengthZeroBase <= 'b0;
        else if (rWCurState == WState_Divide)
            rCurWLengthZeroBase <= rCurDividedWBeats - 1;
        else if (rWCurState == WState_Forward)
            if (M_WVALID && M_WREADY)
                rCurWLengthZeroBase <= rCurWLengthZeroBase - 1'b1;
    
    
    reg     [AddressWidth - 1:0]        rCurReadAddress;
    reg     [InnerIFLengthWidth - 1:0]  rRemainingRBeats;
    reg     [InnerIFLengthWidth - 1:0]  rCurDividedRBeats;
    reg     [InnerIFLengthWidth - 1:0]  rCurRLength;
    reg     [7:0]                       rCurRLengthZeroBase;
    
    localparam RState_Idle      = 3'b000;
    localparam RState_Divide    = 3'b001;
    localparam RState_Request   = 3'b011;
    localparam RState_Forward   = 3'b010;
    localparam RState_Wait      = 3'b110;
    
    reg [2:0] rRCurState;
    reg [2:0] rRNextState;
    
    always @ (posedge ACLK)
        if (!ARESETN)
            rRCurState <= RState_Idle;
        else
            rRCurState <= rRNextState;
    
    always @ (*)
        case (rRCurState)
        RState_Idle:
            if (iReadCommandReq && (iReadBeats != 0))
                rRNextState = RState_Divide;
            else
                rRNextState = RState_Idle;
        RState_Divide:
            if (rRemainingRBeats != 0)
                rRNextState = RState_Request;
            else
                rRNextState = RState_Idle;
        RState_Request:
            if (M_ARVALID && M_ARREADY)
                rRNextState = RState_Forward;
            else
                rRNextState = RState_Request;
        RState_Forward:
            if (oReadValid && iReadReady && (rCurRLengthZeroBase == 0))
                rRNextState = RState_Divide;
            else
                rRNextState = RState_Forward;
        default:
            rRNextState = RState_Idle;
        endcase
    
    assign oReadCommandAck = (rRCurState == RState_Idle);
    assign M_ARADDR = rCurReadAddress;
    assign M_ARVALID = (rRCurState == RState_Request);
    assign M_ARLEN = rCurRLengthZeroBase;
    
    assign oReadData = M_RDATA;
    assign M_RREADY = (rRCurState == RState_Forward) && iReadReady;
    assign oReadValid = (rRCurState == RState_Forward) && M_RVALID;
    assign oReadLast = (rCurRLengthZeroBase == 0) && (rRemainingRBeats == 0);
    
    wire    [InnerIFLengthWidth - 1:0]  wCurRPageRemained;
    wire    [InnerIFLengthWidth - 1:0]  wRMaxByteLength;
    wire    [InnerIFLengthWidth - 1:0]  wRLimitBytes;
    wire    [InnerIFLengthWidth - 1:0]  wRLimitBeats;
    assign wCurRPageRemained = 4096 - rCurReadAddress[11:0];
    assign wRMaxByteLength = (256 << $clog2(DataWidth / 8));
    assign wRLimitBytes = (wCurRPageRemained > wRMaxByteLength)?wRMaxByteLength:wCurRPageRemained;
    assign wRLimitBeats = wRLimitBytes[InnerIFLengthWidth - 1:$clog2(DataWidth / 8)];
    
    always @ (*)
        if (rRemainingRBeats < wRLimitBeats)
            rCurDividedRBeats = rRemainingRBeats;
        else
            rCurDividedRBeats = wRLimitBeats;
    
    always @ (posedge ACLK)
        if (!ARESETN)
            rCurReadAddress <= 'b0;
        else if (rRCurState == RState_Idle)
            rCurReadAddress <= iReadAddress;
        else if (rRCurState == RState_Request && M_ARVALID && M_ARREADY)
            rCurReadAddress <= rCurReadAddress + {rCurRLength, {($clog2(DataWidth / 8)){1'b0}}};
    
    always @ (posedge ACLK)
        if (!ARESETN)
            rRemainingRBeats <= 'b0;
        else if (rRCurState == RState_Idle)
            rRemainingRBeats <= iReadBeats;
        else if (rRCurState == RState_Request && M_ARVALID && M_ARREADY)
            rRemainingRBeats <= rRemainingRBeats - rCurRLength;
    
    always @ (posedge ACLK)
        if (!ARESETN)
            rCurRLength <= 'b0;
        else if (rRCurState == RState_Divide)
            rCurRLength <= rCurDividedRBeats;
    
    always @ (posedge ACLK)
        if (!ARESETN)
            rCurRLengthZeroBase <= 'b0;
        else if (rRCurState == RState_Divide)
            rCurRLengthZeroBase <= rCurDividedRBeats - 1;
        else if (rRCurState == RState_Forward)
            if (M_RVALID && M_RREADY)
                rCurRLengthZeroBase <= rCurRLengthZeroBase - 1'b1;
    
endmodule
