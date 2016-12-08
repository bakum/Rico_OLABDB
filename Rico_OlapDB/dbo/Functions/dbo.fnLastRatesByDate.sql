﻿CREATE FUNCTION dbo.fnLastRatesByDate (@D DATETIME)
RETURNS TABLE 
  AS RETURN (
  SELECT CONVERT(VARCHAR(100), T1.V8_Fld12579, 1) AS Curr_ID
  , T1.V8_Fld12580 AS Kurs
  , T1.V8_Fld12581 AS Krantost
  , T5.V8_Description AS Curr_Name
  FROM 
  (SELECT T4.V8_Fld12579, t4.V8_Fld12580, t4.V8_Fld12581 FROM (
    (SELECT T3.V8_Fld12579 AS Curr_ID, MAX(T3.V8_Period) AS MAXPERIOD
    FROM V8_InfoReg1814 T3
      WHERE T3.V8_Period <= @D
     GROUP BY T3.V8_Fld12579) T2
    INNER JOIN V8_InfoReg1814 T4 ON T2.Curr_ID = T4.V8_Fld12579 AND T2.MAXPERIOD = T4.V8_Period)) T1
  LEFT OUTER JOIN V8_Reference114 T5 ON T1.V8_Fld12579 = T5.V8_ID 
  )