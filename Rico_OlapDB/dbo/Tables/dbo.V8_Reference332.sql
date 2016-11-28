CREATE TABLE [dbo].[V8_Reference332] (
    [V8_ID]          BINARY (16)     NOT NULL,
    [V8_Code]        NCHAR (10)      NULL,
    [V8_Description] NCHAR (100)     NULL,
    [V8_Marked]      BINARY (1)      NULL,
    [V8_Parent]      BINARY (16)     NULL,
    [V8_Folder]      BINARY (1)      NULL,
    [V8_Fld863]      BINARY (16)     NULL,
    [V8_Fld864]      BINARY (1)      NULL,
    [V8_Fld865]      BINARY (16)     NULL,
    [V8_Fld866]      BINARY (16)     NULL,
    [V8_Fld867]      BINARY (16)     NULL,
    [V8_Fld868]      BINARY (16)     NULL,
    [V8_Fld869]      NVARCHAR (11)   NULL,
    [V8_Fld870]      DATETIME        NULL,
    [V8_Fld871]      BINARY (16)     NULL,
    [V8_Fld872]      BINARY (16)     NULL,
    [V8_Fld873]      BINARY (16)     NULL,
    [V8_Fld874]      NUMERIC (4, 2)  NULL,
    [V8_Fld875]      DATETIME        NULL,
    [V8_Fld876]      DATETIME        NULL,
    [V8_Fld877]      NUMERIC (4, 1)  NULL,
    [V8_Fld878]      BINARY (16)     NULL,
    [V8_Fld879]      NUMERIC (15, 3) NULL,
    [V8_Fld880]      BINARY (16)     NULL,
    [V8_Fld881]      NVARCHAR (15)   NULL,
    [V8_Fld882]      BINARY (16)     NULL,
    [V8_Fld883]      BINARY (16)     NULL,
    [V8_Fld884]      BINARY (16)     NULL,
    [V8_Fld885]      BINARY (16)     NULL,
    [V8_Fld886]      BINARY (16)     NULL,
    [V8_Fld887]      DATETIME        NULL,
    [V8_Fld888]      DATETIME        NULL,
    [V8_Fld889]      BINARY (16)     NULL,
    [V8_Fld890]      BINARY (16)     NULL,
    [V8_Fld891]      DATETIME        NULL,
    [V8_Fld892]      DATETIME        NULL,
    CONSTRAINT [PK_V8_Reference332] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_1]
    ON [dbo].[V8_Reference332]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_10]
    ON [dbo].[V8_Reference332]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld864] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_11]
    ON [dbo].[V8_Reference332]([V8_Fld863] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_12]
    ON [dbo].[V8_Reference332]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld863] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_13]
    ON [dbo].[V8_Reference332]([V8_Fld867] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_14]
    ON [dbo].[V8_Reference332]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld867] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_15]
    ON [dbo].[V8_Reference332]([V8_Fld869] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_16]
    ON [dbo].[V8_Reference332]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld869] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_2]
    ON [dbo].[V8_Reference332]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_3]
    ON [dbo].[V8_Reference332]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_4]
    ON [dbo].[V8_Reference332]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_5]
    ON [dbo].[V8_Reference332]([V8_Fld865] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_6]
    ON [dbo].[V8_Reference332]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld865] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_7]
    ON [dbo].[V8_Reference332]([V8_Fld864] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_8]
    ON [dbo].[V8_Reference332]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Fld864] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference332_9]
    ON [dbo].[V8_Reference332]([V8_Fld864] ASC, [V8_Description] ASC, [V8_ID] ASC);

