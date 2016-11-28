CREATE TABLE [dbo].[V8_Reference120] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (50)  NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Fld33]       BINARY (1)  NULL,
    [V8_Fld34]       BINARY (1)  NULL,
    [V8_Fld35]       BINARY (16) NULL,
    CONSTRAINT [PK_V8_Reference120] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference120_1]
    ON [dbo].[V8_Reference120]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference120_2]
    ON [dbo].[V8_Reference120]([V8_Description] ASC, [V8_ID] ASC);

