CREATE TABLE [dbo].[V8_Reference140] (
    [V8_ID]          BINARY (16)     NOT NULL,
    [V8_Code]        NCHAR (9)       NULL,
    [V8_Description] NCHAR (50)      NULL,
    [V8_Marked]      BINARY (1)      NULL,
    [V8_Parent]      BINARY (16)     NULL,
    [V8_Folder]      BINARY (1)      NULL,
    [V8_Fld73]       BINARY (1)      NULL,
    [V8_Fld74]       BINARY (16)     NULL,
    [V8_Fld75]       NUMERIC (6, 4)  NULL,
    [V8_Fld76]       NUMERIC (10, 2) NULL,
    CONSTRAINT [PK_V8_Reference140] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference140_1]
    ON [dbo].[V8_Reference140]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference140_2]
    ON [dbo].[V8_Reference140]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference140_3]
    ON [dbo].[V8_Reference140]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference140_4]
    ON [dbo].[V8_Reference140]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

