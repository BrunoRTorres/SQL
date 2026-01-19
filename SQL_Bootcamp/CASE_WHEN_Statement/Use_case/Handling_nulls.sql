--? Replaces NULLs with a specific value.

-- Find the average scores of customers and treat Nulls as 0
-- Additionally provide details such CustomerID and LastName

SELECT
CustomerID,
LastName,
Score,
AVG(Score) OVER() AS 'AvgCustomer',
CASE
	WHEN Score IS NULL THEN 0
	ELSE Score
END AS 'ScoreClean',
AVG(CASE
		WHEN Score IS NULL THEN 0
		ELSE Score
	END) OVER() AS 'AvgCustomerClean'
FROM Sales.Customers;

CustomerID  LastName  Score  AvgCustomer  ScoreClean    AvgCustomerClean
1           Goldberg  350    625          350           500
2           Brown     900    625          900           500
3           NULL      750    625          750           500
4           Schwarz   500    625          500           500
5           Adams     NULL   625          0             500
