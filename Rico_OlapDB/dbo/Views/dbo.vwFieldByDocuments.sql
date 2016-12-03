CREATE VIEW dbo.vwFieldByDocuments 
AS SELECT
  vwDocuments.V8_DataType
 ,vwDocuments.V8_ObjectName
 ,vwDocuments.V8_ObjectID
 ,vwDocuments.TableName
 ,V8_MetaDataFieldsDescr.V8_ObjectFieldName
 ,'V8_Fld' + CAST(V8_MetaDataFieldsDescr.V8_ObjectFieldID AS VARCHAR(10)) AS V8_FieldName
FROM dbo.vwDocuments
INNER JOIN dbo.V8_MetaDataFieldsDescr
  ON vwDocuments.V8_ObjectID = V8_MetaDataFieldsDescr.V8_ObjectID