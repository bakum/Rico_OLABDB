CREATE TABLE [dbo].[V8_Reference149] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Code]        NCHAR (9)      NULL,
    [V8_Description] NCHAR (50)     NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Fld110]      NTEXT          NULL,
    [V8_Fld111]      NUMERIC (6, 3) NULL,
    [V8_Fld112]      NUMERIC (6, 3) NULL,
    [V8_Fld113]      NUMERIC (6, 3) NULL,
    [V8_Fld114]      NUMERIC (6, 3) NULL,
    [V8_Fld115]      NUMERIC (6, 3) NULL,
    [V8_Fld116]      NUMERIC (6, 3) NULL,
    [V8_Fld117]      NUMERIC (6, 3) NULL,
    [V8_Fld118]      NUMERIC (6, 3) NULL,
    [V8_Fld119]      NUMERIC (6, 3) NULL,
    [V8_Fld120]      NUMERIC (6, 3) NULL,
    [V8_Fld121]      NUMERIC (6, 3) NULL,
    [V8_Fld122]      NUMERIC (6, 3) NULL,
    CONSTRAINT [PK_V8_Reference149] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference149_1]
    ON [dbo].[V8_Reference149]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference149_2]
    ON [dbo].[V8_Reference149]([V8_Description] ASC, [V8_ID] ASC);

