CREATE TABLE [dbo].[V8_Reference413] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Description] NCHAR (100) NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Owner]       BINARY (16) NULL,
    [V8_Fld1325]     BINARY (1)  NULL,
    [V8_Fld1326]     BINARY (1)  NULL,
    [V8_Fld1327]     BINARY (16) NULL,
    [V8_Fld1328]     BINARY (16) NULL,
    CONSTRAINT [PK_V8_Reference413] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference413_1]
    ON [dbo].[V8_Reference413]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference413_2]
    ON [dbo].[V8_Reference413]([V8_Owner] ASC, [V8_Description] ASC, [V8_ID] ASC);

