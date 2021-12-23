SELECT 
	 [orderid]
	,SUM([unitprice] * [qty]) AS 'totalvalue'
FROM [Sales].[OrderDetails]
GROUP BY [orderid]
HAVING 1 = 1 
	AND SUM([unitprice] * [qty]) > 10000 
ORDER BY [totalvalue]