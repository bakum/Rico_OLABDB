CREATE TABLE [dbo].[V8_InfoReg2049] (
    [V8_Period]         DATETIME        NULL,
    [V8_Recorder_Type]  NUMERIC (1)     NULL,
    [V8_Recorder_RTRef] NUMERIC (8)     NULL,
    [V8_Recorder_RRef]  BINARY (16)     NULL,
    [V8_LineNo]         NUMERIC (9)     NULL,
    [V8_Active]         BINARY (1)      NULL,
    [V8_Fld14165]       BINARY (16)     NULL,
    [V8_Fld14166]       BINARY (16)     NULL,
    [V8_Fld14167]       BINARY (16)     NULL,
    [V8_Fld14168]       BINARY (16)     NULL,
    [V8_Fld14169]       NUMERIC (15, 3) NULL,
    [V8_Fld14170]       BINARY (16)     NULL,
    [V8_Fld14171]       NUMERIC (5, 2)  NULL,
    [V8_Fld14172]       BINARY (16)     NULL
);




GO
CREATE NONCLUSTERED INDEX [IND_V8_InfoReg2049_5]
    ON [dbo].[V8_InfoReg2049]([V8_Fld14165] ASC, [V8_Fld14166] ASC, [V8_Fld14167] ASC, [V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_InfoReg2049_4]
    ON [dbo].[V8_InfoReg2049]([V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_InfoReg2049_3]
    ON [dbo].[V8_InfoReg2049]([V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_InfoReg2049_2]
    ON [dbo].[V8_InfoReg2049]([V8_Fld14165] ASC, [V8_Fld14166] ASC, [V8_Fld14167] ASC, [V8_Period] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_InfoReg2049_1]
    ON [dbo].[V8_InfoReg2049]([V8_Period] ASC, [V8_Fld14165] ASC, [V8_Fld14166] ASC, [V8_Fld14167] ASC);

