CREATE TABLE [dbo].[V8_Reference270] (
    [V8_ID]          BINARY (16)     NOT NULL,
    [V8_Code]        NCHAR (9)       NULL,
    [V8_Description] NCHAR (50)      NULL,
    [V8_Marked]      BINARY (1)      NULL,
    [V8_Fld689]      NTEXT           NULL,
    [V8_Fld690]      BINARY (16)     NULL,
    [V8_Fld691]      NVARCHAR (256)  NULL,
    [V8_Fld692]      IMAGE           NULL,
    [V8_Fld693]      NUMERIC (10, 2) NULL,
    [V8_Fld694]      NCHAR (36)      NULL,
    [V8_Fld695]      NUMERIC (10, 2) NULL,
    CONSTRAINT [PK_V8_Reference270] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference270_1]
    ON [dbo].[V8_Reference270]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference270_2]
    ON [dbo].[V8_Reference270]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference270_3]
    ON [dbo].[V8_Reference270]([V8_Fld693] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference270_4]
    ON [dbo].[V8_Reference270]([V8_Fld695] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference270_5]
    ON [dbo].[V8_Reference270]([V8_Fld694] ASC, [V8_ID] ASC);

