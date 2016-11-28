﻿CREATE TABLE [dbo].[V8_Reference150_VT151] (
    [V8_ID]     BINARY (16) NULL,
    [V8_LineNo] NUMERIC (5) NULL,
    [V8_Fld142] NUMERIC (3) NULL,
    [V8_Fld143] BINARY (16) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference150_VT151_1]
    ON [dbo].[V8_Reference150_VT151]([V8_ID] ASC, [V8_LineNo] ASC);

