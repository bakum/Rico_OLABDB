CREATE TABLE [dbo].[V8_InfoReg2050] (
    [V8_Period]         DATETIME        NULL,
    [V8_Recorder_Type]  NUMERIC (1)     NULL,
    [V8_Recorder_RTRef] NUMERIC (8)     NULL,
    [V8_Recorder_RRef]  BINARY (16)     NULL,
    [V8_LineNo]         NUMERIC (9)     NULL,
    [V8_Active]         BINARY (1)      NULL,
    [V8_Fld14173]       BINARY (16)     NULL,
    [V8_Fld14174]       BINARY (16)     NULL,
    [V8_Fld14175]       BINARY (16)     NULL,
    [V8_Fld14176]       BINARY (16)     NULL,
    [V8_Fld14177]       BINARY (16)     NULL,
    [V8_Fld14178]       NUMERIC (15, 2) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_InfoReg2050_5]
    ON [dbo].[V8_InfoReg2050]([V8_Fld14173] ASC, [V8_Fld14174] ASC, [V8_Fld14175] ASC, [V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_InfoReg2050_4]
    ON [dbo].[V8_InfoReg2050]([V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_InfoReg2050_3]
    ON [dbo].[V8_InfoReg2050]([V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_InfoReg2050_2]
    ON [dbo].[V8_InfoReg2050]([V8_Fld14173] ASC, [V8_Fld14174] ASC, [V8_Fld14175] ASC, [V8_Period] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_InfoReg2050_1]
    ON [dbo].[V8_InfoReg2050]([V8_Period] ASC, [V8_Fld14173] ASC, [V8_Fld14174] ASC, [V8_Fld14175] ASC);

