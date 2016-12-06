
 CREATE VIEW dbo.vwOrganizations
 AS
 SELECT     convert(varchar(100), V8_ID, 1) AS ID, V8_Code, V8_Description, convert(varchar(2), V8_Marked, 2) AS Marked, V8_Fld699 AS FullName
 FROM         dbo.V8_Reference273


GO



GO


