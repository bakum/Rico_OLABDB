CREATE TABLE [dbo].[V8_Reference213_VT215] (
    [V8_ID]     BINARY (16) NULL,
    [V8_LineNo] NUMERIC (5) NULL,
    [V8_Fld346] BINARY (16) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_VT215_1]
    ON [dbo].[V8_Reference213_VT215]([V8_ID] ASC, [V8_LineNo] ASC);

