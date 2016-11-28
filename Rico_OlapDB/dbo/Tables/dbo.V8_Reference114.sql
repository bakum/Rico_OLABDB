CREATE TABLE [dbo].[V8_Reference114] (
    [V8_ID]          BINARY (16)   NOT NULL,
    [V8_Code]        NCHAR (3)     NULL,
    [V8_Description] NCHAR (10)    NULL,
    [V8_Marked]      BINARY (1)    NULL,
    [V8_Fld28]       NVARCHAR (50) NULL,
    [V8_Fld29]       NTEXT         NULL,
    [V8_Fld30]       NTEXT         NULL,
    CONSTRAINT [PK_V8_Reference114] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference114_1]
    ON [dbo].[V8_Reference114]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference114_2]
    ON [dbo].[V8_Reference114]([V8_Description] ASC, [V8_ID] ASC);

