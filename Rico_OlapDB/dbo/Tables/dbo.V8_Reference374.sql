CREATE TABLE [dbo].[V8_Reference374] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Code]        NCHAR (9)      NULL,
    [V8_Description] NCHAR (100)    NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Parent]      BINARY (16)    NULL,
    [V8_Folder]      BINARY (1)     NULL,
    [V8_Fld1143]     BINARY (16)    NULL,
    [V8_Fld1144]     BINARY (16)    NULL,
    [V8_Fld1145]     BINARY (1)     NULL,
    [V8_Fld1146]     BINARY (1)     NULL,
    [V8_Fld1147]     BINARY (16)    NULL,
    [V8_Fld1148]     BINARY (16)    NULL,
    [V8_Fld1149]     NUMERIC (10)   NULL,
    [V8_Fld1150]     DATETIME       NULL,
    [V8_Fld1151]     DATETIME       NULL,
    [V8_Fld1152]     NUMERIC (6, 3) NULL,
    [V8_Fld1153]     BINARY (1)     NULL,
    CONSTRAINT [PK_V8_Reference374] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference374_1]
    ON [dbo].[V8_Reference374]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference374_2]
    ON [dbo].[V8_Reference374]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference374_3]
    ON [dbo].[V8_Reference374]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference374_4]
    ON [dbo].[V8_Reference374]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

