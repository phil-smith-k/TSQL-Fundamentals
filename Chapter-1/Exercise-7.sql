SELECT 
	 [shipcountry]
	,AVG([freight]) AS 'avgfreight'
FROM [Sales].[Orders]
WHERE 1 = 1
	AND [orderdate] 
		BETWEEN '20150101'
		AND		'20151231'
GROUP BY [shipcountry]
ORDER BY [avgfreight] DESC
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY