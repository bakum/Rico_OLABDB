CREATE TABLE [dbo].[V8_Reference332_VT333] (
    [V8_ID]     BINARY (16)     NULL,
    [V8_LineNo] NUMERIC (5)     NULL,
    [V8_Fld893] BINARY (16)     NULL,
    [V8_Fld894] NUMERIC (15, 3) NULL,
    [V8_Fld895] NUMERIC (15, 3) NULL,
    [V8_Fld896] NUMERIC (15, 3) NULL,
    [V8_Fld897] NUMERIC (15, 3) NULL,
    [V8_Fld898] BINARY (16)     NULL,
    [V8_Fld899] BINARY (16)     NULL,
    [V8_Fld900] BINARY (16)     NULL,
    [V8_Fld901] BINARY (16)     NULL,
    [V8_Fld902] BINARY (16)     NULL,
    [V8_Fld903] BINARY (16)     NULL,
    [V8_Fld904] BINARY (16)     NULL,
    [V8_Fld905] BINARY (16)     NULL,
    [V8_Fld906] NUMERIC (15, 3) NULL,
    [V8_Fld907] NUMERIC (15, 3) NULL,
    [V8_Fld908] BINARY (16)     NULL,
    [V8_Fld909] BINARY (16)     NULL,
    [V8_Fld910] BINARY (16)     NULL,
    [V8_Fld911] BINARY (16)     NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_VT333_1]
    ON [dbo].[V8_Reference332_VT333]([V8_ID] ASC, [V8_LineNo] ASC);

