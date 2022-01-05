SELECT 
	 [orderid]
	,[orderdate]
	,[custid]
	,[empid]
	,ROW_NUMBER() OVER (ORDER BY [orderdate], [orderid]) AS 'rownumber'
FROM [Sales].[Orders]