CREATE TABLE [dbo].[V8_Reference180] (
    [V8_ID]           BINARY (16) NOT NULL,
    [V8_Code]         NCHAR (9)   NULL,
    [V8_Description]  NCHAR (100) NULL,
    [V8_Marked]       BINARY (1)  NULL,
    [V8_Fld227]       BINARY (16) NULL,
    [V8_Fld228]       BINARY (16) NULL,
    [V8_Fld229]       BINARY (16) NULL,
    [V8_Fld230]       NTEXT       NULL,
    [V8_Fld231]       BINARY (1)  NULL,
    [V8_Fld232]       NTEXT       NULL,
    [V8_Fld233]       BINARY (16) NULL,
    [V8_Fld234]       DATETIME    NULL,
    [V8_Fld235]       BINARY (16) NULL,
    [V8_Fld236]       BINARY (16) NULL,
    [V8_Fld237_Type]  NUMERIC (1) NULL,
    [V8_Fld237_RTRef] NUMERIC (8) NULL,
    [V8_Fld237_RRef]  BINARY (16) NULL,
    [V8_Fld238]       BINARY (16) NULL,
    [V8_Fld239]       BINARY (16) NULL,
    [V8_Fld240]       BINARY (16) NULL,
    CONSTRAINT [PK_V8_Reference180] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference180_1]
    ON [dbo].[V8_Reference180]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference180_2]
    ON [dbo].[V8_Reference180]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference180_3]
    ON [dbo].[V8_Reference180]([V8_Fld228] ASC, [V8_ID] ASC);

