CREATE TABLE [dbo].[V8_Reference371] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (6)   NULL,
    [V8_Description] NCHAR (40)  NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Fld1120]     BINARY (16) NULL,
    [V8_Fld1121]     BINARY (16) NULL,
    [V8_Fld1122]     BINARY (16) NULL,
    [V8_Fld1123]     BINARY (16) NULL,
    CONSTRAINT [PK_V8_Reference371] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference371_1]
    ON [dbo].[V8_Reference371]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference371_2]
    ON [dbo].[V8_Reference371]([V8_Description] ASC, [V8_ID] ASC);

