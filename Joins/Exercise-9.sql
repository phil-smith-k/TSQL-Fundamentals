SELECT 
	 c.[custid]
	,c.[companyname]
	,CASE WHEN o.[orderid] IS NULL THEN 'No' ELSE 'Yes' END AS 'HasOrderOn20160212'
FROM [Sales].[Customers] c
	LEFT JOIN [Sales].[Orders] o ON c.[custid] = o.[custid] AND o.[orderdate] = '20160212'