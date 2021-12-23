/*
	This query returns the number of orders 
	each employee has made after May 1st, 2016
*/

SELECT 
	[empid]
	,COUNT(*) AS 'numorders'
FROM [Sales].[Orders]
WHERE 1 = 1
	AND [orderdate] < '20160501'
GROUP BY [empid];

/*
	This query returns only the 
	number of orders of employees who's 
	latest order date was before May 1st, 2016
*/

SELECT 
	[empid]
	,COUNT(*) AS 'numorders'
FROM [Sales].[Orders]
GROUP BY [empid]
HAVING 1 = 1
	AND MAX([orderdate]) < '20160501';