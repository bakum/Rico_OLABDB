



CREATE VIEW [dbo].[vwNomenklatura]
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
         Begin Table = "V8_Reference260"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "V8_Reference197"
            Begin Extent = 
               Top = 4
               Left = 288
               Bottom = 123
               Right = 457
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "V8_Reference177"
            Begin Extent = 
               Top = 94
               Left = 472
               Bottom = 213
               Right = 647
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "V8_Reference177_1"
            Begin Extent = 
               Top = 79
               Left = 732
               Bottom = 198
               Right = 907
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
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Alias = 2850
         Table = 1170
         Output = 720
     ', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwNomenklatura';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'    Append = 1400
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwNomenklatura';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwNomenklatura';

