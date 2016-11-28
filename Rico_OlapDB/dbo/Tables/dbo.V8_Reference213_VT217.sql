CREATE TABLE [dbo].[V8_Reference213_VT217] (
    [V8_ID]     BINARY (16)     NULL,
    [V8_LineNo] NUMERIC (5)     NULL,
    [V8_Fld349] NVARCHAR (25)   NULL,
    [V8_Fld350] NVARCHAR (100)  NULL,
    [V8_Fld351] NUMERIC (10, 2) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_VT217_1]
    ON [dbo].[V8_Reference213_VT217]([V8_ID] ASC, [V8_LineNo] ASC);

