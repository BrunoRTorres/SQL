--? Data Aggregations

-- How many orders were placed each year?

SELECT
YEAR(OrderDate) Year,
COUNT(*) NrOfOrders
FROM Sales.Orders
GROUP BY YEAR(OrderDate);

Year  NrOfOrders
2025  10

-- How many orders were placed each month?

SELECT
DATENAME(month, OrderDate) OrderDate,
COUNT(*) NrOfOrders
FROM Sales.Orders
GROUP BY DATENAME(month, OrderDate);

--? Data filtering

-- Show all orders that were placed during the month of february

SELECT
*
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2;

OrderID ProductID   CustomerID  SalesPersonID   OrderDate   ShipDate    OrderStatus  ShipAddress       BillAddress     Quantity    Sales   CreationTime
5       104         2           5               2025-02-01  2025-02-05  Delivered    NULL              NULL            1           25      2025-02-01 14:02:41.0000000
6       104         3           5               2025-02-05  2025-02-10  Delivered    1792 Belmont Rd.  NULL            2           50      2025-02-06 15:34:57.0000000
7       102         1           1               2025-02-15  2025-02-27  Delivered    136 Balboa Court  NULL            2           30      2025-02-16 06:22:01.0000000
8       101         4           3               2025-02-18  2025-02-27  Shipped      2947 Vine Lane    4311 Clay Rd    3           90      2025-02-18 10:45:22.0000000

--@ Best practice - Filtering Data using an integer is faster than using a string
