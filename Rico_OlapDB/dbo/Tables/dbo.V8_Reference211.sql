CREATE TABLE [dbo].[V8_Reference211] (
    [V8_ID]          BINARY (16)   NOT NULL,
    [V8_Code]        NCHAR (9)     NULL,
    [V8_Description] NCHAR (100)   NULL,
    [V8_Marked]      BINARY (1)    NULL,
    [V8_Fld290]      DATETIME      NULL,
    [V8_Fld291]      NVARCHAR (50) NULL,
    [V8_Fld292]      NUMERIC (2)   NULL,
    [V8_Fld293]      BINARY (1)    NULL,
    [V8_Fld294]      NTEXT         NULL,
    [V8_Fld295]      NVARCHAR (50) NULL,
    [V8_Fld296]      NVARCHAR (50) NULL,
    [V8_Fld297]      BINARY (16)   NULL,
    CONSTRAINT [PK_V8_Reference211] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference211_1]
    ON [dbo].[V8_Reference211]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference211_2]
    ON [dbo].[V8_Reference211]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference211_3]
    ON [dbo].[V8_Reference211]([V8_Fld290] ASC, [V8_ID] ASC);

