RANK() --? Assign a rank to each row.
       --? It handles ties.
       --? It leaves gaps in ranking.

-- Rank the orders based on their sales from highest to lowest

SELECT
	OrderID,
	ProductID,
	Sales,
	RANK() OVER(ORDER BY Sales DESC) AS 'SalesRank'
FROM Sales.Orders;

OrderID ProductID    Sales   SalesRank
8       101          90      1
4       105          60      2
10      102          60      2
6       104          50      4
7       102          30      5
5       104          25      6
9       101          20      7
3       101          20      7
2       102          15      9
1       101          10      10
