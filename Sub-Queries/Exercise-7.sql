SELECT 
	 [custid]
	,[companyname]
FROM [Sales].[Customers]
WHERE 1 = 1
	AND [custid] IN (
		SELECT [custid]
		FROM [Sales].[Orders] o
			JOIN [Sales].[OrderDetails] od ON o.[orderid] = od.[orderid] AND od.[productid] = 12
	)

-- Book Solution:

SELECT custid, companyname
FROM Sales.Customers AS C
WHERE EXISTS (
	SELECT *
	FROM Sales.Orders AS O
	WHERE O.custid = C.custid
	AND EXISTS (
		SELECT * 
		FROM Sales.OrderDetails AS OD
		WHERE OD.orderid = O.orderid
			AND OD.productid = 12
	)
)