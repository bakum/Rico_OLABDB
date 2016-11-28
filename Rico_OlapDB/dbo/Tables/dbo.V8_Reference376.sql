CREATE TABLE [dbo].[V8_Reference376] (
    [V8_ID]     BINARY (16)  NOT NULL,
    [V8_Code]   NUMERIC (20) NULL,
    [V8_Marked] BINARY (1)   NULL,
    CONSTRAINT [PK_V8_Reference376] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference376_1]
    ON [dbo].[V8_Reference376]([V8_Code] ASC, [V8_ID] ASC);

