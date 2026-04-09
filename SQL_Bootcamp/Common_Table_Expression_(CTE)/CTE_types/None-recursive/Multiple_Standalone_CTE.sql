--*CTE query / CTE Definition
WITH CTE_Name1 AS
(
    SELECT ...
    FROM ...
    WHERE ...
)
, CTE_Name2 AS
(
    SELECT ...
    FROM ...
    WHERE ...
)

--* Main query / CTE Usage
SELECT ...
FROM CTE_Name1
JOIN CTE_Name2
WHERE ...

-- Step1: Find the total Sales per customer

WITH CTE_Total_Sales AS
(
SELECT
	CustomerID,
	SUM(Sales) AS 'TotalSales'
FROM Sales.Orders
GROUP BY CustomerID
)
-- Step2: Find the last order date for each customer
, CTE_Last_Order AS
(
SELECT
	CustomerID,
	MAX(OrderDate) AS 'LastOrder'
FROM Sales.Orders
GROUP BY CustomerID
)
-- Main Query

SELECT
c.CustomerID,
c.FirstName,
c.LastName,
cts.TotalSales,
clo.LastOrder
FROM Sales.Customers c
LEFT JOIN CTE_Total_Sales cts
ON cts.CustomerID = c.CustomerID
LEFT JOIN CTE_Last_Order clo
ON clo.CustomerID = c.CustomerID
ORDER BY TotalSales DESC

CustomerID  FirstName LastName  TotalSales   LastOrder
3           Mary      NULL      125          2025-03-15
1           Jossef    Goldberg  110          2025-02-15
4           Mark      Schwarz   90           2025-02-18
2           Kevin     Brown     55           2025-03-10
5           Anna      Adams     NULL         NULL
