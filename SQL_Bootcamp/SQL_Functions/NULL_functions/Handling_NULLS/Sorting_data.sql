ISNULL() | COALESCE()

--! Use case

--? Handle the NULL before sorting data

--* 1# method --> Replace the NULLs with very big number (lazy method)

-- Sort the customers from lowest to highest scores,
-- with nulls appearing last

SELECT
CustomerID,
Score,
COALESCE(Score, 9999999)
FROM Sales.Customers
ORDER BY COALESCE(Score, 9999999);

CustomerID  Score (No column name)
1           350   350
4           500   500
3           750   750
2           900   900
5           NULL  9999999

--* 2# method --> Using CASE WHEN

-- Sort the customers from lowest to highest scores,
-- with nulls appearing last

SELECT
CustomerID,
Score
FROM Sales.Customers
ORDER BY CASE WHEN Score IS NULL THEN 1 ELSE 0 END, Score;

CustomerID  Score
1           350
4           500
3           750
2           900
5           NULL
