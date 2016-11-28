CREATE TABLE [dbo].[V8_Reference213] (
    [V8_ID]          BINARY (16)    NOT NULL,
    [V8_Code]        NCHAR (9)      NULL,
    [V8_Description] NCHAR (100)    NULL,
    [V8_Marked]      BINARY (1)     NULL,
    [V8_Parent]      BINARY (16)    NULL,
    [V8_Folder]      BINARY (1)     NULL,
    [V8_Fld302]      NTEXT          NULL,
    [V8_Fld303]      NTEXT          NULL,
    [V8_Fld304]      NTEXT          NULL,
    [V8_Fld305]      BINARY (16)    NULL,
    [V8_Fld306]      BINARY (16)    NULL,
    [V8_Fld307]      NTEXT          NULL,
    [V8_Fld308]      NVARCHAR (12)  NULL,
    [V8_Fld309]      BINARY (16)    NULL,
    [V8_Fld310]      BINARY (16)    NULL,
    [V8_Fld311]      BINARY (16)    NULL,
    [V8_Fld312]      BINARY (16)    NULL,
    [V8_Fld313]      BINARY (16)    NULL,
    [V8_Fld314]      BINARY (1)     NULL,
    [V8_Fld315]      BINARY (1)     NULL,
    [V8_Fld316]      NTEXT          NULL,
    [V8_Fld317]      NUMERIC (3)    NULL,
    [V8_Fld318]      BINARY (16)    NULL,
    [V8_Fld319]      NVARCHAR (12)  NULL,
    [V8_Fld320]      NVARCHAR (10)  NULL,
    [V8_Fld321]      BINARY (1)     NULL,
    [V8_Fld322]      BINARY (16)    NULL,
    [V8_Fld323]      BINARY (1)     NULL,
    [V8_Fld324]      BINARY (16)    NULL,
    [V8_Fld325]      NVARCHAR (100) NULL,
    [V8_Fld326]      BINARY (16)    NULL,
    [V8_Fld327]      BINARY (16)    NULL,
    [V8_Fld328]      NUMERIC (3)    NULL,
    [V8_Fld329]      NTEXT          NULL,
    [V8_Fld330]      BINARY (1)     NULL,
    [V8_Fld331]      NTEXT          NULL,
    [V8_Fld332]      BINARY (1)     NULL,
    [V8_Fld333]      NTEXT          NULL,
    [V8_Fld334]      BINARY (1)     NULL,
    [V8_Fld335]      NTEXT          NULL,
    [V8_Fld336]      BINARY (1)     NULL,
    [V8_Fld337]      NTEXT          NULL,
    [V8_Fld338]      BINARY (1)     NULL,
    [V8_Fld339]      NTEXT          NULL,
    [V8_Fld340]      BINARY (1)     NULL,
    [V8_Fld341]      NTEXT          NULL,
    [V8_Fld342]      BINARY (1)     NULL,
    [V8_Fld343]      NTEXT          NULL,
    CONSTRAINT [PK_V8_Reference213] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_1]
    ON [dbo].[V8_Reference213]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_10]
    ON [dbo].[V8_Reference213]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld313] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_11]
    ON [dbo].[V8_Reference213]([V8_Fld308] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_12]
    ON [dbo].[V8_Reference213]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld308] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_13]
    ON [dbo].[V8_Reference213]([V8_Fld319] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_14]
    ON [dbo].[V8_Reference213]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld319] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_2]
    ON [dbo].[V8_Reference213]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_3]
    ON [dbo].[V8_Reference213]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_4]
    ON [dbo].[V8_Reference213]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_5]
    ON [dbo].[V8_Reference213]([V8_Fld305] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_6]
    ON [dbo].[V8_Reference213]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld305] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_7]
    ON [dbo].[V8_Reference213]([V8_Fld305] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_8]
    ON [dbo].[V8_Reference213]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld305] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference213_9]
    ON [dbo].[V8_Reference213]([V8_Fld313] ASC, [V8_ID] ASC);

