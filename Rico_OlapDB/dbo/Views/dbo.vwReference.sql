CREATE VIEW dbo.vwReference 
 	AS SELECT
	V8_MetaDataDescr.V8_DataType
	,V8_MetaDataDescr.V8_ObjectName
	,V8_MetaDataDescr.V8_ObjectID
	,TABLES.TABLE_NAME AS TableName
	,V8_MetaDataDescr.V8_ObjectOwnerID	FROM dbo.V8_MetaDataDescr
	INNER JOIN INFORMATION_SCHEMA.TABLES
  	ON 'V8_Reference' + CAST(V8_MetaDataDescr.V8_ObjectID AS VARCHAR(4)) = TABLES.TABLE_NAME
GO



GO


