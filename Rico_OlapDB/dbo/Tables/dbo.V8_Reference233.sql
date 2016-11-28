CREATE TABLE [dbo].[V8_Reference233] (
    [V8_ID]          BINARY (16)   NOT NULL,
    [V8_Code]        NCHAR (4)     NULL,
    [V8_Description] NCHAR (100)   NULL,
    [V8_Marked]      BINARY (1)    NULL,
    [V8_Parent]      BINARY (16)   NULL,
    [V8_Folder]      BINARY (1)    NULL,
    [V8_Fld376]      NVARCHAR (1)  NULL,
    [V8_Fld377]      NVARCHAR (2)  NULL,
    [V8_Fld378]      NVARCHAR (60) NULL,
    [V8_Fld379]      NVARCHAR (32) NULL,
    [V8_Fld380]      NVARCHAR (10) NULL,
    [V8_Fld381]      NVARCHAR (6)  NULL,
    CONSTRAINT [PK_V8_Reference233] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference233_1]
    ON [dbo].[V8_Reference233]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference233_2]
    ON [dbo].[V8_Reference233]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference233_3]
    ON [dbo].[V8_Reference233]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference233_4]
    ON [dbo].[V8_Reference233]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

