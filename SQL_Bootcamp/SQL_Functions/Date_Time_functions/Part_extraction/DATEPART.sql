DATEPART() --? returns a specific part of a date as a number

SELECT
OrderID,
CreationTime,
DATEPART(year, CreationTime) AS 'Year_dp',
DATEPART(month, CreationTime) AS 'Month_dp',
DATEPART(day, CreationTime) AS 'Day_dp',
DATEPART(hour, CreationTime) AS 'Hour_dp',
DATEPART(quarter, CreationTime) AS 'Quarter_dp',
DATEPART(week, CreationTime) AS 'Week_dp'
FROM Sales.Orders;

OrderID CreationTime                  Year_dp  Month_dp  Day_dp  Hour_dp  Quarter_dp  Week_dp
1       2025-01-01 12:34:56.0000000   2025     1         1       12       1           1
2       2025-01-05 23:22:04.0000000   2025     1         5       23       1           2
3       2025-01-10 18:24:08.0000000   2025     1         10      18       1           2
4       2025-01-20 05:50:33.0000000   2025     1         20      5        1           4
5       2025-02-01 14:02:41.0000000   2025     2         1       14       1           5
6       2025-02-06 15:34:57.0000000   2025     2         6       15       1           6
7       2025-02-16 06:22:01.0000000   2025     2         16      6        1           8
8       2025-02-18 10:45:22.0000000   2025     2         18      10       1           8
9       2025-03-10 12:59:04.0000000   2025     3         10      12       1           11
10      2025-03-16 23:25:15.0000000   2025     3         16      23       1           12
