CREATE PROCEDURE dbo.Initialize
AS 
  DECLARE @DataTable NVARCHAR(500)
  DECLARE @Nom_ID NVARCHAR(50)
  DECLARE @Qtt NVARCHAR(50)
  DECLARE @Summa NVARCHAR(50)
  SET @DataTable = (SELECT TOP 1 TableName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ПродажиСебестоимость')
  SET @Nom_ID = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ПродажиСебестоимость' AND V8_ObjectFieldName LIKE 'Номенклатура')
  SET @Qtt = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ПродажиСебестоимость' AND V8_ObjectFieldName LIKE 'Количество')
  SET @Summa = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ПродажиСебестоимость' AND V8_ObjectFieldName LIKE 'Стоимость')
  IF OBJECT_ID(N'vwSebest', 'V') IS NULL
EXEC sp_executesql N'

CREATE VIEW vwSebest
AS
SELECT     CONVERT(DATETIME, CONVERT(VARCHAR(10), V8_Period, 112)) AS Data, convert(varchar(100), V8_Recorder_RRef, 1) as Registrator, SUM(@Qtt) AS Qtt, SUM(@Summa) AS Summa, 
                      convert(varchar(100), @Nom_ID, 1) AS Nom_ID
FROM         @DataTable
WHERE     (V8_Active = 1)
GROUP BY V8_Period, V8_Recorder_RRef, @Nom_ID'