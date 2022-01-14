SELECT 
	 [custid]
	,[orderid]
	,[qty]
	,[qty] - LAG([qty]) OVER(PARTITION BY [custid] ORDER BY [orderdate], [orderid]) AS 'diffprev'
	,[qty] - LEAD([qty]) OVER(PARTITION BY [custid] ORDER BY [orderdate], [orderid]) AS 'diffnext'
FROM [dbo].[Orders];