SUM() --? Returns the sum of values within a window

--@ SUM() accepts only numbers

-- Find the total sales acroos all orders
-- And the total sales for each product
-- Additionally provide details such order id, order date

SELECT
OrderID,
OrderDate,
Sales,
ProductID,
SUM(Sales) OVER () AS 'TotalSales',
SUM(Sales) OVER (PARTITION BY ProductID) AS 'SalesByProduct'
FROM Sales.Orders;

OrderID OrderDate    Sales   ProductID  TotalSales    SalesByProduct
1       2025-01-01   10      101        380           140
3       2025-01-10   20      101        380           140
8       2025-02-18   90      101        380           140
9       2025-03-10   20      101        380           140
10      2025-03-15   60      102        380           105
2       2025-01-05   15      102        380           105
7       2025-02-15   30      102        380           105
5       2025-02-01   25      104        380           75
6       2025-02-05   50      104        380           75
4       2025-01-20   60      105        380           60

-- Find the percentage contribution of each product's sales to the total sales

SELECT
OrderID,
ProductID,
Sales,
SUM(Sales) OVER () AS 'TotalSales',
ROUND (CAST (Sales AS FLOAT) / SUM(Sales) OVER () * 100, 2) AS 'PercentageOfTotal'
FROM Sales.Orders;

OrderID ProductID    Sales   TotalSales PercentageOfTotal
1       101          10      380        2.63
2       102          15      380        3.95
3       101          20      380        5.26
4       105          60      380        15.79
5       104          25      380        6.58
6       104          50      380        13.16
7       102          30      380        7.89
8       101          90      380        23.68
9       101          20      380        5.26
10      102          60      380        15.79
