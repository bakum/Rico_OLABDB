﻿CREATE TABLE [dbo].[V8_Reference220_VT221] (
    [V8_ID]     BINARY (16) NULL,
    [V8_LineNo] NUMERIC (5) NULL,
    [V8_Fld359] BINARY (16) NULL,
    [V8_Fld360] NUMERIC (3) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference220_VT221_1]
    ON [dbo].[V8_Reference220_VT221]([V8_ID] ASC, [V8_LineNo] ASC);

