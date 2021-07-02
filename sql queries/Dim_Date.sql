SELECT 
   [DateKey], 
  [FullDateAlternateKey] AS Date, 
  [EnglishDayNameOfWeek] AS Week , 
  [WeekNumberOfYear] AS Num_Week, 
  [EnglishMonthName] AS Month, 
  LEFT(EnglishMonthName,3) AS Month_abbr,
  [MonthNumberOfYear] AS Num_Month, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear]  AS Year
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE CalendarYear >=2019
