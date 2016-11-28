CREATE TABLE [dbo].[V8_Reference198] (
    [V8_ID]          BINARY (16)  NOT NULL,
    [V8_Description] NCHAR (50)   NULL,
    [V8_Marked]      BINARY (1)   NULL,
    [V8_Fld275]      NVARCHAR (3) NULL,
    [V8_Fld276]      NVARCHAR (2) NULL,
    [V8_Fld277]      NTEXT        NULL,
    [V8_Fld278]      BINARY (1)   NULL,
    CONSTRAINT [PK_V8_Reference198] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference198_1]
    ON [dbo].[V8_Reference198]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference198_2]
    ON [dbo].[V8_Reference198]([V8_Fld275] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference198_3]
    ON [dbo].[V8_Reference198]([V8_Fld276] ASC, [V8_ID] ASC);

