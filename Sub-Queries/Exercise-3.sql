SELECT 
	 e.[empid]
	,[firstname]
	,[lastname]
FROM [HR].[Employees] e
WHERE 1 = 1
	AND e.[empid] NOT IN (
		SELECT 
			o2.[empid]
		FROM [Sales].[Orders] o2
		WHERE 1 = 1
			AND [orderdate] >= '20160501'
	)