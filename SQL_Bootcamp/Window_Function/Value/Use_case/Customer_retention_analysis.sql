--+ Customer Retention Analysis
--? Measure customer's behavior and loyalty to help businesses build strong relationships with customers

-- In order to analyze customer loyalty,
-- rank customers based on the average days between their orders

SELECT
CustomerID,
AVG(DaysUntilNextOrder) AS 'AvgDays',
RANK() OVER (ORDER BY COALESCE(AVG(DaysUntilNextOrder), 999999)) AS 'RankAvg'
FROM (
	SELECT
		OrderID,
		CustomerID,
		OrderDate AS 'CurrentOrder',
		LEAD(OrderDate) OVER (PARTITION BY CustomerID ORDER BY OrderDate) AS 'NextOrder',
		DATEDIFF(day, OrderDate, LEAD(OrderDate) OVER (PARTITION BY CustomerID ORDER BY OrderDate)) AS 'DaysUntilNextOrder'
	FROM Sales.Orders
)t
GROUP BY CustomerID;

CustomerID  AvgDays   RankAvg
1           18        1
2           34        2
3           34        2
4           NULL      4
