CREATE TABLE [dbo].[V8_Reference401] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Code]        NCHAR (9)      NULL,
    [V8_Description] NCHAR (50)     NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Parent]      BINARY (16)    NULL,
    [V8_Folder]      BINARY (1)     NULL,
    [V8_Fld1282]     DATETIME       NULL,
    [V8_Fld1283]     NVARCHAR (12)  NULL,
    [V8_Fld1284]     NTEXT          NULL,
    [V8_Fld1285]     BINARY (16)    NULL,
    [V8_Fld1286]     NVARCHAR (240) NULL,
    [V8_Fld1287]     BINARY (16)    NULL,
    [V8_Fld1288]     NVARCHAR (12)  NULL,
    [V8_Fld1289]     BINARY (16)    NULL,
    CONSTRAINT [PK_V8_Reference401] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference401_1]
    ON [dbo].[V8_Reference401]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference401_2]
    ON [dbo].[V8_Reference401]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference401_3]
    ON [dbo].[V8_Reference401]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference401_4]
    ON [dbo].[V8_Reference401]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

