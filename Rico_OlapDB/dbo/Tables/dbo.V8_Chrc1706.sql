CREATE TABLE [dbo].[V8_Chrc1706] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Code]        NCHAR (11)  NULL,
    [V8_Description] NCHAR (50)  NULL,
    [V8_Type]        NTEXT       NULL,
    CONSTRAINT [PK_V8_Chrc1706] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Chrc1706_1]
    ON [dbo].[V8_Chrc1706]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Chrc1706_2]
    ON [dbo].[V8_Chrc1706]([V8_Description] ASC, [V8_ID] ASC);

