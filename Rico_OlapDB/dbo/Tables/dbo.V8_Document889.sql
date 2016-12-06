CREATE TABLE [dbo].[V8_Document889] (
    [V8_ID]       BINARY (16) NOT NULL,
    [V8_Marked]   BINARY (1)  NULL,
    [V8_DateTime] DATETIME    NULL,
    [V8_Number]   NCHAR (11)  NULL,
    [V8_Posted]   BINARY (1)  NULL,
    CONSTRAINT [PK_V8_Document889] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Document889_2]
    ON [dbo].[V8_Document889]([V8_Number] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Document889_1]
    ON [dbo].[V8_Document889]([V8_DateTime] ASC, [V8_ID] ASC);

