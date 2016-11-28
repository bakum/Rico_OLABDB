CREATE TABLE [dbo].[V8_Reference415] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (50)  NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Parent]      BINARY (16) NULL,
    [V8_Folder]      BINARY (1)  NULL,
    [V8_Fld1334]     NUMERIC (6) NULL,
    CONSTRAINT [PK_V8_Reference415] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference415_1]
    ON [dbo].[V8_Reference415]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference415_2]
    ON [dbo].[V8_Reference415]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference415_3]
    ON [dbo].[V8_Reference415]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference415_4]
    ON [dbo].[V8_Reference415]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference415_5]
    ON [dbo].[V8_Reference415]([V8_Fld1334] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference415_6]
    ON [dbo].[V8_Reference415]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld1334] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference415_7]
    ON [dbo].[V8_Reference415]([V8_Fld1334] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference415_8]
    ON [dbo].[V8_Reference415]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld1334] ASC, [V8_Description] ASC, [V8_ID] ASC);

