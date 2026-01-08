ISNULL() | COALESCE()

--! Use case

--? Handle the NULL before doing mathematical operations

-- Display the full name of customers in a single field
-- By merging their first name and last names
-- And add 10 bonus points to each customer's score

SELECT
CustomerID,
FirstName,
LastName,
Score,
FirstName + ' ' + LastName AS FullName,
Score + 10 AS Scoreplus10,
FirstName + ' ' + COALESCE(LastName, '') AS FullName2,
COALESCE(Score, 0) + 10 AS Score2plus10
FROM Sales.Customers;

CustomerID	FirstName	LastName	Score	FullName	Scoreplus10	FullName2	Score2plus10
1	Jossef	Goldberg	350	Jossef Goldberg	360	Jossef Goldberg	360
2	Kevin	Brown	900	Kevin Brown	910	Kevin Brown	910
3	Mary	NULL	750	NULL	760	Mary 	760
4	Mark	Schwarz	500	Mark Schwarz	510	Mark Schwarz	510
5	Anna	Adams	NULL	Anna Adams	NULL	Anna Adams	10
