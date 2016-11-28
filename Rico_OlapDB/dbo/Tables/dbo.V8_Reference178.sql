CREATE TABLE [dbo].[V8_Reference178] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Description] NCHAR (150)    NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Fld222]      NTEXT          NULL,
    [V8_Fld223]      NUMERIC (6, 2) NULL,
    [V8_Fld224]      BINARY (16)    NULL,
    CONSTRAINT [PK_V8_Reference178] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference178_1]
    ON [dbo].[V8_Reference178]([V8_Description] ASC, [V8_ID] ASC);

