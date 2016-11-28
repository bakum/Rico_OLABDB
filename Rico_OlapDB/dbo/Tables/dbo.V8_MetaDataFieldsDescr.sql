CREATE TABLE [dbo].[V8_MetaDataFieldsDescr] (
    [V8_ObjectID]        NUMERIC (5) NULL,
    [V8_ObjectFieldName] NTEXT       NULL,
    [V8_ObjectFieldID]   NUMERIC (8) NOT NULL,
    CONSTRAINT [PK_V8_MetaDataFields] PRIMARY KEY CLUSTERED ([V8_ObjectFieldID] ASC)
);

