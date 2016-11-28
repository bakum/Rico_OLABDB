CREATE TABLE [dbo].[V8_Reference372] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (3)   NULL,
    [V8_Description] NCHAR (100) NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Fld1124]     BINARY (1)  NULL,
    [V8_Fld1125]     BINARY (1)  NULL,
    [V8_Fld1126]     BINARY (1)  NULL,
    CONSTRAINT [PK_V8_Reference372] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference372_1]
    ON [dbo].[V8_Reference372]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference372_2]
    ON [dbo].[V8_Reference372]([V8_Description] ASC, [V8_ID] ASC);

