CREATE TABLE [dbo].[V8_Reference177] (
    [V8_ID]          BINARY (16)     NOT NULL,
    [V8_Code]        NCHAR (9)       NULL,
    [V8_Description] NCHAR (50)      NULL,
    [V8_Marked]      BINARY (1)      NULL,
    [V8_Owner_Type]  NUMERIC (1)     NULL,
    [V8_Owner_RTRef] NUMERIC (8)     NULL,
    [V8_Owner_RRef]  BINARY (16)     NULL,
    [V8_Fld216]      BINARY (16)     NULL,
    [V8_Fld217]      NUMERIC (15, 5) NULL,
    [V8_Fld218]      NUMERIC (15, 5) NULL,
    [V8_Fld219]      NUMERIC (10, 3) NULL,
    [V8_Fld220]      NUMERIC (10)    NULL,
    [V8_Fld221]      BINARY (1)      NULL,
    CONSTRAINT [PK_V8_Reference177] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference177_1]
    ON [dbo].[V8_Reference177]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference177_2]
    ON [dbo].[V8_Reference177]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference177_3]
    ON [dbo].[V8_Reference177]([V8_Owner_Type] ASC, [V8_Owner_RTRef] ASC, [V8_Owner_RRef] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference177_4]
    ON [dbo].[V8_Reference177]([V8_Owner_Type] ASC, [V8_Owner_RTRef] ASC, [V8_Owner_RRef] ASC, [V8_Description] ASC, [V8_ID] ASC);

