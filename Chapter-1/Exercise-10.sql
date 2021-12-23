SELECT 
	 [custid]
	,[region]
FROM [Sales].[Customers]
ORDER BY CASE WHEN [region] IS NULL THEN 0 ELSE 1 END DESC, [region];