DECLARE @SingleDigits TABLE (
	[n] INT NOT NULL
) 
INSERT INTO @SingleDigits
SELECT n FROM (VALUES (0), (1), (2), (3), (4), (5), (6), (7), (8), (9)) AS Numbers(n)

SELECT 
	  s6.[n] * 100000
	+ s5.[n] * 10000
	+ s4.[n] * 1000
	+ s3.[n] * 100
	+ s2.[n] * 10
	+ s1.[n] + 1 AS 'n'
FROM @SingleDigits s1
	CROSS JOIN @SingleDigits s2
	CROSS JOIN @SingleDigits s3
	CROSS JOIN @SingleDigits s4
	CROSS JOIN @SingleDigits s5
	CROSS JOIN @SingleDigits s6
ORDER BY [n]