UPDATE o
SET 
	 o.[shipcountry] = c.[country]
	,o.[shipregion] = c.[region]
	,o.[shipcity] = c.[city]
OUTPUT
	 [deleted].[orderid]		'OrderId'
	,[deleted].[shipcountry]	'OriginalCountry'
	,[deleted].[shipregion]		'OriginalRegion'
	,[deleted].[shipcity]		'OriginalCity'
	,[inserted].[shipcountry]	'NewCountry'
	,[inserted].[shipregion]	'NewRegion'
	,[inserted].[shipcity]		'NewCity'
FROM [dbo].[Orders] o
	JOIN [Sales].[Customers] c ON o.[custid] = c.[custid]
WHERE 1 = 1
	AND c.[country] = 'UK';

