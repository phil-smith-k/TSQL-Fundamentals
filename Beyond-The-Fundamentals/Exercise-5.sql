WITH EMPS AS
(
	SELECT
		 [empid]
		,[cnt2014] AS '2014'
		,[cnt2015] AS '2015'
		,[cnt2016] AS '2016'
	FROM [dbo].[EmpYearOrders]
)
SELECT 
	 [empid]
	,[orderyear]
	,[numorders]
FROM EMPS UNPIVOT
(
	[numorders] FOR [orderyear] IN 
	(
		 [2014]
		,[2015]
		,[2016]
	)
) AS UP
WHERE 1 = 1
	AND UP.numorders > 0