UPDATE [dbo].[Customers]
SET [Region] = '<None>'
OUTPUT
	 [deleted].[Id]
	,[deleted].[Region] 'OldRegion'
	,[inserted].[Region] 'NewRegion'
WHERE 1 = 1
	AND [Region] IS NULL
