CREATE TABLE [dbo].[V8_Reference391] (
    [V8_ID]          BINARY (16) NOT NULL,
    [V8_Code]        NCHAR (9)   NULL,
    [V8_Description] NCHAR (100) NULL,
    [V8_Marked]      BINARY (1)  NULL,
    [V8_Owner]       BINARY (16) NULL,
    [V8_Fld1221]     BINARY (16) NULL,
    [V8_Fld1222]     BINARY (1)  NULL,
    [V8_Fld1223]     BINARY (16) NULL,
    [V8_Fld1224]     NTEXT       NULL,
    [V8_Fld1225]     NTEXT       NULL,
    CONSTRAINT [PK_V8_Reference391] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference391_1]
    ON [dbo].[V8_Reference391]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference391_2]
    ON [dbo].[V8_Reference391]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference391_3]
    ON [dbo].[V8_Reference391]([V8_Owner] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference391_4]
    ON [dbo].[V8_Reference391]([V8_Owner] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference391_5]
    ON [dbo].[V8_Reference391]([V8_Fld1223] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference391_6]
    ON [dbo].[V8_Reference391]([V8_Owner] ASC, [V8_Fld1223] ASC, [V8_ID] ASC);

