CREATE VIEW dbo.vwFieldByAccumReg 
AS SELECT
  vwAccumReg.V8_DataType
 ,vwAccumReg.V8_ObjectName
 ,vwAccumReg.V8_ObjectID
 ,vwAccumReg.TableName
 ,V8_MetaDataFieldsDescr.V8_ObjectFieldName
 ,'V8_Fld' + CAST(V8_MetaDataFieldsDescr.V8_ObjectFieldID AS VARCHAR(10)) AS V8_FieldName
FROM dbo.vwAccumReg
INNER JOIN dbo.V8_MetaDataFieldsDescr
  ON vwAccumReg.V8_ObjectID = V8_MetaDataFieldsDescr.V8_ObjectID