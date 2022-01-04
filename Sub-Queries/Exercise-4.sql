SELECT DISTINCT
	[country]
FROM [Sales].[Customers]
WHERE 1 = 1
	AND [country] NOT IN (
		SELECT [country]
		FROM [HR].[Employees]
	)