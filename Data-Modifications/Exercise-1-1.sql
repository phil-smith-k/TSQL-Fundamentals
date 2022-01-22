USE TSQLV4;

DROP TABLE IF EXISTS [dbo].[Customers];

CREATE TABLE [dbo].[Customers]
(
	 [Id] INT NOT NULL PRIMARY KEY
	,[CompanyName] NVARCHAR(40) NOT NULL
	,[Country] NVARCHAR(15) NOT NULL
	,[Region] NVARCHAR(15) NOT NULL
	,[City] NVARCHAR(15) NOT NULL
);

INSERT INTO [dbo].[Customers] ([Id], [CompanyName], [Country], [Region], [City])
VALUES (100, N'Coho Winery', N'USA', N'WA', N'Redmond');

SELECT *
FROM [dbo].[Customers]