CREATE TABLE [dbo].[V8_Reference390] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Code]        NCHAR (9)      NULL,
    [V8_Description] NCHAR (25)     NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Fld1212]     BINARY (16)    NULL,
    [V8_Fld1213]     BINARY (16)    NULL,
    [V8_Fld1214]     BINARY (1)     NULL,
    [V8_Fld1215]     NUMERIC (5, 2) NULL,
    [V8_Fld1216]     BINARY (1)     NULL,
    [V8_Fld1217]     BINARY (16)    NULL,
    [V8_Fld1218]     BINARY (1)     NULL,
    [V8_Fld1219]     NTEXT          NULL,
    [V8_Fld1220]     BINARY (16)    NULL,
    CONSTRAINT [PK_V8_Reference390] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference390_1]
    ON [dbo].[V8_Reference390]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference390_2]
    ON [dbo].[V8_Reference390]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference390_3]
    ON [dbo].[V8_Reference390]([V8_Fld1214] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference390_4]
    ON [dbo].[V8_Reference390]([V8_Fld1213] ASC, [V8_ID] ASC);

