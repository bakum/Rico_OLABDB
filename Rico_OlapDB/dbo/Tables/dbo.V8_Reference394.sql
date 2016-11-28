CREATE TABLE [dbo].[V8_Reference394] (
    [V8_ID]          BINARY (16)     NOT NULL,
    [V8_Code]        NUMERIC (1)     NULL,
    [V8_Description] NCHAR (150)     NULL,
    [V8_Marked]      BINARY (1)      NULL,
    [V8_Owner]       BINARY (16)     NULL,
    [V8_Fld1230]     NUMERIC (10, 3) NULL,
    CONSTRAINT [PK_V8_Reference394] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference394_1]
    ON [dbo].[V8_Reference394]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference394_2]
    ON [dbo].[V8_Reference394]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference394_3]
    ON [dbo].[V8_Reference394]([V8_Owner] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference394_4]
    ON [dbo].[V8_Reference394]([V8_Owner] ASC, [V8_Description] ASC, [V8_ID] ASC);

