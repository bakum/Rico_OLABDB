CREATE TABLE [dbo].[V8_Reference277_VT278] (
    [V8_ID]     BINARY (16) NULL,
    [V8_LineNo] NUMERIC (5) NULL,
    [V8_Fld708] BINARY (16) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference277_VT278_1]
    ON [dbo].[V8_Reference277_VT278]([V8_ID] ASC, [V8_LineNo] ASC);

