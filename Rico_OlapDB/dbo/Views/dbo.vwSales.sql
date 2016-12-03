CREATE VIEW dbo.vwSales 
AS SELECT T1.Data, T1.Registrator, T1.Nom_ID, T1.Price_ID, SUM(T1.Qtt) Qtt, SUM(T1.Summa) Summa, SUM(T1.SummDisc) SummDisc,
  SUM(T1.VAT) VAT, MIN(T1.Kontrag_ID) Kontrag_ID, MIN(T1.Organization_ID) Organization_ID
FROM (SELECT
  CONVERT(DATETIME, CONVERT(VARCHAR(10), V8_AccumReg2149.V8_Period, 112)) AS Data
 ,CONVERT(VARCHAR(100), V8_AccumReg2149.V8_Recorder_RRef, 1) AS Registrator
 ,CONVERT(VARCHAR(100), V8_AccumReg2149.V8_Fld15252, 1) AS Nom_ID
 ,CONVERT(VARCHAR(100), V8_Document1114.V8_Fld10139, 1) AS Price_ID
 ,V8_AccumReg2149.V8_Fld15261 AS Qtt
 ,V8_AccumReg2149.V8_Fld15262 AS Summa
 ,V8_AccumReg2149.V8_Fld15263 AS SummDisc
 ,V8_AccumReg2149.V8_Fld15264 AS VAT
 ,CONVERT(VARCHAR(100), V8_AccumReg2149.V8_Fld15260, 1) AS Kontrag_ID
 ,CONVERT(VARCHAR(100), V8_AccumReg2149.V8_Fld15259, 1) AS Organization_ID
FROM dbo.V8_AccumReg2149
LEFT OUTER JOIN dbo.V8_Document1114
  ON V8_AccumReg2149.V8_Recorder_RRef = V8_Document1114.V8_ID
WHERE V8_AccumReg2149.V8_Active = 1) T1
GROUP BY T1.Data, T1.Registrator, T1.Nom_ID, T1.Price_ID



GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[15] 3) )"
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
         Begin Table = "V8_AccumReg2149"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 15
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 2115
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
      Begin ColumnWidths = 12
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwSales';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'vwSales';

