USE TSQLV4;

DROP TABLE IF EXISTS [dbo].[Customers];

CREATE TABLE [dbo].[Customers]
(
	 [Id] INT NOT NULL PRIMARY KEY
	,[CompanyName] NVARCHAR(40) NOT NULL
	,[Country] NVARCHAR(15) NOT NULL
	,[Region] NVARCHAR(15) NULL
	,[City] NVARCHAR(15) NOT NULL
);

INSERT INTO [dbo].[Customers] (
	 [Id]
	,[CompanyName]
	,[Country]
	,[Region]
	,[City]
)
SELECT DISTINCT
	 c.[custid]
	,c.[companyname]
	,c.[country]
	,c.[region]
	,c.[city]
FROM [Sales].[Customers] c
	JOIN [Sales].[Orders] o ON c.[custid] = o.[custid];

SELECT *
FROM [dbo].[Customers];