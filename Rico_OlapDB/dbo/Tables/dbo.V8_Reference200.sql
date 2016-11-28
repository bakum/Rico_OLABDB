CREATE TABLE [dbo].[V8_Reference200] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Code]        NCHAR (3)      NULL,
    [V8_Description] NCHAR (60)     NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Fld279]      NVARCHAR (100) NULL,
    CONSTRAINT [PK_V8_Reference200] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference200_1]
    ON [dbo].[V8_Reference200]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference200_2]
    ON [dbo].[V8_Reference200]([V8_Description] ASC, [V8_ID] ASC);

