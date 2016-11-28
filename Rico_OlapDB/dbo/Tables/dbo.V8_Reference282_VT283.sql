CREATE TABLE [dbo].[V8_Reference282_VT283] (
    [V8_ID]     BINARY (16)     NULL,
    [V8_LineNo] NUMERIC (5)     NULL,
    [V8_Fld727] BINARY (16)     NULL,
    [V8_Fld728] NUMERIC (15, 3) NULL
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference282_VT283_1]
    ON [dbo].[V8_Reference282_VT283]([V8_ID] ASC, [V8_LineNo] ASC);

