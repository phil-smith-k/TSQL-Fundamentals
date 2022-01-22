USE TSQLV4;

DROP TABLE IF EXISTS [dbo].[OrderDetails], [dbo].[Orders];

CREATE TABLE [dbo].[Orders]
(
	 [OrderId]          INT				NOT NULL
	,[CustomerId]       INT				NULL
	,[EmployeeId]       INT				NOT NULL
	,[OrderDate]        DATE			NOT NULL
	,[RequiredDate]     DATE			NOT NULL
	,[ShippedDate]		DATE			NULL
	,[ShipperId]		INT				NOT NULL
	,[Freight]			MONEY			NOT NULL	
		CONSTRAINT DFT_Orders_Freight DEFAULT(0)
	,[ShipName]			NVARCHAR(40)	NOT NULL
	,[ShipAddress]		NVARCHAR(60)	NOT NULL
	,[ShipCity]			NVARCHAR(15)	NOT NULL
	,[ShipRegion]		NVARCHAR(15)	NULL
	,[ShipPostalCode]	NVARCHAR(10)	NULL
	,[ShipCountry]		NVARCHAR(15)	NOT NULL

	CONSTRAINT PK_Orders PRIMARY KEY([OrderId])
);

CREATE TABLE [dbo].[OrderDetails]
(
	 [OrderId]          INT				NOT NULL
	,[ProductId]		INT				NOT NULL
	,[UnitPrice]		MONEY			NOT NULL
		CONSTRAINT DFT_OrderDetails_UnitPrice DEFAULT(0)
	,[Quantity]			SMALLINT		NOT NULL
		CONSTRAINT DFT_OrderDetails_Quantity DEFAULT(1)
	,[Discount]			NUMERIC(4,3)	NOT NULL
		CONSTRAINT DFT_OrderDetails_Discount DEFAULT(0)
	
	 CONSTRAINT PK_OrderDetails PRIMARY KEY([OrderId], [ProductId])
	,CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY([OrderId]) 
		REFERENCES [dbo].[Orders]([OrderId])
	,CONSTRAINT CHK_Discount CHECK ([Discount] BETWEEN 0 AND 1)
	,CONSTRAINT CHK_Quantity CHECK ([Quantity] > 0)
	,CONSTRAINT CHK_UnitPrice CHECK ([UnitPrice] >= 0)
);

GO

INSERT INTO [dbo].[Orders] SELECT * FROM [Sales].[Orders];
INSERT INTO [dbo].[OrderDetails] SELECT * FROM [Sales].[OrderDetails];

TRUNCATE TABLE [dbo].[OrderDetails]

ALTER TABLE [dbo].[OrderDetails] DROP CONSTRAINT FK_OrderDetails_Orders

TRUNCATE TABLE [dbo].[Orders]

ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY([OrderId]) REFERENCES [dbo].[Orders]([OrderId])

SELECT * FROM [dbo].[Orders]
SELECT * FROM [dbo].[OrderDetails]