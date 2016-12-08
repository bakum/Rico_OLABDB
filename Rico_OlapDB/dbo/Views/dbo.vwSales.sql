CREATE VIEW dbo.vwSales 
  AS SELECT T2.Data
   , T2.Registrator
   , T2.Nom_ID
   , T2.Price_ID
   , T2.Qtt
   , T2.Summa
   , (ISNULL(CAST(T2.Price as DECIMAL(9,2)), 0.0) * T2.Qtt) SummPlan
   , T2.SummDisc
   , T2.VAT
   , T2.Kontrag_ID
   , T2.Organization_ID
  FROM (SELECT
   CONVERT(DATETIME, CONVERT(VARCHAR(10), V8_AccumReg2149.V8_Period, 112)) AS Data
  ,CONVERT(VARCHAR(100), V8_AccumReg2149.V8_Recorder_RRef, 1) AS Registrator
  ,CONVERT(VARCHAR(100), V8_AccumReg2149.V8_Fld15252, 1) AS Nom_ID
  ,CONVERT(VARCHAR(100), vwPriceByRegistrator.Price_ID, 1) AS Price_ID
  ,(SELECT Price FROM fnLastPriceByDate(CONVERT(DATETIME, CONVERT(VARCHAR(10), V8_AccumReg2149.V8_Period, 112))) t 
    WHERE t.Price_ID = CONVERT(VARCHAR(100), vwPriceByRegistrator.Price_ID, 1)
    AND t.Nom_ID = CONVERT(VARCHAR(100), V8_AccumReg2149.V8_Fld15252, 1)) Price
  ,V8_AccumReg2149.V8_Fld15261 AS Qtt
  ,V8_AccumReg2149.V8_Fld15262 AS Summa
  ,V8_AccumReg2149.V8_Fld15263 AS SummDisc
  ,V8_AccumReg2149.V8_Fld15264 AS VAT
  ,CONVERT(VARCHAR(100), V8_AccumReg2149.V8_Fld15260, 1) AS Kontrag_ID
  ,CONVERT(VARCHAR(100), V8_AccumReg2149.V8_Fld15259, 1) AS Organization_ID
  FROM dbo.V8_AccumReg2149
  LEFT OUTER JOIN dbo.vwPriceByRegistrator
   ON V8_AccumReg2149.V8_Recorder_RRef = vwPriceByRegistrator.V8_ID
  WHERE V8_AccumReg2149.V8_Active = 1
  AND V8_AccumReg2149.V8_Fld15262 > 0) T2



GO



GO


