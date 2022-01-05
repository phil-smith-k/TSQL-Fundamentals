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

SELECT * 
FROM [Sales].[VEmpOrders]
ORDER BY [empid]