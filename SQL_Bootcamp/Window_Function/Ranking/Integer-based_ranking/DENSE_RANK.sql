DENSE_RANK() --? Assign a rank to each row.
             --? It handles ties.
             --? It doesn't leaves gaps in ranking.

-- Rank the orders based on their sales from highest to lowest

SELECT
	OrderID,
	ProductID,
	Sales,
	DENSE_RANK() OVER(ORDER BY Sales DESC) AS 'SalesRank'
FROM Sales.Orders;


OrderID ProductID    Sales   SalesRank
8       101          90      1
4       105          60      2
10      102          60      2
6       104          50      3
7       102          30      4
5       104          25      5
9       101          20      6
3       101          20      6
2       102          15      7
1       101          10      8
