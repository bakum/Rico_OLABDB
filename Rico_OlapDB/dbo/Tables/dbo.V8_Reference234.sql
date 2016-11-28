CREATE TABLE [dbo].[V8_Reference234] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (6)   NULL,
    [V8_Description] NCHAR (100) NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Fld382]      BINARY (16) NULL,
    [V8_Fld383]      BINARY (1)  NULL,
    [V8_Fld384]      BINARY (16) NULL,
    [V8_Fld385]      BINARY (1)  NULL,
    [V8_Fld386]      BINARY (16) NULL,
    CONSTRAINT [PK_V8_Reference234] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference234_1]
    ON [dbo].[V8_Reference234]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference234_2]
    ON [dbo].[V8_Reference234]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference234_3]
    ON [dbo].[V8_Reference234]([V8_Fld385] ASC, [V8_ID] ASC);

