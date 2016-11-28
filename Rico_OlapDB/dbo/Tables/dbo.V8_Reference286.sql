CREATE TABLE [dbo].[V8_Reference286] (
    [V8_ID]           BINARY (16) NOT NULL,
    [V8_Code]         NCHAR (9)   NULL,
    [V8_Description]  NCHAR (100) NULL,
    [V8_Marked]       BINARY (1)  NULL,
    [V8_Parent]       BINARY (16) NULL,
    [V8_Fld737]       BINARY (16) NULL,
    [V8_Fld738]       BINARY (16) NULL,
    [V8_Fld739_Type]  NUMERIC (1) NULL,
    [V8_Fld739_RTRef] NUMERIC (8) NULL,
    [V8_Fld739_RRef]  BINARY (16) NULL,
    [V8_Fld740]       NUMERIC (6) NULL,
    CONSTRAINT [PK_V8_Reference286] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference286_1]
    ON [dbo].[V8_Reference286]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference286_2]
    ON [dbo].[V8_Reference286]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference286_3]
    ON [dbo].[V8_Reference286]([V8_Fld740] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference286_4]
    ON [dbo].[V8_Reference286]([V8_Fld740] ASC, [V8_Description] ASC, [V8_ID] ASC);

