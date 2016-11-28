CREATE TABLE [dbo].[V8_Reference281] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (25)  NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Fld719]      BINARY (1)  NULL,
    [V8_Fld720]      BINARY (1)  NULL,
    [V8_Fld721]      BINARY (1)  NULL,
    [V8_Fld722]      BINARY (1)  NULL,
    [V8_Fld723]      IMAGE       NULL,
    [V8_Fld724]      IMAGE       NULL,
    CONSTRAINT [PK_V8_Reference281] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference281_1]
    ON [dbo].[V8_Reference281]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference281_2]
    ON [dbo].[V8_Reference281]([V8_Description] ASC, [V8_ID] ASC);

