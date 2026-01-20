--? Without Partition by - Total sales across all rows (Entire result set)

SUM(Sales) OVER ()

--? Partition by Single Column - Total sales for each product

SUM(Sales) OVER (PARTITION BY Product)

--? Partition by Combined Columns - Total sales for each combination of product and order status

SUM(Sales) OVER (PARTITION BY Product, OrderStatus)

/* Find the total sales across all orders,
   Additionally provide details such order ID, order date */

SELECT
OrderID,
OrderDate,
SUM(Sales) OVER () AS 'TotalSales'
FROM Sales.Orders;

OrderID OrderDate    TotalSales
1       2025-01-01   380
2       2025-01-05   380
3       2025-01-10   380
4       2025-01-20   380
5       2025-02-01   380
6       2025-02-05   380
7       2025-02-15   380
8       2025-02-18   380
9       2025-03-10   380
10      2025-03-15   380

/* Find the total sales for each product,
   Additionally provide details such order ID, order date */

SELECT
OrderID,
OrderDate,
ProductID,
SUM(Sales) OVER (PARTITION BY ProductID) AS 'TotalSales'
FROM Sales.Orders;

OrderID OrderDate    ProductID   TotalSales
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

/* Find the total sales across all orders,
   find the total sales for each product,
   Additionally provide details such order ID, order date */

SELECT
OrderID,
OrderDate,
ProductID,
Sales,
SUM(Sales) OVER () AS 'TotalSales',
SUM(Sales) OVER (PARTITION BY ProductID) AS 'TotalSalesByProduct'
FROM Sales.Orders;

OrderID OrderDate    ProductID   Sales  TotalSales    TotalSalesByProduct
1       2025-01-01   101         10     380           140
3       2025-01-10   101         20     380           140
8       2025-02-18   101         90     380           140
9       2025-03-10   101         20     380           140
10      2025-03-15   102         60     380           105
2       2025-01-05   102         15     380           105
7       2025-02-15   102         30     380           105
5       2025-02-01   104         25     380           75
6       2025-02-05   104         50     380           75
4       2025-01-20   105         60     380           60

/* Find the total sales across all orders,
   find the total sales for each product,
   find the total sales for each combination of product and order status,
   Additionally provide details such order ID, order date */

SELECT
OrderID,
OrderDate,
ProductID,
OrderStatus,
Sales,
SUM(Sales) OVER () AS 'TotalSales',
SUM(Sales) OVER (PARTITION BY ProductID) AS 'TotalSalesByProduct',
SUM(Sales) OVER (PARTITION BY ProductID, OrderStatus) AS 'SalesByProductsAndStatus'
FROM Sales.Orders;

OrderID  OrderDate   ProductID   OrderStatus    Sales   TotalSales TotalSalesByProduct  SalesByProductsAndStatus
1        2025-01-01  101         Delivered      10      380        140                  30
3        2025-01-10  101         Delivered      20      380        140                  30
8        2025-02-18  101         Shipped        90      380        140                  110
9        2025-03-10  101         Shipped        20      380        140                  110
7        2025-02-15  102         Delivered      30      380        105                  30
10       2025-03-15  102         Shipped        60      380        105                  75
2        2025-01-05  102         Shipped        15      380        105                  75
5        2025-02-01  104         Delivered      25      380        75                   75
6        2025-02-05  104         Delivered      50      380        75                   75
4        2025-01-20  105         Shipped        60      380        60                   60
