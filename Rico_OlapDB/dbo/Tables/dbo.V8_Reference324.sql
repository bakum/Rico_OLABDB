CREATE TABLE [dbo].[V8_Reference324] (
    [V8_ID]     BINARY (16) NOT NULL,
    [V8_Code]   NCHAR (20)  NULL,
    [V8_Marked] BINARY (1)  NULL,
    [V8_Owner]  BINARY (16) NULL,
    CONSTRAINT [PK_V8_Reference324] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference324_1]
    ON [dbo].[V8_Reference324]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference324_2]
    ON [dbo].[V8_Reference324]([V8_Owner] ASC, [V8_Code] ASC, [V8_ID] ASC);

