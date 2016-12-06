CREATE VIEW dbo.vwAccumReg AS SELECT dbo.V8_MetaDataDescr.V8_DataType, dbo.V8_MetaDataDescr.V8_ObjectName, dbo.V8_MetaDataDescr.V8_ObjectID, 
	                      INFORMATION_SCHEMA.TABLES.TABLE_NAME AS TableName, dbo.V8_MetaDataDescr.V8_ObjectOwnerID  FROM dbo.V8_MetaDataDescr INNER JOIN 
	    INFORMATION_SCHEMA.TABLES ON 'V8_AccumReg' + CAST(dbo.V8_MetaDataDescr.V8_ObjectID AS VARCHAR(4)) = INFORMATION_SCHEMA.TABLES.TABLE_NAME
GO



GO


