SELECT 
	 [empid]
	,[firstname]
	,[lastname]
	,[titleofcourtesy]
	,CASE LOWER([titleofcourtesy])
		WHEN 'ms.' THEN 'Female'
		WHEN 'mrs.' THEN 'Female'
		WHEN 'mr.' THEN 'Male'
		ELSE 'Unknown'
	 END AS [Gender]
FROM [HR].[Employees]
WHERE 1 = 1