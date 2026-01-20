--* Window functions

--? Perform calculations (e.g. aggregation) on a specific subset of data,
--? without losing the level of details of rows.

--@ Aggregations + keep details
--@ Advanced data analysis

--* GROUP BY()

--@ Simple aggregations
--@ Simple data analysis

-- Find the total sales across all orders

SELECT
SUM(Sales) AS 'TotalSales'
FROM Sales.Orders;

TotalSales
380

-- Find the total sales for each product

SELECT
ProductID,
SUM(Sales) AS 'TotalSales'
FROM Sales.Orders
GROUP BY ProductID;

ProductID   TotalSales
101         140
102         105
104         75
105         60

/* Find the total sales for each product,
   Additionally provide details such order ID, order date */

SELECT
OrderID,
OrderDate,
ProductID,
SUM(Sales) OVER(PARTITION BY ProductID) AS 'TotalSalesByProducts'
FROM Sales.Orders;

OrderID OrderDate    ProductID   TotalSalesByProducts
1       2025-01-01   101         140
3       2025-01-10   101         140
8       2025-02-18   101         140
9       2025-03-10   101         140
10      2025-03-15   102         105
2       2025-01-05   102         105
7       2025-02-15   102         105
5       2025-02-01   104         75
6       2025-02-05   104         75
4       2025-01-20   105         60
