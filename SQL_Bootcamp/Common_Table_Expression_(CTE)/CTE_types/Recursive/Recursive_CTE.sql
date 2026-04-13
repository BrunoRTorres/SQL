--*CTE query / CTE Definition
WITH CTE-Name AS
(
    --? Anchor Query
    SELECT ...
    FROM ...
    WHERE ...
    UNION ALL
    --? Recursive query
    SELECT ...
    FROM CTE-Name
    WHERE [break condition]
)

--* Main query / CTE Usage

SELECT ...
FROM CTE-Name
WHERE ...

-- Generate a sequence of numbers from 1 to 20

WITH Series AS
(
	-- Anchor Query
	SELECT
	1 AS 'MyNumber'
	UNION ALL
	-- Recursive Query
	SELECT
	MyNumber + 1
	FROM Series
	WHERE MyNumber < 20
)

-- Main Query
SELECT
*
FROM Series
OPTION (MAXRECURSION 100)

MyNumber
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20

-- Show the employee hierarchy by displaying each employee's level within the organization

WITH CTE_Emp_Hierarchy AS
(
	-- Anchor Query
	SELECT
		EmployeeID,
		FirstName,
		ManagerID,
		1 AS 'Level'
	FROM Sales.Employees
	WHERE ManagerID IS NULL
	UNION ALL
	-- Recursive Query
	SELECT
		e.EmployeeID,
		e.FirstName,
		e.ManagerID,
		Level + 1
	FROM Sales.Employees AS e
	INNER JOIN CTE_Emp_Hierarchy ceh
	ON e.ManagerID = ceh.EmployeeID

)

-- Main Query
SELECT
*
FROM CTE_Emp_Hierarchy

EmployeeID  FirstName ManagerID  Level
1           Frank     NULL       1
2           Kevin     1          2
3           Mary      1          2
5           Carol     3          3
4           Michael   2          3
