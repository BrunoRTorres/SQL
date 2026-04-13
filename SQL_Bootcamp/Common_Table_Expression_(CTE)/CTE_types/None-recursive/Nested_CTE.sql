--? CTE inside another CTE
--? A nested CTE uses the result of another CTE, so it can't run independently

--*CTE query / CTE Definition
WITH CTE-Name1 AS
(
    SELECT ...
    FROM ...
    WHERE ...
)
, CTE-Name2 AS
(
    SELECT ...
    FROM CTE-Name1
    WHERE ...
)

--* Main query / CTE Usage
SELECT ...
FROM CTE-Name2
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
-- Step3: Rank customers based on Total Sales per customer
, CTE_Customer_Rank AS
(
SELECT
	CustomerID,
	TotalSales,
	RANK() OVER (ORDER BY TotalSales DESC) AS 'CustomerRank'
FROM CTE_Total_Sales
)
-- Step4: Segment customers based on their total sales
, CTE_Customer_Segment AS
(
SELECT
	CustomerID,
	CASE WHEN TotalSales > 100 THEN 'High'
		 WHEN TotalSales > 80 THEN 'Medium'
		 ElSE 'Low'
	END CustomerSegments
FROM CTE_Total_Sales
)

-- Main Query

SELECT
c.CustomerID,
c.FirstName,
c.LastName,
cts.TotalSales,
clo.LastOrder,
ccr.CustomerRank,
ccs.CustomerSegments
FROM Sales.Customers c
LEFT JOIN CTE_Total_Sales cts
ON cts.CustomerID = c.CustomerID
LEFT JOIN CTE_Last_Order clo
ON clo.CustomerID = c.CustomerID
LEFT JOIN CTE_Customer_Rank ccr
ON ccr.CustomerID = c.CustomerID
LEFT JOIN CTE_Customer_Segment ccs
ON ccs.CustomerID = c.CustomerID

CustomerID  FirstName LastName  TotalSales  LastOrder   CustomerRank  CustomerSegments
1           Jossef    Goldberg  110         2025-02-15  2             High
2           Kevin     Brown     55          2025-03-10  4             Low
3           Mary      NULL      125         2025-03-15  1             High
4           Mark      Schwarz   90          2025-02-18  3             Medium
5           Anna      Adams     NULL        NULL        NULL          NULL
