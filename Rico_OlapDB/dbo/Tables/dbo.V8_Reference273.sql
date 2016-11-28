CREATE TABLE [dbo].[V8_Reference273] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Code]        NCHAR (9)      NULL,
    [V8_Description] NCHAR (50)     NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Fld697]      NVARCHAR (3)   NULL,
    [V8_Fld698]      BINARY (16)    NULL,
    [V8_Fld699]      NTEXT          NULL,
    [V8_Fld700]      BINARY (16)    NULL,
    [V8_Fld701]      BINARY (16)    NULL,
    [V8_Fld702]      NVARCHAR (150) NULL,
    [V8_Fld703]      BINARY (16)    NULL,
    [V8_Fld704]      BINARY (1)     NULL,
    [V8_Fld705]      BINARY (16)    NULL,
    [V8_Fld706]      DATETIME       NULL,
    CONSTRAINT [PK_V8_Reference273] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference273_1]
    ON [dbo].[V8_Reference273]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference273_2]
    ON [dbo].[V8_Reference273]([V8_Description] ASC, [V8_ID] ASC);

