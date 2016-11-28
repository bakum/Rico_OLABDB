﻿CREATE TABLE [dbo].[V8_Reference392] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Code]        NCHAR (9)      NULL,
    [V8_Description] NCHAR (100)    NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Fld1226]     BINARY (16)    NULL,
    [V8_Fld1227]     NVARCHAR (256) NULL,
    CONSTRAINT [PK_V8_Reference392] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference392_1]
    ON [dbo].[V8_Reference392]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference392_2]
    ON [dbo].[V8_Reference392]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference392_3]
    ON [dbo].[V8_Reference392]([V8_Fld1226] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference392_4]
    ON [dbo].[V8_Reference392]([V8_Fld1227] ASC, [V8_ID] ASC);

