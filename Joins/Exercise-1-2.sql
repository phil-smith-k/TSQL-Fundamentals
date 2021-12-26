SELECT 
	 e.[empid]
	,DATEADD(DAY, n.[n] - 1, CAST('20160612' AS DATE)) 'dt'
FROM [HR].[Employees] e
	CROSS JOIN [dbo].[Nums] n
WHERE 1 = 1
	AND n.[n] <= DATEDIFF(DAY, '20160612','20160616') + 1
ORDER BY e.[empid];