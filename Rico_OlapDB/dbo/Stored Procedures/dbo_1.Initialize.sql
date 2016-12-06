CREATE PROCEDURE dbo.Initialize	AS 
 	DECLARE @ExecuteStr NVARCHAR(MAX)
 	DECLARE @DataTable NVARCHAR(50)
 	DECLARE @JoinDataTable NVARCHAR(50)
 	DECLARE @JoinDataTable2 NVARCHAR(50)
 	DECLARE @TurnOverCnt INT
 	--Create vwChrc	
 	IF OBJECT_ID(N'dbo.vwChrc', 'V') IS NOT NULL	
 	EXEC sp_executesql N'DROP VIEW dbo.vwChrc'
 	IF OBJECT_ID(N'dbo.vwChrc', 'V') IS NULL
 	EXEC sp_executesql N'CREATE VIEW dbo.vwChrc 	AS SELECT     dbo.V8_MetaDataDescr.V8_DataType, dbo.V8_MetaDataDescr.V8_ObjectName, dbo.V8_MetaDataDescr.V8_ObjectID, 
                      INFORMATION_SCHEMA.TABLES.TABLE_NAME AS TableName, dbo.V8_MetaDataDescr.V8_ObjectOwnerID
	FROM         dbo.V8_MetaDataDescr INNER JOIN
	INFORMATION_SCHEMA.TABLES ON ''V8_Chrc'' + CAST(dbo.V8_MetaDataDescr.V8_ObjectID AS VARCHAR(4)) = INFORMATION_SCHEMA.TABLES.TABLE_NAME'
 	--Create vwConsts	
 	IF OBJECT_ID(N'dbo.vwConsts', 'V') IS NOT NULL	
 	EXEC sp_executesql N'DROP VIEW dbo.vwConsts'
	IF OBJECT_ID(N'dbo.vwConsts', 'V') IS NULL	
	EXEC sp_executesql N'CREATE VIEW dbo.vwConsts 
	AS SELECT     dbo.V8_MetaDataDescr.V8_DataType, dbo.V8_MetaDataDescr.V8_ObjectName, dbo.V8_MetaDataDescr.V8_ObjectID, 
   	                  INFORMATION_SCHEMA.TABLES.TABLE_NAME AS TableName, dbo.V8_MetaDataDescr.V8_ObjectOwnerID
	FROM         dbo.V8_MetaDataDescr INNER JOIN
                      INFORMATION_SCHEMA.TABLES ON ''V8_Consts'' + CAST(dbo.V8_MetaDataDescr.V8_ObjectID AS VARCHAR(4)) = INFORMATION_SCHEMA.TABLES.TABLE_NAME'
	--Create vwReference
 	IF OBJECT_ID(N'dbo.vwReference', 'V') IS NOT NULL
 	EXEC sp_executesql N'DROP VIEW dbo.vwReference'
	IF OBJECT_ID(N'dbo.vwReference', 'V') IS NULL
 	EXEC sp_executesql N'CREATE VIEW dbo.vwReference 
 	AS SELECT
	V8_MetaDataDescr.V8_DataType
	,V8_MetaDataDescr.V8_ObjectName
	,V8_MetaDataDescr.V8_ObjectID
	,TABLES.TABLE_NAME AS TableName
	,V8_MetaDataDescr.V8_ObjectOwnerID	FROM dbo.V8_MetaDataDescr
	INNER JOIN INFORMATION_SCHEMA.TABLES
  	ON ''V8_Reference'' + CAST(V8_MetaDataDescr.V8_ObjectID AS VARCHAR(4)) = TABLES.TABLE_NAME
	'
 	--Create vwFieldByReference
 	IF OBJECT_ID(N'dbo.vwFieldByReference', 'V') IS NOT NULL
 	EXEC sp_executesql N'DROP VIEW dbo.vwFieldByReference'
	IF OBJECT_ID(N'dbo.vwFieldByReference', 'V') IS NULL
 	EXEC sp_executesql N'CREATE VIEW dbo.vwFieldByReference 
	AS SELECT
  	vwReference.V8_DataType
 	,vwReference.V8_ObjectName
 	,vwReference.V8_ObjectID
 	,vwReference.TableName
 	,V8_MetaDataFieldsDescr.V8_ObjectFieldName
 	,''V8_Fld'' + CAST(V8_MetaDataFieldsDescr.V8_ObjectFieldID AS VARCHAR(10)) AS V8_FieldName
	FROM dbo.vwReference
	INNER JOIN dbo.V8_MetaDataFieldsDescr
  	ON vwReference.V8_ObjectID = V8_MetaDataFieldsDescr.V8_ObjectID
	'
	--Create vwDocuments
  	IF OBJECT_ID(N'dbo.vwDocuments', 'V') IS NOT NULL
  	EXEC sp_executesql N'DROP VIEW dbo.vwDocuments'
	IF OBJECT_ID(N'dbo.vwDocuments', 'V') IS NULL
  	EXEC sp_executesql N'CREATE VIEW dbo.vwDocuments 
	AS SELECT
  	V8_MetaDataDescr.V8_DataType
 	,V8_MetaDataDescr.V8_ObjectName
 	,V8_MetaDataDescr.V8_ObjectID
 	,TABLES.TABLE_NAME AS TableName
 	,V8_MetaDataDescr.V8_ObjectOwnerID
	FROM dbo.V8_MetaDataDescr
	INNER JOIN INFORMATION_SCHEMA.TABLES
  	ON ''V8_Document'' + CAST(V8_MetaDataDescr.V8_ObjectID AS VARCHAR(4)) = TABLES.TABLE_NAME
	'
  	--Create vwFieldByDocuments
  	IF OBJECT_ID(N'dbo.vwFieldByDocuments', 'V') IS NOT NULL
  	EXEC sp_executesql N'DROP VIEW dbo.vwFieldByDocuments'
	IF OBJECT_ID(N'dbo.vwFieldByDocuments', 'V') IS NULL
  	EXEC sp_executesql N'CREATE VIEW dbo.vwFieldByDocuments 
	AS SELECT
  	vwDocuments.V8_DataType
 	,vwDocuments.V8_ObjectName
 	,vwDocuments.V8_ObjectID
 	,vwDocuments.TableName
 	,V8_MetaDataFieldsDescr.V8_ObjectFieldName
 	,''V8_Fld'' + CAST(V8_MetaDataFieldsDescr.V8_ObjectFieldID AS VARCHAR(10)) AS V8_FieldName
	FROM dbo.vwDocuments
	INNER JOIN dbo.V8_MetaDataFieldsDescr
  	ON vwDocuments.V8_ObjectID = V8_MetaDataFieldsDescr.V8_ObjectID
	'
  	--Create vwInfoReg
  	IF OBJECT_ID(N'dbo.vwInfoReg', 'V') IS NOT NULL
  	EXEC sp_executesql N'DROP VIEW dbo.vwInfoReg'
	IF OBJECT_ID(N'dbo.vwInfoReg', 'V') IS NULL
  	EXEC sp_executesql N'CREATE VIEW dbo.vwInfoReg
	AS
	SELECT     dbo.V8_MetaDataDescr.V8_DataType, dbo.V8_MetaDataDescr.V8_ObjectName, dbo.V8_MetaDataDescr.V8_ObjectID, 
	                      INFORMATION_SCHEMA.TABLES.TABLE_NAME AS TableName, dbo.V8_MetaDataDescr.V8_ObjectOwnerID
	FROM         dbo.V8_MetaDataDescr INNER JOIN
                      	INFORMATION_SCHEMA.TABLES ON ''V8_InfoReg'' + CAST(dbo.V8_MetaDataDescr.V8_ObjectID AS VARCHAR(4)) = INFORMATION_SCHEMA.TABLES.TABLE_NAME
	'
	--Create vwFieldByInfoReg
  	IF OBJECT_ID(N'dbo.vwFieldByInfoReg', 'V') IS NOT NULL
  	EXEC sp_executesql N'DROP VIEW dbo.vwFieldByInfoReg'
	IF OBJECT_ID(N'dbo.vwFieldByInfoReg', 'V') IS NULL
  	EXEC sp_executesql N'CREATE VIEW dbo.vwFieldByInfoReg 
	AS SELECT
  	vwInfoReg.V8_DataType
 	,vwInfoReg.V8_ObjectName
 	,vwInfoReg.V8_ObjectID
 	,vwInfoReg.TableName
 	,V8_MetaDataFieldsDescr.V8_ObjectFieldName
 	,''V8_Fld'' + CAST(V8_MetaDataFieldsDescr.V8_ObjectFieldID AS VARCHAR(10)) AS V8_FieldName
	FROM dbo.vwInfoReg
	INNER JOIN dbo.V8_MetaDataFieldsDescr
  	ON vwInfoReg.V8_ObjectID = V8_MetaDataFieldsDescr.V8_ObjectID
	'
  	--Create vwCurrencyUPR
  	SET @DataTable = (SELECT TOP 1 TableName FROM vwConsts WHERE V8_ObjectName LIKE 'ВалютаУправленческогоУчета')
  	SET @JoinDataTable = (SELECT TOP 1 TableName FROM vwReference WHERE V8_ObjectName LIKE 'Валюты')
  	SET @ExecuteStr =N'
	CREATE VIEW dbo.vwCurrencyUPR
	AS
	SELECT        convert(varchar(100), dbo.'+@DataTable+'.V8_Value, 1) AS ID, dbo.'+@JoinDataTable+'.V8_Description
	FROM            dbo.'+@DataTable+' INNER JOIN
                         	dbo.'+@JoinDataTable+' ON dbo.'+@DataTable+'.V8_Value = dbo.'+@JoinDataTable+'.V8_ID
	'
  	IF OBJECT_ID(N'dbo.vwCurrencyUPR', 'V') IS NOT NULL
  	EXEC sp_executesql N'DROP VIEW dbo.vwCurrencyUPR'
	IF OBJECT_ID(N'dbo.vwCurrencyUPR', 'V') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
	    AND OBJECT_ID(N'dbo.'+@JoinDataTable+'', 'U') IS NOT NULL
  	EXEC sp_executesql @ExecuteStr
  	--Create vwAccumReg
  	IF OBJECT_ID(N'dbo.vwAccumReg', 'V') IS NOT NULL
	    EXEC sp_executesql N'DROP VIEW dbo.vwAccumReg'
  	IF OBJECT_ID(N'dbo.vwAccumReg', 'V') IS NULL
  	EXEC sp_executesql N'CREATE VIEW dbo.vwAccumReg AS SELECT dbo.V8_MetaDataDescr.V8_DataType, dbo.V8_MetaDataDescr.V8_ObjectName, dbo.V8_MetaDataDescr.V8_ObjectID, 
	                      INFORMATION_SCHEMA.TABLES.TABLE_NAME AS TableName, dbo.V8_MetaDataDescr.V8_ObjectOwnerID  FROM dbo.V8_MetaDataDescr INNER JOIN 
	    INFORMATION_SCHEMA.TABLES ON ''V8_AccumReg'' + CAST(dbo.V8_MetaDataDescr.V8_ObjectID AS VARCHAR(4)) = INFORMATION_SCHEMA.TABLES.TABLE_NAME'
   	--Create vwFieldByAccumReg
  	IF OBJECT_ID(N'dbo.vwFieldByAccumReg', 'V') IS NOT NULL
	    EXEC sp_executesql N'DROP VIEW dbo.vwFieldByAccumReg'
  	IF OBJECT_ID(N'dbo.vwFieldByAccumReg', 'V') IS NULL
	    EXEC sp_executesql N'CREATE VIEW dbo.vwFieldByAccumReg AS SELECT vwAccumReg.V8_DataType ,vwAccumReg.V8_ObjectName
	    ,vwAccumReg.V8_ObjectID ,vwAccumReg.TableName ,V8_MetaDataFieldsDescr.V8_ObjectFieldName ,''V8_Fld'' + CAST(V8_MetaDataFieldsDescr.V8_ObjectFieldID AS VARCHAR(10)) AS V8_FieldName 
      	FROM dbo.vwAccumReg INNER JOIN dbo.V8_MetaDataFieldsDescr ON vwAccumReg.V8_ObjectID = V8_MetaDataFieldsDescr.V8_ObjectID'
	  --Create vwKontragents
  	DECLARE @RegionID NVARCHAR(50)
  	DECLARE @Fullname NVARCHAR(50)
  	DECLARE @City NVARCHAR(50)
  	DECLARE @Category NVARCHAR(50)
  	DECLARE @OKPO NVARCHAR(50)
  	DECLARE @INN NVARCHAR(50)
  	SET @DataTable = (SELECT TOP 1 TableName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Контрагенты')
  	SET @JoinDataTable = (SELECT TOP 1 TableName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Пользователи')
  	SET @RegionID = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Контрагенты' AND V8_ObjectFieldName LIKE 'ОсновнойМенеджерПокупателя')
  	SET @Fullname = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Контрагенты' AND V8_ObjectFieldName LIKE 'НаименованиеПолное')
  	SET @City = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Контрагенты' AND V8_ObjectFieldName LIKE 'НаселенныйПункт')
  	SET @Category = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Контрагенты' AND V8_ObjectFieldName LIKE 'КатегорияКонтрагента')
  	SET @OKPO = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Контрагенты' AND V8_ObjectFieldName LIKE 'КодПоЕДРПОУ')
  	SET @INN = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Контрагенты' AND V8_ObjectFieldName LIKE 'ИНН')
  	SET @ExecuteStr =   N'CREATE VIEW dbo.vwKontragents 
	AS SELECT     convert(varchar(100), dbo.'+@DataTable+'.V8_ID, 1) AS ID,  convert(varchar(100), dbo.'+@DataTable+'.'+@RegionID+', 1) AS Region_ID, dbo.'+@DataTable+'.V8_Description, dbo.'+@DataTable+'.'+@Fullname+' AS FullName, 
                      	dbo.'+@DataTable+'.V8_Code, convert(varchar(2), dbo.'+@DataTable+'.V8_Marked, 2) AS Marked, convert(varchar(100), dbo.'+@DataTable+'.V8_Parent, 1) AS Parent, convert(varchar(2), dbo.'+@DataTable+'.V8_Folder, 2) AS Folder, 
                      	dbo.'+@JoinDataTable+'.V8_Description AS Region, dbo.'+@DataTable+'.'+@City+' AS City, convert(varchar(100), dbo.'+@DataTable+'.'+@Category+', 1) AS Category_ID, 
                      	dbo.'+@DataTable+'.'+@OKPO+' AS OKPO, dbo.'+@DataTable+'.'+@INN+' AS INN
	FROM         dbo.'+@DataTable+' LEFT OUTER JOIN
                      	dbo.'+@JoinDataTable+' ON dbo.'+@DataTable+'.V8_Fld313 = dbo.'+@JoinDataTable+'.V8_ID
	'
	IF OBJECT_ID(N'dbo.vwKontragents', 'V') IS NOT NULL
  	EXEC sp_executesql N'DROP VIEW dbo.vwKontragents'
	IF OBJECT_ID(N'dbo.vwKontragents', 'V') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
	    AND OBJECT_ID(N'dbo.'+@JoinDataTable+'', 'U') IS NOT NULL
  	EXEC sp_executesql @ExecuteStr
	    --Create vwNomenklatura
  DECLARE @Field1 NVARCHAR(50)
  DECLARE @Field2 NVARCHAR(50)
  DECLARE @Field3 NVARCHAR(50)
  SET @DataTable = (SELECT TOP 1 TableName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Номенклатура')
  SET @JoinDataTable = (SELECT TOP 1 TableName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'ЕдиницыИзмерения')
  SET @JoinDataTable2 = (SELECT TOP 1 TableName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'КлассификаторЕдиницИзмерения')
  SET @RegionID = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Номенклатура' AND V8_ObjectFieldName LIKE 'Услуга')
  SET @Fullname = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Номенклатура' AND V8_ObjectFieldName LIKE 'НаименованиеПолное')
  SET @City = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Номенклатура' AND V8_ObjectFieldName LIKE 'Артикул')
  SET @Category = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Номенклатура' AND V8_ObjectFieldName LIKE 'БазоваяЕдиницаИзмерения')
  SET @OKPO = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Номенклатура' AND V8_ObjectFieldName LIKE 'Весовой')
  SET @INN = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Номенклатура' AND V8_ObjectFieldName LIKE 'ВесовойКоэффициентВхождения')
  SET @Field1 = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Номенклатура' AND V8_ObjectFieldName LIKE 'ВестиУчетПоХарактеристикам')
  SET @Field2 = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Номенклатура' AND V8_ObjectFieldName LIKE 'ЕдиницаДляОтчетов')
  SET @Field3 = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Номенклатура' AND V8_ObjectFieldName LIKE 'ЕдиницаХраненияОстатков')
  SET @ExecuteStr =  N'
 CREATE VIEW dbo.vwNomenklatura
 AS
 SELECT     convert(varchar(100), dbo.'+@DataTable+'.V8_ID, 1) AS ID, dbo.'+@DataTable+'.V8_Code, convert(varchar(2), dbo.'+@DataTable+'.'+@RegionID+', 2) as Услуга, (case when (convert(varchar(2), dbo.'+@DataTable+'.'+@RegionID+', 2)) = ''00'' Then ''Товар'' else ''Услуга'' end) as Услуга_Имя, dbo.'+@DataTable+'.V8_Description, dbo.'+@DataTable+'.'+@Fullname+' AS НаименованиеПолное, 
                      convert(varchar(2), dbo.'+@DataTable+'.V8_Marked, 2) AS Marked, convert(varchar(100), dbo.'+@DataTable+'.V8_Parent, 1) AS Parent, convert(varchar(2), dbo.'+@DataTable+'.V8_Folder, 2) AS Folder, dbo.'+@DataTable+'.'+@City+' AS Артикул, 
                      convert(varchar(100), dbo.'+@DataTable+'.'+@Category+', 1) AS БазоваяЕдиницаИзмерения, dbo.'+@JoinDataTable2+'.V8_Description AS БазоваяЕдиницаИзмерения_Имя, 
                      convert(varchar(2), dbo.'+@DataTable+'.'+@OKPO+', 2) AS Весовой, dbo.'+@DataTable+'.'+@INN+' AS ВесовойКоэффициентВхождения, 
                      convert(varchar(2), dbo.'+@DataTable+'.'+@Field1+', 2) AS ВестиУчетПоХарактеристикам, convert(varchar(100), dbo.'+@DataTable+'.'+@Field2+', 1) AS ЕдиницаДляОтчетов, 
                      V8_Reference177_1.V8_Description AS ЕдиницаДляОтчетов_Имя, convert(varchar(100), dbo.'+@DataTable+'.'+@Field3+', 1) AS ЕдиницаХраненияОстатков, 
                      dbo.'+@JoinDataTable+'.V8_Description AS ЕдиницаХраненияОстатков_Имя
 FROM         dbo.'+@DataTable+' LEFT OUTER JOIN
                       dbo.'+@JoinDataTable+' AS V8_Reference177_1 ON dbo.'+@DataTable+'.'+@Field2+' = V8_Reference177_1.V8_ID LEFT OUTER JOIN
                       dbo.'+@JoinDataTable+' ON dbo.'+@DataTable+'.'+@Field3+' = dbo.'+@JoinDataTable+'.V8_ID LEFT OUTER JOIN
                      dbo.'+@JoinDataTable2+' ON dbo.'+@DataTable+'.'+@Category+' = dbo.'+@JoinDataTable2+'.V8_ID
 '
   IF OBJECT_ID(N'dbo.vwNomenklatura', 'V') IS NOT NULL
   EXEC sp_executesql N'DROP VIEW dbo.vwNomenklatura'
 IF OBJECT_ID(N'dbo.vwNomenklatura', 'V') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
     AND OBJECT_ID(N'dbo.'+@JoinDataTable+'', 'U') IS NOT NULL AND OBJECT_ID(N'dbo.'+@JoinDataTable2+'', 'U') IS NOT NULL
   EXEC sp_executesql @ExecuteStr
   --Create vwNomCategory
  SET @ExecuteStr = N'CREATE VIEW dbo.vwNomCategory 
 AS SELECT     convert(varchar(100), V8_ID, 1) AS ID, V8_Code, V8_Description, convert(varchar(100), V8_Parent, 1) AS Parent
 FROM         dbo.'+@DataTable+'
 WHERE     (V8_Folder = 1)
 '
 IF OBJECT_ID(N'dbo.vwNomCategory', 'V') IS NOT NULL
   EXEC sp_executesql N'DROP VIEW dbo.vwNomCategory'
 IF OBJECT_ID(N'dbo.vwNomCategory', 'V') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
   EXEC sp_executesql @ExecuteStr
   --Create vwProductsWithCategory
  IF OBJECT_ID(N'dbo.vwProductsWithCategory', 'V') IS NOT NULL
  EXEC sp_executesql N'DROP VIEW dbo.vwProductsWithCategory'
 IF OBJECT_ID(N'dbo.vwProductsWithCategory', 'V') IS NULL AND OBJECT_ID(N'dbo.vwNomenklatura', 'V') IS NOT NULL
  EXEC sp_executesql N'CREATE VIEW dbo.vwProductsWithCategory 
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
 WHERE        (dbo.vwNomenklatura.Parent IS NOT NULL) AND (dbo.vwNomenklatura.Folder LIKE ''00'')'
   --Create vwOrganizations
  SET @DataTable = (SELECT TOP 1 TableName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Организации')
  SET @Fullname = (SELECT V8_FieldName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Организации' AND V8_ObjectFieldName LIKE 'НаименованиеПолное')
  SET @ExecuteStr =  N'
 CREATE VIEW dbo.vwOrganizations
 AS
 SELECT     convert(varchar(100), V8_ID, 1) AS ID, V8_Code, V8_Description, convert(varchar(2), V8_Marked, 2) AS Marked, '+@Fullname+' AS FullName
 FROM         dbo.'+@DataTable+''
  IF OBJECT_ID(N'dbo.vwOrganizations', 'V') IS NOT NULL
  EXEC sp_executesql N'DROP VIEW dbo.vwOrganizations'
 IF OBJECT_ID(N'dbo.vwOrganizations', 'V') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
  EXEC sp_executesql @ExecuteStr
  --Create vwPrices
  SET @DataTable = (SELECT TOP 1 TableName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'ТипыЦенНоменклатуры')
  SET @ExecuteStr = N'CREATE VIEW dbo.vwPrices 
 AS SELECT
  convert(varchar(100), '+@DataTable+'.V8_ID, 1) AS V8_ID
 ,'+@DataTable+'.V8_Code
 ,'+@DataTable+'.V8_Description
 ,convert(varchar(2), dbo.'+@DataTable+'.V8_Marked, 2) AS V8_Marked
 FROM dbo.'+@DataTable+'
 '
  IF OBJECT_ID(N'dbo.vwPrices', 'V') IS NOT NULL
  EXEC sp_executesql N'DROP VIEW dbo.vwPrices'
 IF OBJECT_ID(N'dbo.vwPrices', 'V') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
  EXEC sp_executesql @ExecuteStr
  --Create vwRegions
  SET @DataTable = (SELECT TOP 1 TableName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Пользователи')
  SET @ExecuteStr =  N'
 CREATE VIEW dbo.vwRegions
 AS
 SELECT     convert(varchar(100), V8_ID, 1) AS ID, V8_Code, V8_Description, convert(varchar(2), V8_Marked, 2) AS Marked, convert(varchar(100), V8_Parent, 1) AS Parent
 FROM         dbo.'+@DataTable+'
 WHERE     (V8_Parent IS NOT NULL)
 '
  IF OBJECT_ID(N'dbo.vwRegions', 'V') IS NOT NULL
  EXEC sp_executesql N'DROP VIEW dbo.vwRegions'
 IF OBJECT_ID(N'dbo.vwRegions', 'V') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
  EXEC sp_executesql @ExecuteStr
  --Create vwSales
  SET @DataTable = (SELECT TOP 1 TableName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'Продажи')
  SET @JoinDataTable = (SELECT TOP 1 TableName FROM vwFieldByDocuments WHERE V8_ObjectName LIKE 'РеализацияТоваровУслуг')
  SET @RegionID = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'Продажи' AND V8_ObjectFieldName LIKE 'Номенклатура')
  SET @Fullname = (SELECT V8_FieldName FROM vwFieldByDocuments WHERE V8_ObjectName LIKE 'РеализацияТоваровУслуг' AND V8_ObjectFieldName LIKE 'ТипЦен')
  SET @City = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'Продажи' AND V8_ObjectFieldName LIKE 'Количество')
  SET @Category = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'Продажи' AND V8_ObjectFieldName LIKE 'Стоимость')
  SET @OKPO = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'Продажи' AND V8_ObjectFieldName LIKE 'СтоимостьБезСкидок')
  SET @INN = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'Продажи' AND V8_ObjectFieldName LIKE 'НДС')
  SET @Field1 = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'Продажи' AND V8_ObjectFieldName LIKE 'Контрагент')
  SET @Field2 = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'Продажи' AND V8_ObjectFieldName LIKE 'Организация')
  SET @ExecuteStr = N'CREATE VIEW dbo.vwSales 
 AS SELECT T1.Data, T1.Registrator, T1.Nom_ID, T1.Price_ID, SUM(T1.Qtt) Qtt, SUM(T1.Summa) Summa, SUM(T1.SummDisc) SummDisc,
  SUM(T1.VAT) VAT, MIN(T1.Kontrag_ID) Kontrag_ID, MIN(T1.Organization_ID) Organization_ID
 FROM (SELECT
  CONVERT(DATETIME, CONVERT(VARCHAR(10), '+@DataTable+'.V8_Period, 112)) AS Data
 ,CONVERT(VARCHAR(100), '+@DataTable+'.V8_Recorder_RRef, 1) AS Registrator
 ,CONVERT(VARCHAR(100), '+@DataTable+'.'+@RegionID+', 1) AS Nom_ID
 ,CONVERT(VARCHAR(100), '+@JoinDataTable+'.'+@Fullname+', 1) AS Price_ID
 ,'+@DataTable+'.'+@City+' AS Qtt
 ,'+@DataTable+'.'+@Category+' AS Summa
 ,'+@DataTable+'.'+@OKPO+' AS SummDisc
 ,'+@DataTable+'.'+@INN+' AS VAT
 ,CONVERT(VARCHAR(100), '+@DataTable+'.'+@Field1+', 1) AS Kontrag_ID
 ,CONVERT(VARCHAR(100), '+@DataTable+'.'+@Field2+', 1) AS Organization_ID
 FROM dbo.'+@DataTable+'
 LEFT OUTER JOIN dbo.'+@JoinDataTable+'
  ON '+@DataTable+'.V8_Recorder_RRef = '+@JoinDataTable+'.V8_ID
 WHERE '+@DataTable+'.V8_Active = 1) T1
 GROUP BY T1.Data, T1.Registrator, T1.Nom_ID, T1.Price_ID'
  IF OBJECT_ID(N'dbo.vwSales', 'V') IS NOT NULL
  EXEC sp_executesql N'DROP VIEW dbo.vwSales'
 IF OBJECT_ID(N'dbo.vwSales', 'V') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL 
    AND OBJECT_ID(N'dbo.'+@JoinDataTable+'', 'U') IS NOT NULL
  EXEC sp_executesql @ExecuteStr
  --Create vwSebest
  DECLARE @Nom_ID NVARCHAR(50)
  DECLARE @Qtt NVARCHAR(50)
  DECLARE @Summa NVARCHAR(50)
  SET @DataTable = (SELECT TOP 1 TableName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ПродажиСебестоимость')
  SET @Nom_ID = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ПродажиСебестоимость' AND V8_ObjectFieldName LIKE 'Номенклатура')
  SET @Qtt = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ПродажиСебестоимость' AND V8_ObjectFieldName LIKE 'Количество')
  SET @Summa = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ПродажиСебестоимость' AND V8_ObjectFieldName LIKE 'Стоимость')
  SET @ExecuteStr = N'CREATE VIEW dbo.vwSebest AS SELECT CONVERT(DATETIME, CONVERT(VARCHAR(10), V8_Period, 112)) AS Data, convert(varchar(100), V8_Recorder_RRef, 1) as Registrator, SUM('+@Qtt+') AS Qtt, SUM('+@Summa+') AS Summa, 
      convert(varchar(100), '+@Nom_ID+', 1) AS Nom_ID FROM '+@DataTable+' WHERE (V8_Active = 1) GROUP BY V8_Period, V8_Recorder_RRef, '+@Nom_ID+''
  IF OBJECT_ID(N'dbo.vwSebest', 'V') IS NOT NULL
    EXEC sp_executesql N'DROP VIEW dbo.vwSebest'
  IF OBJECT_ID(N'dbo.vwSebest', 'V') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
    EXEC sp_executesql @ExecuteStr
 --Create vwSalesFacts
 IF OBJECT_ID(N'dbo.vwSalesFacts', 'V') IS NOT NULL
   EXEC sp_executesql N'DROP VIEW dbo.vwSalesFacts'
 IF OBJECT_ID(N'dbo.vwSalesFacts', 'V') IS NULL AND OBJECT_ID(N'dbo.vwSales', 'V') IS NOT NULL 
   AND OBJECT_ID(N'dbo.vwSebest', 'V') IS NOT NULL
  AND OBJECT_ID(N'dbo.vwKontragents', 'V') IS NOT NULL
  EXEC sp_executesql N'CREATE VIEW dbo.vwSalesFacts 
 AS SELECT
  vwSales.Data
 ,vwSales.Registrator
 ,vwSales.Nom_ID
 ,vwSales.Price_ID
 ,vwSales.Qtt
 ,vwSales.Summa
 ,vwSales.SummDisc
 ,NULLIF(vwSebest.Summa, 0) AS Sebest
 ,vwSales.Summa - NULLIF(vwSebest.Summa, 0) AS Marga
 ,vwSales.VAT
 ,vwKontragents.Region_ID
 ,vwSales.Kontrag_ID
 ,vwSales.Organization_ID
 FROM dbo.vwSales
 LEFT OUTER JOIN dbo.vwSebest
  ON vwSales.Registrator = vwSebest.Registrator
    AND vwSales.Nom_ID = vwSebest.Nom_ID
 LEFT OUTER JOIN dbo.vwKontragents
  ON vwSales.Kontrag_ID = vwKontragents.ID
    WHERE vwSales.Qtt > 0
 '
   --Create vwStoreHouses
  SET @DataTable = (SELECT TOP 1 TableName FROM vwFieldByReference WHERE V8_ObjectName LIKE 'Склады')
  SET @ExecuteStr = N'CREATE VIEW dbo.vwStoreHouses 
 AS SELECT
  convert(varchar(100), '+@DataTable+'.V8_ID, 1) V8_ID
 ,'+@DataTable+'.V8_Code
 ,'+@DataTable+'.V8_Description
 ,'+@DataTable+'.V8_Parent
 ,'+@DataTable+'.V8_Folder
 FROM dbo.'+@DataTable+'
 '
 IF OBJECT_ID(N'dbo.vwStoreHouses', 'V') IS NOT NULL
  EXEC sp_executesql N'DROP VIEW dbo.vwStoreHouses'
 IF OBJECT_ID(N'dbo.vwStoreHouses', 'V') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
  EXEC sp_executesql @ExecuteStr
   --Create vwStockPartyTurnover
  SET @DataTable = (SELECT TOP 1 TableName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ПартииТоваровНаСкладах')
  SET @Qtt = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ПартииТоваровНаСкладах' AND V8_ObjectFieldName LIKE 'Количество')
  SET @Summa = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ПартииТоваровНаСкладах' AND V8_ObjectFieldName LIKE 'Стоимость')
  SET @Nom_ID = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ПартииТоваровНаСкладах' AND V8_ObjectFieldName LIKE 'Номенклатура')
  SET @RegionID = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ПартииТоваровНаСкладах' AND V8_ObjectFieldName LIKE 'Склад')
  SET @ExecuteStr = N'CREATE VIEW dbo.vwStockPartyTurnover 
 AS SELECT T1.V8_Period, T1.Nom_ID, T1.Store_ID, T1.QttPrihod, T1.SummaPrihod, T1.QttRashod, T1.SummaRashod, T1.QttTurnover, T1.SummaTurnover FROM (SELECT
  DATEADD(DAY, 0, DATEDIFF(DAY, 0, '+@DataTable+'.V8_Period)) AS V8_Period
 ,convert(varchar(100), '+@DataTable+'.'+@Nom_ID+', 1) AS Nom_ID
 ,convert(varchar(100), '+@DataTable+'.'+@RegionID+', 1) AS Store_ID
 ,SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN '+@DataTable+'.'+@Qtt+' ELSE -'+@DataTable+'.'+@Qtt+' END) AS QttTurnover
 ,SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN '+@DataTable+'.'+@Qtt+' ELSE 0.0 END) AS QttPrihod
 ,SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN 0.0 ELSE '+@DataTable+'.'+@Qtt+' END) AS QttRashod
 ,SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN '+@DataTable+'.'+@Summa+' ELSE -'+@DataTable+'.'+@Summa+' END) AS SummaTurnover
 ,SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN '+@DataTable+'.'+@Summa+' ELSE 0.0 END) AS SummaPrihod
 ,SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN 0.0 ELSE '+@DataTable+'.'+@Summa+' END) AS SummaRashod
 FROM dbo.'+@DataTable+'
 WHERE '+@DataTable+'.V8_Active = 1
 GROUP BY DATEADD(DAY, 0, DATEDIFF(DAY, 0, '+@DataTable+'.V8_Period))
        ,'+@DataTable+'.'+@Nom_ID+'
        ,'+@DataTable+'.'+@RegionID+'
 HAVING SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN '+@DataTable+'.'+@Qtt+' ELSE -'+@DataTable+'.'+@Qtt+' END) <> 0 OR
      SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN '+@DataTable+'.'+@Qtt+' ELSE 0.0 END) <> 0 OR
      SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN 0.0 ELSE '+@DataTable+'.'+@Qtt+' END) <> 0) T1'
 IF OBJECT_ID(N'dbo.vwStockPartyTurnover', 'V') IS NOT NULL
  EXEC sp_executesql N'DROP VIEW dbo.vwStockPartyTurnover'
 IF OBJECT_ID(N'dbo.vwStockPartyTurnover', 'V') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
  EXEC sp_executesql @ExecuteStr
   --Create StockPartyAmount
 IF OBJECT_ID(N'dbo.StockPartyAmount', 'U') IS NOT NULL
  DROP TABLE dbo.StockPartyAmount
 IF OBJECT_ID(N'dbo.StockPartyAmount', 'U') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
  CREATE TABLE dbo.StockPartyAmount (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT (NEWID())
   ,_Period DATETIME NOT NULL
   ,Nom_ID VARCHAR(100) NOT NULL
   ,Stock_ID VARCHAR(100) NOT NULL
   ,Qtt NUMERIC(38, 3) NULL
   ,Summa NUMERIC(38, 2) NULL
   ,CONSTRAINT PK_StockPartyAmount_ID PRIMARY KEY CLUSTERED (ID)
  ) ON [PRIMARY]
   --Create fnStockPartyAmount
  SET @ExecuteStr = N'CREATE FUNCTION dbo.fnStockPartyAmount (@P1 DATETIME, @P4 DATETIME)
 RETURNS TABLE 
  AS RETURN(
  SELECT T1.Nom_ID, T1.Stock_ID, T1.Balance, T1.Sebest FROM (SELECT t2.Nom_ID, T2.Stock_ID, CAST(SUM(T2.Balance)
         AS NUMERIC(34, 8)) AS Balance,  CAST(SUM(T2.Sebest) AS NUMERIC(34, 2)) AS Sebest
  FROM (SELECT t3.Nom_ID, t3.Stock_ID, CAST(SUM(t3.Qtt) AS NUMERIC(28,8)) AS Balance,CAST(SUM(t3.Summa) AS NUMERIC(28,2)) AS Sebest 
  FROM StockPartyAmount t3
  WHERE t3._Period = @P1
  GROUP BY t3.Nom_ID, t3.Stock_ID
  HAVING CAST(SUM(t3.Qtt) AS NUMERIC(28,8)) <> 0
 UNION ALL
 SELECT convert(varchar(100), t4.'+@Nom_ID+', 1), convert(varchar(100), t4.'+@RegionID+', 1),
  CAST(CAST(SUM(CASE WHEN T4.V8_RecordKind = 0.0 
           THEN T4.'+@Qtt+' 
    ELSE -T4.'+@Qtt+' END)   
                   AS NUMERIC(22, 8)) AS NUMERIC(22, 2)) AS V8_Fld15007,
  CAST(CAST(SUM(CASE WHEN T4.V8_RecordKind = 0.0 
           THEN T4.'+@Summa+' 
    ELSE -T4.'+@Summa+' END)   
                   AS NUMERIC(22, 8)) AS NUMERIC(22, 2)) AS V8_Fld15008
  FROM '+@DataTable+' t4
  WHERE t4.V8_Period >= @P1 AND t4.V8_Period < @P4 AND t4.V8_Active = 1
  GROUP BY t4.'+@Nom_ID+', t4.'+@RegionID+'
  HAVING CAST(CAST(SUM(CASE WHEN T4.V8_RecordKind = 0.0 THEN T4.'+@Qtt+' ELSE -T4.'+@Qtt+' END)   
                   AS NUMERIC(22, 8)) AS NUMERIC(22, 2)) <> 0) T2
 GROUP BY T2.Nom_ID, T2.Stock_ID
  HAVING CAST(SUM(T2.Balance) AS NUMERIC(34, 8)) <> 0) T1
 )
 '
 IF EXISTS (SELECT
      1
    FROM sys.objects
    WHERE object_id = OBJECT_ID(N'dbo.fnStockPartyAmount')
    AND type IN ('IF', 'FN', 'TF'))
  EXEC sp_executesql N'DROP FUNCTION dbo.fnStockPartyAmount'
 IF NOT EXISTS (SELECT
      1
    FROM sys.objects
    WHERE object_id = OBJECT_ID(N'dbo.fnStockPartyAmount')
    AND type IN ('IF', 'FN', 'TF')) AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
  EXEC sp_executesql @ExecuteStr
   --Create CalcCurrentStockAmount
 IF OBJECT_ID(N'dbo.CalcCurrentStockAmount', 'P') IS NOT NULL
  EXEC sp_executesql N'DROP PROCEDURE dbo.CalcCurrentStockAmount'
 IF OBJECT_ID(N'dbo.CalcCurrentStockAmount', 'P') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
  EXEC sp_executesql N'CREATE PROCEDURE dbo.CalcCurrentStockAmount
 AS 
 DECLARE @P4 DATETIME = ''01-01-2999 00:00:00''
 DECLARE @P1 DATETIME
 DECLARE @ExecuteStr NVARCHAR(MAX)
 DECLARE @DataTable NVARCHAR(50)
 --SET @P4 = DATEADD(YEAR,2000,DATEADD(yy, DATEDIFF(yy,0,GETDATE()), 0));
 IF OBJECT_ID(N''dbo.vwAccumReg'', ''V'') IS NOT NULL
  SET @DataTable = (SELECT ar.TableName FROM vwAccumReg ar WHERE ar.V8_ObjectName LIKE ''ПартииТоваровНаСкладах'')
 IF @DataTable IS NOT NULL
  SET @ExecuteStr = N''SELECT @D =  MIN(var.V8_Period) FROM ''+@DataTable+'' var''
  EXEC sp_executesql @ExecuteStr, N''@D DATETIME OUTPUT'', @D = @P1 OUTPUT
 IF @P1 IS NULL
  SET @P1 = ''31-12-2012 00:00:00''
 IF @DataTable IS NOT NULL BEGIN
 DELETE FROM StockPartyAmount
 INSERT INTO StockPartyAmount  (_Period, Nom_ID, Stock_ID, Qtt, Summa)
       SELECT @P1, Nom_ID, Stock_ID, Balance,Sebest
       FROM fnStockPartyAmount(@P1,DATEADD(DAY,1,@P1));
 INSERT INTO StockPartyAmount  (_Period, Nom_ID, Stock_ID, Qtt, Summa)
       SELECT @P4, Nom_ID, Stock_ID, Balance,Sebest
       FROM fnStockPartyAmount(@P1,@P4);
 END
 '
 --Create vwStockTurnover
  SET @DataTable = (SELECT TOP 1 TableName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ТоварыНаСкладах')
  SET @Qtt = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ТоварыНаСкладах' AND V8_ObjectFieldName LIKE 'Количество')
  SET @Nom_ID = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ТоварыНаСкладах' AND V8_ObjectFieldName LIKE 'Номенклатура')
  SET @RegionID = (SELECT V8_FieldName FROM vwFieldByAccumReg WHERE V8_ObjectName LIKE 'ТоварыНаСкладах' AND V8_ObjectFieldName LIKE 'Склад')
  SET @ExecuteStr = N'CREATE VIEW dbo.vwStockTurnover 
 AS SELECT T1.V8_Period, T1.Nom_ID, T1.Store_ID, T1.QttPrihod, T1.QttRashod, T1.QttTurnover FROM (SELECT
  DATEADD(DAY, 0, DATEDIFF(DAY, 0, '+@DataTable+'.V8_Period)) AS V8_Period
 ,convert(varchar(100), '+@DataTable+'.'+@Nom_ID+', 1) AS Nom_ID
 ,convert(varchar(100), '+@DataTable+'.'+@RegionID+', 1) AS Store_ID
 ,SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN '+@DataTable+'.'+@Qtt+' ELSE -'+@DataTable+'.'+@Qtt+' END) AS QttTurnover
 ,SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN '+@DataTable+'.'+@Qtt+' ELSE 0.0 END) AS QttPrihod
 ,SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN 0.0 ELSE '+@DataTable+'.'+@Qtt+' END) AS QttRashod
 FROM dbo.'+@DataTable+'
 WHERE '+@DataTable+'.V8_Active = 1
 GROUP BY DATEADD(DAY, 0, DATEDIFF(DAY, 0, '+@DataTable+'.V8_Period))
        ,'+@DataTable+'.'+@Nom_ID+'
        ,'+@DataTable+'.'+@RegionID+'
 HAVING SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN '+@DataTable+'.'+@Qtt+' ELSE -'+@DataTable+'.'+@Qtt+' END) <> 0 OR
      SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN '+@DataTable+'.'+@Qtt+' ELSE 0.0 END) <> 0 OR
      SUM(CASE WHEN '+@DataTable+'.V8_RecordKind = 0 THEN 0.0 ELSE '+@DataTable+'.'+@Qtt+' END) <> 0) T1'
 IF OBJECT_ID(N'dbo.vwStockTurnover', 'V') IS NOT NULL
  EXEC sp_executesql N'DROP VIEW dbo.vwStockTurnover'
 IF OBJECT_ID(N'dbo.vwStockTurnover', 'V') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
  EXEC sp_executesql @ExecuteStr
 --Create StockAmount 
 IF OBJECT_ID(N'dbo.StockAmount', 'U') IS NOT NULL
  DROP TABLE dbo.StockAmount
 IF OBJECT_ID(N'dbo.StockAmount', 'U') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
  CREATE TABLE dbo.StockAmount (
    ID UNIQUEIDENTIFIER NOT NULL DEFAULT (NEWID())
   ,_Period DATETIME NOT NULL
   ,Nom_ID VARCHAR(100) NOT NULL
   ,Stock_ID VARCHAR(100) NOT NULL
   ,Qtt NUMERIC(38, 3) NULL
   ,CONSTRAINT PK_StockAmount_ID PRIMARY KEY CLUSTERED (ID)
  ) ON [PRIMARY]
  --Create fnStockAmount
  SET @ExecuteStr = N'CREATE FUNCTION dbo.fnStockAmount (@P1 DATETIME, @P4 DATETIME)
 RETURNS TABLE 
  AS RETURN(
  SELECT T1.Nom_ID, T1.Stock_ID, T1.Balance FROM (SELECT t2.Nom_ID, T2.Stock_ID, CAST(SUM(T2.Balance)
         AS NUMERIC(34, 8)) AS Balance
  FROM (SELECT t3.Nom_ID, t3.Stock_ID, CAST(SUM(t3.Qtt) AS NUMERIC(28,8)) AS Balance 
  FROM StockAmount t3
  WHERE t3._Period = @P1
  GROUP BY t3.Nom_ID, t3.Stock_ID
  HAVING CAST(SUM(t3.Qtt) AS NUMERIC(28,8)) <> 0
 UNION ALL
 SELECT convert(varchar(100), t4.'+@Nom_ID+', 1), convert(varchar(100), t4.'+@RegionID+', 1),
  CAST(CAST(SUM(CASE WHEN T4.V8_RecordKind = 0.0 
           THEN T4.'+@Qtt+' 
    ELSE -T4.'+@Qtt+' END)   
                   AS NUMERIC(22, 8)) AS NUMERIC(22, 2)) AS V8_Fld15007
  FROM '+@DataTable+' t4
  WHERE t4.V8_Period >= @P1 AND t4.V8_Period < @P4 AND t4.V8_Active = 1
  GROUP BY t4.'+@Nom_ID+', t4.'+@RegionID+'
  HAVING CAST(CAST(SUM(CASE WHEN T4.V8_RecordKind = 0.0 THEN T4.'+@Qtt+' ELSE -T4.'+@Qtt+' END)   
                   AS NUMERIC(22, 8)) AS NUMERIC(22, 2)) <> 0) T2
 GROUP BY T2.Nom_ID, T2.Stock_ID
  HAVING CAST(SUM(T2.Balance) AS NUMERIC(34, 8)) <> 0) T1
 )
 '
 IF EXISTS (SELECT
      1
    FROM sys.objects
    WHERE object_id = OBJECT_ID(N'dbo.fnStockAmount')
    AND type IN ('IF', 'FN', 'TF'))
  EXEC sp_executesql N'DROP FUNCTION dbo.fnStockAmount'
 IF NOT EXISTS (SELECT
      1
    FROM sys.objects
    WHERE object_id = OBJECT_ID(N'dbo.fnStockAmount')
    AND type IN ('IF', 'FN', 'TF')) AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
  EXEC sp_executesql @ExecuteStr
  --Create CalcStockAmount
 IF OBJECT_ID(N'dbo.CalcStockAmount', 'P') IS NOT NULL
  EXEC sp_executesql N'DROP PROCEDURE dbo.CalcStockAmount'
 IF OBJECT_ID(N'dbo.CalcStockAmount', 'P') IS NULL AND OBJECT_ID(N'dbo.'+@DataTable+'', 'U') IS NOT NULL
  EXEC sp_executesql N'CREATE PROCEDURE dbo.CalcStockAmount
 AS 
 DECLARE @P4 DATETIME = ''01-01-2999 00:00:00''
 DECLARE @P1 DATETIME
 DECLARE @ExecuteStr NVARCHAR(MAX)
 DECLARE @DataTable NVARCHAR(50)
 --SET @P4 = DATEADD(YEAR,2000,DATEADD(yy, DATEDIFF(yy,0,GETDATE()), 0));
 IF OBJECT_ID(N''dbo.vwAccumReg'', ''V'') IS NOT NULL
  SET @DataTable = (SELECT ar.TableName FROM vwAccumReg ar WHERE ar.V8_ObjectName LIKE ''ТоварыНаСкладах'')
 IF @DataTable IS NOT NULL
  SET @ExecuteStr = N''SELECT @D =  MIN(var.V8_Period) FROM ''+@DataTable+'' var''
  EXEC sp_executesql @ExecuteStr, N''@D DATETIME OUTPUT'', @D = @P1 OUTPUT
 IF @P1 IS NULL
  SET @P1 = ''31-12-2012 00:00:00''
 IF @DataTable IS NOT NULL BEGIN
 DELETE FROM StockAmount
 INSERT INTO StockAmount  (_Period, Nom_ID, Stock_ID, Qtt)
       SELECT @P1, Nom_ID, Stock_ID, Balance
       FROM fnStockAmount(@P1,DATEADD(DAY,1,@P1));
 INSERT INTO StockAmount  (_Period, Nom_ID, Stock_ID, Qtt)
       SELECT @P4, Nom_ID, Stock_ID, Balance
       FROM fnStockAmount(@P1,@P4);
 END
 '
 --Create vwCalendar
  IF OBJECT_ID(N'dbo.vwAccumReg', 'V') IS NOT NULL
    SET @TurnOverCnt = NULLIF((SELECT COUNT(*) FROM vwAccumReg ar),0)
  IF OBJECT_ID(N'dbo.vwCalendar', 'V') IS NOT NULL
  EXEC sp_executesql N'DROP VIEW dbo.vwCalendar'
 IF OBJECT_ID(N'dbo.vwCalendar', 'V') IS NULL AND @TurnOverCnt > 0
  EXEC sp_executesql N'CREATE VIEW dbo.vwCalendar 
 AS WITH D AS 
 ( -- диапазон дан
	SELECT ''2013-01-01'' AS Start_Date, ''2017-12-31'' AS End_Date 
 ),
 N100 AS 
 ( -- цифры от 0 до 99
	SELECT 0 AS N
	UNION ALL 
	SELECT N100.N + 1 FROM N100
	WHERE N100.N < 99
 ), -- цифры от 0 до 9999
 N10000 AS 
 (
	SELECT N = N1.N * 100 + N2.N FROM N100 N1, N100 N2
 ),
 DT AS 
 ( -- цифры -> даты 
	SELECT 
		N, 
		DT = CAST(DateAdd(day, N, Start_Date) AS DATE)
	FROM N10000, D
 ),
 C1 AS
 ( -- обрезка диапазона, введение цифрового ключа
	SELECT CAST(CONVERT(CHAR(8), DT, 112) as INT) [pk_date]
		  ,convert(datetime,DT,121) [DT]
		  ,CONVERT(CHAR(10), DT, 121) [date_name]
		  ,[id_date] = N + 1
	FROM DT, D
	WHERE DT.DT <= D.End_Date
 ),
 C2 AS
 ( -- получение полей календаря этап 1
	SELECT 
		 [pk_date]
		,[DT]
		,[date_name]
		,CAST(LEFT(pk_date, 6) AS INT)[id_yearmonth]
		,CAST(LEFT(pk_date, 4) AS INT) [id_year]
		,LEFT(pk_date, 4) [year_name]
		,(MONTH([DT]) - 1) / 3 + 1 [id_quartal]
		,DATEPART(WEEKDAY, [DT]) [id_weekday]
		,DATEPART(week, [DT]) [id_week]
		,MONTH([DT]) [id_month]
		,CASE MONTH([DT])  
			WHEN 1  THEN ''Январь'' 
			WHEN 2  THEN ''Февраль'' 
			WHEN 3  THEN ''Март'' 
			WHEN 4  THEN ''Апрель'' 
			WHEN 5  THEN ''Май'' 
			WHEN 6  THEN ''Июнь'' 
			WHEN 7  THEN ''Июль'' 
			WHEN 8  THEN ''Август'' 
			WHEN 9  THEN ''Сентябрь'' 
			WHEN 10 THEN ''Октябрь'' 
			WHEN 11 THEN ''Ноябрь'' 
			WHEN 12 THEN ''Декабрь'' 
		END [month_name]
		,CASE MONTH([DT])  
			WHEN 1  THEN ''Января'' 
			WHEN 2  THEN ''Февраля'' 
			WHEN 3  THEN ''Марта'' 
			WHEN 4  THEN ''Апреля'' 
			WHEN 5  THEN ''Мая'' 
			WHEN 6  THEN ''Июня'' 
			WHEN 7  THEN ''Июля'' 
			WHEN 8  THEN ''Августа'' 
			WHEN 9  THEN ''Сентября'' 
			WHEN 10 THEN ''Октября'' 
			WHEN 11 THEN ''Ноября'' 
			WHEN 12 THEN ''Декабря'' 
		END [month_name1]
		,CASE DATEPART(WEEKDAY, [DT]) 
			 when 1 then ''Понедельник''
			 when 2 then ''Вторник''
			 when 3 then ''Среда''
			 when 4 then ''Четверг''
			 when 5 then ''Пятница''
			 when 6 then ''Суббота''
			 when 7 then ''Воскресенье''
		end [weekday_name]
		,[id_date]
		,id_iso_week = datepart(ISO_WEEK, DT)
	FROM C1
 ),
 C3 AS 
 ( -- получение полей календаря этап 2
	SELECT 
		 [pk_date]
		,[DT]
		,[date_name]
		,[id_yearmonth]
		,CONCAT([year_name], '' '', [month_name]) [year_month_name]
		,[month_name]
		,month_name1
		,[id_year]
		,[year_name]
		,id_year * 100 + id_week [id_yearweek]
		,CONCAT(id_year, '' Неделя '', id_week) [year_week_name]
		,CONCAT(''Неделя '', id_week)  [week_name]
		,[id_year] * 10 + [id_quartal] [id_year_quartal]
		,[id_quartal]
		,CONCAT(id_year, '' Квартал '', [id_quartal]) [Year_Quartal_Name]
		,CONCAT(''Квартал '', [id_quartal])  [Quartal_Name]
		,id_year * 1000 + id_week * 10 + [id_week] [id_week_weekday]
		,CONCAT(id_year, '' - Нед. '', id_week, '' - '', [weekday_name]) [year_week_weekday_name]
		,[id_weekday]
		,[weekday_name]
		,[id_week]
		,[id_month]
		,ROW_NUMBER() OVER (PARTITION BY [id_yearmonth] ORDER BY DT) [id_day_of_month]
		,ROW_NUMBER() OVER (PARTITION BY [id_year], [id_quartal] ORDER BY DT) [id_day_of_quartal]
		,DENSE_RANK() OVER (PARTITION BY [id_year], [id_quartal] ORDER BY id_month) [id_month_of_quartal]
		,[id_year] * 1000 + [id_quartal] * 100 + id_month [id_year_Quartal_Month]
		,[id_date]
		,id_year * 10000 + id_month * 100 + id_week [id_year_month_week]
		,id_iso_week 
		,id_iso_year = 
			CASE 
				WHEN id_iso_week = 1 AND id_month = 12 THEN id_year + 1 
				WHEN id_iso_week > 51 AND id_month = 1 THEN id_year - 1
				ELSE id_year 
			END 
	FROM C2
 ), 
 C4 AS
 ( -- получение полей календаря этап 3
	SELECT 
		 [pk_date]
		,[DT]
		,[date_name]
		,CONCAT([id_day_of_month], '' '', LOWER(month_name1), '' '', id_year) [date_name1]
		,[id_yearmonth]
		,[year_month_name]
		,[month_name]
		,[month_name1]
		,[id_year]
		,[year_name]
		,[id_yearweek]
		,[year_week_name]
		,[week_name]
		,[id_year_quartal]
		,[id_quartal]
		,[Year_Quartal_Name]
		,[Quartal_Name]
		,[id_week_weekday]
		,[year_week_weekday_name]
		,[id_weekday]
		,[weekday_name]
		,[id_week]
		,[id_month]
		,[id_day_of_month]
		,[id_day_of_quartal]
		,[id_month_of_quartal]
		,CONCAT(id_month, '' Месяц '', id_quartal, '' Квартала'') [month_of_quartal_name]
		,[id_year_Quartal_Month]
		,CONCAT(id_year, '' Квартал '', id_quartal, '' '', month_name) [year_Quartal_Month_Name]
		,MIN(dt) OVER (PARTITION BY [id_year]) [Year_Value]
		,MIN(dt) OVER (PARTITION BY [id_year], [id_quartal]) [Quartal_Value]
		,MIN(dt) OVER (PARTITION BY [id_year], id_month) [Month_Value]
		,MIN(dt) OVER (PARTITION BY [id_year], id_week) [Week_Value]
		,[id_date]
		,MIN(dt) OVER (PARTITION BY [id_year], id_week) [id_First_Day_Of_Week]
		,[id_year_month_week]
		,id_iso_week
		,iso_week_name = CONCAT(''Неделя '', id_iso_week)
		,id_iso_year
		,id_iso_year_week = id_iso_year * 100 + id_iso_week
	FROM C3
 ) -- окончательный календарь
 SELECT TOP 1000000
	 [pk_date]
	,[DT]
	,[date_name]
	,[id_yearmonth]
	,[year_month_name]
	,[month_name]
	,[id_year]
	,[year_name]
	,[id_yearweek]
	,[year_week_name]
	,[week_name]
	,[id_year_quartal]
	,[id_quartal]
	,[Year_Quartal_Name]
	,[Quartal_Name]
	,[id_week_weekday]
	,[year_week_weekday_name]
	,[id_weekday]
	,[weekday_name]
	,[id_week]
	,[id_month]
	,[id_day_of_month]
	,[id_day_of_quartal]
	,[id_month_of_quartal]
	,[month_of_quartal_name]
	,[id_year_Quartal_Month]
	,[year_Quartal_Month_Name]
	,[Year_Value]
	,[Quartal_Value]
	,[Month_Value]
	,[Week_Value]
	,[id_date]
	,[id_year_month_week]
	,[date_name1]
	,[month_name1]
	,[id_First_Day_Of_Week]
	,FIRST_VALUE([date_name1]) OVER (PARTITION BY [id_First_Day_Of_Week] ORDER BY [pk_date]) [First_Day_Of_Week_Name]
	,id_iso_week 
	,iso_week_name
	,id_iso_year
	,id_iso_year_week
	,iso_year_week_name = CONCAT(id_iso_year, '' '', LOWER(iso_week_name))
 FROM C4
 ORDER BY id_date'