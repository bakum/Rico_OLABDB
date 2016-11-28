CREATE TABLE [dbo].[V8_Reference202] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (100) NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Parent]      BINARY (16) NULL,
    [V8_Folder]      BINARY (1)  NULL,
    [V8_Fld281]      BINARY (16) NULL,
    [V8_Fld282]      BINARY (16) NULL,
    CONSTRAINT [PK_V8_Reference202] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference202_1]
    ON [dbo].[V8_Reference202]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference202_2]
    ON [dbo].[V8_Reference202]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference202_3]
    ON [dbo].[V8_Reference202]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference202_4]
    ON [dbo].[V8_Reference202]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

