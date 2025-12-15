EXCEPT --? Returns all distinct rows from the first query that are not found in the second query
       --? It is the only one where the order of queries affects the final result

--@ The order of queries in a EXCEPT does affect the result

-- Find the employees who are not customers at the same time

SELECT
	FirstName AS 'Name',
	LastName AS 'Surname'
FROM sales.Employees
EXCEPT
SELECT
	FirstName,
	LastName
FROM sales.Customers

Name	Surname
Carol	Baker
Frank	Lee
Michael	Ray
