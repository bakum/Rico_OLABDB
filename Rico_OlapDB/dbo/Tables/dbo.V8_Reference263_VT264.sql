CREATE TABLE [dbo].[V8_Reference263_VT264] (
    [V8_ID]           BINARY (16)     NULL,
    [V8_LineNo]       NUMERIC (5)     NULL,
    [V8_Fld668]       BINARY (16)     NULL,
    [V8_Fld669_Type]  NUMERIC (1)     NULL,
    [V8_Fld669_RTRef] NUMERIC (8)     NULL,
    [V8_Fld669_RRef]  BINARY (16)     NULL,
    [V8_Fld670]       BINARY (16)     NULL,
    [V8_Fld671]       NUMERIC (15, 3) NULL,
    [V8_Fld672]       BINARY (16)     NULL,
    [V8_Fld673]       BINARY (16)     NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference263_VT264_1]
    ON [dbo].[V8_Reference263_VT264]([V8_ID] ASC, [V8_LineNo] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference263_VT264_2]
    ON [dbo].[V8_Reference263_VT264]([V8_Fld669_Type] ASC, [V8_Fld669_RTRef] ASC, [V8_Fld669_RRef] ASC);

