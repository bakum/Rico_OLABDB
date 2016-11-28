CREATE TABLE [dbo].[V8_Reference112] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Description] NCHAR (100) NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Parent]      BINARY (16) NULL,
    [V8_Folder]      BINARY (1)  NULL,
    [V8_Fld15]       NTEXT       NULL,
    [V8_Fld16]       BINARY (16) NULL,
    [V8_Fld17]       NTEXT       NULL,
    CONSTRAINT [PK_V8_Reference112] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference112_1]
    ON [dbo].[V8_Reference112]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference112_2]
    ON [dbo].[V8_Reference112]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

