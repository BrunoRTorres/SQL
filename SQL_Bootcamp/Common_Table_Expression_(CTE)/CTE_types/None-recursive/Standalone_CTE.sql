Standalone CTE --? Defined and used indepeently.
               --? Runs independently as it's self-contained
               --? and doesn't rely on other CTEs or queries.

--+ CTE syntax

--*CTE query / CTE Definition
WITH CTE_Name AS
(
    SELECT ...
    FROM ...
    WHERE ...
)

--* Main query / CTE Usage
SELECT ...
FROM CTE_Name
WHERE ...

--+ CTE Rule
--@You cannot use ORDER BY directly within the CTE

-- Step1: Find the total Sales per customer

WITH CTE_Total_Sales AS
(
SELECT
	CustomerID,
	SUM(Sales) AS 'TotalSales'
FROM Sales.Orders
GROUP BY CustomerID
)

-- Main Query

SELECT
c.CustomerID,
c.FirstName,
c.LastName,
cts.TotalSales
FROM Sales.Customers c
LEFT JOIN CTE_Total_Sales cts
ON cts.CustomerID = c.CustomerID
ORDER BY TotalSales DESC

CustomerID  FirstName LastName  TotalSales
3           Mary      NULL      125
1           Jossef    Goldberg  110
4           Mark      Schwarz   90
2           Kevin     Brown     55
5           Anna      Adams     NULL
