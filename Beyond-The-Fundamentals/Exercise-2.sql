SELECT 
	[val]
	,ROW_NUMBER() OVER(ORDER BY [val]) AS [rownum]
FROM [Sales].[OrderValues]
GROUP BY [val]

SELECT 
	[val]
	,RANK() OVER(ORDER BY [val]) AS [rownum]
FROM [Sales].[OrderValues]
GROUP BY [val];

-- Book Solution
WITH C AS
(
	SELECT DISTINCT [val]
	FROM Sales.OrderValues
)
SELECT val, ROW_NUMBER() OVER(ORDER BY [val]) AS rownum
FROM C;