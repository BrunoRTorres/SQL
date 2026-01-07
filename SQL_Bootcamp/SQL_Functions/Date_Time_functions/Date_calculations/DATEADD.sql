DATEADD() --? Adds or subtracts a specific time interval to/from a date.

--! Syntax

DATEADD(part, interval, date)

SELECT
OrderID,
OrderDate,
DATEADD(year, 2, OrderDate) AS TwoYearsLater,
DATEADD(month, 3, OrderDate) AS ThreeMonthsLater,
DATEADD(day, -10, OrderDate) AS TenDaysBefore
FROM Sales.Orders;

OrderID OrderDate    TwoYearsLater   ThreeMonthsLater   TenDaysBefore
1       2025-01-01   2027-01-01      2025-04-01         2024-12-22
2       2025-01-05   2027-01-05      2025-04-05         2024-12-26
3       2025-01-10   2027-01-10      2025-04-10         2024-12-31
4       2025-01-20   2027-01-20      2025-04-20         2025-01-10
5       2025-02-01   2027-02-01      2025-05-01         2025-01-22
6       2025-02-05   2027-02-05      2025-05-05         2025-01-26
7       2025-02-15   2027-02-15      2025-05-15         2025-02-05
8       2025-02-18   2027-02-18      2025-05-18         2025-02-08
9       2025-03-10   2027-03-10      2025-06-10         2025-02-28
10      2025-03-15   2027-03-15      2025-06-15         2025-03-05
