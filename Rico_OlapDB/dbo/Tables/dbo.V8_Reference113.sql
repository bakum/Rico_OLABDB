CREATE TABLE [dbo].[V8_Reference113] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (100) NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Fld18]       BINARY (1)  NULL,
    [V8_Fld19]       BINARY (16) NULL,
    [V8_Fld20]       BINARY (16) NULL,
    [V8_Fld21]       NTEXT       NULL,
    [V8_Fld22]       BINARY (16) NULL,
    [V8_Fld23]       BINARY (16) NULL,
    [V8_Fld24]       DATETIME    NULL,
    [V8_Fld25_Type]  NUMERIC (1) NULL,
    [V8_Fld25_RTRef] NUMERIC (8) NULL,
    [V8_Fld25_RRef]  BINARY (16) NULL,
    [V8_Fld26]       NTEXT       NULL,
    [V8_Fld27]       NTEXT       NULL,
    CONSTRAINT [PK_V8_Reference113] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference113_1]
    ON [dbo].[V8_Reference113]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference113_2]
    ON [dbo].[V8_Reference113]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference113_3]
    ON [dbo].[V8_Reference113]([V8_Fld18] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference113_4]
    ON [dbo].[V8_Reference113]([V8_Fld18] ASC, [V8_Description] ASC, [V8_ID] ASC);

