--* #1 Rule --> Window functions can be used only in SELECT and ORDER BY clauses

--* #2 Rule --> Nesting window functions is not allowed

--* #3 Rule --> SQL execute window fuctions after WHERE clause

/* Find the total sales for each order status,
   only for two products 101 and 102 */

SELECT
OrderID,
OrderDate,
OrderStatus,
ProductID,
Sales,
SUM(Sales) OVER (PARTITION BY OrderStatus) AS 'TotalSales'
FROM Sales.Orders
WHERE ProductID in (101, 102);

OrderID OrderDate    OrderStatus ProductID    Sales   TotalSales
3       2025-01-10   Delivered   101          20      60
7       2025-02-15   Delivered   102          30      60
1       2025-01-01   Delivered   101          10      60
2       2025-01-05   Shipped     102          15      185
8       2025-02-18   Shipped     101          90      185
9       2025-03-10   Shipped     101          20      185
10      2025-03-15   Shipped     102          60      185

--* #4 Rule --> Window function can be used together with GROUP BY in the same query,
--*             Only if the same columns are used

-- Rank customers based on their total sales

SELECT
CustomerID,
SUM(Sales) AS 'TotalSales',
RANK() OVER (ORDER BY SUM(Sales) DESC) AS 'RankCustomers'
FROM Sales.Orders
GROUP BY CustomerID;

CustomerID  TotalSales  RankCustomers
3           125         1
1           110         2
4           90          3
2           55          4
