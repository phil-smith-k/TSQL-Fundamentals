SELECT 
	 [custid]
	,[orderid]
	,[orderdate]
	,[empid]
FROM [Sales].[Orders]
WHERE 1 = 1 
	AND [custid] IN (
		SELECT 
			c.[custid]
		FROM (
			SELECT 
				[custid]
				,RANK() OVER (ORDER BY COUNT([orderid]) DESC) 'rank'
			FROM [Sales].[Orders]
			GROUP BY [custid]
		) c
		WHERE 1 = 1
			AND c.[rank] = 1
	);

-- Book Solution:

SELECT custid, orderid, orderdate, empid
FROM Sales.Orders
WHERE custid IN 
	(
		SELECT TOP(1) WITH TIES O.custid
		FROM Sales.Orders O
		GROUP BY O.custid
		ORDER BY COUNT(*) DESC
	)
