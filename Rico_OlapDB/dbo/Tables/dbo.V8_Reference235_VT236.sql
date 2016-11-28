CREATE TABLE [dbo].[V8_Reference235_VT236] (
    [V8_ID]           BINARY (16)    NULL,
    [V8_LineNo]       NUMERIC (5)    NULL,
    [V8_Fld389]       BINARY (16)    NULL,
    [V8_Fld390]       BINARY (16)    NULL,
    [V8_Fld391]       BINARY (16)    NULL,
    [V8_Fld392]       BINARY (16)    NULL,
    [V8_Fld393]       BINARY (16)    NULL,
    [V8_Fld394]       BINARY (16)    NULL,
    [V8_Fld395]       BINARY (16)    NULL,
    [V8_Fld396]       BINARY (16)    NULL,
    [V8_Fld397_Type]  NUMERIC (1)    NULL,
    [V8_Fld397_RTRef] NUMERIC (8)    NULL,
    [V8_Fld397_RRef]  BINARY (16)    NULL,
    [V8_Fld398_Type]  NUMERIC (1)    NULL,
    [V8_Fld398_RTRef] NUMERIC (8)    NULL,
    [V8_Fld398_RRef]  BINARY (16)    NULL,
    [V8_Fld399_Type]  NUMERIC (1)    NULL,
    [V8_Fld399_RTRef] NUMERIC (8)    NULL,
    [V8_Fld399_RRef]  BINARY (16)    NULL,
    [V8_Fld400]       BINARY (16)    NULL,
    [V8_Fld401_Type]  NUMERIC (1)    NULL,
    [V8_Fld401_RTRef] NUMERIC (8)    NULL,
    [V8_Fld401_RRef]  BINARY (16)    NULL,
    [V8_Fld402]       NUMERIC (6, 3) NULL,
    [V8_Fld403_Type]  NUMERIC (1)    NULL,
    [V8_Fld403_RTRef] NUMERIC (8)    NULL,
    [V8_Fld403_RRef]  BINARY (16)    NULL,
    [V8_Fld404]       BINARY (16)    NULL,
    [V8_Fld405]       BINARY (16)    NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference235_VT236_1]
    ON [dbo].[V8_Reference235_VT236]([V8_ID] ASC, [V8_LineNo] ASC);

