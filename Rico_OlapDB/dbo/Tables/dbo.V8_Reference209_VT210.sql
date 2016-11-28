CREATE TABLE [dbo].[V8_Reference209_VT210] (
    [V8_ID]     BINARY (16) NULL,
    [V8_LineNo] NUMERIC (5) NULL,
    [V8_Fld286] BINARY (16) NULL,
    [V8_Fld287] NTEXT       NULL,
    [V8_Fld288] NUMERIC (2) NULL,
    [V8_Fld289] NUMERIC (3) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference209_VT210_1]
    ON [dbo].[V8_Reference209_VT210]([V8_ID] ASC, [V8_LineNo] ASC);

