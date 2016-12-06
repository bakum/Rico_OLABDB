CREATE VIEW dbo.vwSales 
 AS SELECT T1.Data, T1.Registrator, T1.Nom_ID, T1.Price_ID, SUM(T1.Qtt) Qtt, SUM(T1.Summa) Summa, SUM(T1.SummDisc) SummDisc,
  SUM(T1.VAT) VAT, MIN(T1.Kontrag_ID) Kontrag_ID, MIN(T1.Organization_ID) Organization_ID
 FROM (SELECT
  CONVERT(DATETIME, CONVERT(VARCHAR(10), V8_AccumReg2149.V8_Period, 112)) AS Data
 ,CONVERT(VARCHAR(100), V8_AccumReg2149.V8_Recorder_RRef, 1) AS Registrator
 ,CONVERT(VARCHAR(100), V8_AccumReg2149.V8_Fld15252, 1) AS Nom_ID
 ,CONVERT(VARCHAR(100), V8_Document1114.V8_Fld10139, 1) AS Price_ID
 ,V8_AccumReg2149.V8_Fld15261 AS Qtt
 ,V8_AccumReg2149.V8_Fld15262 AS Summa
 ,V8_AccumReg2149.V8_Fld15263 AS SummDisc
 ,V8_AccumReg2149.V8_Fld15264 AS VAT
 ,CONVERT(VARCHAR(100), V8_AccumReg2149.V8_Fld15260, 1) AS Kontrag_ID
 ,CONVERT(VARCHAR(100), V8_AccumReg2149.V8_Fld15259, 1) AS Organization_ID
 FROM dbo.V8_AccumReg2149
 LEFT OUTER JOIN dbo.V8_Document1114
  ON V8_AccumReg2149.V8_Recorder_RRef = V8_Document1114.V8_ID
 WHERE V8_AccumReg2149.V8_Active = 1) T1
 GROUP BY T1.Data, T1.Registrator, T1.Nom_ID, T1.Price_ID



GO



GO


