CREATE TABLE [dbo].[V8_Reference373] (
    [V8_ID]            BINARY (16) NOT NULL,
    [V8_Code]          NCHAR (9)   NULL,
    [V8_Description]   NCHAR (100) NULL,
    [V8_Marked]        BINARY (1)  NULL,
    [V8_Fld1127]       BINARY (16) NULL,
    [V8_Fld1128_Type]  NUMERIC (1) NULL,
    [V8_Fld1128_RTRef] NUMERIC (8) NULL,
    [V8_Fld1128_RRef]  BINARY (16) NULL,
    [V8_Fld1129_Type]  NUMERIC (1) NULL,
    [V8_Fld1129_RTRef] NUMERIC (8) NULL,
    [V8_Fld1129_RRef]  BINARY (16) NULL,
    [V8_Fld1130_Type]  NUMERIC (1) NULL,
    [V8_Fld1130_RTRef] NUMERIC (8) NULL,
    [V8_Fld1130_RRef]  BINARY (16) NULL,
    [V8_Fld1131]       BINARY (16) NULL,
    [V8_Fld1132_Type]  NUMERIC (1) NULL,
    [V8_Fld1132_RTRef] NUMERIC (8) NULL,
    [V8_Fld1132_RRef]  BINARY (16) NULL,
    [V8_Fld1133_Type]  NUMERIC (1) NULL,
    [V8_Fld1133_RTRef] NUMERIC (8) NULL,
    [V8_Fld1133_RRef]  BINARY (16) NULL,
    [V8_Fld1134_Type]  NUMERIC (1) NULL,
    [V8_Fld1134_RTRef] NUMERIC (8) NULL,
    [V8_Fld1134_RRef]  BINARY (16) NULL,
    [V8_Fld1135]       BINARY (16) NULL,
    [V8_Fld1136_Type]  NUMERIC (1) NULL,
    [V8_Fld1136_RTRef] NUMERIC (8) NULL,
    [V8_Fld1136_RRef]  BINARY (16) NULL,
    [V8_Fld1137_Type]  NUMERIC (1) NULL,
    [V8_Fld1137_RTRef] NUMERIC (8) NULL,
    [V8_Fld1137_RRef]  BINARY (16) NULL,
    [V8_Fld1138_Type]  NUMERIC (1) NULL,
    [V8_Fld1138_RTRef] NUMERIC (8) NULL,
    [V8_Fld1138_RRef]  BINARY (16) NULL,
    [V8_Fld1139]       BINARY (16) NULL,
    [V8_Fld1140_Type]  NUMERIC (1) NULL,
    [V8_Fld1140_RTRef] NUMERIC (8) NULL,
    [V8_Fld1140_RRef]  BINARY (16) NULL,
    [V8_Fld1141_Type]  NUMERIC (1) NULL,
    [V8_Fld1141_RTRef] NUMERIC (8) NULL,
    [V8_Fld1141_RRef]  BINARY (16) NULL,
    [V8_Fld1142_Type]  NUMERIC (1) NULL,
    [V8_Fld1142_RTRef] NUMERIC (8) NULL,
    [V8_Fld1142_RRef]  BINARY (16) NULL,
    CONSTRAINT [PK_V8_Reference373] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference373_1]
    ON [dbo].[V8_Reference373]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference373_2]
    ON [dbo].[V8_Reference373]([V8_Description] ASC, [V8_ID] ASC);

