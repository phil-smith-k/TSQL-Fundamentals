SELECT 
	 [empid]
	,[firstname]
	,[lastname]
FROM [HR].[Employees]
WHERE 1 = 1
	AND LEN([lastName]) - LEN(REPLACE([lastname], 'e', '')) >= 2