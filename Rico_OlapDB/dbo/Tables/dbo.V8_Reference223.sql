CREATE TABLE [dbo].[V8_Reference223] (
    [V8_ID]          BINARY (16)   NOT NULL,
    [V8_Code]        NCHAR (9)     NULL,
    [V8_Description] NCHAR (100)   NULL,
    [V8_Marked]      BINARY (1)    NULL,
    [V8_Fld362]      NVARCHAR (50) NULL,
    [V8_Fld363]      NVARCHAR (50) NULL,
    [V8_Fld364]      NVARCHAR (50) NULL,
    [V8_Fld365]      DATETIME      NULL,
    [V8_Fld366]      NTEXT         NULL,
    [V8_Fld367]      BINARY (1)    NULL,
    [V8_Fld368]      NUMERIC (2)   NULL,
    [V8_Fld369]      BINARY (16)   NULL,
    CONSTRAINT [PK_V8_Reference223] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference223_1]
    ON [dbo].[V8_Reference223]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference223_2]
    ON [dbo].[V8_Reference223]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference223_3]
    ON [dbo].[V8_Reference223]([V8_Fld369] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference223_4]
    ON [dbo].[V8_Reference223]([V8_Fld365] ASC, [V8_ID] ASC);

