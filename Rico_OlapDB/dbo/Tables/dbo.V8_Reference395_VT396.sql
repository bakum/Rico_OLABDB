﻿CREATE TABLE [dbo].[V8_Reference395_VT396] (
    [V8_ID]      BINARY (16) NULL,
    [V8_LineNo]  NUMERIC (5) NULL,
    [V8_Fld1231] BINARY (16) NULL,
    [V8_Fld1232] NUMERIC (5) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference395_VT396_1]
    ON [dbo].[V8_Reference395_VT396]([V8_ID] ASC, [V8_LineNo] ASC);

