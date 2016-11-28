CREATE TABLE [dbo].[V8_AccumReg2198] (
    [V8_Period]         DATETIME        NULL,
    [V8_Recorder_Type]  NUMERIC (1)     NULL,
    [V8_Recorder_RTRef] NUMERIC (8)     NULL,
    [V8_Recorder_RRef]  BINARY (16)     NULL,
    [V8_LineNo]         NUMERIC (9)     NULL,
    [V8_Active]         BINARY (1)      NULL,
    [V8_Fld15797_Type]  NUMERIC (1)     NULL,
    [V8_Fld15797_RTRef] NUMERIC (8)     NULL,
    [V8_Fld15797_RRef]  BINARY (16)     NULL,
    [V8_Fld15798]       BINARY (16)     NULL,
    [V8_Fld15799]       BINARY (16)     NULL,
    [V8_Fld15800]       NUMERIC (15, 3) NULL,
    [V8_Fld15801]       NUMERIC (15, 2) NULL,
    [V8_Fld15802]       NUMERIC (15, 2) NULL,
    [V8_Fld15803]       NUMERIC (15, 2) NULL,
    [V8_Fld15804]       BINARY (16)     NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2198_1]
    ON [dbo].[V8_AccumReg2198]([V8_Period] ASC, [V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_AccumReg2198_2]
    ON [dbo].[V8_AccumReg2198]([V8_Recorder_Type] ASC, [V8_Recorder_RTRef] ASC, [V8_Recorder_RRef] ASC, [V8_LineNo] ASC);

