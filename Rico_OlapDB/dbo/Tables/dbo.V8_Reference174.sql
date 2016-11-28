CREATE TABLE [dbo].[V8_Reference174] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Description] NCHAR (100) NULL,
    [V8_Marked]      BINARY (1)  NULL,
    CONSTRAINT [PK_V8_Reference174] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference174_1]
    ON [dbo].[V8_Reference174]([V8_Description] ASC, [V8_ID] ASC);

