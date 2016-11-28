CREATE TABLE [dbo].[V8_Reference367_VT368] (
    [V8_ID]      BINARY (16) NULL,
    [V8_LineNo]  NUMERIC (5) NULL,
    [V8_Fld1116] BINARY (16) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference367_VT368_1]
    ON [dbo].[V8_Reference367_VT368]([V8_ID] ASC, [V8_LineNo] ASC);

