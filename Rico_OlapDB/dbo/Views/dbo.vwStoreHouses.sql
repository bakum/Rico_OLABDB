CREATE VIEW dbo.vwStoreHouses 
AS SELECT
  convert(varchar(100), V8_Reference325.V8_ID, 1) V8_ID
 ,V8_Reference325.V8_Code
 ,V8_Reference325.V8_Description
 ,V8_Reference325.V8_Parent
 ,V8_Reference325.V8_Folder
FROM dbo.V8_Reference325