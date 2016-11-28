CREATE TABLE [dbo].[V8_Reference134] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Code]        NCHAR (9)      NULL,
    [V8_Description] NCHAR (50)     NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Parent]      BINARY (16)    NULL,
    [V8_Folder]      BINARY (1)     NULL,
    [V8_Fld57]       BINARY (16)    NULL,
    [V8_Fld58]       BINARY (16)    NULL,
    [V8_Fld59]       BINARY (16)    NULL,
    [V8_Fld60]       NUMERIC (5, 2) NULL,
    CONSTRAINT [PK_V8_Reference134] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference134_1]
    ON [dbo].[V8_Reference134]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference134_2]
    ON [dbo].[V8_Reference134]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference134_3]
    ON [dbo].[V8_Reference134]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference134_4]
    ON [dbo].[V8_Reference134]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference134_5]
    ON [dbo].[V8_Reference134]([V8_Fld57] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference134_6]
    ON [dbo].[V8_Reference134]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld57] ASC, [V8_ID] ASC);

