CREATE TABLE [dbo].[V8_Reference195] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (50)  NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Fld272]      BINARY (16) NULL,
    CONSTRAINT [PK_V8_Reference195] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference195_1]
    ON [dbo].[V8_Reference195]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference195_2]
    ON [dbo].[V8_Reference195]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference195_3]
    ON [dbo].[V8_Reference195]([V8_Fld272] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference195_4]
    ON [dbo].[V8_Reference195]([V8_Fld272] ASC, [V8_Description] ASC, [V8_ID] ASC);

