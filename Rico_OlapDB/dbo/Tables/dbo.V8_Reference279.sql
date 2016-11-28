CREATE TABLE [dbo].[V8_Reference279] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Code]        NCHAR (9)      NULL,
    [V8_Description] NCHAR (100)    NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Parent]      BINARY (16)    NULL,
    [V8_Folder]      BINARY (1)     NULL,
    [V8_Fld709]      NVARCHAR (100) NULL,
    [V8_Fld710]      NVARCHAR (100) NULL,
    [V8_Fld711]      NVARCHAR (25)  NULL,
    [V8_Fld712]      NVARCHAR (25)  NULL,
    [V8_Fld713]      DATETIME       NULL,
    [V8_Fld714]      BINARY (16)    NULL,
    [V8_Fld715]      NVARCHAR (100) NULL,
    [V8_Fld716]      BINARY (1)     NULL,
    [V8_Fld717]      BINARY (1)     NULL,
    [V8_Fld718]      NVARCHAR (100) NULL,
    CONSTRAINT [PK_V8_Reference279] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference279_1]
    ON [dbo].[V8_Reference279]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference279_2]
    ON [dbo].[V8_Reference279]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference279_3]
    ON [dbo].[V8_Reference279]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference279_4]
    ON [dbo].[V8_Reference279]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

