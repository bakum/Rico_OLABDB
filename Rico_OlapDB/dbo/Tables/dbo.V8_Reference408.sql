CREATE TABLE [dbo].[V8_Reference408] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (50)  NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Owner]       BINARY (16) NULL,
    [V8_Fld1316]     BINARY (1)  NULL,
    [V8_Fld1317]     NUMERIC (6) NULL,
    [V8_Fld1318]     BINARY (1)  NULL,
    CONSTRAINT [PK_V8_Reference408] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference408_1]
    ON [dbo].[V8_Reference408]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference408_10]
    ON [dbo].[V8_Reference408]([V8_Owner] ASC, [V8_Fld1318] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference408_2]
    ON [dbo].[V8_Reference408]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference408_3]
    ON [dbo].[V8_Reference408]([V8_Owner] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference408_4]
    ON [dbo].[V8_Reference408]([V8_Owner] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference408_5]
    ON [dbo].[V8_Reference408]([V8_Fld1317] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference408_6]
    ON [dbo].[V8_Reference408]([V8_Owner] ASC, [V8_Fld1317] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference408_7]
    ON [dbo].[V8_Reference408]([V8_Fld1317] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference408_8]
    ON [dbo].[V8_Reference408]([V8_Owner] ASC, [V8_Fld1317] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference408_9]
    ON [dbo].[V8_Reference408]([V8_Fld1318] ASC, [V8_ID] ASC);

