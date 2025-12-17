--? Combine similar information before analyzing the data

/* Orders data are stored in separate tables (Orders and OrdersArchive)
   Combine all orders data into one report without duplicates */

SELECT
'Orders' AS SourceTable
,[OrderID]
,[ProductID]
,[CustomerID]
,[SalesPersonID]
,[OrderDate]
,[ShipDate]
,[OrderStatus]
,[ShipAddress]
,[BillAddress]
,[Quantity]
,[Sales]
,[CreationTime]
FROM sales.Orders
UNION
SELECT
'OrdersArchive' AS SourceTable
,[OrderID]
,[ProductID]
,[CustomerID]
,[SalesPersonID]
,[OrderDate]
,[ShipDate]
,[OrderStatus]
,[ShipAddress]
,[BillAddress]
,[Quantity]
,[Sales]
,[CreationTime]
FROM sales.OrdersArchive
ORDER BY OrderID;

SourceTable     OrderID ProductID  CustomerID  SalesPersonID  OrderDate   ShipDate    OrderStatus  ShipAddress         BillAddress     Quantity  Sales  CreationTime
Orders          1       101        2           3              2025-01-01  2025-01-05  Delivered    9833 Mt. Dias Blv.  1226 Shoe St.   1         10     2025-01-01 12:34:56.0000000
OrdersArchive   1       101        2           3              2024-04-01  2024-04-05  Shipped      123 Main St         456 Billing St  1         10     2024-04-01 12:34:56.0000000
Orders          2       102        3           3              2025-01-05  2025-01-10  Shipped      250 Race Court      NULL            1         15     2025-01-05 23:22:04.0000000
OrdersArchive   2       102        3           3              2024-04-05  2024-04-10  Shipped      456 Elm St          789 Billing St  1         15     2024-04-05 23:22:04.0000000
Orders          3       101        1           5              2025-01-10  2025-01-25  Delivered    8157 W. Book        8157 W. Book    2         20     2025-01-10 18:24:08.0000000
OrdersArchive   3       101        1           4              2024-04-10  2024-04-25  Shipped      789 Maple St        789 Maple St    2         20     2024-04-10 18:24:08.0000000
Orders          4       105        1           3              2025-01-20  2025-01-25  Shipped      5724 Victory Lane                   2         60     2025-01-20 05:50:33.0000000
OrdersArchive   4       105        1           3              2024-04-20  2024-04-25  Delivered    987 Victory Lane                    2         60     2024-04-20 14:50:33.0000000
OrdersArchive   4       105        1           3              2024-04-20  2024-04-25  Shipped      987 Victory Lane                    2         60     2024-04-20 05:50:33.0000000
Orders          5       104        2           5              2025-02-01  2025-02-05  Delivered    NULL                NULL            1         25     2025-02-01 14:02:41.0000000
OrdersArchive   5       104        2           5              2024-05-01  2024-05-05  Shipped      345 Oak St          678 Pine St     1         25     2024-05-01 14:02:41.0000000
Orders          6       104        3           5              2025-02-05  2025-02-10  Delivered    1792 Belmont Rd.    NULL            2         50     2025-02-06 15:34:57.0000000
OrdersArchive   6       101        3           5              2024-05-05  2024-05-10  Delivered    543 Belmont Rd.     3768 Door Way   2         50     2024-05-12 20:36:55.0000000
OrdersArchive   6       104        3           5              2024-05-05  2024-05-10  Delivered    543 Belmont Rd.     NULL            2         50     2024-05-06 15:34:57.0000000
OrdersArchive   6       104        3           5              2024-05-05  2024-05-10  Delivered    543 Belmont Rd.     3768 Door Way   2         50     2024-05-07 13:22:05.0000000
Orders          7       102        1           1              2025-02-15  2025-02-27  Delivered    136 Balboa Court                    2         30     2025-02-16 06:22:01.0000000
OrdersArchive   7       102        3           5              2024-06-15  2024-06-20  Shipped      111 Main St         222 Billing St  0         60     2024-06-16 23:25:15.0000000
Orders          8       101        4           3              2025-02-18  2025-02-27  Shipped      2947 Vine Lane      4311 Clay Rd    3         90     2025-02-18 10:45:22.0000000
Orders          9       101        2           3              2025-03-10  2025-03-15  Shipped      3768 Door Way                       2         20     2025-03-10 12:59:04.0000000
Orders          10      102        3           5              2025-03-15  2025-03-20  Shipped      NULL                NULL            0         60     2025-03-16 23:25:15.0000000
