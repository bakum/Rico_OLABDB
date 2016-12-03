CREATE VIEW dbo.vwFieldByReference 
AS SELECT
  vwReference.V8_DataType
 ,vwReference.V8_ObjectName
 ,vwReference.V8_ObjectID
 ,vwReference.TableName
 ,V8_MetaDataFieldsDescr.V8_ObjectFieldName
 ,'V8_Fld' + CAST(V8_MetaDataFieldsDescr.V8_ObjectFieldID AS VARCHAR(10)) AS V8_FieldName
FROM dbo.vwReference
INNER JOIN dbo.V8_MetaDataFieldsDescr
  ON vwReference.V8_ObjectID = V8_MetaDataFieldsDescr.V8_ObjectID