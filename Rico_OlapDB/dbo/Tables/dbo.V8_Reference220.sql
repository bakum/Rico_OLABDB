CREATE TABLE [dbo].[V8_Reference220] (
    [V8_ID]          BINARY (16)     NOT NULL,
    [V8_Description] NCHAR (150)     NULL,
    [V8_Marked]      BINARY (1)      NULL,
    [V8_Parent]      BINARY (16)     NULL,
    [V8_Folder]      BINARY (1)      NULL,
    [V8_Fld353]      NTEXT           NULL,
    [V8_Fld354]      NUMERIC (8, 2)  NULL,
    [V8_Fld355]      NUMERIC (10, 2) NULL,
    [V8_Fld356]      BINARY (16)     NULL,
    [V8_Fld357]      BINARY (16)     NULL,
    [V8_Fld358]      BINARY (1)      NULL,
    CONSTRAINT [PK_V8_Reference220] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference220_1]
    ON [dbo].[V8_Reference220]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference220_2]
    ON [dbo].[V8_Reference220]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

