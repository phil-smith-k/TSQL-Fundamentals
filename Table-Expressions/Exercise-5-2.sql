DROP VIEW IF EXISTS [Sales].[VEmpOrders];

GO

CREATE VIEW [Sales].[VEmpOrders]
AS 
	SELECT 
		 [empid]
		,YEAR([orderdate])   AS 'orderyear'
		,SUM([qty])			 AS 'qty'
	FROM [Sales].[Orders] o
		JOIN [Sales].[OrderDetails] od ON o.[orderid] = od.[orderid]
	GROUP BY [empid], YEAR([orderdate]);

GO

SELECT 
	 [empid]
	,[orderyear]
	,[qty]
	,(
		SELECT SUM([qty]) 
		FROM [Sales].[VEmpOrders] v2 
		WHERE 1 = 1 
			AND v2.[empid] = v1.[empid]
			AND v2.[orderyear] <= v1.[orderyear]
	 ) AS 'runqty'
FROM [Sales].[VEmpOrders] v1
ORDER BY [empid], [orderyear]

GO

DROP VIEW [Sales].[VEmpOrders];