SELECT 
	 c.[custid]
	,c.[companyname]
FROM [Sales].[Customers] c
	LEFT JOIN [Sales].[Orders] o ON c.[custid] = o.[custid] 
WHERE 1 = 1
	AND o.[orderid] IS NULL