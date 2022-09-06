`timescale 1ns / 1ps

module BCHSCCS
#
(
    parameter   BCHDecMulti         = 2     ,
    parameter   GaloisFieldDegree   = 12    ,
    parameter   MaxErrorCountBits   = 9     ,
    parameter   Syndromes           = 27   	,
    parameter   ELPCoefficients     = 15
)
(
    iClock              ,
    iReset              ,
    iToECCWOpcode       ,
    iToECCWTargetID     ,
    iToECCWSourceID     ,
    iToECCWAddress      ,
    iToECCWLength       ,
    iToECCWCmdValid     ,
    oToECCWCmdReady     ,
    iToECCWData         ,
    iToECCWValid        ,
    iToECCWLast         ,
    oToECCWReady        ,
    iToECCROpcode       ,
    iToECCRTargetID     ,
    iToECCRSourceID     ,
    iToECCRAddress      ,
    iToECCRLength       ,
    iToECCRCmdValid     ,
    oToECCRCmdReady     ,
    oToECCRData         ,
    oToECCRValid        ,
    oToECCRLast         ,
    iToECCRReady        ,
    ofromECCWOpcode     ,
    ofromECCWTargetID   ,
    ofromECCWSourceID   ,
    ofromECCWAddress    ,
    ofromECCWLength     ,
    ofromECCWCmdValid   ,
    ifromECCWCmdReady   ,
    ofromECCWData       ,
    ofromECCWValid      ,
    ofromECCWLast       ,
    ifromECCWReady      ,
    ofromECCROpcode     ,
    ofromECCRTargetID   ,
    ofromECCRSourceID   ,
    ofromECCRAddress    ,
    ofromECCRLength     ,
    ofromECCRCmdValid   ,
    ifromECCRCmdReady   ,
    ifromECCRData       ,
    ifromECCRValid      ,
    ifromECCRLast       ,
    ofromECCRReady      ,
    iSharedKESReady     ,
    oErrorDetectionEnd  ,
    oDecodeNeeded       ,
    oSyndromes          ,
    iIntraSharedKESEnd  ,
    iErroredChunk       ,
    iCorrectionFail     ,
    iErrorCount         ,
    iELPCoefficients    ,
    oCSAvailable
);
    input                                                           iClock                  ;
    input                                                           iReset                  ;
    
    input   [5:0]                                                   iToECCWOpcode           ;
    input   [4:0]                                                   iToECCWTargetID         ;
    input   [4:0]                                                   iToECCWSourceID         ;
    input   [31:0]                                                  iToECCWAddress          ;
    input   [15:0]                                                  iToECCWLength           ;
    input                                                           iToECCWCmdValid         ;
    output                                                          oToECCWCmdReady         ;
    input   [31:0]                                                  iToECCWData             ;
    input                                                           iToECCWValid            ;
    input                                                           iToECCWLast             ;
    output                                                          oToECCWReady            ;
    input   [5:0]                                                   iToECCROpcode           ;
    input   [4:0]                                                   iToECCRTargetID         ;
    input   [4:0]                                                   iToECCRSourceID         ;
    input   [31:0]                                                  iToECCRAddress          ;
    input   [15:0]                                                  iToECCRLength           ;
    input                                                           iToECCRCmdValid         ;
    output                                                          oToECCRCmdReady         ;
    output  [31:0]                                                  oToECCRData             ;
    output                                                          oToECCRValid            ;
    output                                                          oToECCRLast             ;
    input                                                           iToECCRReady            ;
    
    output  [5:0]                                                   ofromECCWOpcode         ;
    output  [4:0]                                                   ofromECCWTargetID       ;
    output  [4:0]                                                   ofromECCWSourceID       ;
    output  [31:0]                                                  ofromECCWAddress        ;
    output  [15:0]                                                  ofromECCWLength         ;
    output                                                          ofromECCWCmdValid       ;
    input                                                           ifromECCWCmdReady       ;
    output  [31:0]                                                  ofromECCWData           ;
    output                                                          ofromECCWValid          ;
    output                                                          ofromECCWLast           ;
    input                                                           ifromECCWReady          ;
    output [5:0]                                                    ofromECCROpcode         ;
    output [4:0]                                                    ofromECCRTargetID       ;
    output [4:0]                                                    ofromECCRSourceID       ;
    output [31:0]                                                   ofromECCRAddress        ;
    output [15:0]                                                   ofromECCRLength         ;
    output                                                          ofromECCRCmdValid       ;
    input                                                           ifromECCRCmdReady       ;
    input    [31:0]                                                 ifromECCRData           ;
    input                                                           ifromECCRValid          ;
    input                                                           ifromECCRLast           ;
    output                                                          ofromECCRReady          ;
    
    input                                                           iSharedKESReady         ;
    output  [BCHDecMulti - 1:0]                                     oErrorDetectionEnd      ;
    output  [BCHDecMulti - 1:0]                                     oDecodeNeeded           ;
    output  [BCHDecMulti*GaloisFieldDegree*Syndromes - 1:0]         oSyndromes              ;
    input                                                           iIntraSharedKESEnd      ;
    input   [BCHDecMulti - 1:0]                                     iErroredChunk           ;
    input   [BCHDecMulti - 1:0]                                     iCorrectionFail         ;
    input   [BCHDecMulti*MaxErrorCountBits - 1:0]                   iErrorCount             ;
    input   [BCHDecMulti*GaloisFieldDegree*ELPCoefficients - 1:0]   iELPCoefficients        ;
    output                                                          oCSAvailable            ;
    
    BCHEncoderControl
    #
    (
        .AddressWidth       (32                 ),
        .DataWidth          (32                 ),
        .InnerIFLengthWidth (16                 ),
        .ThisID             (2                  )
    )
    Inst_BCHEncoderControl
    (
        .iClock             (iClock             ),
        .iReset             (iReset             ),
        .iSrcOpcode         (iToECCROpcode      ),
        .iSrcTargetID       (iToECCRTargetID    ),
        .iSrcSourceID       (iToECCRSourceID    ),
        .iSrcAddress        (iToECCRAddress     ),
        .iSrcLength         (iToECCRLength      ),
        .iSrcCmdValid       (iToECCRCmdValid    ),
        .oSrcCmdReady       (oToECCRCmdReady    ),
        .oSrcReadData       (oToECCRData        ),
        .oSrcReadValid      (oToECCRValid       ),
        .oSrcReadLast       (oToECCRLast        ),
        .iSrcReadReady      (iToECCRReady       ),
        .oDstOpcode         (ofromECCROpcode    ),
        .oDstTargetID       (ofromECCRTargetID  ),
        .oDstSourceID       (ofromECCRSourceID  ),
        .oDstAddress        (ofromECCRAddress   ),
        .oDstLength         (ofromECCRLength    ),
        .oDstCmdValid       (ofromECCRCmdValid  ),
        .iDstCmdReady       (ifromECCRCmdReady  ),
        .iDstReadData       (ifromECCRData      ),
        .iDstReadValid      (ifromECCRValid     ),
        .iDstReadLast       (ifromECCRLast      ),
        .oDstReadReady      (ofromECCRReady     )
    );
    
    BCHDecoderControl
    #
    (
        .AddressWidth       (32                 ),
        .DataWidth          (32                 ),
        .InnerIFLengthWidth (16                 ),
        .ThisID             (2                  ),
        .Multi              (2                  ),
        .GaloisFieldDegree  (GaloisFieldDegree  ),
        .MaxErrorCountBits  (MaxErrorCountBits  ),
        .Syndromes          (Syndromes          ),
        .ELPCoefficients    (ELPCoefficients    )
    )
    Inst_BCHDecoderControl
    (
        .iClock             (iClock             ),
        .iReset             (iReset             ),
        .iSrcOpcode         (iToECCWOpcode      ),
        .iSrcTargetID       (iToECCWTargetID    ),
        .iSrcSourceID       (iToECCWSourceID    ),
        .iSrcAddress        (iToECCWAddress     ),
        .iSrcLength         (iToECCWLength      ),
        .iSrcCmdValid       (iToECCWCmdValid    ),
        .oSrcCmdReady       (oToECCWCmdReady    ),
        .iSrcWriteData      (iToECCWData        ),
        .iSrcWriteValid     (iToECCWValid       ),
        .iSrcWriteLast      (iToECCWLast        ),
        .oSrcWriteReady     (oToECCWReady       ),
        .oDstOpcode         (ofromECCWOpcode    ),
        .oDstTargetID       (ofromECCWTargetID  ),
        .oDstSourceID       (ofromECCWSourceID  ),
        .oDstAddress        (ofromECCWAddress   ),
        .oDstLength         (ofromECCWLength    ),
        .oDstCmdValid       (ofromECCWCmdValid  ),
        .iDstCmdReady       (ifromECCWCmdReady  ),
        .oDstWriteData      (ofromECCWData      ),
        .oDstWriteValid     (ofromECCWValid     ),
        .oDstWriteLast      (ofromECCWLast      ),
        .iDstWriteReady     (ifromECCWReady     ),
        .iSharedKESReady    (iSharedKESReady    ),
        .oErrorDetectionEnd (oErrorDetectionEnd ),
        .oDecodeNeeded      (oDecodeNeeded      ),
        .oSyndromes         (oSyndromes         ),
        .iIntraSharedKESEnd (iIntraSharedKESEnd ),
        .iErroredChunk      (iErroredChunk      ),
        .iCorrectionFail    (iCorrectionFail    ),
        .iErrorCount        (iErrorCount        ),
        .iELPCoefficients   (iELPCoefficients   ),
        .oCSAvailable       (oCSAvailable       )
    );
endmodule
