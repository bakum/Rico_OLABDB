CREATE TABLE [dbo].[V8_MetaDataDescr] (
    [V8_DataType]      NUMERIC (2) NULL,
    [V8_ObjectName]    NTEXT       NULL,
    [V8_ObjectID]      NUMERIC (5) NOT NULL,
    [V8_ObjectOwnerID] NUMERIC (5) NULL,
    CONSTRAINT [PK_V8_MetaDataDescr] PRIMARY KEY CLUSTERED ([V8_ObjectID] ASC)
);

