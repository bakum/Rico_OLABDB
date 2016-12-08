CREATE VIEW dbo.vwCurrentStockAmount 
 AS SELECT
  StockPartyAmount.ID
 ,StockPartyAmount._Period
 ,StockPartyAmount.Nom_ID
 ,StockPartyAmount.Stock_ID
 ,StockPartyAmount.Qtt
 ,StockPartyAmount.Summa
 FROM dbo.StockPartyAmount
 WHERE StockPartyAmount._Period = '01-01-2999 00:00:00'