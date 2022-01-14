USE TSQLV4;

SELECT
	 [custid]
	,[orderid]
	,[qty]
	,RANK()       OVER(PARTITION BY [custid] ORDER BY [qty]) 'Rank'
	,DENSE_RANK() OVER(PARTITION BY [custid] ORDER BY [qty]) 'DenseRank'
FROM [dbo].[Orders]