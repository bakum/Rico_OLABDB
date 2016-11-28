CREATE TABLE [dbo].[V8_Reference381] (
    [V8_ID]          BINARY (16)     NOT NULL,
    [V8_Code]        NCHAR (9)       NULL,
    [V8_Description] NCHAR (100)     NULL,
    [V8_Marked]      BINARY (1)      NULL,
    [V8_Parent]      BINARY (16)     NULL,
    [V8_Folder]      BINARY (1)      NULL,
    [V8_Fld1172]     BINARY (16)     NULL,
    [V8_Fld1173]     BINARY (16)     NULL,
    [V8_Fld1174]     BINARY (16)     NULL,
    [V8_Fld1175]     BINARY (16)     NULL,
    [V8_Fld1176]     NUMERIC (15, 3) NULL,
    [V8_Fld1177]     BINARY (16)     NULL,
    [V8_Fld1178]     BINARY (16)     NULL,
    [V8_Fld1179]     NUMERIC (10)    NULL,
    [V8_Fld1180]     NUMERIC (10, 3) NULL,
    CONSTRAINT [PK_V8_Reference381] PRIMARY KEY CLUSTERED ([V8_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference381_1]
    ON [dbo].[V8_Reference381]([V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference381_2]
    ON [dbo].[V8_Reference381]([V8_Description] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference381_3]
    ON [dbo].[V8_Reference381]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Code] ASC, [V8_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [IND_V8_Reference381_4]
    ON [dbo].[V8_Reference381]([V8_Parent] ASC, [V8_Folder] ASC, [V8_Description] ASC, [V8_ID] ASC);

