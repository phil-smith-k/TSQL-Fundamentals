WITH ORDERS AS 
(
	SELECT 
		 [orderid]
		,[orderdate]
		,[custid]
		,[empid]
		,ROW_NUMBER() OVER (ORDER BY [orderdate], [orderid]) AS 'rownumber'
	FROM [Sales].[Orders]
)
SELECT 
	 [orderid]
	,[orderdate]
	,[custid]
	,[empid]
	,[rownumber]
FROM ORDERS 
WHERE 1 = 1
	AND [rownumber] BETWEEN 11 AND 20;