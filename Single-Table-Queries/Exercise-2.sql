SELECT 
	 [orderid]
	,[orderdate]
	,[custid]
	,[empid]
FROM [Sales].[Orders]
WHERE 1 = 1
	AND [orderdate] = EOMONTH([orderdate])
	