AVG() --? Returns the average of values within a window

-- Find the average sales across all orders
-- And find the average sales for each product
-- Additionally provide details such order id, order date

SELECT
OrderID,
OrderDate,
Sales,
ProductID,
AVG (Sales) OVER () AS 'SalesAvg',
AVG (Sales) OVER (PARTITION BY ProductID) AS 'AvgByProduct'
FROM Sales.Orders;

OrderID OrderDate    Sales   ProductID  SalesAvg  AvgByProduct
1       2025-01-01   10      101        38        35
3       2025-01-10   20      101        38        35
8       2025-02-18   90      101        38        35
9       2025-03-10   20      101        38        35
10      2025-03-15   60      102        38        35
2       2025-01-05   15      102        38        35
7       2025-02-15   30      102        38        35
5       2025-02-01   25      104        38        37
6       2025-02-05   50      104        38        37
4       2025-01-20   60      105        38        60

-- Find the average score of customers
-- Additionally provide details such CustomerID and LastName

SELECT
CustomerID,
LastName,
Score,
COALESCE (Score, 0) AS 'CustomerScore',
AVG (Score) OVER () AS 'AvgScore',
AVG (COALESCE (Score, 0)) OVER () AS 'AvgScoreWithoutNull'
FROM Sales.Customers;

CustomerID  LastName  Score CustomerScore  AvgScore  AvgScoreWithoutNull
1           Goldberg  350   350            625       500
2           Brown     900   900            625       500
3           NULL      750   750            625       500
4           Schwarz   500   500            625       500
5           Adams     NULL  0              625       500

-- Find all orders where sales are higher than the average sales across all orders
SELECT
*
FROM(
	SELECT
	OrderID,
	ProductID,
	Sales,
	AVG (Sales) OVER () AS 'AvgSales'
	FROM Sales.Orders
)t WHERE Sales > AvgSales;

OrderID ProductID  Sales  AvgSales
4       105        60     38
6       104        50     38
8       101        90     38
10      102        60     38
