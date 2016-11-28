CREATE TABLE [dbo].[V8_Reference125] (
    [V8_ID]          BINARY (16)  NOT NULL,
    [V8_Code]        NCHAR (3)    NULL,
    [V8_Description] NCHAR (100)  NULL,
    [V8_Marked]      BINARY (1)   NULL,
    [V8_Fld37]       BINARY (16)  NULL,
    [V8_Fld38]       BINARY (16)  NULL,
    [V8_Fld39]       BINARY (1)   NULL,
    [V8_Fld40]       BINARY (16)  NULL,
    [V8_Fld41]       BINARY (16)  NULL,
    [V8_Fld42]       BINARY (16)  NULL,
    [V8_Fld43]       BINARY (1)   NULL,
    [V8_Fld44]       BINARY (16)  NULL,
    [V8_Fld45]       NVARCHAR (2) NULL,
    CONSTRAINT [PK_V8_Reference125] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference125_1]
    ON [dbo].[V8_Reference125]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference125_2]
    ON [dbo].[V8_Reference125]([V8_Description] ASC, [V8_ID] ASC);

