CREATE VIEW dbo.vwFieldByInfoReg 
AS SELECT
  vwInfoReg.V8_DataType
 ,vwInfoReg.V8_ObjectName
 ,vwInfoReg.V8_ObjectID
 ,vwInfoReg.TableName
 ,V8_MetaDataFieldsDescr.V8_ObjectFieldName
 ,'V8_Fld' + CAST(V8_MetaDataFieldsDescr.V8_ObjectFieldID AS VARCHAR(10)) AS V8_FieldName
FROM dbo.vwInfoReg
INNER JOIN dbo.V8_MetaDataFieldsDescr
  ON vwInfoReg.V8_ObjectID = V8_MetaDataFieldsDescr.V8_ObjectID