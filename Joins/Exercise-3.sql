SELECT 
	 o.[custid]
	,COUNT(DISTINCT od.[orderid]) AS 'numorders'
	,SUM(od.[qty])				  AS 'totalqty'
FROM [Sales].[Orders] o
	JOIN [Sales].[Customers] c ON o.[custid] = c.[custid]
	JOIN [Sales].[OrderDetails] od ON o.[orderid] = od.[orderid]
WHERE 1 = 1
	AND c.[country] = 'USA'
GROUP BY o.[custid]