CREATE TABLE [dbo].[V8_AccumReg2180] (
    [V8_Period]         DATETIME        NULL,
    [V8_Recorder_Type]  NUMERIC (1)     NULL,
    [V8_Recorder_RTRef] NUMERIC (8)     NULL,
    [V8_Recorder_RRef]  BINARY (16)     NULL,
    [V8_LineNo]         NUMERIC (9)     NULL,
    [V8_Active]         BINARY (1)      NULL,
    [V8_RecordKind]     NUMERIC (1)     NULL,
    [V8_Fld15473]       BINARY (16)     NULL,
    [V8_Fld15474]       BINARY (16)     NULL,
    [V8_Fld15475]       BINARY (16)     NULL,
    [V8_Fld15476]       BINARY (16)     NULL,
    [V8_Fld15477]       BINARY (16)     NULL,
    [V8_Fld15478]       NUMERIC (15, 3) NULL,
    [V8_Fld15479]       BINARY (16)     NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2180_1]
    ON [dbo].[V8_AccumReg2180]([V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2180_2]
    ON [dbo].[V8_AccumReg2180]([V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2180_3]
    ON [dbo].[V8_AccumReg2180]([V8_Fld15474] ASC, [V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);

