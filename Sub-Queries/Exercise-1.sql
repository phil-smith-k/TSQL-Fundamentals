SELECT 
	 [orderid]
	,[orderdate]
	,[custid]
	,[empid]
FROM [Sales].[Orders] o
WHERE 1 = 1
	AND [orderdate] = (
		SELECT 
			MAX([orderdate])
		FROM [Sales].[Orders]
	);