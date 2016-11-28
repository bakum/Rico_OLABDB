CREATE TABLE [dbo].[V8_Reference270_VT271] (
    [V8_ID]     BINARY (16)    NULL,
    [V8_LineNo] NUMERIC (5)    NULL,
    [V8_Fld696] NVARCHAR (256) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference270_VT271_1]
    ON [dbo].[V8_Reference270_VT271]([V8_ID] ASC, [V8_LineNo] ASC);

