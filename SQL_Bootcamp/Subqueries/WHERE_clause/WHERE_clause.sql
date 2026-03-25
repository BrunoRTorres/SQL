--? Used for complex filtering logic and makes query more flexible and dynamic

--+ Comparison operators
--? Used to filter data by comparing two values

-- Find the products that have a price higher than the average price of all products

SELECT
ProductID,
Product,
Price
FROM Sales.Products
WHERE Price > (SELECT AVG(Price) FROM Sales.Products)

ProductID  Product Price
104        Caps    25
105        Gloves  30
