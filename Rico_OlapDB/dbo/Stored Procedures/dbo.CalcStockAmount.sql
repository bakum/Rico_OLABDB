CREATE PROCEDURE dbo.CalcStockAmount
 AS 
 DECLARE @P4 DATETIME = '01-01-2999 00:00:00'
 DECLARE @P1 DATETIME
 DECLARE @ExecuteStr NVARCHAR(MAX)
 DECLARE @DataTable NVARCHAR(50)
 --SET @P4 = DATEADD(YEAR,2000,DATEADD(yy, DATEDIFF(yy,0,GETDATE()), 0));
 IF OBJECT_ID(N'dbo.vwAccumReg', 'V') IS NOT NULL
  SET @DataTable = (SELECT ar.TableName FROM vwAccumReg ar WHERE ar.V8_ObjectName LIKE 'ТоварыНаСкладах')
 IF @DataTable IS NOT NULL
  SET @ExecuteStr = N'SELECT @D =  MIN(var.V8_Period) FROM '+@DataTable+' var'
  EXEC sp_executesql @ExecuteStr, N'@D DATETIME OUTPUT', @D = @P1 OUTPUT
 IF @P1 IS NULL
  SET @P1 = '31-12-2012 00:00:00'
 IF @DataTable IS NOT NULL BEGIN
 DELETE FROM StockAmount
 INSERT INTO StockAmount  (_Period, Nom_ID, Stock_ID, Qtt)
       SELECT @P1, Nom_ID, Stock_ID, Balance
       FROM fnStockAmount(@P1,DATEADD(DAY,1,@P1));
 INSERT INTO StockAmount  (_Period, Nom_ID, Stock_ID, Qtt)
       SELECT @P4, Nom_ID, Stock_ID, Balance
       FROM fnStockAmount(@P1,@P4);
 END