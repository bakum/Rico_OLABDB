﻿CREATE TABLE [dbo].[V8_Chrc1716] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Code]        NCHAR (11)  NULL,
    [V8_Description] NCHAR (25)  NULL,
    [V8_Type]        NTEXT       NULL,
    CONSTRAINT [PK_V8_Chrc1716] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Chrc1716_1]
    ON [dbo].[V8_Chrc1716]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Chrc1716_2]
    ON [dbo].[V8_Chrc1716]([V8_Description] ASC, [V8_ID] ASC);

