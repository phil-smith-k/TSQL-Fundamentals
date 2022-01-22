DELETE FROM o
FROM [dbo].[Orders] o
	JOIN [Sales].[Customers] c ON o.[custid] = c.[custid]
WHERE 1 = 1
	AND c.[country] = N'Brazil';
