CREATE TABLE [dbo].[V8_Reference267] (
    [V8_ID]          BINARY (16)     NOT NULL,
    [V8_Code]        NCHAR (9)       NULL,
    [V8_Description] NCHAR (50)      NULL,
    [V8_Marked]      BINARY (1)      NULL,
    [V8_Parent]      BINARY (16)     NULL,
    [V8_Folder]      BINARY (1)      NULL,
    [V8_Fld676]      NTEXT           NULL,
    [V8_Fld677]      BINARY (16)     NULL,
    [V8_Fld678]      DATETIME        NULL,
    [V8_Fld679]      BINARY (16)     NULL,
    [V8_Fld680]      BINARY (16)     NULL,
    [V8_Fld681]      NUMERIC (10, 2) NULL,
    [V8_Fld682]      BINARY (16)     NULL,
    [V8_Fld683]      NUMERIC (15, 3) NULL,
    [V8_Fld684]      NUMERIC (15, 3) NULL,
    CONSTRAINT [PK_V8_Reference267] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference267_1]
    ON [dbo].[V8_Reference267]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference267_2]
    ON [dbo].[V8_Reference267]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference267_3]
    ON [dbo].[V8_Reference267]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference267_4]
    ON [dbo].[V8_Reference267]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference267_5]
    ON [dbo].[V8_Reference267]([V8_Fld678] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference267_6]
    ON [dbo].[V8_Reference267]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld678] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference267_7]
    ON [dbo].[V8_Reference267]([V8_Fld678] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference267_8]
    ON [dbo].[V8_Reference267]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld678] ASC, [V8_Description] ASC, [V8_ID] ASC);

