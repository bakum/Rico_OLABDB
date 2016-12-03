CREATE VIEW dbo.vwStockPartyAmount 
AS SELECT
  DATEADD(DAY, 0, DATEDIFF(DAY, 0, V8_AccumReg2127.V8_Period)) AS V8_Period
 ,V8_AccumReg2127.V8_RecordKind
 ,convert(varchar(100), V8_AccumReg2127.V8_Fld14998, 1) AS Nom_ID
 ,convert(varchar(100), V8_AccumReg2127.V8_Fld14999, 1) AS Store_ID
 ,SUM(V8_AccumReg2127.V8_Fld15007) AS Qtt
 ,SUM(V8_AccumReg2127.V8_Fld15008) AS Summa
FROM dbo.V8_AccumReg2127
WHERE V8_AccumReg2127.V8_Active = 1
GROUP BY DATEADD(DAY, 0, DATEDIFF(DAY, 0, V8_AccumReg2127.V8_Period))
        ,V8_AccumReg2127.V8_RecordKind
        ,V8_AccumReg2127.V8_Fld14998
        ,V8_AccumReg2127.V8_Fld14999