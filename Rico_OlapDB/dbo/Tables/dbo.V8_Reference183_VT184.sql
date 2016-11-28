CREATE TABLE [dbo].[V8_Reference183_VT184] (
    [V8_ID]     BINARY (16)    NULL,
    [V8_LineNo] NUMERIC (5)    NULL,
    [V8_Fld242] DATETIME       NULL,
    [V8_Fld243] NUMERIC (6, 3) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference183_VT184_1]
    ON [dbo].[V8_Reference183_VT184]([V8_ID] ASC, [V8_LineNo] ASC);

