//////////////////////////////////////////////////////////////////////////////////
// NPhy_Toggle_Top_DDR100 for Cosmos OpenSSD
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
// Design Name: NPhy_Toggle_Top_DDR100
// Module Name: NPhy_Toggle_Top_DDR100
// File Name: NPhy_Toggle_Top_DDR100.v
//
// Version: v1.0.0
//
// Description: NFC phy top
//
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - first draft
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module NPhy_Toggle_Top_DDR100
#
(
    parameter IDelayValue           =   0,
    parameter DQIDelayValue         =   0,
    parameter InputClockBufferType  =   0,
    parameter NumberOfWays          =   4,
    parameter BufferType            =   0,
    parameter IDelayCtrlInst        =   1,
    parameter DQIDelayInst          =   0
)
(
    iSystemClock            ,
    iDelayRefClock          ,
    iOutputDrivingClock     ,
    iOutputStrobeClock      ,
    iPI_Reset               ,
    iPI_BUFF_Reset          ,
    iPO_Reset               ,
    iPI_BUFF_RE             ,
    iPI_BUFF_WE             ,
    iPI_BUFF_OutSel         ,
    oPI_BUFF_Empty          ,
    oPI_DQ                  ,
    oPI_ValidFlag           ,
    iPIDelayTapLoad         ,
    iPIDelayTap             ,
    oPIDelayReady           ,
    iDQSOutEnable           ,
    iDQOutEnable            ,
    iPO_DQStrobe            ,
    iPO_DQ                  ,
    iPO_ChipEnable          ,
    iPO_ReadEnable          ,
    iPO_WriteEnable         ,
    iPO_AddressLatchEnable  ,
    iPO_CommandLatchEnable  ,
    oReadyBusy              ,
    iWriteProtect           ,
    IO_NAND_DQS_P           ,
    IO_NAND_DQS_N           ,
    IO_NAND_DQ              ,
    O_NAND_CE               ,
    O_NAND_WE               ,
    O_NAND_RE_P             ,
    O_NAND_RE_N             ,
    O_NAND_ALE              ,
    O_NAND_CLE              ,
    I_NAND_RB               ,
    O_NAND_WP               ,
    iDQSIDelayTap           ,
    iDQSIDelayTapLoad       ,
    iDQ0IDelayTap           ,
    iDQ0IDelayTapLoad       ,
    iDQ1IDelayTap           ,
    iDQ1IDelayTapLoad       ,
    iDQ2IDelayTap           ,
    iDQ2IDelayTapLoad       ,
    iDQ3IDelayTap           ,
    iDQ3IDelayTapLoad       ,
    iDQ4IDelayTap           ,
    iDQ4IDelayTapLoad       ,
    iDQ5IDelayTap           ,
    iDQ5IDelayTapLoad       ,
    iDQ6IDelayTap           ,
    iDQ6IDelayTapLoad       ,
    iDQ7IDelayTap           ,
    iDQ7IDelayTapLoad
);
    // NPhy_Toggle Interface - PO Interface
    // All signals are active high.
    // CE/RE/WE are inverted in OSERDESE2 module.
    
    // NPhy_Toggle Interface - Pad Interface
    // Direction Select: 0-Read from NAND, 1-Write to NAND
    
    // future -> add parameter: data width, resolution
    
    input                           iSystemClock            ; // SDR 100MHz
    input                           iDelayRefClock          ; // SDR 200MHz
    input                           iOutputDrivingClock     ; // SDR 200Mhz
    input                           iOutputStrobeClock      ;
    input                           iPI_Reset               ;
    input                           iPI_BUFF_Reset          ;
    input                           iPO_Reset               ;
    input                           iPI_BUFF_RE             ;
    input                           iPI_BUFF_WE             ;
    input   [2:0]                   iPI_BUFF_OutSel         ;
    output                          oPI_BUFF_Empty          ;
    output  [31:0]                  oPI_DQ                  ;
    output  [3:0]                   oPI_ValidFlag           ;
    input                           iPIDelayTapLoad         ;
    input   [4:0]                   iPIDelayTap             ;
    output                          oPIDelayReady           ;
    input                           iDQSOutEnable           ;
    input                           iDQOutEnable            ;
    input   [7:0]                   iPO_DQStrobe            ;
    input   [31:0]                  iPO_DQ                  ;
    input   [2*NumberOfWays - 1:0]  iPO_ChipEnable          ;
    input   [3:0]                   iPO_ReadEnable          ;
    input   [3:0]                   iPO_WriteEnable         ;
    input   [3:0]                   iPO_AddressLatchEnable  ;
    input   [3:0]                   iPO_CommandLatchEnable  ;
    output  [NumberOfWays - 1:0]    oReadyBusy              ;
    input                           iWriteProtect           ;
    inout                           IO_NAND_DQS_P           ; // Differential: Positive
    inout                           IO_NAND_DQS_N           ; // Differential: Negative
    inout   [7:0]                   IO_NAND_DQ              ;
    output  [NumberOfWays - 1:0]    O_NAND_CE               ;
    output                          O_NAND_WE               ;
    output                          O_NAND_RE_P             ; // Differential: Positive
    output                          O_NAND_RE_N             ; // Differential: Negative
    output                          O_NAND_ALE              ;
    output                          O_NAND_CLE              ;
    input   [NumberOfWays - 1:0]    I_NAND_RB               ;
    output                          O_NAND_WP               ;
    
    input   [8:0]                   iDQSIDelayTap           ;
    input   [1:0]                        iDQSIDelayTapLoad       ;
    input   [8:0]                   iDQ0IDelayTap           ;
    input   [1:0]                        iDQ0IDelayTapLoad       ;
    input   [8:0]                   iDQ1IDelayTap           ;
    input   [1:0]                        iDQ1IDelayTapLoad       ;
    input   [8:0]                   iDQ2IDelayTap           ;
    input   [1:0]                        iDQ2IDelayTapLoad       ;
    input   [8:0]                   iDQ3IDelayTap           ;
    input   [1:0]                        iDQ3IDelayTapLoad       ;
    input   [8:0]                   iDQ4IDelayTap           ;
    input   [1:0]                        iDQ4IDelayTapLoad       ;
    input   [8:0]                   iDQ5IDelayTap           ;
    input   [1:0]                        iDQ5IDelayTapLoad       ;
    input   [8:0]                   iDQ6IDelayTap           ;
    input   [1:0]                        iDQ6IDelayTapLoad       ;
    input   [8:0]                   iDQ7IDelayTap           ;
    input   [1:0]                        iDQ7IDelayTapLoad       ;
    
    // Internal Wires/Regs
    
    wire                            wDQSOutEnableToPinpad   ;
    wire    [7:0]                   wDQOutEnableToPinpad    ;
    
    wire                            wDQSFromNAND        ;
    wire                            wDQSToNAND          ;
    
    wire    [7:0]                   wDQFromNAND         ;
    wire    [7:0]                   wDQToNAND           ;
    
    wire    [NumberOfWays - 1:0]    wCEToNAND           ;
    
    wire                            wWEToNAND           ;
    wire                            wREToNAND           ;
    wire                            wALEToNAND          ;
    wire                            wCLEToNAND          ;
    
    wire                            wWPToNAND           ;
    
    wire    [NumberOfWays - 1:0]    wReadyBusyFromNAND  ;
    reg     [NumberOfWays - 1:0]    rReadyBusyCDCBuf0   ;
    reg     [NumberOfWays - 1:0]    rReadyBusyCDCBuf1   ;
    
    
    // Input
    
    NPhy_Toggle_Physical_Input_DDR100
    #
    (
        .IDelayValue            (IDelayValue            ),
        .DQIDelayValue          (DQIDelayValue          ),
        .InputClockBufferType   (InputClockBufferType   ),
        .BufferType             (BufferType             ),
        .IDelayCtrlInst         (IDelayCtrlInst         ),
        .DQIDelayInst           (DQIDelayInst           )
    )
    Inst_NPhy_Toggle_Physical_Input
    (
        .iSystemClock       (iSystemClock               ),
        .iDelayRefClock     (iDelayRefClock             ),
        
        .iModuleReset       (iPI_Reset                  ),
        .iBufferReset       (iPI_BUFF_Reset             ),
        
        // PI Interface
        .iPI_Buff_RE        (iPI_BUFF_RE                ),
        .iPI_Buff_WE        (iPI_BUFF_WE                ),
        .iPI_Buff_OutSel    (iPI_BUFF_OutSel            ),
        .oPI_Buff_Empty     (oPI_BUFF_Empty             ),
        .oPI_DQ             (oPI_DQ                     ),
        .oPI_ValidFlag      (oPI_ValidFlag              ),
        
        .iPI_DelayTapLoad   (iPIDelayTapLoad            ),
        .iPI_DelayTap       (iPIDelayTap                ),
        .oPI_DelayReady     (oPIDelayReady              ),
        
        // Pad Interface
        .iDQSFromNAND       (wDQSFromNAND               ),
        .iDQFromNAND        (wDQFromNAND                ),
        
        .iDQSIDelayTap      (iDQSIDelayTap              ),
        .iDQSIDelayTapLoad  (iDQSIDelayTapLoad          ),
        .iDQ0IDelayTap      (iDQ0IDelayTap              ),
        .iDQ0IDelayTapLoad  (iDQ0IDelayTapLoad          ),
        .iDQ1IDelayTap      (iDQ1IDelayTap              ),
        .iDQ1IDelayTapLoad  (iDQ1IDelayTapLoad          ),
        .iDQ2IDelayTap      (iDQ2IDelayTap              ),
        .iDQ2IDelayTapLoad  (iDQ2IDelayTapLoad          ),
        .iDQ3IDelayTap      (iDQ3IDelayTap              ),
        .iDQ3IDelayTapLoad  (iDQ3IDelayTapLoad          ),
        .iDQ4IDelayTap      (iDQ4IDelayTap              ),
        .iDQ4IDelayTapLoad  (iDQ4IDelayTapLoad          ),
        .iDQ5IDelayTap      (iDQ5IDelayTap              ),
        .iDQ5IDelayTapLoad  (iDQ5IDelayTapLoad          ),
        .iDQ6IDelayTap      (iDQ6IDelayTap              ),
        .iDQ6IDelayTapLoad  (iDQ6IDelayTapLoad          ),
        .iDQ7IDelayTap      (iDQ7IDelayTap              ),
        .iDQ7IDelayTapLoad  (iDQ7IDelayTapLoad          )
    );
    
    
    
    // Output
    
    NPhy_Toggle_Physical_Output_DDR100
    #
    (
        .NumberOfWays   (NumberOfWays   )
    )
    Inst_NPhy_Toggle_Physical_Output
    (
        .iSystemClock           (iSystemClock           ),
        .iOutputDrivingClock    (iOutputDrivingClock    ),
        .iOutputStrobeClock     (iOutputStrobeClock     ),
        
        .iModuleReset           (iPO_Reset              ),
        
        // PO Interface
        .iDQSOutEnable          (iDQSOutEnable          ),
        .iDQOutEnable           (iDQOutEnable           ),
        
        .iPO_DQStrobe           (iPO_DQStrobe           ),
        .iPO_DQ                 (iPO_DQ                 ),
        .iPO_ChipEnable         (iPO_ChipEnable         ),
        .iPO_ReadEnable         (iPO_ReadEnable         ),
        .iPO_WriteEnable        (iPO_WriteEnable        ),
        .iPO_AddressLatchEnable (iPO_AddressLatchEnable ),
        .iPO_CommandLatchEnable (iPO_CommandLatchEnable ),
        
        // Pad Interface
        .oDQSOutEnableToPinpad  (wDQSOutEnableToPinpad  ),
        .oDQOutEnableToPinpad   (wDQOutEnableToPinpad   ),
        
        .oDQSToNAND             (wDQSToNAND             ),
        .oDQToNAND              (wDQToNAND              ),
        .oCEToNAND              (wCEToNAND              ),
        .oWEToNAND              (wWEToNAND              ),
        .oREToNAND              (wREToNAND              ),
        .oALEToNAND             (wALEToNAND             ),
        .oCLEToNAND             (wCLEToNAND             )
    );
    
    assign wWPToNAND = ~iWriteProtect; // convert WP to WP-
    
    always @ (posedge iSystemClock)
    begin
        if (iPI_Reset)
        begin
            rReadyBusyCDCBuf0 <= {(NumberOfWays){1'b0}};
            rReadyBusyCDCBuf1 <= {(NumberOfWays){1'b0}};
        end
        else
        begin
            rReadyBusyCDCBuf0 <= rReadyBusyCDCBuf1;
            rReadyBusyCDCBuf1 <= wReadyBusyFromNAND;
        end
    end
    assign oReadyBusy = rReadyBusyCDCBuf0;
    
    // Pinpad
    
    NPhy_Toggle_Pinpad
    #
    (
        .NumberOfWays   (NumberOfWays   )
    )
    Inst_NPhy_Toggle_Pinpad
    (
        // Pad Interface
        .iDQSOutEnable  (wDQSOutEnableToPinpad  ),
        .iDQSToNAND     (wDQSToNAND             ),
        .oDQSFromNAND   (wDQSFromNAND           ),
        
        .iDQOutEnable   (wDQOutEnableToPinpad   ),
        .iDQToNAND      (wDQToNAND              ),
        .oDQFromNAND    (wDQFromNAND            ),
        
        .iCEToNAND      (wCEToNAND              ),
        .iWEToNAND      (wWEToNAND              ),
        .iREToNAND      (wREToNAND              ),
        .iALEToNAND     (wALEToNAND             ),
        .iCLEToNAND     (wCLEToNAND             ),
        
        .oRBFromNAND    (wReadyBusyFromNAND     ), // bypass
        .iWPToNAND      (wWPToNAND              ), // bypass
        
        // NAND Interface
        .IO_NAND_DQS_P  (IO_NAND_DQS_P  ), // Differential: Positive
        .IO_NAND_DQS_N  (IO_NAND_DQS_N  ), // Differential: Negative
        .IO_NAND_DQ     (IO_NAND_DQ     ),
        
        .O_NAND_CE      (O_NAND_CE      ),
        
        .O_NAND_WE      (O_NAND_WE      ),
        .O_NAND_RE_P    (O_NAND_RE_P    ), // Differential: Positive
        .O_NAND_RE_N    (O_NAND_RE_N    ), // Differential: Negative
        .O_NAND_ALE     (O_NAND_ALE     ),
        .O_NAND_CLE     (O_NAND_CLE     ),
        
        .I_NAND_RB      (I_NAND_RB      ),
        .O_NAND_WP      (O_NAND_WP      )
    );

endmodule
