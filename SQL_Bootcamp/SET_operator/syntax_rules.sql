--? 1st SELECT statement

SELECT
	FirstName,
	LastName
FROM Customers

--? SET operator

UNION

--? 2nd SELECT statement

SELECT
	FirstName,
	LastName
FROM Employees

--! Rules

--? 1. SQL CLAUSES

- SET operator can be used almost in all clauses
WHERE | JOIN | GROUP BY | HAVING

- ORDER BY is allowed only once at the end of query

--? 2. Number of columns

- The number of columns in each query must be the same

--? 3. Data types

- Data types of columns in each query must be compatible

--? 4. Order of columns

- The order of columns in each query must be the same

--? 5. Columns aliases

- The column names in the result set are determined by the column names specified in the first query

--? 6. Correct columns

- Even if all rules are met and SQL shows no errors, the result may be incorrect

- Incorrect column selection leads to inaccurate results
