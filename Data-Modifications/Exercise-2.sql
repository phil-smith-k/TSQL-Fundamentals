DELETE
FROM [dbo].[Orders]
OUTPUT 
	 [deleted].[orderid]
	,[deleted].[orderdate]
WHERE 1 = 1
	AND [orderdate] < '20140801'