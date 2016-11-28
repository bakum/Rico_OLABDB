CREATE TABLE [dbo].[V8_Reference175] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (100) NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Fld208]      NTEXT       NULL,
    [V8_Fld209]      NTEXT       NULL,
    [V8_Fld210]      NTEXT       NULL,
    CONSTRAINT [PK_V8_Reference175] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference175_1]
    ON [dbo].[V8_Reference175]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference175_2]
    ON [dbo].[V8_Reference175]([V8_Description] ASC, [V8_ID] ASC);

