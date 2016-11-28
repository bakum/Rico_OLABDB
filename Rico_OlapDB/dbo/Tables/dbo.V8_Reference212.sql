CREATE TABLE [dbo].[V8_Reference212] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Code]        NCHAR (9)      NULL,
    [V8_Description] NCHAR (100)    NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Owner]       BINARY (16)    NULL,
    [V8_Fld298]      NVARCHAR (100) NULL,
    [V8_Fld299]      NTEXT          NULL,
    [V8_Fld300]      BINARY (16)    NULL,
    [V8_Fld301]      BINARY (16)    NULL,
    CONSTRAINT [PK_V8_Reference212] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference212_1]
    ON [dbo].[V8_Reference212]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference212_2]
    ON [dbo].[V8_Reference212]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference212_3]
    ON [dbo].[V8_Reference212]([V8_Owner] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference212_4]
    ON [dbo].[V8_Reference212]([V8_Owner] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference212_5]
    ON [dbo].[V8_Reference212]([V8_Fld300] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference212_6]
    ON [dbo].[V8_Reference212]([V8_Owner] ASC, [V8_Fld300] ASC, [V8_ID] ASC);

