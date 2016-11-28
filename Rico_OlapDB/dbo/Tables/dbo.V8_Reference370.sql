CREATE TABLE [dbo].[V8_Reference370] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (50)  NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Fld1117]     BINARY (16) NULL,
    [V8_Fld1118]     BINARY (16) NULL,
    [V8_Fld1119]     BINARY (16) NULL,
    CONSTRAINT [PK_V8_Reference370] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference370_1]
    ON [dbo].[V8_Reference370]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference370_2]
    ON [dbo].[V8_Reference370]([V8_Description] ASC, [V8_ID] ASC);

