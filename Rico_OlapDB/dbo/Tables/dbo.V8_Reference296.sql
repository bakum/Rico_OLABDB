CREATE TABLE [dbo].[V8_Reference296] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NUMERIC (9) NULL,
    [V8_Description] NCHAR (25)  NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Fld767]      NUMERIC (2) NULL,
    [V8_Fld768]      NUMERIC (2) NULL,
    [V8_Fld769]      BINARY (16) NULL,
    [V8_Fld770]      BINARY (16) NULL,
    [V8_Fld771]      BINARY (16) NULL,
    [V8_Fld772]      NUMERIC (2) NULL,
    CONSTRAINT [PK_V8_Reference296] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference296_1]
    ON [dbo].[V8_Reference296]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference296_2]
    ON [dbo].[V8_Reference296]([V8_Description] ASC, [V8_ID] ASC);

