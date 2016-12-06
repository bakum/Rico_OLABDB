CREATE VIEW dbo.vwNomCategory 
 AS SELECT     convert(varchar(100), V8_ID, 1) AS ID, V8_Code, V8_Description, convert(varchar(100), V8_Parent, 1) AS Parent
 FROM         dbo.V8_Reference260
 WHERE     (V8_Folder = 1)

GO



GO


