-- Find the running total of sales for each month
WITH CTE_Monthly_Summary AS (
	SELECT
	DATETRUNC(month, OrderDate) AS 'OrderMonth',
	SUM(Sales) AS 'TotalSales',
	COUNT(OrderID) AS 'TotalOrders',
	SUM(Quantity) AS 'TotalQuantities'
	FROM Sales.Orders
	GROUP BY DATETRUNC(month, OrderDate)
)
SELECT
OrderMonth,
TotalSales,
SUM(TotalSales) OVER (ORDER BY OrderMonth) AS 'RunningTotal'
FROM CTE_Monthly_Summary

OrderMonth  TotalSales  TotalOrders  TotalQuantities
2025-01-01  105         4            6
2025-02-01  195         4            8
2025-03-01  80          2            2

CREATE VIEW V_Monthly_Summary AS
(
	SELECT
	DATETRUNC(month, OrderDate) AS 'OrderMonth',
	SUM(Sales) AS 'TotalSales',
	COUNT(OrderID) AS 'TotalOrders',
	SUM(Quantity) AS 'TotalQuantities'
	FROM Sales.Orders
	GROUP BY DATETRUNC(month, OrderDate)
)

SELECT
OrderMonth,
TotalSales,
SUM(TotalSales) OVER (ORDER BY OrderMonth) AS 'RunningTotal'
FROM V_Monthly_Summary

OrderMonth  TotalSales  RunningTotal
2025-01-01  105         105
2025-02-01  195         300
2025-03-01  80          380

--@ If a Table or View is created without specifying a schema, it defaults to the DBO

CREATE VIEW Sales.V_Monthly_Summary AS
(
	SELECT
	DATETRUNC(month, OrderDate) AS 'OrderMonth',
	SUM(Sales) AS 'TotalSales',
	COUNT(OrderID) AS 'TotalOrders',
	SUM(Quantity) AS 'TotalQuantities'
	FROM Sales.Orders
	GROUP BY DATETRUNC(month, OrderDate)
)

DROP VIEW V_Monthly_Summary

IF OBJECT_ID ('Sales.V_Monthly_Summary', 'V') IS NOT NULL
	DROP VIEW Sales.V_Monthly_Summary;
GO
CREATE VIEW Sales.V_Monthly_Summary AS
(
	SELECT
	DATETRUNC(month, OrderDate) AS 'OrderMonth',
	SUM(Sales) AS 'TotalSales',
	COUNT(OrderID) AS 'TotalOrders'
	FROM Sales.Orders
	GROUP BY DATETRUNC(month, OrderDate)
)
