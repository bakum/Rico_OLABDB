﻿CREATE TABLE [dbo].[V8_Reference401_VT404] (
    [V8_ID]      BINARY (16)    NULL,
    [V8_LineNo]  NUMERIC (5)    NULL,
    [V8_Fld1303] NVARCHAR (100) NULL,
    [V8_Fld1304] DATETIME       NULL,
    [V8_Fld1305] DATETIME       NULL,
    [V8_Fld1306] NVARCHAR (100) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference401_VT404_1]
    ON [dbo].[V8_Reference401_VT404]([V8_ID] ASC, [V8_LineNo] ASC);

