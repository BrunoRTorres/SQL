UNION --? Returns all district rows from both queries
      --? Removes duplicate rows from the result

-- Combine the data from employees and customers into one table

SELECT
	FirstName AS 'Name',
	LastName AS 'Surname'
FROM sales.Customers
UNION
SELECT
	FirstName,
	LastName
FROM sales.Employees

Name	Surname
Anna	Adams
Carol	Baker
Frank	Lee
Jossef	Goldberg
Kevin	Brown
Mark	Schwarz
Mary	NULL
Michael	Ray
