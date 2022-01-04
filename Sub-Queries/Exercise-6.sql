SELECT 
	 [custid]
	,[companyname]
FROM [Sales].[Customers] 
WHERE 1 = 1
	AND [custid] IN ( -- Book Solution uses EXISTS
		SELECT [custid]
		FROM [Sales].[Orders]
		WHERE 1 = 1
			AND [orderdate] BETWEEN '20150101' AND '20151231'
	)
	AND [custid] NOT IN ( -- Book solution uses NOT EXISTS
		SELECT [custid]
		FROM [Sales].[Orders]
		WHERE 1 = 1
			AND [orderdate] BETWEEN '20160101' AND '20161231'
	)
