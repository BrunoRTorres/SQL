/* Task: Using SalesDB, retrieve a list of all orders, along with the
related customer, product and employee details. For each order, display:
Order ID, Customer's name, Product name, Sales, Price, Sales person's name */
	
SELECT 
	o.OrderID,
	c.FirstName AS 'CustomerFirstName',
	c.LastName AS 'CustomerLastName',
	p.Product,
	o.Sales,
	p.Price,
	e.FirstName AS 'EmployeeFirstName',
	e.LastName AS 'EmployeeLastName'
FROM sales.Orders AS o
LEFT JOIN sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID;

OrderID	CustomerFirstName	CustomerLastName	Product	Sales	Price	EmployeeFirstName	EmployeeLastName
1	    Kevin	            Brown               Bottle	10	    10	    Mary	            NULL
2	    Mary	            NULL                Tire	15	    15	    Mary	            NULL
3	    Jossef	            Goldberg            Bottle	20	    10	    Carol	            Baker
4	    Jossef	            Goldberg            Gloves	60	    30	    Mary	            NULL
5	    Kevin	            Brown               Caps	25	    25	    Carol	            Baker
6	    Mary	            NULL                Caps	50	    25	    Carol	            Baker
7	    Jossef	            Goldberg            Tire	30	    15	    Frank	            Lee
8	    Mark	            Schwarz             Bottle	90	    10	    Mary	            NULL
9	    Kevin	            Brown               Bottle	20	    10	    Mary	            NULL
10	    Mary	            NULL                Tire	60	    15	    Carol	            Baker
