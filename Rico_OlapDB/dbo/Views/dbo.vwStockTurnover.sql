CREATE VIEW dbo.vwStockTurnover 
 AS SELECT T1.V8_Period, T1.Nom_ID, T1.Store_ID, T1.QttPrihod, T1.QttRashod, T1.QttTurnover FROM (SELECT
  DATEADD(DAY, 0, DATEDIFF(DAY, 0, V8_AccumReg2180.V8_Period)) AS V8_Period
 ,convert(varchar(100), V8_AccumReg2180.V8_Fld15474, 1) AS Nom_ID
 ,convert(varchar(100), V8_AccumReg2180.V8_Fld15473, 1) AS Store_ID
 ,SUM(CASE WHEN V8_AccumReg2180.V8_RecordKind = 0 THEN V8_AccumReg2180.V8_Fld15478 ELSE -V8_AccumReg2180.V8_Fld15478 END) AS QttTurnover
 ,SUM(CASE WHEN V8_AccumReg2180.V8_RecordKind = 0 THEN V8_AccumReg2180.V8_Fld15478 ELSE 0.0 END) AS QttPrihod
 ,SUM(CASE WHEN V8_AccumReg2180.V8_RecordKind = 0 THEN 0.0 ELSE V8_AccumReg2180.V8_Fld15478 END) AS QttRashod
 FROM dbo.V8_AccumReg2180
 WHERE V8_AccumReg2180.V8_Active = 1
 GROUP BY DATEADD(DAY, 0, DATEDIFF(DAY, 0, V8_AccumReg2180.V8_Period))
        ,V8_AccumReg2180.V8_Fld15474
        ,V8_AccumReg2180.V8_Fld15473
 HAVING SUM(CASE WHEN V8_AccumReg2180.V8_RecordKind = 0 THEN V8_AccumReg2180.V8_Fld15478 ELSE -V8_AccumReg2180.V8_Fld15478 END) <> 0 OR
      SUM(CASE WHEN V8_AccumReg2180.V8_RecordKind = 0 THEN V8_AccumReg2180.V8_Fld15478 ELSE 0.0 END) <> 0 OR
      SUM(CASE WHEN V8_AccumReg2180.V8_RecordKind = 0 THEN 0.0 ELSE V8_AccumReg2180.V8_Fld15478 END) <> 0) T1