CREATE VIEW dbo.vwProductsWithCategory
AS
SELECT        dbo.vwNomenklatura.ID, dbo.vwNomenklatura.V8_Code, dbo.vwNomenklatura.Услуга, dbo.vwNomenklatura.V8_Description, 
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
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwProductsWithCategory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwProductsWithCategory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vwNomenklatura_2"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 310
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwNomenklatura_4"
            Begin Extent = 
               Top = 6
               Left = 348
               Bottom = 135
               Right = 620
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwNomenklatura_5"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 267
               Right = 310
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwNomenklatura_3"
            Begin Extent = 
               Top = 138
               Left = 348
               Bottom = 267
               Right = 620
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwNomenklatura"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 399
               Right = 310
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vwNomenklatura_1"
            Begin Extent = 
               Top = 270
               Left = 348
               Bottom = 399
               Right = 620
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwProductsWithCategory';

