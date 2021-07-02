/****** Cleaned DimProduct Table  ******/
SELECT 
  dp.[ProductKey], 
  dp.[ProductAlternateKey]
  -- ,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  -- ,[SizeUnitMeasureCode]
  , 
  dp.[EnglishProductName] 
  -- ,[SpanishProductName]
  , 
  dsc.[EnglishProductSubcategoryName] AS [Product Subcategory] --- joined from the ProductSubCategory table
  , 
  dpc.[EnglishProductCategoryName] AS [Product Category] --- joined from the ProductCategory  table
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  --,[Color]
  -- ,[SafetyStockLevel]
  -- ,[ReorderPoint]
  -- ,[ListPrice]
  , 
  dp.[Size] 
  -- ,[SizeRange]
  --,[Weight]
  -- ,[DaysToManufacture]
  , 
  dp.[ProductLine]
  --,[DealerPrice]
  -- ,[Class]
  -- ,[Style]
  , 
  dp.[ModelName]
  --,[LargePhoto]
  , 
  dp.[EnglishDescription] 
  --,[FrenchDescription]
  --,[ChineseDescription]
  -- ,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  -- ,[JapaneseDescription]
  -- ,[TurkishDescription]
  -- ,[StartDate]
  -- ,[EndDate]
  , 
  ISNULL([Status], 'Outdated') AS [Product Status] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS dp 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubCategory] AS dsc ON dsc.[ProductSubcategoryKey] = dp.[ProductSubcategoryKey] 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS dpc ON dsc.[ProductCategoryKey] = dpc.[ProductCategoryKey] 
ORDER BY 
  [ProductKey] ASC
