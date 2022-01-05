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
	ORDER BY [unitprice] DESC;
GO

SELECT * FROM [Production].[TopProducts](5, 2);

DROP FUNCTION [Production].[TopProducts];