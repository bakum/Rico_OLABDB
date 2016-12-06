
 CREATE VIEW dbo.vwNomenklatura
 AS
 SELECT     convert(varchar(100), dbo.V8_Reference260.V8_ID, 1) AS ID, dbo.V8_Reference260.V8_Code, convert(varchar(2), dbo.V8_Reference260.V8_Fld641, 2) as Услуга, (case when (convert(varchar(2), dbo.V8_Reference260.V8_Fld641, 2)) = '00' Then 'Товар' else 'Услуга' end) as Услуга_Имя, dbo.V8_Reference260.V8_Description, dbo.V8_Reference260.V8_Fld631 AS НаименованиеПолное, 
                      convert(varchar(2), dbo.V8_Reference260.V8_Marked, 2) AS Marked, convert(varchar(100), dbo.V8_Reference260.V8_Parent, 1) AS Parent, convert(varchar(2), dbo.V8_Reference260.V8_Folder, 2) AS Folder, dbo.V8_Reference260.V8_Fld616 AS Артикул, 
                      convert(varchar(100), dbo.V8_Reference260.V8_Fld617, 1) AS БазоваяЕдиницаИзмерения, dbo.V8_Reference197.V8_Description AS БазоваяЕдиницаИзмерения_Имя, 
                      convert(varchar(2), dbo.V8_Reference260.V8_Fld618, 2) AS Весовой, dbo.V8_Reference260.V8_Fld619 AS ВесовойКоэффициентВхождения, 
                      convert(varchar(2), dbo.V8_Reference260.V8_Fld624, 2) AS ВестиУчетПоХарактеристикам, convert(varchar(100), dbo.V8_Reference260.V8_Fld627, 1) AS ЕдиницаДляОтчетов, 
                      V8_Reference177_1.V8_Description AS ЕдиницаДляОтчетов_Имя, convert(varchar(100), dbo.V8_Reference260.V8_Fld628, 1) AS ЕдиницаХраненияОстатков, 
                      dbo.V8_Reference177.V8_Description AS ЕдиницаХраненияОстатков_Имя
 FROM         dbo.V8_Reference260 LEFT OUTER JOIN
                       dbo.V8_Reference177 AS V8_Reference177_1 ON dbo.V8_Reference260.V8_Fld627 = V8_Reference177_1.V8_ID LEFT OUTER JOIN
                       dbo.V8_Reference177 ON dbo.V8_Reference260.V8_Fld628 = dbo.V8_Reference177.V8_ID LEFT OUTER JOIN
                      dbo.V8_Reference197 ON dbo.V8_Reference260.V8_Fld617 = dbo.V8_Reference197.V8_ID



GO



GO



GO


