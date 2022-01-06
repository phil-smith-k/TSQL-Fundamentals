WITH LOCATIONS AS
(
	SELECT
	*
	FROM 
	(
		SELECT
			1														  AS 'i'
			,ROW_NUMBER() OVER (ORDER BY [country], [region], [city]) AS 'n'
			,[country]
			,[region]
			,[city]
		FROM [HR].[Employees]
	) hr
	
	UNION ALL
	
	SELECT
	*
	FROM 
	(
		SELECT
			2														  AS 'i'
		    ,ROW_NUMBER() OVER (ORDER BY [country], [region], [city]) AS 'n'
			,[country]
			,[region]
			,[city]
		FROM [Production].[Suppliers]
	) prod
)
SELECT 
	 [country]
	,[region]
	,[city]
FROM LOCATIONS
ORDER BY [i], [n]


-------- Book Solution -----------
SELECT 
	 [country]
	,[region] 
	,[city]
FROM 
(
	SELECT 
		 1			AS sortcol
		,[country]
		,[region] 
		,[city]
	FROM [HR].[Employees]

	UNION ALL

	SELECT 
		 2			AS sortcol
		,[country]
		,[region] 
		,[city]
	FROM [HR].[Employees]
) u
ORDER BY [sortcol], [country], [region], [city]
