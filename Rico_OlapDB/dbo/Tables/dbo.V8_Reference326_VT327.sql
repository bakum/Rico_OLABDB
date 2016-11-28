﻿CREATE TABLE [dbo].[V8_Reference326_VT327] (
    [V8_ID]     BINARY (16) NULL,
    [V8_LineNo] NUMERIC (5) NULL,
    [V8_Fld856] DATETIME    NULL,
    [V8_Fld857] DATETIME    NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference326_VT327_1]
    ON [dbo].[V8_Reference326_VT327]([V8_ID] ASC, [V8_LineNo] ASC);

