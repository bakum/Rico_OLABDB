CREATE TABLE [dbo].[V8_Reference379_VT380] (
    [V8_ID]            BINARY (16)     NULL,
    [V8_LineNo]        NUMERIC (5)     NULL,
    [V8_Fld1159]       NVARCHAR (10)   NULL,
    [V8_Fld1160_Type]  NUMERIC (1)     NULL,
    [V8_Fld1160_RTRef] NUMERIC (8)     NULL,
    [V8_Fld1160_RRef]  BINARY (16)     NULL,
    [V8_Fld1161]       BINARY (16)     NULL,
    [V8_Fld1162]       NUMERIC (10)    NULL,
    [V8_Fld1163]       NUMERIC (15, 3) NULL,
    [V8_Fld1164]       NVARCHAR (20)   NULL,
    [V8_Fld1165]       BINARY (1)      NULL,
    [V8_Fld1166_Type]  NUMERIC (1)     NULL,
    [V8_Fld1166_RTRef] NUMERIC (8)     NULL,
    [V8_Fld1166_RRef]  BINARY (16)     NULL,
    [V8_Fld1167]       BINARY (16)     NULL,
    [V8_Fld1168]       NUMERIC (10)    NULL,
    [V8_Fld1169_Type]  NUMERIC (1)     NULL,
    [V8_Fld1169_RTRef] NUMERIC (8)     NULL,
    [V8_Fld1169_RRef]  BINARY (16)     NULL,
    [V8_Fld1170]       BINARY (16)     NULL,
    [V8_Fld1171]       NUMERIC (10)    NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference379_VT380_1]
    ON [dbo].[V8_Reference379_VT380]([V8_ID] ASC, [V8_LineNo] ASC);

