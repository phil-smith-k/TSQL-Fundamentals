UPDATE [dbo].[Departments]
SET [deptname] = 'Sales and Marketing'
WHERE 1 = 1
	AND [deptid] = 3;

DELETE 
FROM [dbo].[Departments]
WHERE 1 = 1
	AND [deptid] = 4;

SELECT * 
FROM [dbo].[Departments]

-- 20:30