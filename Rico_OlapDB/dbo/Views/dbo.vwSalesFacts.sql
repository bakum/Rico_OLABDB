CREATE VIEW dbo.vwSalesFacts 
 AS SELECT
  vwSales.Data
 ,vwSales.Registrator
 ,vwSales.Nom_ID
 ,vwSales.Price_ID
 ,vwSales.Qtt
 ,vwSales.Summa
 ,vwSales.SummPlan
 ,vwSales.SummDisc
 ,ISNULL(CAST(vwSebest.Summa as DECIMAL(9,2)), 0.0) AS Sebest
 ,vwSales.Summa - ISNULL(CAST(vwSebest.Summa as DECIMAL(9,2)), 0.0) AS Marga
 ,vwSales.VAT
 ,vwKontragents.Region_ID
 ,vwSales.Kontrag_ID
 ,vwSales.Organization_ID
 FROM dbo.vwSales
 LEFT OUTER JOIN dbo.vwSebest
  ON vwSales.Registrator = vwSebest.Registrator
    AND vwSales.Nom_ID = vwSebest.Nom_ID
 LEFT OUTER JOIN dbo.vwKontragents
  ON vwSales.Kontrag_ID = vwKontragents.ID
    WHERE vwSales.Qtt > 0


GO



GO


