ANY --? Checks if a value matches ANY value within a list.
    --? Used to check if a value is true for AT LEAST one of the values in a list.

-- Find female employees whose salaries are greater
-- than the salaries of any male employees

SELECT
	EmployeeID,
	FirstName,
	Salary
FROM Sales.Employees
WHERE Gender = 'F'
AND Salary > ANY (SELECT Salary FROM Sales.Employees WHERE Gender = 'M');

EmployeeID  FirstName Salary
3           Mary      75000


ALL --? Checks if a value matches ALL values within a list.

-- Find female employees whose salaries are greater
-- than the salaries of all male employees

SELECT
	EmployeeID,
	FirstName,
	Salary
FROM Sales.Employees
WHERE Gender = 'F'
AND Salary > ALL (SELECT Salary FROM Sales.Employees WHERE Gender = 'M');

EmployeeID  FirstName Salary
