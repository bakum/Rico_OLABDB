CREATE TABLE [dbo].[V8_Reference325] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (50)  NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Parent]      BINARY (16) NULL,
    [V8_Folder]      BINARY (1)  NULL,
    [V8_Fld849]      NTEXT       NULL,
    [V8_Fld850]      BINARY (16) NULL,
    [V8_Fld851]      BINARY (16) NULL,
    [V8_Fld852]      BINARY (16) NULL,
    [V8_Fld853]      NUMERIC (1) NULL,
    [V8_Fld854]      BINARY (1)  NULL,
    [V8_Fld855]      BINARY (1)  NULL,
    CONSTRAINT [PK_V8_Reference325] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference325_1]
    ON [dbo].[V8_Reference325]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference325_2]
    ON [dbo].[V8_Reference325]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference325_3]
    ON [dbo].[V8_Reference325]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference325_4]
    ON [dbo].[V8_Reference325]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

