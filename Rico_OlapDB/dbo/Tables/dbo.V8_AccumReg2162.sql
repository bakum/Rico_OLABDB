CREATE TABLE [dbo].[V8_AccumReg2162] (
    [V8_Period]         DATETIME        NULL,
    [V8_Recorder_Type]  NUMERIC (1)     NULL,
    [V8_Recorder_RTRef] NUMERIC (8)     NULL,
    [V8_Recorder_RRef]  BINARY (16)     NULL,
    [V8_LineNo]         NUMERIC (9)     NULL,
    [V8_Active]         BINARY (1)      NULL,
    [V8_RecordKind]     NUMERIC (1)     NULL,
    [V8_Fld15353]       BINARY (16)     NULL,
    [V8_Fld15354]       BINARY (16)     NULL,
    [V8_Fld15355]       BINARY (16)     NULL,
    [V8_Fld15356]       BINARY (16)     NULL,
    [V8_Fld15357_Type]  NUMERIC (1)     NULL,
    [V8_Fld15357_RTRef] NUMERIC (8)     NULL,
    [V8_Fld15357_RRef]  BINARY (16)     NULL,
    [V8_Fld15358_Type]  NUMERIC (1)     NULL,
    [V8_Fld15358_RTRef] NUMERIC (8)     NULL,
    [V8_Fld15358_RRef]  BINARY (16)     NULL,
    [V8_Fld15359]       BINARY (16)     NULL,
    [V8_Fld15360]       NUMERIC (15, 3) NULL,
    [V8_Fld15361]       NUMERIC (15, 2) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2162_1]
    ON [dbo].[V8_AccumReg2162]([V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2162_2]
    ON [dbo].[V8_AccumReg2162]([V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2162_3]
    ON [dbo].[V8_AccumReg2162]([V8_Fld15354] ASC, [V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);

