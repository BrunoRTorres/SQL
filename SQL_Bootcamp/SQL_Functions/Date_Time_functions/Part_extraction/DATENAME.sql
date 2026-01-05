DATENAME() --? returns the name of a specific part of a date

SELECT
OrderID,
CreationTime,
DATENAME(month, CreationTime) AS 'Month_dn',
DATENAME(weekday, CreationTime) AS 'Weekday_dn',
DATENAME(day, CreationTime) AS 'Day_dn'
FROM Sales.Orders;

OrderID CreationTime                 Month_dn  Weekday_dn  Day_dn
1       2025-01-01 12:34:56.0000000  January   Wednesday   1
2       2025-01-05 23:22:04.0000000  January   Sunday      5
3       2025-01-10 18:24:08.0000000  January   Friday      10
4       2025-01-20 05:50:33.0000000  January   Monday      20
5       2025-02-01 14:02:41.0000000  February  Saturday    1
6       2025-02-06 15:34:57.0000000  February  Thursday    6
7       2025-02-16 06:22:01.0000000  February  Sunday      16
8       2025-02-18 10:45:22.0000000  February  Tuesday     18
9       2025-03-10 12:59:04.0000000  March     Monday      10
10      2025-03-16 23:25:15.0000000  March     Sunday      16
