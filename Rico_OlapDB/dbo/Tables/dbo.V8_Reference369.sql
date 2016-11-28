CREATE TABLE [dbo].[V8_Reference369] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (25)  NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Parent]      BINARY (16) NULL,
    [V8_Folder]      BINARY (1)  NULL,
    [V8_Owner_Type]  NUMERIC (1) NULL,
    [V8_Owner_RTRef] NUMERIC (8) NULL,
    [V8_Owner_RRef]  BINARY (16) NULL,
    CONSTRAINT [PK_V8_Reference369] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference369_1]
    ON [dbo].[V8_Reference369]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference369_2]
    ON [dbo].[V8_Reference369]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference369_3]
    ON [dbo].[V8_Reference369]([V8_Owner_Type] ASC, [V8_Owner_RTRef] ASC, [V8_Owner_RRef] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference369_4]
    ON [dbo].[V8_Reference369]([V8_Owner_Type] ASC, [V8_Owner_RTRef] ASC, [V8_Owner_RRef] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference369_5]
    ON [dbo].[V8_Reference369]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference369_6]
    ON [dbo].[V8_Reference369]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference369_7]
    ON [dbo].[V8_Reference369]([V8_Owner_Type] ASC, [V8_Owner_RTRef] ASC, [V8_Owner_RRef] ASC, [V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference369_8]
    ON [dbo].[V8_Reference369]([V8_Owner_Type] ASC, [V8_Owner_RTRef] ASC, [V8_Owner_RRef] ASC, [V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

