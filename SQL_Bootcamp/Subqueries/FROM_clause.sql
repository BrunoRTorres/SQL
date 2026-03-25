--? Used as temporary table for the main query

-- Find the product that have a price higher than the average price of all products

--* Main query
SELECT
*
FROM 
	--* Subquery
	(SELECT
	ProductID,
	Product,
	Price,
	AVG(Price) OVER () AS 'AvgPrice'
	FROM Sales.Products)t
WHERE Price > AvgPrice;

ProductID  Product  Price  AvgPrice
104        Caps     25     20
105        Gloves   30     20

-- Rank customers based on their total amount of sales

SELECT
*,
RANK() OVER (ORDER BY TotalSales DESC) AS 'CustomerRank'
FROM (
	SELECT
	CustomerID,
	SUM(Sales) AS 'TotalSales'
	FROM Sales.Orders
	GROUP BY CustomerID
)t;

CustomerID  TotalSales  CustomerRank
3           125         1
1           110         2
4           90          3
2           55          4