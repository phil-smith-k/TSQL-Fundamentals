SELECT 
	[custid]
	,[orderdate]
	,[orderid]
	,ROW_NUMBER() OVER(PARTITION BY [custid] ORDER BY [orderdate], [orderid]) 'rownum'
FROM [Sales].[Orders]