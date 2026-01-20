--? Sort the data within a window

/* Rank each order based on their sales from highest to lowest
   Additionally provide details such order id, order date */

SELECT
OrderID,
OrderDate,
Sales,
RANK() OVER (ORDER BY Sales DESC) AS 'RankSales'
FROM Sales.Orders;

OrderID OrderDate    Sales   RankSales
8       2025-02-18   90      1
4       2025-01-20   60      2
10      2025-03-15   60      2
6       2025-02-05   50      4
7       2025-02-15   30      5
5       2025-02-01   25      6
9       2025-03-10   20      7
3       2025-01-10   20      7
2       2025-01-05   15      9
1       2025-01-01   10      10
