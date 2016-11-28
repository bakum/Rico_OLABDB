CREATE TABLE [dbo].[V8_MetaDataAccDimKindDescr] (
    [V8_AccID]          NUMERIC (5) NULL,
    [V8_AccDimKindName] NTEXT       NULL,
    [V8_AccDimKindID]   NUMERIC (5) NOT NULL,
    CONSTRAINT [PK_V8_MetaDataAcc] PRIMARY KEY CLUSTERED ([V8_AccDimKindID] ASC)
);

