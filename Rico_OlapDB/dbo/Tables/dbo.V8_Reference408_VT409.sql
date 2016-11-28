CREATE TABLE [dbo].[V8_Reference408_VT409] (
    [V8_ID]      BINARY (16)    NULL,
    [V8_LineNo]  NUMERIC (5)    NULL,
    [V8_Fld1319] BINARY (1)     NULL,
    [V8_Fld1320] BINARY (16)    NULL,
    [V8_Fld1321] NVARCHAR (200) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference408_VT409_1]
    ON [dbo].[V8_Reference408_VT409]([V8_ID] ASC, [V8_LineNo] ASC);

