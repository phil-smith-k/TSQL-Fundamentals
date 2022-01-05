--SELECT 
--	 [orderid]
--	,[orderdate]
--	,[custid]
--	,[empid]
--	,DATEFROMPARTS(YEAR([orderdate]), 12, 31) AS 'endofyear' 
--FROM [Sales].[Orders]
--WHERE 1 = 1
--	AND [orderdate] <> [endofyear]

-- The problem with the above query is that you cannot use calculated columns in the WHERE filter
-- Solution using a derived table

SELECT 
	 o.[orderid]
	,o.[orderdate]
	,o.[custid]
	,o.[empid]
	,o.[endofyear]
FROM 
(
	SELECT 
		 [orderid]
		,[orderdate]
		,[custid]
		,[empid]
		,DATEFROMPARTS(YEAR([orderdate]), 12, 31) AS 'endofyear' 
	FROM [Sales].[Orders]
) o
WHERE [orderdate] <> [endofyear];

-- Solution using CTE:

WITH ORDERS AS 
(
	SELECT 
		 [orderid]
		,[orderdate]
		,[custid]
		,[empid]
		,DATEFROMPARTS(YEAR([orderdate]), 12, 31) AS 'endofyear' 
	FROM [Sales].[Orders]
)
SELECT 
	 [orderid]
	,[orderdate]
	,[custid]
	,[empid]
	,[endofyear]
FROM ORDERS
WHERE 1 = 1
	AND [orderdate] <> [endofyear]
