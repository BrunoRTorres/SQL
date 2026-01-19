--? Apply aggregation functions only on subsets of data that fulfill certain conditions.

-- Count how many times each customer has made an order with sales greater than 30

SELECT
CustomerID,
SUM(CASE
		WHEN Sales > 30 THEN 1
		ELSE 0
	END) AS 'TotalOrdersHighSales',
COUNT(*) TotalOrders
FROM Sales.Orders
GROUP BY CustomerID

CustomerID  TotalOrdersHighSales  TotalOrders
1           1                     3
2           0                     3
3           2                     3
4           1                     1
