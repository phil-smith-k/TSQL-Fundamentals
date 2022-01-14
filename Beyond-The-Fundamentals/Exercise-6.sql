SELECT
	GROUPING_ID([empid], [custid], YEAR([orderdate]))
	,[empid]
	,[custid]
	,YEAR([orderdate]) 'orderyear'
	,SUM([qty]) 'sumqty'
FROM [dbo].[Orders]
GROUP BY 
	GROUPING SETS 
	(
		([empid], [custid], YEAR([orderdate])),
		([empid], YEAR([orderdate])),
		([custid], YEAR([orderdate]))
	);