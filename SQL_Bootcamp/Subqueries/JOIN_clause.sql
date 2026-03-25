--? Used to prepare the data (filtering or aggregation) before joining it with other tables

-- Show all customer details and find the total orders of each customer

SELECT
c.*,
o.TotalOrders
FROM Sales.Customers c
LEFT JOIN (
	SELECT
	CustomerID,
	COUNT(*) AS 'TotalOrders'
	FROM Sales.Orders
	GROUP BY CustomerID) o
ON c.CustomerID = o.CustomerID

CustomerID  FirstName LastName  Country  Score TotalOrders
1           Jossef    Goldberg  Germany  350   3
2           Kevin     Brown     USA      900   3
3           Mary      NULL      USA      750   3
4           Mark      Schwarz   Germany  500   1
5           Anna      Adams     USA      NULL  NULL
