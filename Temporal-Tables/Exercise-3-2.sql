SELECT 
	 [deptid]
	,[deptname]
	,[mgrid]
FROM [dbo].[Departments]
	FOR SYSTEM_TIME AS OF '2022-01-25 01:31:00'