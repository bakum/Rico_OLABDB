CREATE TABLE [dbo].[V8_AccumReg2153] (
    [V8_Period]         DATETIME        NULL,
    [V8_Recorder_Type]  NUMERIC (1)     NULL,
    [V8_Recorder_RTRef] NUMERIC (8)     NULL,
    [V8_Recorder_RRef]  BINARY (16)     NULL,
    [V8_LineNo]         NUMERIC (9)     NULL,
    [V8_Active]         BINARY (1)      NULL,
    [V8_Fld15278]       BINARY (16)     NULL,
    [V8_Fld15279]       BINARY (16)     NULL,
    [V8_Fld15280_Type]  NUMERIC (1)     NULL,
    [V8_Fld15280_RTRef] NUMERIC (8)     NULL,
    [V8_Fld15280_RRef]  BINARY (16)     NULL,
    [V8_Fld15281_Type]  NUMERIC (1)     NULL,
    [V8_Fld15281_RTRef] NUMERIC (8)     NULL,
    [V8_Fld15281_RRef]  BINARY (16)     NULL,
    [V8_Fld15282]       BINARY (16)     NULL,
    [V8_Fld15283]       BINARY (16)     NULL,
    [V8_Fld15284]       BINARY (16)     NULL,
    [V8_Fld15285]       NUMERIC (15, 3) NULL,
    [V8_Fld15286]       NUMERIC (15, 2) NULL,
    [V8_Fld15287]       BINARY (1)      NULL,
    [V8_Fld15288_Type]  NUMERIC (1)     NULL,
    [V8_Fld15288_RTRef] NUMERIC (8)     NULL,
    [V8_Fld15288_RRef]  BINARY (16)     NULL,
    [V8_Fld15289]       DATETIME        NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2153_1]
    ON [dbo].[V8_AccumReg2153]([V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2153_2]
    ON [dbo].[V8_AccumReg2153]([V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);

