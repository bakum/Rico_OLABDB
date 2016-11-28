CREATE TABLE [dbo].[V8_Reference287] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (100) NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Parent]      BINARY (16) NULL,
    [V8_Owner]       BINARY (16) NULL,
    [V8_Fld741]      BINARY (16) NULL,
    [V8_Fld742]      BINARY (16) NULL,
    [V8_Fld743]      NUMERIC (6) NULL,
    [V8_Fld744]      BINARY (16) NULL,
    CONSTRAINT [PK_V8_Reference287] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference287_1]
    ON [dbo].[V8_Reference287]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference287_2]
    ON [dbo].[V8_Reference287]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference287_3]
    ON [dbo].[V8_Reference287]([V8_Owner] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference287_4]
    ON [dbo].[V8_Reference287]([V8_Owner] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference287_5]
    ON [dbo].[V8_Reference287]([V8_Fld743] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference287_6]
    ON [dbo].[V8_Reference287]([V8_Owner] ASC, [V8_Fld743] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference287_7]
    ON [dbo].[V8_Reference287]([V8_Fld743] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference287_8]
    ON [dbo].[V8_Reference287]([V8_Owner] ASC, [V8_Fld743] ASC, [V8_Description] ASC, [V8_ID] ASC);

