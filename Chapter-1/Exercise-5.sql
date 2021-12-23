SELECT 
	 [empid]
	,[lastname]
FROM [HR].[Employees]
WHERE 1 = 1
	AND [lastname] <> LOWER([lastname])

SELECT 
	 [empid]
	,[lastname]
FROM [HR].[Employees]
WHERE 1 = 1
	AND [lastname] COLLATE Latin1_General_CS_AS LIKE N'[abcdefghijklmnopqrstuvwxyz]%'