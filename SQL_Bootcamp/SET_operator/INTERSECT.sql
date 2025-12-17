INTERSECT --? Returns only the rows that are common in both queries

-- Find the customers, who are also employees

SELECT 
	FirstName,
	LastName
FROM sales.Customers
INTERSECT
SELECT
	FirstName,
	LastName
FROM sales.Employees;

FirstName	LastName
Kevin       Brown
Mary        NULL
