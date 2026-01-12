IS NULL --? Returns TRUE if the value IS NULL, otherwise it returns FALSE.

IS NOT NULL --? Returns TRUE if the value is not null, otherwise it returns FALSE.

--! Syntax

Value1 IS NULL

Value1 IS NOT NULL

--+ Use case

--+ Searching for missing information

-- Identify the customers who have no scores

SELECT
*
FROM Sales.Customers
WHERE Score IS NULL;

CustomerID  FirstName LastName Country  Score
5           Anna       Adams   USA      NULL

-- List all customers who have scores

SELECT
*
FROM Sales.Customers
WHERE Score IS NOT NULL;

CustomerID  FirstName  LastName  Country  Score
1           Jossef     Goldberg  Germany  350
2           Kevin      Brown     USA      900
3           Mary       NULL      USA      750
4           Mark       Schwarz   Germany  500

--+ Finding the unmatched rows between two tables

-- List all details for customers who have not placed any orders

SELECT
c.*,
o.OrderID
FROM Sales.Customers c
LEFT JOIN Sales.Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;

CustomerID  FirstName LastName Country  Score OrderID
5           Anna      Adams    USA      NULL  NULL
