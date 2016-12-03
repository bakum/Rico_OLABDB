CREATE VIEW dbo.vwPrices 
AS SELECT
  convert(varchar(100), V8_Reference390.V8_ID, 1) AS V8_ID
 ,V8_Reference390.V8_Code
 ,V8_Reference390.V8_Description
 ,convert(varchar(2), dbo.V8_Reference390.V8_Marked, 2) AS V8_Marked
FROM dbo.V8_Reference390