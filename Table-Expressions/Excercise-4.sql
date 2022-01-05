WITH MANAGEMENT_CHAIN AS
(
	SELECT 
		 [empid]
		,[mgrid]
		,[firstname]
		,[lastname]
	FROM [HR].[Employees] 
	WHERE 1 = 1
		AND [empid] = 9

	UNION ALL

	SELECT 
		 e.[empid]
		,e.[mgrid]
		,e.[firstname]
		,e.[lastname]
	FROM MANAGEMENT_CHAIN m
		JOIN [HR].[Employees] e ON e.[empid] = m.[mgrid]
)
SELECT 
	 [empid]
	,[mgrid]
	,[firstname]
	,[lastname]
FROM MANAGEMENT_CHAIN