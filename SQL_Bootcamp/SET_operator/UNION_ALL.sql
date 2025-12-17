UNION ALL --? Returns all rows from both queries, including duplicates

--@ Uses

--? If you're confident there are no duplicates, use UNION ALL
--? Use UNION ALL to find duplicates and quality issues

-- Combine the data from employees and customers into one table, including duplicates

SELECT
	FirstName AS 'Name',
	LastName AS 'Surname'
FROM sales.Customers
UNION ALL
SELECT
	FirstName,
	LastName
FROM sales.Employees;

Name	Surname
Jossef	Goldberg
Kevin	Brown
Mary	NULL
Mark	Schwarz
Anna	Adams
Frank	Lee
Kevin	Brown
Mary	NULL
Michael	Ray
Carol	Baker
