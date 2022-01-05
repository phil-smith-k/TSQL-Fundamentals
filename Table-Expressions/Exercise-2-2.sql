SELECT 
	 o1.[empid]
	,o1.[maxorderdate]
	,o2.[orderid]
	,o2.[custid]
FROM 
(
	SELECT 
		 o.[empid]
		,MAX(o.[orderdate]) AS 'maxorderdate' 
	FROM [Sales].[Orders] o
	GROUP BY [empid]
) o1
JOIN [Sales].[Orders] o2 ON o1.[maxorderdate] = o2.[orderdate] AND o1.[empid] = o2.[empid] 