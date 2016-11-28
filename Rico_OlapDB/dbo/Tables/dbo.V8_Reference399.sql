CREATE TABLE [dbo].[V8_Reference399] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Code]        NCHAR (9)      NULL,
    [V8_Description] NCHAR (150)    NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Fld1233]     NVARCHAR (100) NULL,
    [V8_Fld1234]     NVARCHAR (100) NULL,
    [V8_Fld1235]     NUMERIC (4)    NULL,
    [V8_Fld1236]     NUMERIC (4)    NULL,
    [V8_Fld1237]     NVARCHAR (200) NULL,
    [V8_Fld1238]     NVARCHAR (200) NULL,
    [V8_Fld1239]     BINARY (1)     NULL,
    [V8_Fld1240]     NVARCHAR (200) NULL,
    [V8_Fld1241]     NVARCHAR (200) NULL,
    [V8_Fld1242]     NUMERIC (4)    NULL,
    [V8_Fld1243]     BINARY (1)     NULL,
    [V8_Fld1244]     BINARY (1)     NULL,
    [V8_Fld1245]     NUMERIC (3)    NULL,
    [V8_Fld1246]     NVARCHAR (150) NULL,
    [V8_Fld1247]     BINARY (16)    NULL,
    [V8_Fld1248]     BINARY (16)    NULL,
    [V8_Fld1249]     BINARY (16)    NULL,
    [V8_Fld1250]     BINARY (16)    NULL,
    [V8_Fld1251]     BINARY (16)    NULL,
    [V8_Fld1252]     BINARY (16)    NULL,
    [V8_Fld1253]     NTEXT          NULL,
    [V8_Fld1254]     BINARY (1)     NULL,
    [V8_Fld1255]     BINARY (1)     NULL,
    [V8_Fld1256]     BINARY (1)     NULL,
    [V8_Fld1257]     NUMERIC (2)    NULL,
    [V8_Fld1258]     BINARY (16)    NULL,
    [V8_Fld1259]     BINARY (1)     NULL,
    [V8_Fld1260]     BINARY (16)    NULL,
    [V8_Fld1261]     BINARY (1)     NULL,
    [V8_Fld1262]     NUMERIC (2)    NULL,
    [V8_Fld1263]     BINARY (1)     NULL,
    [V8_Fld1264]     BINARY (1)     NULL,
    [V8_Fld1265]     BINARY (1)     NULL,
    [V8_Fld1266]     BINARY (1)     NULL,
    [V8_Fld1267]     BINARY (1)     NULL,
    [V8_Fld1268]     BINARY (1)     NULL,
    [V8_Fld1269]     BINARY (1)     NULL,
    [V8_Fld1270]     BINARY (1)     NULL,
    [V8_Fld1271]     NUMERIC (3)    NULL,
    [V8_Fld1272]     BINARY (1)     NULL,
    [V8_Fld1273]     NVARCHAR (200) NULL,
    [V8_Fld1274]     BINARY (1)     NULL,
    [V8_Fld1275]     BINARY (1)     NULL,
    [V8_Fld1276]     BINARY (16)    NULL,
    [V8_Fld1277]     BINARY (1)     NULL,
    [V8_Fld1278]     BINARY (1)     NULL,
    CONSTRAINT [PK_V8_Reference399] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference399_1]
    ON [dbo].[V8_Reference399]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference399_2]
    ON [dbo].[V8_Reference399]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference399_3]
    ON [dbo].[V8_Reference399]([V8_Fld1246] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference399_4]
    ON [dbo].[V8_Reference399]([V8_Fld1246] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference399_5]
    ON [dbo].[V8_Reference399]([V8_Fld1278] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference399_6]
    ON [dbo].[V8_Reference399]([V8_Fld1258] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference399_7]
    ON [dbo].[V8_Reference399]([V8_Fld1277] ASC, [V8_ID] ASC);

