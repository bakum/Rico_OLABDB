CREATE TABLE [dbo].[V8_Reference191] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (100) NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Fld268]      NUMERIC (5) NULL,
    CONSTRAINT [PK_V8_Reference191] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference191_1]
    ON [dbo].[V8_Reference191]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference191_2]
    ON [dbo].[V8_Reference191]([V8_Description] ASC, [V8_ID] ASC);

