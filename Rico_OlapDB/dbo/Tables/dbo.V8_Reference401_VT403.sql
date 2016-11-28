﻿CREATE TABLE [dbo].[V8_Reference401_VT403] (
    [V8_ID]      BINARY (16)    NULL,
    [V8_LineNo]  NUMERIC (5)    NULL,
    [V8_Fld1294] BINARY (16)    NULL,
    [V8_Fld1295] BINARY (16)    NULL,
    [V8_Fld1296] BINARY (16)    NULL,
    [V8_Fld1297] NVARCHAR (50)  NULL,
    [V8_Fld1298] NUMERIC (4)    NULL,
    [V8_Fld1299] NVARCHAR (100) NULL,
    [V8_Fld1300] NVARCHAR (50)  NULL,
    [V8_Fld1301] NVARCHAR (50)  NULL,
    [V8_Fld1302] BINARY (16)    NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference401_VT403_1]
    ON [dbo].[V8_Reference401_VT403]([V8_ID] ASC, [V8_LineNo] ASC);

