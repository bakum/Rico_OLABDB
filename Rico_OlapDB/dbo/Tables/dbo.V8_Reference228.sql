CREATE TABLE [dbo].[V8_Reference228] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (6)   NULL,
    [V8_Description] NCHAR (150) NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Parent]      BINARY (16) NULL,
    [V8_Fld373]      BINARY (16) NULL,
    CONSTRAINT [PK_V8_Reference228] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference228_1]
    ON [dbo].[V8_Reference228]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference228_2]
    ON [dbo].[V8_Reference228]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference228_3]
    ON [dbo].[V8_Reference228]([V8_Fld373] ASC, [V8_ID] ASC);

