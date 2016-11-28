CREATE TABLE [dbo].[V8_Reference329] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (100) NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Owner]       BINARY (16) NULL,
    [V8_Fld860]      DATETIME    NULL,
    [V8_Fld861]      DATETIME    NULL,
    CONSTRAINT [PK_V8_Reference329] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference329_1]
    ON [dbo].[V8_Reference329]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference329_2]
    ON [dbo].[V8_Reference329]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference329_3]
    ON [dbo].[V8_Reference329]([V8_Owner] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference329_4]
    ON [dbo].[V8_Reference329]([V8_Owner] ASC, [V8_Description] ASC, [V8_ID] ASC);

