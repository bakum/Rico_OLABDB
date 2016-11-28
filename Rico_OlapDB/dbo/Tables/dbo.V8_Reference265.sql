CREATE TABLE [dbo].[V8_Reference265] (
    [V8_ID]     BINARY (16) NOT NULL,
    [V8_Code]   NCHAR (21)  NULL,
    [V8_Marked] BINARY (1)  NULL,
    [V8_Fld674] DATETIME    NULL,
    [V8_Fld675] NTEXT       NULL,
    CONSTRAINT [PK_V8_Reference265] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference265_1]
    ON [dbo].[V8_Reference265]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference265_2]
    ON [dbo].[V8_Reference265]([V8_Fld674] ASC, [V8_ID] ASC);

