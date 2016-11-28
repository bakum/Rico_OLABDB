CREATE TABLE [dbo].[V8_Reference388] (
    [V8_ID]            BINARY (16)     NOT NULL,
    [V8_Code]          NCHAR (9)       NULL,
    [V8_Description]   NCHAR (25)      NULL,
    [V8_Marked]        BINARY (1)      NULL,
    [V8_Fld1196]       BINARY (16)     NULL,
    [V8_Fld1197]       BINARY (1)      NULL,
    [V8_Fld1198]       NUMERIC (15, 2) NULL,
    [V8_Fld1199_Type]  NUMERIC (1)     NULL,
    [V8_Fld1199_N]     NUMERIC (15, 2) NULL,
    [V8_Fld1199_RTRef] NUMERIC (8)     NULL,
    [V8_Fld1199_RRef]  BINARY (16)     NULL,
    [V8_Fld1200]       DATETIME        NULL,
    [V8_Fld1201]       DATETIME        NULL,
    [V8_Fld1202]       NUMERIC (15, 2) NULL,
    [V8_Fld1203]       BINARY (16)     NULL,
    [V8_Fld1204]       BINARY (16)     NULL,
    [V8_Fld1205]       BINARY (1)      NULL,
    [V8_Fld1206]       BINARY (1)      NULL,
    [V8_Fld1207]       BINARY (16)     NULL,
    CONSTRAINT [PK_V8_Reference388] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference388_1]
    ON [dbo].[V8_Reference388]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference388_2]
    ON [dbo].[V8_Reference388]([V8_Description] ASC, [V8_ID] ASC);

