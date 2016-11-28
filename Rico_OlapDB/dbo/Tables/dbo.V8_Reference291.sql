CREATE TABLE [dbo].[V8_Reference291] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (50)  NULL,
    [V8_Description] NCHAR (100) NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Parent]      BINARY (16) NULL,
    [V8_Folder]      BINARY (1)  NULL,
    [V8_Fld757]      BINARY (16) NULL,
    [V8_Fld758]      BINARY (16) NULL,
    [V8_Fld759]      BINARY (16) NULL,
    [V8_Fld760]      BINARY (16) NULL,
    CONSTRAINT [PK_V8_Reference291] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference291_1]
    ON [dbo].[V8_Reference291]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference291_2]
    ON [dbo].[V8_Reference291]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference291_3]
    ON [dbo].[V8_Reference291]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference291_4]
    ON [dbo].[V8_Reference291]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference291_5]
    ON [dbo].[V8_Reference291]([V8_Fld758] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference291_6]
    ON [dbo].[V8_Reference291]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld758] ASC, [V8_ID] ASC);

