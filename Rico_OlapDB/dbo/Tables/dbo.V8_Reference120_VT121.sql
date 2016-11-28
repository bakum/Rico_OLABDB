CREATE TABLE [dbo].[V8_Reference120_VT121] (
    [V8_ID]     BINARY (16) NULL,
    [V8_LineNo] NUMERIC (5) NULL,
    [V8_Fld36]  BINARY (16) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference120_VT121_1]
    ON [dbo].[V8_Reference120_VT121]([V8_ID] ASC, [V8_LineNo] ASC);

