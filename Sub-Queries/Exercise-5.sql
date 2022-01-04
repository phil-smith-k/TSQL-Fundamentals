SELECT 
   	 o.[custid]
	,o.[orderid]
	,o.[orderdate]
	,o.[empid]
FROM (
	SELECT
		 [custid]
		,MAX([orderdate]) 'mostrecentorderdate'
	FROM [Sales].[Orders] 
	GROUP BY [custid]
) s
	JOIN [Sales].[Orders] o ON s.[custid] = o.[custid] AND s.[mostrecentorderdate] = o.[orderdate]
ORDER BY o.[custid]


-- Book Solution: 
SELECT custid, orderid, orderdate, empid
FROM Sales.Orders AS O1
WHERE orderdate = (
	SELECT MAX(O2.orderdate)
	FROM Sales.Orders O2
	WHERE O2.custid = O1.custid
)