CREATE TABLE [dbo].[V8_AccumReg2127] (
    [V8_Period]         DATETIME        NULL,
    [V8_Recorder_Type]  NUMERIC (1)     NULL,
    [V8_Recorder_RTRef] NUMERIC (8)     NULL,
    [V8_Recorder_RRef]  BINARY (16)     NULL,
    [V8_LineNo]         NUMERIC (9)     NULL,
    [V8_Active]         BINARY (1)      NULL,
    [V8_RecordKind]     NUMERIC (1)     NULL,
    [V8_Fld14998]       BINARY (16)     NULL,
    [V8_Fld14999]       BINARY (16)     NULL,
    [V8_Fld15000]       BINARY (16)     NULL,
    [V8_Fld15001]       BINARY (16)     NULL,
    [V8_Fld15002_Type]  NUMERIC (1)     NULL,
    [V8_Fld15002_RTRef] NUMERIC (8)     NULL,
    [V8_Fld15002_RRef]  BINARY (16)     NULL,
    [V8_Fld15003]       BINARY (16)     NULL,
    [V8_Fld15004]       BINARY (16)     NULL,
    [V8_Fld15005]       BINARY (16)     NULL,
    [V8_Fld15006]       BINARY (16)     NULL,
    [V8_Fld15007]       NUMERIC (15, 3) NULL,
    [V8_Fld15008]       NUMERIC (15, 2) NULL,
    [V8_Fld15009]       BINARY (16)     NULL,
    [V8_Fld15010]       BINARY (1)      NULL,
    [V8_Fld15011]       NUMERIC (9)     NULL,
    [V8_Fld15012_Type]  NUMERIC (1)     NULL,
    [V8_Fld15012_RTRef] NUMERIC (8)     NULL,
    [V8_Fld15012_RRef]  BINARY (16)     NULL,
    [V8_Fld15013]       DATETIME        NULL,
    [V8_Fld15014]       NUMERIC (9)     NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2127_1]
    ON [dbo].[V8_AccumReg2127]([V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2127_2]
    ON [dbo].[V8_AccumReg2127]([V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2127_3]
    ON [dbo].[V8_AccumReg2127]([V8_Fld14999] ASC, [V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2127_4]
    ON [dbo].[V8_AccumReg2127]([V8_Fld15012_Type] ASC, [V8_Fld15012_RTRef] ASC, [V8_Fld15012_RRef] ASC, [V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);

