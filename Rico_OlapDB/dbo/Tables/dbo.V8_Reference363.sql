CREATE TABLE [dbo].[V8_Reference363] (
    [V8_ID]          BINARY (16)  NOT NULL,
    [V8_Code]        NCHAR (9)    NULL,
    [V8_Description] NCHAR (100)  NULL,
    [V8_Marked]      BINARY (1)   NULL,
    [V8_Owner]       BINARY (16)  NULL,
    [V8_Fld1109]     NVARCHAR (4) NULL,
    [V8_Fld1110]     NTEXT        NULL,
    CONSTRAINT [PK_V8_Reference363] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference363_1]
    ON [dbo].[V8_Reference363]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference363_2]
    ON [dbo].[V8_Reference363]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference363_3]
    ON [dbo].[V8_Reference363]([V8_Owner] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference363_4]
    ON [dbo].[V8_Reference363]([V8_Owner] ASC, [V8_Description] ASC, [V8_ID] ASC);

