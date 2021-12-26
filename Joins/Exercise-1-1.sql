SELECT 
	 e.[empid]
	,e.[firstname]
	,e.[lastname]
	,n.[n]
FROM [HR].[Employees] e
	CROSS JOIN [dbo].[Nums] n
WHERE 1 = 1
	AND n.[n] <= 5