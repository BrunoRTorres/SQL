--? Group the data into different categories based on certain conditions.

/* Create report showing total sales for each of the following categories:
   High (sales over 50), Medium (sales 21-50), and low (sales 20 or less)
   Sort the categories from highest sales to lowest */

SELECT
Category,
SUM(Sales) AS 'TotalSales'
FROM(
	SELECT
	OrderID,
	Sales,
	CASE
		WHEN Sales > 50 THEN 'High'
		WHEN Sales > 20 THEN 'Medium'
		WHEN Sales <= 20 THEN 'Low'
	END AS 'Category'
	FROM Sales.Orders
)t
GROUP BY Category
ORDER BY TotalSales DESC;

Category  TotalSales
High      210
Medium    105
Low       65
