CREATE TABLE [dbo].[V8_Reference150] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Description] NCHAR (50)     NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Fld123]      BINARY (16)    NULL,
    [V8_Fld124]      BINARY (1)     NULL,
    [V8_Fld125]      BINARY (16)    NULL,
    [V8_Fld126]      BINARY (16)    NULL,
    [V8_Fld127]      DATETIME       NULL,
    [V8_Fld128]      NUMERIC (7, 2) NULL,
    [V8_Fld129]      BINARY (1)     NULL,
    [V8_Fld130]      BINARY (16)    NULL,
    [V8_Fld131]      DATETIME       NULL,
    [V8_Fld132]      DATETIME       NULL,
    [V8_Fld133]      DATETIME       NULL,
    [V8_Fld134]      BINARY (1)     NULL,
    [V8_Fld135]      BINARY (1)     NULL,
    [V8_Fld136]      BINARY (1)     NULL,
    [V8_Fld137]      BINARY (1)     NULL,
    [V8_Fld138]      BINARY (1)     NULL,
    [V8_Fld139]      BINARY (16)    NULL,
    [V8_Fld140]      BINARY (1)     NULL,
    [V8_Fld141]      BINARY (1)     NULL,
    CONSTRAINT [PK_V8_Reference150] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference150_1]
    ON [dbo].[V8_Reference150]([V8_Description] ASC, [V8_ID] ASC);

