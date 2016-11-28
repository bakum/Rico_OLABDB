CREATE TABLE [dbo].[V8_Reference367] (
    [V8_ID]            BINARY (16) NOT NULL,
    [V8_Code]          NCHAR (9)   NULL,
    [V8_Description]   NCHAR (100) NULL,
    [V8_Marked]        BINARY (1)  NULL,
    [V8_Owner]         BINARY (16) NULL,
    [V8_Fld1113]       BINARY (16) NULL,
    [V8_Fld1114_Type]  NUMERIC (1) NULL,
    [V8_Fld1114_RTRef] NUMERIC (8) NULL,
    [V8_Fld1114_RRef]  BINARY (16) NULL,
    [V8_Fld1115]       NTEXT       NULL,
    CONSTRAINT [PK_V8_Reference367] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference367_1]
    ON [dbo].[V8_Reference367]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference367_2]
    ON [dbo].[V8_Reference367]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference367_3]
    ON [dbo].[V8_Reference367]([V8_Owner] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference367_4]
    ON [dbo].[V8_Reference367]([V8_Owner] ASC, [V8_Description] ASC, [V8_ID] ASC);

