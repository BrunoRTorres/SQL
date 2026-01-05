DAY() --? returns the day from a date

MONTH() --? returns the month from a date

YEAR() --? returns the year from a date

SELECT
OrderID,
CreationTime,
YEAR(CreationTime) AS 'Year',
MONTH(CreationTime) AS 'Month',
DAY(CreationTime) AS 'Day'
FROM Sales.Orders;

OrderID  CreationTime                   Year  Month Day
1        2025-01-01 12:34:56.0000000    2025  1     1
2        2025-01-05 23:22:04.0000000    2025  1     5
3        2025-01-10 18:24:08.0000000    2025  1     10
4        2025-01-20 05:50:33.0000000    2025  1     20
5        2025-02-01 14:02:41.0000000    2025  2     1
6        2025-02-06 15:34:57.0000000    2025  2     6
7        2025-02-16 06:22:01.0000000    2025  2     16
8        2025-02-18 10:45:22.0000000    2025  2     18
9        2025-03-10 12:59:04.0000000    2025  3     10
10       2025-03-16 23:25:15.0000000    2025  3     16
