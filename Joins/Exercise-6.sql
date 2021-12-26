SELECT 
	 c.[custid]
	,c.[companyname]
	,o.[orderid]
	,o.[orderdate]
FROM [Sales].[Customers] c
	LEFT JOIN [Sales].[Orders] o ON c.[custid] = o.[custid] 
WHERE 1 = 1
	AND [o].[orderdate] = '20160212'