-- Find the top highest sales for each product
SELECT
	*
FROM(
	SELECT
		OrderID,
		ProductID,
		Sales,
		ROW_NUMBER() OVER(PARTITION BY ProductID ORDER BY Sales DESC) AS 'RankByProduct'
	FROM Sales.Orders
)t WHERE RankByProduct = 1;

OrderID	ProductID	Sales	RankByProduct
8	101	90	1
10	102	60	1
6	104	50	1
4	105	60	1
