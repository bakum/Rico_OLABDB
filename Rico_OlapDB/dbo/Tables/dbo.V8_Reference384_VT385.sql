CREATE TABLE [dbo].[V8_Reference384_VT385] (
    [V8_ID]            BINARY (16)     NULL,
    [V8_LineNo]        NUMERIC (5)     NULL,
    [V8_Fld1188]       BINARY (16)     NULL,
    [V8_Fld1189]       BINARY (16)     NULL,
    [V8_Fld1190]       BINARY (16)     NULL,
    [V8_Fld1191]       BINARY (16)     NULL,
    [V8_Fld1192_Type]  NUMERIC (1)     NULL,
    [V8_Fld1192_L]     BINARY (1)      NULL,
    [V8_Fld1192_S]     NVARCHAR (200)  NULL,
    [V8_Fld1192_T]     DATETIME        NULL,
    [V8_Fld1192_N]     NUMERIC (15, 2) NULL,
    [V8_Fld1192_RTRef] NUMERIC (8)     NULL,
    [V8_Fld1192_RRef]  BINARY (16)     NULL,
    [V8_Fld1193]       NUMERIC (1)     NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference384_VT385_1]
    ON [dbo].[V8_Reference384_VT385]([V8_ID] ASC, [V8_LineNo] ASC);

