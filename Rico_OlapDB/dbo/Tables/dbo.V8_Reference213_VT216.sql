CREATE TABLE [dbo].[V8_Reference213_VT216] (
    [V8_ID]     BINARY (16)    NULL,
    [V8_LineNo] NUMERIC (5)    NULL,
    [V8_Fld347] NVARCHAR (50)  NULL,
    [V8_Fld348] NVARCHAR (100) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_VT216_1]
    ON [dbo].[V8_Reference213_VT216]([V8_ID] ASC, [V8_LineNo] ASC);

