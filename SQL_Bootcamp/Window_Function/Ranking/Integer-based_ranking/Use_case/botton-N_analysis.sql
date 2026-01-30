-- Find the lowest two customers based on their total sales
SELECT
	*
FROM(
	SELECT
		CustomerID,
		SUM(Sales) AS 'TotalSales',
		ROW_NUMBER() OVER(ORDER BY SUM(Sales)) AS 'RankCustomers'
	FROM Sales.Orders
	GROUP BY CustomerID
)t WHERE RankCustomers <= 2;

CustomerID  TotalSales  RankCustomers
2           55          1
4           90          2
