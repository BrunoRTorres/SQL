DATEDIFF() --? Find the difference between two dates.

--! Syntax

DATEDIFF(part, start_date, end_date)

-- Calculate the age of employees

SELECT
EmployeeID,
FirstName,
LastName,
BirthDate,
DATEDIFF(year, BirthDate, GETDATE()) AS Age
FROM Sales.Employees;

EmployeeID  FirstName LastName BirthDate    Age
1           Frank     Lee      1988-12-05   38
2           Kevin     Brown    1972-11-25   54
3           Mary      NULL     1986-01-05   40
4           Michael   Ray      1977-02-10   49
5           Carol     Baker    1982-02-11   44

-- Find the average shipping duration in days for each month

SELECT
MONTH(OrderDate) AS OrderDate,
AVG(DATEDIFF(day, OrderDate, ShipDate)) AvgShip
FROM Sales.Orders
GROUP BY MONTH(OrderDate);

OrderDate   AvgShip
1           7
2           7
3           5

-- Time Gap Analysis
-- Find the number of days between each order and the previous order

SELECT
OrderID,
OrderDate CurrentOrderDate,
LAG(OrderDate) OVER (ORDER BY OrderDate) PreviousOrderDate,
DATEDIFF(day, LAG(OrderDate) OVER (ORDER BY OrderDate), OrderDate) NrOfDays
FROM Sales.Orders;

OrderID  CurrentOrderDate  PreviousOrderDate     NrOfDays
1        2025-01-01        NULL                  NULL
2        2025-01-05        2025-01-01            4
3        2025-01-10        2025-01-05            5
4        2025-01-20        2025-01-10            10
5        2025-02-01        2025-01-20            12
6        2025-02-05        2025-02-01            4
7        2025-02-15        2025-02-05            10
8        2025-02-18        2025-02-15            3
9        2025-03-10        2025-02-18            20
10       2025-03-15        2025-03-10            5
