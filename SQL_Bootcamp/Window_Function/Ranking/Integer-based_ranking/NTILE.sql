NTILE() --? Divides the rows into a specific number of approximately equal groups (buckets)

--@ Larger groups come first

SELECT
OrderID,
Sales,
NTILE(1) OVER (ORDER BY Sales DESC) AS 'OneBucket',
NTILE(2) OVER (ORDER BY Sales DESC) AS 'TwoBucket',
NTILE(3) OVER (ORDER BY Sales DESC) AS 'ThreeBucket',
NTILE(4) OVER (ORDER BY Sales DESC) AS 'FourBucket',
NTILE(5) OVER (ORDER BY Sales DESC) AS 'FiveBucket'
FROM Sales.Orders;

OrderID	Sales	OneBucket	TwoBucket	ThreeBucket	FourBucket	FiveBucket
8	90	1	1	1	1	1
4	60	1	1	1	1	1
10	60	1	1	1	1	2
6	50	1	1	1	2	2
7	30	1	1	2	2	3
5	25	1	2	2	2	3
9	20	1	2	2	3	4
3	20	1	2	3	3	4
2	15	1	2	3	4	5
1	10	1	2	3	4	5

--+ Use cases

--* Data segmentation - data analist
--? Divides a dataset into distinct subsets based on certain criteria

-- Segment all orders into 3 categories: high, medium and low sales.

SELECT
*,
CASE WHEN Buckets = 1 THEN 'High'
	 WHEN Buckets = 2 THEN 'Medium'
	 WHEN Buckets = 3 THEN 'Low'
END AS 'SalesSegmentations'
FROM(
	SELECT
		OrderID,
		Sales,
		NTILE(3) OVER (ORDER BY Sales DESC) AS 'Buckets'
	FROM Sales.Orders
)t;

OrderID Sales    Buckets SalesSegmentations
8       90       1       High
4       60       1       High
10      60       1       High
6       50       1       High
7       30       2       Medium
5       25       2       Medium
9       20       2       Medium
3       20       3       Low
2       15       3       Low
1       10       3       Low


--* Equalizing load processing - data engineer

-- In order to export the data, divide the orders into 2 groups.

SELECT
NTILE(2) OVER (ORDER BY OrderID) AS 'Buckets',
*
FROM Sales.Orders


Buckets OrderID  ProductID CustomerID  SalesPersonID  OrderDate   ShipDate    OrderStatus  ShipAddress          BillAddress     Quantity  Sales   CreationTime
1       1        101       2           3              2025-01-01  2025-01-05  Delivered    9833 Mt. Dias Blv.   1226 Shoe St.   1         10      2025-01-01 12:34:56.0000000
1       2        102       3           3              2025-01-05  2025-01-10  Shipped      250 Race Court       NULL            1         15      2025-01-05 23:22:04.0000000
1       3        101       1           5              2025-01-10  2025-01-25  Delivered    8157 W. Book         8157 W. Book    2         20      2025-01-10 18:24:08.0000000
1       4        105       1           3              2025-01-20  2025-01-25  Shipped      5724 Victory Lane                    2         60      2025-01-20 05:50:33.0000000
1       5        104       2           5              2025-02-01  2025-02-05  Delivered    NULL                 NULL            1         25      2025-02-01 14:02:41.0000000
2       6        104       3           5              2025-02-05  2025-02-10  Delivered    1792 Belmont Rd.     NULL            2         50      2025-02-06 15:34:57.0000000
2       7        102       1           1              2025-02-15  2025-02-27  Delivered    136 Balboa Court                     2         30      2025-02-16 06:22:01.0000000
2       8        101       4           3              2025-02-18  2025-02-27  Shipped      2947 Vine Lane       4311 Clay Rd    3         90      2025-02-18 10:45:22.0000000
2       9        101       2           3              2025-03-10  2025-03-15  Shipped      3768 Door Way                        2         20      2025-03-10 12:59:04.0000000
2       10       102       3           5              2025-03-15  2025-03-20  Shipped      NULL                 NULL            0         60      2025-03-16 23:25:15.0000000
