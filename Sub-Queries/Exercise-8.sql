SELECT 
	 [custid]
	,[ordermonth]
	,(SELECT 
	    SUM([qty]) 
	  FROM [Sales].[CustOrders] o2 
	  WHERE 1 = 1
		AND o2.[ordermonth] <= o1.[ordermonth]) AS 'runningtotal'
FROM [Sales].[CustOrders] o1
ORDER BY [custid]