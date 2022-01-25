CREATE TABLE [dbo].[Departments] 
(
	 [deptid] INT NOT NULL PRIMARY KEY NONCLUSTERED
	,[deptname] VARCHAR(25) NOT NULL
	,[mgrid] INT NOT NULL
	,[validfrom] DATETIME2(0)
		GENERATED ALWAYS AS ROW START HIDDEN NOT NULL
	,[validto] DATETIME2(0) 
		GENERATED ALWAYS AS ROW END HIDDEN NOT NULL
	,PERIOD FOR SYSTEM_TIME ([validfrom], [validto])
	,INDEX ix_Departments CLUSTERED([deptid], [validfrom], [validto])
)
WITH (SYSTEM_VERSIONING = ON(HISTORY_TABLE = [dbo].[DepartmentsHistory]))