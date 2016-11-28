CREATE TABLE [dbo].[V8_Reference260] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Code]        NCHAR (11)     NULL,
    [V8_Description] NCHAR (100)    NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Parent]      BINARY (16)    NULL,
    [V8_Folder]      BINARY (1)     NULL,
    [V8_Fld616]      NVARCHAR (25)  NULL,
    [V8_Fld617]      BINARY (16)    NULL,
    [V8_Fld618]      BINARY (1)     NULL,
    [V8_Fld619]      NUMERIC (10)   NULL,
    [V8_Fld620]      BINARY (1)     NULL,
    [V8_Fld621]      BINARY (1)     NULL,
    [V8_Fld622]      BINARY (1)     NULL,
    [V8_Fld623]      BINARY (1)     NULL,
    [V8_Fld624]      BINARY (1)     NULL,
    [V8_Fld625]      BINARY (16)    NULL,
    [V8_Fld626]      BINARY (16)    NULL,
    [V8_Fld627]      BINARY (16)    NULL,
    [V8_Fld628]      BINARY (16)    NULL,
    [V8_Fld629]      NTEXT          NULL,
    [V8_Fld630]      BINARY (1)     NULL,
    [V8_Fld631]      NTEXT          NULL,
    [V8_Fld632]      BINARY (16)    NULL,
    [V8_Fld633]      BINARY (16)    NULL,
    [V8_Fld634]      BINARY (16)    NULL,
    [V8_Fld635]      BINARY (16)    NULL,
    [V8_Fld636]      BINARY (16)    NULL,
    [V8_Fld637]      BINARY (16)    NULL,
    [V8_Fld638]      BINARY (16)    NULL,
    [V8_Fld639]      BINARY (1)     NULL,
    [V8_Fld640]      BINARY (1)     NULL,
    [V8_Fld641]      BINARY (1)     NULL,
    [V8_Fld642]      BINARY (1)     NULL,
    [V8_Fld643]      BINARY (1)     NULL,
    [V8_Fld644]      NVARCHAR (40)  NULL,
    [V8_Fld645]      NVARCHAR (128) NULL,
    [V8_Fld646]      BINARY (1)     NULL,
    [V8_Fld647]      BINARY (1)     NULL,
    [V8_Fld648]      BINARY (16)    NULL,
    [V8_Fld649]      BINARY (16)    NULL,
    [V8_Fld650]      BINARY (16)    NULL,
    [V8_Fld651]      BINARY (16)    NULL,
    [V8_Fld652]      BINARY (16)    NULL,
    [V8_Fld653]      NTEXT          NULL,
    [V8_Fld654]      BINARY (16)    NULL,
    [V8_Fld655]      BINARY (16)    NULL,
    CONSTRAINT [PK_V8_Reference260] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference260_1]
    ON [dbo].[V8_Reference260]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference260_10]
    ON [dbo].[V8_Reference260]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld651] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference260_11]
    ON [dbo].[V8_Reference260]([V8_Fld632] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference260_12]
    ON [dbo].[V8_Reference260]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld632] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference260_13]
    ON [dbo].[V8_Reference260]([V8_Fld633] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference260_14]
    ON [dbo].[V8_Reference260]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld633] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference260_2]
    ON [dbo].[V8_Reference260]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference260_3]
    ON [dbo].[V8_Reference260]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference260_4]
    ON [dbo].[V8_Reference260]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference260_5]
    ON [dbo].[V8_Reference260]([V8_Fld636] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference260_6]
    ON [dbo].[V8_Reference260]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld636] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference260_7]
    ON [dbo].[V8_Reference260]([V8_Fld616] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference260_8]
    ON [dbo].[V8_Reference260]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld616] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference260_9]
    ON [dbo].[V8_Reference260]([V8_Fld651] ASC, [V8_ID] ASC);

