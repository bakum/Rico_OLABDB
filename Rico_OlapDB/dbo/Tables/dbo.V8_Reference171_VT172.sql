CREATE TABLE [dbo].[V8_Reference171_VT172] (
    [V8_ID]     BINARY (16)    NULL,
    [V8_LineNo] NUMERIC (5)    NULL,
    [V8_Fld206] BINARY (16)    NULL,
    [V8_Fld207] NUMERIC (5, 2) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference171_VT172_1]
    ON [dbo].[V8_Reference171_VT172]([V8_ID] ASC, [V8_LineNo] ASC);

