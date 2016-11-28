CREATE TABLE [dbo].[V8_Reference261] (
    [V8_ID]          BINARY (16)   NOT NULL,
    [V8_Description] NCHAR (70)    NULL,
    [V8_Marked]      BINARY (1)    NULL,
    [V8_Owner]       BINARY (16)   NULL,
    [V8_Fld656]      BINARY (16)   NULL,
    [V8_Fld657]      BINARY (16)   NULL,
    [V8_Fld658]      NTEXT         NULL,
    [V8_Fld659]      NVARCHAR (13) NULL,
    [V8_Fld660]      NVARCHAR (21) NULL,
    [V8_Fld661]      DATETIME      NULL,
    CONSTRAINT [PK_V8_Reference261] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference261_1]
    ON [dbo].[V8_Reference261]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference261_10]
    ON [dbo].[V8_Reference261]([V8_Owner] ASC, [V8_Fld661] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference261_11]
    ON [dbo].[V8_Reference261]([V8_Fld660] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference261_12]
    ON [dbo].[V8_Reference261]([V8_Owner] ASC, [V8_Fld660] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference261_2]
    ON [dbo].[V8_Reference261]([V8_Owner] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference261_3]
    ON [dbo].[V8_Reference261]([V8_Fld659] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference261_4]
    ON [dbo].[V8_Reference261]([V8_Owner] ASC, [V8_Fld659] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference261_5]
    ON [dbo].[V8_Reference261]([V8_Fld656] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference261_6]
    ON [dbo].[V8_Reference261]([V8_Owner] ASC, [V8_Fld656] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference261_7]
    ON [dbo].[V8_Reference261]([V8_Fld657] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference261_8]
    ON [dbo].[V8_Reference261]([V8_Owner] ASC, [V8_Fld657] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference261_9]
    ON [dbo].[V8_Reference261]([V8_Fld661] ASC, [V8_ID] ASC);

