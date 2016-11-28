CREATE TABLE [dbo].[V8_Reference170] (
    [V8_ID]           BINARY (16)     NOT NULL,
    [V8_Code]         NCHAR (9)       NULL,
    [V8_Description]  NCHAR (50)      NULL,
    [V8_Marked]       BINARY (1)      NULL,
    [V8_Parent]       BINARY (16)     NULL,
    [V8_Folder]       BINARY (1)      NULL,
    [V8_Owner]        BINARY (16)     NULL,
    [V8_Fld164]       BINARY (16)     NULL,
    [V8_Fld165]       BINARY (16)     NULL,
    [V8_Fld166]       BINARY (16)     NULL,
    [V8_Fld167]       BINARY (16)     NULL,
    [V8_Fld168]       BINARY (1)      NULL,
    [V8_Fld169]       NUMERIC (15, 2) NULL,
    [V8_Fld170]       NUMERIC (10)    NULL,
    [V8_Fld171]       NTEXT           NULL,
    [V8_Fld172]       BINARY (1)      NULL,
    [V8_Fld173]       BINARY (1)      NULL,
    [V8_Fld174]       BINARY (1)      NULL,
    [V8_Fld175]       BINARY (16)     NULL,
    [V8_Fld176]       NUMERIC (5, 2)  NULL,
    [V8_Fld177]       NUMERIC (5, 2)  NULL,
    [V8_Fld178]       BINARY (16)     NULL,
    [V8_Fld179_Type]  NUMERIC (1)     NULL,
    [V8_Fld179_RTRef] NUMERIC (8)     NULL,
    [V8_Fld179_RRef]  BINARY (16)     NULL,
    [V8_Fld180]       NUMERIC (10)    NULL,
    [V8_Fld181]       BINARY (16)     NULL,
    [V8_Fld182]       BINARY (16)     NULL,
    [V8_Fld183]       BINARY (16)     NULL,
    [V8_Fld184]       BINARY (16)     NULL,
    [V8_Fld185]       NVARCHAR (150)  NULL,
    [V8_Fld186]       BINARY (1)      NULL,
    [V8_Fld187]       DATETIME        NULL,
    [V8_Fld188]       NVARCHAR (25)   NULL,
    [V8_Fld189]       BINARY (1)      NULL,
    [V8_Fld190]       BINARY (1)      NULL,
    [V8_Fld191_Type]  NUMERIC (1)     NULL,
    [V8_Fld191_RTRef] NUMERIC (8)     NULL,
    [V8_Fld191_RRef]  BINARY (16)     NULL,
    [V8_Fld192]       BINARY (16)     NULL,
    [V8_Fld193]       DATETIME        NULL,
    [V8_Fld194]       BINARY (1)      NULL,
    [V8_Fld195]       BINARY (1)      NULL,
    [V8_Fld196]       BINARY (16)     NULL,
    [V8_Fld197]       BINARY (16)     NULL,
    [V8_Fld198]       BINARY (16)     NULL,
    [V8_Fld199]       BINARY (1)      NULL,
    [V8_Fld200]       BINARY (16)     NULL,
    [V8_Fld201]       NVARCHAR (50)   NULL,
    [V8_Fld202]       NUMERIC (10)    NULL,
    [V8_Fld203]       BINARY (16)     NULL,
    CONSTRAINT [PK_V8_Reference170] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_1]
    ON [dbo].[V8_Reference170]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_10]
    ON [dbo].[V8_Reference170]([V8_Owner] ASC, [V8_Fld175] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_11]
    ON [dbo].[V8_Reference170]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld175] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_12]
    ON [dbo].[V8_Reference170]([V8_Owner] ASC, [V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld175] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_13]
    ON [dbo].[V8_Reference170]([V8_Fld187] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_14]
    ON [dbo].[V8_Reference170]([V8_Owner] ASC, [V8_Fld187] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_15]
    ON [dbo].[V8_Reference170]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld187] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_16]
    ON [dbo].[V8_Reference170]([V8_Owner] ASC, [V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld187] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_17]
    ON [dbo].[V8_Reference170]([V8_Fld187] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_18]
    ON [dbo].[V8_Reference170]([V8_Owner] ASC, [V8_Fld187] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_19]
    ON [dbo].[V8_Reference170]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld187] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_2]
    ON [dbo].[V8_Reference170]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_20]
    ON [dbo].[V8_Reference170]([V8_Owner] ASC, [V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld187] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_3]
    ON [dbo].[V8_Reference170]([V8_Owner] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_4]
    ON [dbo].[V8_Reference170]([V8_Owner] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_5]
    ON [dbo].[V8_Reference170]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_6]
    ON [dbo].[V8_Reference170]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_7]
    ON [dbo].[V8_Reference170]([V8_Owner] ASC, [V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_8]
    ON [dbo].[V8_Reference170]([V8_Owner] ASC, [V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference170_9]
    ON [dbo].[V8_Reference170]([V8_Fld175] ASC, [V8_ID] ASC);

