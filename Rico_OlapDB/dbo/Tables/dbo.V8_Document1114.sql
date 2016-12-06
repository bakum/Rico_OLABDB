﻿CREATE TABLE [dbo].[V8_Document1114] (
    [V8_ID]       BINARY (16) NOT NULL,
    [V8_Marked]   BINARY (1)  NULL,
    [V8_DateTime] DATETIME    NULL,
    [V8_Number]   NCHAR (11)  NULL,
    [V8_Posted]   BINARY (1)  NULL,
    [V8_Fld10118] BINARY (16) NULL,
    [V8_Fld10121] BINARY (16) NULL,
    [V8_Fld10139] BINARY (16) NULL,
    CONSTRAINT [PK_V8_Document1114] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);




GO



GO



GO
CREATE NONCLUSTERED INDEX [IND_V8_Document1114_2]
    ON [dbo].[V8_Document1114]([V8_Number] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Document1114_1]
    ON [dbo].[V8_Document1114]([V8_DateTime] ASC, [V8_ID] ASC);

