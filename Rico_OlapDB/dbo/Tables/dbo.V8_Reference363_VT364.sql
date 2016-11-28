﻿CREATE TABLE [dbo].[V8_Reference363_VT364] (
    [V8_ID]      BINARY (16) NULL,
    [V8_LineNo]  NUMERIC (5) NULL,
    [V8_Fld1111] BINARY (16) NULL,
    [V8_Fld1112] NUMERIC (2) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference363_VT364_1]
    ON [dbo].[V8_Reference363_VT364]([V8_ID] ASC, [V8_LineNo] ASC);

