CREATE TABLE [dbo].[V8_Reference299] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (50)  NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Parent]      BINARY (16) NULL,
    [V8_Folder]      BINARY (1)  NULL,
    [V8_Fld773]      DATETIME    NULL,
    [V8_Fld774]      DATETIME    NULL,
    [V8_Fld775]      BINARY (16) NULL,
    [V8_Fld776]      NTEXT       NULL,
    CONSTRAINT [PK_V8_Reference299] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference299_1]
    ON [dbo].[V8_Reference299]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference299_2]
    ON [dbo].[V8_Reference299]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference299_3]
    ON [dbo].[V8_Reference299]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference299_4]
    ON [dbo].[V8_Reference299]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

