--? Use views to enforce security and protect sensitive data
--? by hiding columns and/or rows from tables.

-- Provide a view for EU Sales team that combines details from all tables 
-- and excludes data related to the usa
CREATE VIEW Sales.V_Order_Details_EU AS (
	SELECT
	o.OrderID,
	o.OrderDate,
	p.Product,
	p.Category,
	COALESCE(c.FirstName,'') + ' ' + COALESCE(c.LastName,'') AS 'CustomerName',
	c.Country AS 'CustomerCountry',
	COALESCE(e.FirstName,'') + ' ' + COALESCE(e.LastName,'') AS 'SalesName',
	e.Department,
	o.Sales,
	o.Quantity
	FROM Sales.Orders o
	LEFT JOIN Sales.Products p
	ON p.ProductID = o.ProductID
	LEFT JOIN Sales.Customers c
	ON c.CustomerID = o.CustomerID
	LEFT JOIN Sales.Employees e
	ON e.EmployeeID = o.SalesPersonID
	WHERE c.Country != 'USA'
)

SELECT
*
FROM Sales.V_Order_Details_EU

OrderID  OrderDate   Product  Category     CustomerName     CustomerCountry  SalesName    Department  Sales   Quantity
3        2025-01-10  Bottle   Accessories  Jossef Goldberg  Germany          Carol Baker  Sales       20      2
4        2025-01-20  Gloves   Clothing     Jossef Goldberg  Germany          Mary         Sales       60      2
7        2025-02-15  Tire     Accessories  Jossef Goldberg  Germany          Frank Lee    Marketing   30      2
8        2025-02-18  Bottle   Accessories  Mark Schwarz     Germany          Mary         Sales       90      3
