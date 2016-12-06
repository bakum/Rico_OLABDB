CREATE VIEW dbo.vwProductsWithCategory 
 AS SELECT        dbo.vwNomenklatura.ID, dbo.vwNomenklatura.V8_Code, dbo.vwNomenklatura.Услуга, dbo.vwNomenklatura.V8_Description, 
                         dbo.vwNomenklatura.НаименованиеПолное, dbo.vwNomenklatura.Marked, dbo.vwNomenklatura.Parent, dbo.vwNomenklatura.Folder, dbo.vwNomenklatura.Артикул, 
                         dbo.vwNomenklatura.БазоваяЕдиницаИзмерения, dbo.vwNomenklatura.БазоваяЕдиницаИзмерения_Имя, dbo.vwNomenklatura.Весовой, 
                         dbo.vwNomenklatura.ВесовойКоэффициентВхождения, dbo.vwNomenklatura.ВестиУчетПоХарактеристикам, dbo.vwNomenklatura.ЕдиницаДляОтчетов, 
                         dbo.vwNomenklatura.ЕдиницаДляОтчетов_Имя, dbo.vwNomenklatura.ЕдиницаХраненияОстатков, dbo.vwNomenklatura.ЕдиницаХраненияОстатков_Имя, 
                         vwNomenklatura_1.V8_Description AS Level1, vwNomenklatura_1.ID AS Level1_ID, vwNomenklatura_2.ID AS Level2_ID, 
                         vwNomenklatura_2.V8_Description AS Level2, vwNomenklatura_3.ID AS Level3_ID, vwNomenklatura_3.V8_Description AS Level3, 
                         vwNomenklatura_4.ID AS Level4_ID, vwNomenklatura_4.V8_Description AS Level4, vwNomenklatura_5.ID AS Level5_ID, 
                         vwNomenklatura_5.V8_Description AS Level5
 FROM            dbo.vwNomenklatura AS vwNomenklatura_2 LEFT OUTER JOIN
                         dbo.vwNomenklatura AS vwNomenklatura_4 LEFT OUTER JOIN
                         dbo.vwNomenklatura AS vwNomenklatura_5 ON vwNomenklatura_4.Parent = vwNomenklatura_5.ID RIGHT OUTER JOIN
                         dbo.vwNomenklatura AS vwNomenklatura_3 ON vwNomenklatura_4.ID = vwNomenklatura_3.Parent ON 
                         vwNomenklatura_2.Parent = vwNomenklatura_3.ID RIGHT OUTER JOIN
                         dbo.vwNomenklatura LEFT OUTER JOIN
                         dbo.vwNomenklatura AS vwNomenklatura_1 ON dbo.vwNomenklatura.Parent = vwNomenklatura_1.ID ON vwNomenklatura_2.ID = vwNomenklatura_1.Parent
 WHERE        (dbo.vwNomenklatura.Parent IS NOT NULL) AND (dbo.vwNomenklatura.Folder LIKE '00')
GO



GO



GO


