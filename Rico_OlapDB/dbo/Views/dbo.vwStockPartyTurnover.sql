CREATE VIEW dbo.vwStockPartyTurnover 
 AS SELECT T1.V8_Period, T1.Nom_ID, T1.Store_ID, T1.QttPrihod, T1.SummaPrihod, T1.QttRashod, T1.SummaRashod, T1.QttTurnover, T1.SummaTurnover FROM (SELECT
  DATEADD(DAY, 0, DATEDIFF(DAY, 0, V8_AccumReg2127.V8_Period)) AS V8_Period
 ,convert(varchar(100), V8_AccumReg2127.V8_Fld14998, 1) AS Nom_ID
 ,convert(varchar(100), V8_AccumReg2127.V8_Fld14999, 1) AS Store_ID
 ,SUM(CASE WHEN V8_AccumReg2127.V8_RecordKind = 0 THEN V8_AccumReg2127.V8_Fld15007 ELSE -V8_AccumReg2127.V8_Fld15007 END) AS QttTurnover
 ,SUM(CASE WHEN V8_AccumReg2127.V8_RecordKind = 0 THEN V8_AccumReg2127.V8_Fld15007 ELSE 0.0 END) AS QttPrihod
 ,SUM(CASE WHEN V8_AccumReg2127.V8_RecordKind = 0 THEN 0.0 ELSE V8_AccumReg2127.V8_Fld15007 END) AS QttRashod
 ,SUM(CASE WHEN V8_AccumReg2127.V8_RecordKind = 0 THEN V8_AccumReg2127.V8_Fld15008 ELSE -V8_AccumReg2127.V8_Fld15008 END) AS SummaTurnover
 ,SUM(CASE WHEN V8_AccumReg2127.V8_RecordKind = 0 THEN V8_AccumReg2127.V8_Fld15008 ELSE 0.0 END) AS SummaPrihod
 ,SUM(CASE WHEN V8_AccumReg2127.V8_RecordKind = 0 THEN 0.0 ELSE V8_AccumReg2127.V8_Fld15008 END) AS SummaRashod
 FROM dbo.V8_AccumReg2127
 WHERE V8_AccumReg2127.V8_Active = 1
 GROUP BY DATEADD(DAY, 0, DATEDIFF(DAY, 0, V8_AccumReg2127.V8_Period))
        ,V8_AccumReg2127.V8_Fld14998
        ,V8_AccumReg2127.V8_Fld14999
 HAVING SUM(CASE WHEN V8_AccumReg2127.V8_RecordKind = 0 THEN V8_AccumReg2127.V8_Fld15007 ELSE -V8_AccumReg2127.V8_Fld15007 END) <> 0 OR
      SUM(CASE WHEN V8_AccumReg2127.V8_RecordKind = 0 THEN V8_AccumReg2127.V8_Fld15007 ELSE 0.0 END) <> 0 OR
      SUM(CASE WHEN V8_AccumReg2127.V8_RecordKind = 0 THEN 0.0 ELSE V8_AccumReg2127.V8_Fld15007 END) <> 0) T1