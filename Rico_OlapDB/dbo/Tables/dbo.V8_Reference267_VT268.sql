CREATE TABLE [dbo].[V8_Reference267_VT268] (
    [V8_ID]     BINARY (16) NULL,
    [V8_LineNo] NUMERIC (5) NULL,
    [V8_Fld685] BINARY (16) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference267_VT268_1]
    ON [dbo].[V8_Reference267_VT268]([V8_ID] ASC, [V8_LineNo] ASC);

