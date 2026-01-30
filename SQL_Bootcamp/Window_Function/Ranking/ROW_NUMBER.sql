ROW_NUMBER() --? Assing a unique number to each row. It doesn't handle ties.

-- Rank the orders based on their sales from highest to lowest

SELECT
	OrderID,
	ProductID,
	Sales,
	ROW_NUMBER() OVER(ORDER BY Sales DESC) AS 'SalesRank'
FROM Sales.Orders;

OrderID ProductID    Sales   SalesRank
8       101          90      1
4       105          60      2
10      102          60      3
6       104          50      4
7       102          30      5
5       104          25      6
9       101          20      7
3       101          20      8
2       102          15      9
1       101          10      10
