-- Should have used table expression

SELECT
	 [empid]
	,COUNT(CASE WHEN YEAR([orderdate]) = 2014 THEN [orderid] END) AS 'cnt2014'
	,COUNT(CASE WHEN YEAR([orderdate]) = 2015 THEN [orderid] END) AS 'cnt2015'
	,COUNT(CASE WHEN YEAR([orderdate]) = 2016 THEN [orderid] END) AS 'cnt2016'
FROM [dbo].[Orders]
GROUP BY [empid]

-- Pivot solution from book

SELECT 
	 [empid]
	,[2014] 'cnt2014'
	,[2015] 'cnt2015'
	,[2016] 'cnt2016'
FROM 
(
	SELECT 
		 [empid]
		,YEAR([orderdate]) 'orderyear'
	FROM [dbo].[Orders]
) AS YEARS PIVOT
(
	COUNT([orderyear]) FOR [orderyear] IN 
	(
		 [2014]
		,[2015]
		,[2016]
	)
) AS YEARS_PIVOT;