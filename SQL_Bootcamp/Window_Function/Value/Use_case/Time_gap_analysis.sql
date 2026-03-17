-- Find the average shipping duration in days for each month

SELECT
	MONTH(OrderDate) AS 'OrderDate',
	AVG(DATEDIFF(day, OrderDate, ShipDate)) AS 'AvgShip'
FROM Sales.Orders
GROUP BY MONTH(OrderDate);

OrderDate   AvgShip
1           7
2           7
3           5

-- Find the number of days between each order and the previous order

SELECT
	OrderID,
	OrderDate AS 'CurrentOrderDate',
	LAG(OrderDate) OVER (ORDER BY OrderDate) AS 'PreviousOrderDate',
	DATEDIFF(day, LAG(OrderDate) OVER (ORDER BY OrderDate), OrderDate) AS 'NrOfDays'
FROM Sales.Orders;

OrderID CurrentOrderDate PreviousOrderDate  NrOfDays
1       2025-01-01       NULL               NULL
2       2025-01-05       2025-01-0          4
3       2025-01-10       2025-01-0          5
4       2025-01-20       2025-01-1          10
5       2025-02-01       2025-01-2          12
6       2025-02-05       2025-02-0          4
7       2025-02-15       2025-02-0          10
8       2025-02-18       2025-02-1          3
9       2025-03-10       2025-02-1          20
10      2025-03-15       2025-03-1          5
