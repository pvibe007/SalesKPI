/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
dc.[CustomerKey] 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  dc.[FirstName] --,[MiddleName]
  , 
  dc.[LastName] -- ,[NameStyle]
  -- ,[BirthDate]
  --,[MaritalStatus]
  -- ,[Suffix]
  , 
  Case dc.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender -- ,[EmailAddress]
  --,[YearlyIncome]
  -- ,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  -- ,[FrenchEducation]
  -- ,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  -- ,[AddressLine1]
  -- ,[AddressLine2]
  -- ,[Phone]
  , 
  dc.[DateFirstPurchase]
  -- ,[CommuteDistance]
 , dg.[City] AS [Customer City]
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS dc
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] As dg ON dg.GeographyKey=dc.GeographyKey
  ORDER BY dc.[CustomerKey] ASC
