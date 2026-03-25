--? Used to aggregate data side by side with the main query's data, allowing for direct comparison

--@ Only scalar subqueries are allowed to be used

-- Show the product ids, product names, prices, and the total number of orders

--* Main Query
SELECT
	ProductID,
	Product,
	Price,
	--* Subquery
	(SELECT COUNT(*) FROM Sales.Orders) AS 'TotalOrders'
FROM Sales.Products;

ProductID   Product  Price  TotalOrders
101         Bottle   10     10
102         Tire     15     10
103         Socks    20     10
104         Caps     25     10
105         Gloves   30     10
