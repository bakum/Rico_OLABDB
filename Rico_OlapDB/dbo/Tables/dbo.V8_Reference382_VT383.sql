CREATE TABLE [dbo].[V8_Reference382_VT383] (
    [V8_ID]      BINARY (16) NULL,
    [V8_LineNo]  NUMERIC (5) NULL,
    [V8_Fld1181] BINARY (16) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference382_VT383_1]
    ON [dbo].[V8_Reference382_VT383]([V8_ID] ASC, [V8_LineNo] ASC);

