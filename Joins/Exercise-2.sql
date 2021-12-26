-- SELECT Customers.custid, Customers.companyname, Orders.orderid, Orders.orderdate
-- FROM Sales.Customers AS C
--	INNER JOIN Sales.Orders AS O
--		ON Customers.custid = Orders.custid

-- Can't use an alias and then try to name the table! 

SELECT 
	 c.[custid]
	,c.[companyname]
	,o.[orderid]
	,o.[orderdate]
FROM [Sales].[Customers] c
	INNER JOIN [Sales].[Orders] o ON c.[custid] = o.[custid]