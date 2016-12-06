CREATE VIEW dbo.vwKontragents 
	AS SELECT     convert(varchar(100), dbo.V8_Reference213.V8_ID, 1) AS ID,  convert(varchar(100), dbo.V8_Reference213.V8_Fld313, 1) AS Region_ID, dbo.V8_Reference213.V8_Description, dbo.V8_Reference213.V8_Fld302 AS FullName, 
                      	dbo.V8_Reference213.V8_Code, convert(varchar(2), dbo.V8_Reference213.V8_Marked, 2) AS Marked, convert(varchar(100), dbo.V8_Reference213.V8_Parent, 1) AS Parent, convert(varchar(2), dbo.V8_Reference213.V8_Folder, 2) AS Folder, 
                      	dbo.V8_Reference291.V8_Description AS Region, dbo.V8_Reference213.V8_Fld325 AS City, convert(varchar(100), dbo.V8_Reference213.V8_Fld326, 1) AS Category_ID, 
                      	dbo.V8_Reference213.V8_Fld319 AS OKPO, dbo.V8_Reference213.V8_Fld308 AS INN
	FROM         dbo.V8_Reference213 LEFT OUTER JOIN
                      	dbo.V8_Reference291 ON dbo.V8_Reference213.V8_Fld313 = dbo.V8_Reference291.V8_ID

GO



GO


