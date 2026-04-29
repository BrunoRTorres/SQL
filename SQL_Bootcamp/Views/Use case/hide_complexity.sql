--? Views can be used to hide the complexity of database tables
--? and offers users more friendly and easy-to-consume objects.

-- Provide a view that combine details from orders, products, customers, and employees
CREATE VIEW Sales.V_Order_Details AS (
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
)

SELECT
*
FROM Sales.V_Order_Details

OrderID  OrderDate   Product  Category     CustomerName     CustomerCountry  SalesName    Department  Sales   Quantity
1        2025-01-01  Bottle   Accessories  Kevin Brown      USA              Mary         Sales       10      1
2        2025-01-05  Tire     Accessories  Mary             USA              Mary         Sales       15      1
3        2025-01-10  Bottle   Accessories  Jossef Goldberg  Germany          Carol Baker  Sales       20      2
4        2025-01-20  Gloves   Clothing     Jossef Goldberg  Germany          Mary         Sales       60      2
5        2025-02-01  Caps     Clothing     Kevin Brown      USA              Carol Baker  Sales       25      1
6        2025-02-05  Caps     Clothing     Mary             USA              Carol Baker  Sales       50      2
7        2025-02-15  Tire     Accessories  Jossef Goldberg  Germany          Frank Lee    Marketing   30      2
8        2025-02-18  Bottle   Accessories  Mark Schwarz     Germany          Mary         Sales       90      3
9        2025-03-10  Bottle   Accessories  Kevin Brown      USA              Mary         Sales       20      2
10       2025-03-15  Tire     Accessories  Mary             USA              Carol Baker  Sales       60      0
