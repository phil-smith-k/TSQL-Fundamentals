DROP FUNCTION IF EXISTS [Production].[TopProducts];

GO

CREATE FUNCTION [Production].[TopProducts] (
	@supid INT,
	@n INT
) RETURNS TABLE
AS 
RETURN 
	SELECT TOP(@n) 
		 [productid]
		,[productname]
		,[unitprice]
	FROM [Production].[Products]
	WHERE 1 = 1
		AND [supplierid] = @supid
	ORDER BY [unitprice];
GO

SELECT 
	 s.[supplierid]
	,s.[companyname]
	,tp.[productid]
	,tp.[productname]
	,tp.[unitprice]
FROM [Production].[Suppliers] s
	CROSS APPLY [Production].[TopProducts](s.[supplierid], 2) tp

DROP FUNCTION [Production].[TopProducts];