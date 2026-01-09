ISNULL() | COALESCE()

--! Use case

--? Handle the NULL before doing data aggregations

-- Find the average scores of the customers

SELECT
CustomerID,
Score,
COALESCE(Score, 0) AS Score2,
AVG(Score) OVER () AS AvgScores,
AVG(COALESCE(Score, 0)) OVER () AS AvgScores2
FROM Sales.Customers;

CustomerID  Score Score2   AvgScores  AvgScores2
1           350   350      625        500
2           900   900      625        500
3           750   750      625        500
4           500   500      625        500
5           NULL  0        625        500
