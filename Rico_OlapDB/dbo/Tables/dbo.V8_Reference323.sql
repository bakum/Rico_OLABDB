CREATE TABLE [dbo].[V8_Reference323] (
    [V8_ID]          BINARY (16)   NOT NULL,
    [V8_Code]        NCHAR (9)     NULL,
    [V8_Description] NCHAR (100)   NULL,
    [V8_Marked]      BINARY (1)    NULL,
    [V8_Owner]       BINARY (16)   NULL,
    [V8_Fld845]      NVARCHAR (25) NULL,
    [V8_Fld846]      DATETIME      NULL,
    [V8_Fld847]      BINARY (16)   NULL,
    [V8_Fld848]      NTEXT         NULL,
    CONSTRAINT [PK_V8_Reference323] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference323_1]
    ON [dbo].[V8_Reference323]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference323_2]
    ON [dbo].[V8_Reference323]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference323_3]
    ON [dbo].[V8_Reference323]([V8_Owner] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference323_4]
    ON [dbo].[V8_Reference323]([V8_Owner] ASC, [V8_Description] ASC, [V8_ID] ASC);

