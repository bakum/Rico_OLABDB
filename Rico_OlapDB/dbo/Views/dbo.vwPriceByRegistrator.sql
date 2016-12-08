CREATE VIEW dbo.vwPriceByRegistrator 
 AS SELECT
  V8_Document1114.V8_ID
 ,V8_Reference170.V8_Fld179_RRef AS Price_ID
 FROM dbo.V8_Document1114
 LEFT OUTER JOIN dbo.V8_Reference170
  ON V8_Document1114.V8_Fld10116 = V8_Reference170.V8_ID
 LEFT OUTER JOIN dbo.V8_Reference390
  ON V8_Reference170.V8_Fld179_RRef = V8_Reference390.V8_ID