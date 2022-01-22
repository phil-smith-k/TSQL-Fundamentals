DROP TABLE IF EXISTS [dbo].[Orders];

SELECT 
	 [orderid]
	,[custid]
	,[empid]
	,[orderdate]
	,[requireddate]
	,[shippeddate]
	,[shipperid]
	,[freight]
	,[shipname]
	,[shipaddress]
	,[shipcity]
	,[shipregion]
	,[shippostalcode]
	,[shipcountry]
INTO [dbo].[Orders] 
FROM [Sales].[Orders] so
WHERE 1 = 1
	AND so.[orderdate] 
		BETWEEN '20140101' 
		AND '20161231'

SELECT * 
FROM [dbo].[Orders]