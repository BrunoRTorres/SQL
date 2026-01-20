--? Defines a subset of rows within each window that is relevant for the calculation

--! Syntax

(ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING)

--* Frames types --> ROWS, RANGE

--* Frame boundary (Lower value) --> CURRENT ROW, N PRECEDING, UNBOUNDED PRECEDING

--* Frame boundary (Higher value --> CURRENT ROW, N FOLLOWING, UNBOUNDED FOLLOWING

--@ Frame clause can only be used together with order by clause
--@ Lower value must be before the higher value

--+ N-FOLLOWING --> n-th row after the current

--+ UNBOUNDED FOLLOWING --> The last possible row within a window

--+ N-PRECEDING --> The n-th row before the current row

--+ UNBOUNDED PRECEDING --> The first possible row withing a window

SELECT
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate
ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING) AS 'TotalSales'
FROM Sales.Orders;

OrderID OrderDate    OrderStatus Sales    TotalSales
1       2025-01-01   Delivered   10       55
3       2025-01-10   Delivered   20       95
5       2025-02-01   Delivered   25       105
6       2025-02-05   Delivered   50       80
7       2025-02-15   Delivered   30       30
2       2025-01-05   Shipped     15       165
4       2025-01-20   Shipped     60       170
8       2025-02-18   Shipped     90       170
9       2025-03-10   Shipped     20       80
10      2025-03-15   Shipped     60       60

--* Compact frame

--? For only PRECEDING, the current row can be skipped

--? Normal form --> ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING
--? Short form  --> ROWS 2 FOLLOWING

SELECT
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate
ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS 'TotalSales'
FROM Sales.Orders;

OrderID OrderDate    OrderStatus    Sales   TotalSales
1       2025-01-01   Delivered      10      10
3       2025-01-10   Delivered      20      30
5       2025-02-01   Delivered      25      55
6       2025-02-05   Delivered      50      95
7       2025-02-15   Delivered      30      105
2       2025-01-05   Shipped        15      15
4       2025-01-20   Shipped        60      75
8       2025-02-18   Shipped        90      165
9       2025-03-10   Shipped        20      170
10      2025-03-15   Shipped        60      170

SELECT
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate
ROWS 2 PRECEDING) AS 'TotalSales'
FROM Sales.Orders;

OrderID OrderDate    OrderStatus    Sales   TotalSales
1       2025-01-01   Delivered      10      10
3       2025-01-10   Delivered      20      30
5       2025-02-01   Delivered      25      55
6       2025-02-05   Delivered      50      95
7       2025-02-15   Delivered      30      105
2       2025-01-05   Shipped        15      15
4       2025-01-20   Shipped        60      75
8       2025-02-18   Shipped        90      165
9       2025-03-10   Shipped        20      170
10      2025-03-15   Shipped        60      170

--* Default frame

--? SQL uses Default frame, if ORDER BY is used without frame

SELECT
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate
ROWS UNBOUNDED PRECEDING) AS 'TotalSales'
FROM Sales.Orders;

OrderID OrderDate    OrderStatus Sales    TotalSales
1       2025-01-01   Delivered   10       10
3       2025-01-10   Delivered   20       30
5       2025-02-01   Delivered   25       55
6       2025-02-05   Delivered   50       105
7       2025-02-15   Delivered   30       135
2       2025-01-05   Shipped     15       15
4       2025-01-20   Shipped     60       75
8       2025-02-18   Shipped     90       165
9       2025-03-10   Shipped     20       185
10      2025-03-15   Shipped     60       245
