(
	SELECT 
		 [custid]
		,[empid]
	FROM [Sales].[Orders]
	WHERE 1 = 1
		AND [orderdate] BETWEEN '20160101' AND EOMONTH('20160101')
	
	INTERSECT 
	
	SELECT 
		 [custid]
		,[empid]
	FROM [Sales].[Orders]
	WHERE 1 = 1
		AND [orderdate] BETWEEN '20160201' AND EOMONTH('20160201')
)

EXCEPT 

SELECT 
	 [custid]
	,[empid]
FROM [Sales].[Orders]
WHERE 1 = 1
	AND [orderdate] BETWEEN '20150101' AND '20151231'
