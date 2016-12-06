
 CREATE VIEW dbo.vwRegions
 AS
 SELECT     convert(varchar(100), V8_ID, 1) AS ID, V8_Code, V8_Description, convert(varchar(2), V8_Marked, 2) AS Marked, convert(varchar(100), V8_Parent, 1) AS Parent
 FROM         dbo.V8_Reference291
 WHERE     (V8_Parent IS NOT NULL)

GO



GO


