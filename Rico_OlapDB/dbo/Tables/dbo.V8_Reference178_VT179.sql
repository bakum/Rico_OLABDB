﻿CREATE TABLE [dbo].[V8_Reference178_VT179] (
    [V8_ID]     BINARY (16) NULL,
    [V8_LineNo] NUMERIC (5) NULL,
    [V8_Fld225] BINARY (16) NULL,
    [V8_Fld226] NUMERIC (3) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference178_VT179_1]
    ON [dbo].[V8_Reference178_VT179]([V8_ID] ASC, [V8_LineNo] ASC);

