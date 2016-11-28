CREATE TABLE [dbo].[V8_AccumReg2149] (
    [V8_Period]         DATETIME        NULL,
    [V8_Recorder_Type]  NUMERIC (1)     NULL,
    [V8_Recorder_RTRef] NUMERIC (8)     NULL,
    [V8_Recorder_RRef]  BINARY (16)     NULL,
    [V8_LineNo]         NUMERIC (9)     NULL,
    [V8_Active]         BINARY (1)      NULL,
    [V8_Fld15252]       BINARY (16)     NULL,
    [V8_Fld15253]       BINARY (16)     NULL,
    [V8_Fld15254_Type]  NUMERIC (1)     NULL,
    [V8_Fld15254_RTRef] NUMERIC (8)     NULL,
    [V8_Fld15254_RRef]  BINARY (16)     NULL,
    [V8_Fld15255]       BINARY (16)     NULL,
    [V8_Fld15256_Type]  NUMERIC (1)     NULL,
    [V8_Fld15256_RTRef] NUMERIC (8)     NULL,
    [V8_Fld15256_RRef]  BINARY (16)     NULL,
    [V8_Fld15257]       BINARY (16)     NULL,
    [V8_Fld15258]       BINARY (16)     NULL,
    [V8_Fld15259]       BINARY (16)     NULL,
    [V8_Fld15260]       BINARY (16)     NULL,
    [V8_Fld15261]       NUMERIC (15, 3) NULL,
    [V8_Fld15262]       NUMERIC (15, 2) NULL,
    [V8_Fld15263]       NUMERIC (15, 2) NULL,
    [V8_Fld15264]       NUMERIC (15, 2) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2149_1]
    ON [dbo].[V8_AccumReg2149]([V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2149_2]
    ON [dbo].[V8_AccumReg2149]([V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2149_3]
    ON [dbo].[V8_AccumReg2149]([V8_Fld15259] ASC, [V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2149_4]
    ON [dbo].[V8_AccumReg2149]([V8_Fld15260] ASC, [V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2149_5]
    ON [dbo].[V8_AccumReg2149]([V8_Fld15258] ASC, [V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2149_6]
    ON [dbo].[V8_AccumReg2149]([V8_Fld15254_Type] ASC, [V8_Fld15254_RTRef] ASC, [V8_Fld15254_RRef] ASC, [V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2149_7]
    ON [dbo].[V8_AccumReg2149]([V8_Fld15255] ASC, [V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2149_8]
    ON [dbo].[V8_AccumReg2149]([V8_Fld15256_Type] ASC, [V8_Fld15256_RTRef] ASC, [V8_Fld15256_RRef] ASC, [V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);

