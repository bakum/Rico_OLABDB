CREATE TABLE [dbo].[V8_Reference111] (
    [V8_ID]          BINARY (16)   NOT NULL,
    [V8_Code]        NCHAR (9)     NULL,
    [V8_Description] NCHAR (50)    NULL,
    [V8_Marked]      BINARY (1)    NULL,
    [V8_Owner_Type]  NUMERIC (1)   NULL,
    [V8_Owner_RTRef] NUMERIC (8)   NULL,
    [V8_Owner_RRef]  BINARY (16)   NULL,
    [V8_Fld6]        NVARCHAR (20) NULL,
    [V8_Fld7]        BINARY (16)   NULL,
    [V8_Fld8]        NTEXT         NULL,
    [V8_Fld9]        NVARCHAR (15) NULL,
    [V8_Fld10]       BINARY (16)   NULL,
    [V8_Fld11]       NVARCHAR (30) NULL,
    [V8_Fld12]       DATETIME      NULL,
    [V8_Fld13]       DATETIME      NULL,
    [V8_Fld14]       BINARY (1)    NULL,
    CONSTRAINT [PK_V8_Reference111] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference111_1]
    ON [dbo].[V8_Reference111]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference111_2]
    ON [dbo].[V8_Reference111]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference111_3]
    ON [dbo].[V8_Reference111]([V8_Owner_Type] ASC, [V8_Owner_RTRef] ASC, [V8_Owner_RRef] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference111_4]
    ON [dbo].[V8_Reference111]([V8_Owner_Type] ASC, [V8_Owner_RTRef] ASC, [V8_Owner_RRef] ASC, [V8_Description] ASC, [V8_ID] ASC);

