SELECT 
	 o2.[custid]      
	,o2.[orderdate]   
	,o2.[orderid]	  
	,(
		SELECT           
			DATEDIFF(DAY,  MAX(o1.orderdate), o2.[orderdate]) 
		FROM [Sales].[Orders] o1 
		WHERE 1 = 1 
			AND o2.[custid] = o1.[custid]
			AND o1.[orderdate] < o2.[orderdate]
			AND o1.[orderid] < o2.[orderid]
	 ) AS 'diff'
FROM [Sales].[Orders] o2
ORDER BY [custid], [orderdate]

-- BOOK SOLUTION 
SELECT 
	custid, 
	orderdate, 
	orderid,
	DATEDIFF(DAY,
	(SELECT TOP(1) O2.orderdate 
		FROM Sales.Orders AS O2
		WHERE O2.custid = O1.custid
		AND (O2.orderdate = O1.orderdate 
		AND O2.orderid < O1.orderid 
		OR O2.orderdate < O1.orderdate)
		ORDER BY O2.orderdate DESC, O2.orderid DESC)
	,orderdate)
FROM Sales.Orders O1
ORDER BY custid, orderdate, orderid