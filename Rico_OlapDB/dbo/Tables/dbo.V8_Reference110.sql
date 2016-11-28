CREATE TABLE [dbo].[V8_Reference110] (
    [V8_ID]          BINARY (16)   NOT NULL,
    [V8_Code]        NCHAR (9)     NULL,
    [V8_Description] NCHAR (100)   NULL,
    [V8_Marked]      BINARY (1)    NULL,
    [V8_Parent]      BINARY (16)   NULL,
    [V8_Folder]      BINARY (1)    NULL,
    [V8_Fld1]        NCHAR (20)    NULL,
    [V8_Fld2]        NVARCHAR (50) NULL,
    [V8_Fld3]        NTEXT         NULL,
    [V8_Fld4]        NTEXT         NULL,
    [V8_Fld5]        NVARCHAR (10) NULL,
    CONSTRAINT [PK_V8_Reference110] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference110_1]
    ON [dbo].[V8_Reference110]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference110_2]
    ON [dbo].[V8_Reference110]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference110_3]
    ON [dbo].[V8_Reference110]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference110_4]
    ON [dbo].[V8_Reference110]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference110_5]
    ON [dbo].[V8_Reference110]([V8_Fld1] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference110_6]
    ON [dbo].[V8_Reference110]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld1] ASC, [V8_ID] ASC);

