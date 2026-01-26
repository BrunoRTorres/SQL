COUNT() --? Returns the number of rows within a window

COUNT(*) --? Counts all the rows in a table, regardless of whether any value is NULL

COUNT(column) --? Counts the number of non-NULL values in the column

-- Find the total number of orders

SELECT
COUNT(*) AS 'TotalOrders'
FROM Sales.Orders;

TotalOrders
10

-- Find the total number of orders
-- Additionally provide details such order Id, order date

SELECT
OrderID,
OrderDate,
COUNT(*) OVER() AS 'TotalOrders'
FROM Sales.Orders;

OrderID OrderDate    TotalOrders
1       2025-01-01   10
2       2025-01-05   10
3       2025-01-10   10
4       2025-01-20   10
5       2025-02-01   10
6       2025-02-05   10
7       2025-02-15   10
8       2025-02-18   10
9       2025-03-10   10
10      2025-03-15   10

-- Find the total number of orders
-- Find the total number of orders for each customers
-- Additionally provide details such order Id, order date

SELECT
OrderID,
OrderDate,
CustomerID,
COUNT(*) OVER(PARTITION BY CustomerID) AS 'OrdersByCustomers',
COUNT(*) OVER() AS 'TotalOrders'
FROM Sales.Orders;

OrderID OrderDate    CustomerID  OrdersByCustomers TotalOrders
3       2025-01-10   1           3                 10
4       2025-01-20   1           3                 10
7       2025-02-15   1           3                 10
1       2025-01-01   2           3                 10
5       2025-02-01   2           3                 10
9       2025-03-10   2           3                 10
10      2025-03-15   3           3                 10
6       2025-02-05   3           3                 10
2       2025-01-05   3           3                 10
8       2025-02-18   4           1                 10

-- Find the total number of customers
-- Additionally provide all customers details

SELECT
*,
COUNT(*) OVER () AS 'TotalCustomers'
FROM Sales.Customers;

CustomerID  FirstName LastName Country   Score TotalCustomers
1           Jossef    Goldberg  Germany  350   5
2           Kevin     Brown     USA      900   5
3           Mary      NULL      USA      750   5
4           Mark      Schwarz   Germany  500   5
5           Anna      Adams     USA      NULL  5

-- Find the total number of customers
-- Find the total number of scores for the customers
-- Additionally provide all customers details

SELECT
*,
COUNT(Score) OVER () AS 'TotalScore',
COUNT(*) OVER () AS 'TotalCustomers'
FROM Sales.Customers;

CustomerID  FirstName  LastName  Country  Score  TotalScore   TotalCustomers
1           Jossef     Goldberg  Germany  350    4            5
2           Kevin      Brown     USA      900    4            5
3           Mary       NULL      USA      750    4            5
4           Mark       Schwarz   Germany  500    4            5
5           Anna       Adams     USA      NULL   4            5

--@ Data quality issue --> Duplicates leads to inaccuracies in analysis,
--@ COUNT() can be used to identify duplicates

-- Check whether the table 'orders' contains any duplicate rows

SELECT
OrderID,
COUNT(*) OVER (PARTITION BY OrderID) AS 'CheckPK'
FROM Sales.Orders;

OrderID CheckPK
1       1
2       1
3       1
4       1
5       1
6       1
7       1
8       1
9       1
10      1

--* COUNT | USE CASES

--+ #1 Overrall Analysis
--+ #2 Category Analysis
--+ #3 Quality Checks: Identify NULLs
--+ #4 Quality Checks: Identify Duplicates
