CREATE FUNCTION dbo.fnStockPartyAmount (@P1 DATETIME, @P4 DATETIME)
 RETURNS TABLE 
  AS RETURN(
  SELECT T1.Nom_ID, T1.Stock_ID, T1.Balance, T1.Sebest FROM (SELECT t2.Nom_ID, T2.Stock_ID, CAST(SUM(T2.Balance)
         AS NUMERIC(34, 8)) AS Balance,  CAST(SUM(T2.Sebest) AS NUMERIC(34, 2)) AS Sebest
  FROM (SELECT t3.Nom_ID, t3.Stock_ID, CAST(SUM(t3.Qtt) AS NUMERIC(28,8)) AS Balance,CAST(SUM(t3.Summa) AS NUMERIC(28,2)) AS Sebest 
  FROM StockPartyAmount t3
  WHERE t3._Period = @P1
  GROUP BY t3.Nom_ID, t3.Stock_ID
  HAVING CAST(SUM(t3.Qtt) AS NUMERIC(28,8)) <> 0
 UNION ALL
 SELECT convert(varchar(100), t4.V8_Fld14998, 1), convert(varchar(100), t4.V8_Fld14999, 1),
  CAST(CAST(SUM(CASE WHEN T4.V8_RecordKind = 0.0 
           THEN T4.V8_Fld15007 
    ELSE -T4.V8_Fld15007 END)   
                   AS NUMERIC(22, 8)) AS NUMERIC(22, 2)) AS V8_Fld15007,
  CAST(CAST(SUM(CASE WHEN T4.V8_RecordKind = 0.0 
           THEN T4.V8_Fld15008 
    ELSE -T4.V8_Fld15008 END)   
                   AS NUMERIC(22, 8)) AS NUMERIC(22, 2)) AS V8_Fld15008
  FROM V8_AccumReg2127 t4
  WHERE t4.V8_Period >= @P1 AND t4.V8_Period < @P4 AND t4.V8_Active = 1
  GROUP BY t4.V8_Fld14998, t4.V8_Fld14999
  HAVING CAST(CAST(SUM(CASE WHEN T4.V8_RecordKind = 0.0 THEN T4.V8_Fld15007 ELSE -T4.V8_Fld15007 END)   
                   AS NUMERIC(22, 8)) AS NUMERIC(22, 2)) <> 0) T2
 GROUP BY T2.Nom_ID, T2.Stock_ID
  HAVING CAST(SUM(T2.Balance) AS NUMERIC(34, 8)) <> 0) T1
 )