CREATE TABLE [dbo].[V8_Reference135] (
    [V8_ID]          BINARY (16)   NOT NULL,
    [V8_Code]        NCHAR (9)     NULL,
    [V8_Description] NCHAR (75)    NULL,
    [V8_Marked]      BINARY (1)    NULL,
    [V8_Fld61]       BINARY (1)    NULL,
    [V8_Fld62]       NVARCHAR (50) NULL,
    [V8_Fld63]       BINARY (1)    NULL,
    [V8_Fld64]       BINARY (1)    NULL,
    [V8_Fld65]       BINARY (16)   NULL,
    [V8_Fld66]       BINARY (1)    NULL,
    [V8_Fld67]       BINARY (1)    NULL,
    CONSTRAINT [PK_V8_Reference135] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference135_1]
    ON [dbo].[V8_Reference135]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference135_2]
    ON [dbo].[V8_Reference135]([V8_Description] ASC, [V8_ID] ASC);

