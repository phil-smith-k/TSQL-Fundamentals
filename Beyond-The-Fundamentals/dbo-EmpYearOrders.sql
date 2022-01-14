USE TSQLV4;

DROP TABLE IF EXISTS dbo.EmpYearOrders;

CREATE TABLE dbo.EmpYearOrders
(
	 empid INT NOT NULL CONSTRAINT PK_EmpYearOrders PRIMARY KEY
	,cnt2014 INT NULL
	,cnt2015 INT NULL
	,cnt2016 INT NULL
)

INSERT INTO dbo.EmpYearOrders (
	empid
	,cnt2014
	,cnt2015
	,cnt2016
)
SELECT 
	 empid
	,[2014] AS 'cnt2014'
	,[2015] AS 'cnt2015'
	,[2016] AS 'cnt2016'
FROM 
(
	SELECT
		 empid
		,YEAR(orderdate) AS 'orderyear'
	FROM dbo.Orders
) AS d PIVOT 
(
	COUNT(orderyear) FOR orderyear IN 
	(
		 [2014]
		,[2015]
		,[2016]
	)
) AS P;

SELECT * FROM dbo.EmpYearOrders;