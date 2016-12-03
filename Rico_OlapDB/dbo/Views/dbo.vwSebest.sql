

CREATE VIEW vwSebest
AS
SELECT     CONVERT(DATETIME, CONVERT(VARCHAR(10), V8_Period, 112)) AS Data, convert(varchar(100), V8_Recorder_RRef, 1) as Registrator, SUM(V8_Fld15285) AS Qtt, SUM(V8_Fld15286) AS Summa, 
                      convert(varchar(100), V8_Fld15278, 1) AS Nom_ID
FROM         dbo.V8_AccumReg2153
WHERE     (V8_Active = 1)
GROUP BY V8_Period, V8_Recorder_RRef, V8_Fld15278


GO



GO


