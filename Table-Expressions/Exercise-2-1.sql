SELECT 
	 o.[empid]
	,MAX(o.[orderdate]) AS 'maxorderdate' 
FROM [Sales].[Orders] o
GROUP BY [empid]
ORDER BY [empid]