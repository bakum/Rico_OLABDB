CREATE TABLE [dbo].[V8_Reference384_VT386] (
    [V8_ID]            BINARY (16)     NULL,
    [V8_LineNo]        NUMERIC (5)     NULL,
    [V8_Fld1194]       BINARY (16)     NULL,
    [V8_Fld1195_Type]  NUMERIC (1)     NULL,
    [V8_Fld1195_L]     BINARY (1)      NULL,
    [V8_Fld1195_S]     NVARCHAR (200)  NULL,
    [V8_Fld1195_T]     DATETIME        NULL,
    [V8_Fld1195_N]     NUMERIC (15, 2) NULL,
    [V8_Fld1195_RTRef] NUMERIC (8)     NULL,
    [V8_Fld1195_RRef]  BINARY (16)     NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference384_VT386_1]
    ON [dbo].[V8_Reference384_VT386]([V8_ID] ASC, [V8_LineNo] ASC);

