-- Identify duplicate rows in the table 'Orders Archive' and return a clean result without any duplicates
SELECT
	*
FROM(
	SELECT
		ROW_NUMBER() OVER(PARTITION BY OrderID ORDER BY CreationTime DESC) rn,
		*
	FROM Sales.OrdersArchive
)t WHERE rn = 1;

rn  OrderID   ProductID  CustomerID  SalesPersonID  OrderDate   ShipDate    OrderStatus  ShipAddress       BillAddress     Quantity Sales    CreationTime
1   1         101        2           3              2024-04-01  2024-04-05  Shipped      123 Main St       456 Billing St  1        10       2024-04-01 12:34:56.0000000
1   2         102        3           3              2024-04-05  2024-04-10  Shipped      456 Elm St        789 Billing St  1        15       2024-04-05 23:22:04.0000000
1   3         101        1           4              2024-04-10  2024-04-25  Shipped      789 Maple St      789 Maple St    2        20       2024-04-10 18:24:08.0000000
1   4         105        1           3              2024-04-20  2024-04-25  Delivered    987 Victory Lane                  2        60       2024-04-20 14:50:33.0000000
1   5         104        2           5              2024-05-01  2024-05-05  Shipped      345 Oak St        678 Pine St     1        25       2024-05-01 14:02:41.0000000
1   6         101        3           5              2024-05-05  2024-05-10  Delivered    543 Belmont Rd    3768 Door Way   2        50       2024-05-12 20:36:55.0000000
1   7         102        3           5              2024-06-15  2024-06-20  Shipped      111 Main St       222 Billing St  0        60       2024-06-16 23:25:15.0000000
