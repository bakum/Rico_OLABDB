
	CREATE VIEW dbo.vwCurrencyUPR
	AS
	SELECT        convert(varchar(100), dbo.V8_Consts4.V8_Value, 1) AS ID, dbo.V8_Reference114.V8_Description
	FROM            dbo.V8_Consts4 INNER JOIN
                         	dbo.V8_Reference114 ON dbo.V8_Consts4.V8_Value = dbo.V8_Reference114.V8_ID
GO



GO


