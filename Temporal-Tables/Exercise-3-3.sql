SELECT 
  [deptid]
 ,[deptname]
 ,[mgrid]
 ,[validfrom]
 ,[validto]
FROM [dbo].[Departments]
	FOR SYSTEM_TIME BETWEEN '2022-01-25 01:31:00' 
					    AND '2022-01-25 01:33:30'
