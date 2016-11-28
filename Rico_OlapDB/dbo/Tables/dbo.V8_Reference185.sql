CREATE TABLE [dbo].[V8_Reference185] (
    [V8_ID]           BINARY (16)    NOT NULL,
    [V8_Code]         NCHAR (9)      NULL,
    [V8_Description]  NCHAR (50)     NULL,
    [V8_Marked]       BINARY (1)     NULL,
    [V8_Parent]       BINARY (16)    NULL,
    [V8_Folder]       BINARY (1)     NULL,
    [V8_Fld244]       NVARCHAR (100) NULL,
    [V8_Fld245_Type]  NUMERIC (1)    NULL,
    [V8_Fld245_RTRef] NUMERIC (8)    NULL,
    [V8_Fld245_RRef]  BINARY (16)    NULL,
    [V8_Fld246]       BINARY (16)    NULL,
    [V8_Fld247]       BINARY (16)    NULL,
    [V8_Fld248]       BINARY (16)    NULL,
    [V8_Fld249]       BINARY (16)    NULL,
    CONSTRAINT [PK_V8_Reference185] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference185_1]
    ON [dbo].[V8_Reference185]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference185_2]
    ON [dbo].[V8_Reference185]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference185_3]
    ON [dbo].[V8_Reference185]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference185_4]
    ON [dbo].[V8_Reference185]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

