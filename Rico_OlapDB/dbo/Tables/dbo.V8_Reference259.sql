CREATE TABLE [dbo].[V8_Reference259] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Code]        NCHAR (9)      NULL,
    [V8_Description] NCHAR (100)    NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Parent]      BINARY (16)    NULL,
    [V8_Folder]      BINARY (1)     NULL,
    [V8_Fld613]      NVARCHAR (100) NULL,
    [V8_Fld614]      BINARY (16)    NULL,
    [V8_Fld615]      NVARCHAR (100) NULL,
    CONSTRAINT [PK_V8_Reference259] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference259_1]
    ON [dbo].[V8_Reference259]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference259_2]
    ON [dbo].[V8_Reference259]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference259_3]
    ON [dbo].[V8_Reference259]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference259_4]
    ON [dbo].[V8_Reference259]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

