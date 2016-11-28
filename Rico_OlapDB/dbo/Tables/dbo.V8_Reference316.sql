CREATE TABLE [dbo].[V8_Reference316] (
    [V8_ID]           BINARY (16)     NOT NULL,
    [V8_Code]         NCHAR (11)      NULL,
    [V8_Description]  NCHAR (100)     NULL,
    [V8_Marked]       BINARY (1)      NULL,
    [V8_Parent]       BINARY (16)     NULL,
    [V8_Folder]       BINARY (1)      NULL,
    [V8_Fld814]       DATETIME        NULL,
    [V8_Fld815]       DATETIME        NULL,
    [V8_Fld816]       BINARY (16)     NULL,
    [V8_Fld817]       BINARY (16)     NULL,
    [V8_Fld818]       BINARY (16)     NULL,
    [V8_Fld819]       BINARY (16)     NULL,
    [V8_Fld820]       BINARY (16)     NULL,
    [V8_Fld821]       BINARY (16)     NULL,
    [V8_Fld822]       BINARY (16)     NULL,
    [V8_Fld823]       BINARY (16)     NULL,
    [V8_Fld824_Type]  NUMERIC (1)     NULL,
    [V8_Fld824_RTRef] NUMERIC (8)     NULL,
    [V8_Fld824_RRef]  BINARY (16)     NULL,
    [V8_Fld825_Type]  NUMERIC (1)     NULL,
    [V8_Fld825_RTRef] NUMERIC (8)     NULL,
    [V8_Fld825_RRef]  BINARY (16)     NULL,
    [V8_Fld826_Type]  NUMERIC (1)     NULL,
    [V8_Fld826_RTRef] NUMERIC (8)     NULL,
    [V8_Fld826_RRef]  BINARY (16)     NULL,
    [V8_Fld827]       NUMERIC (15, 2) NULL,
    [V8_Fld828]       BINARY (16)     NULL,
    [V8_Fld829]       BINARY (16)     NULL,
    [V8_Fld830]       BINARY (16)     NULL,
    [V8_Fld831]       BINARY (16)     NULL,
    [V8_Fld832]       BINARY (1)      NULL,
    [V8_Fld833]       BINARY (16)     NULL,
    [V8_Fld834]       NTEXT           NULL,
    CONSTRAINT [PK_V8_Reference316] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference316_1]
    ON [dbo].[V8_Reference316]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference316_2]
    ON [dbo].[V8_Reference316]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference316_3]
    ON [dbo].[V8_Reference316]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference316_4]
    ON [dbo].[V8_Reference316]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

