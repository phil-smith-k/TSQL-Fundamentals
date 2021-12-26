SELECT 
	 [orderid]
	,[orderdate]
	,[custid]
	,[empid]
FROM [Sales].[Orders]
WHERE 1 = 1
	AND [orderdate] 
		BETWEEN '20150601'
		AND		'20150630'
	