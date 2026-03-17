FIRST_VALUE() --? Access a value from the first row within a window

LAST_VALUE() --? Access a value from the last row within a window

-- Find the lowest and the highest sales for each product
-- Find the difference in sales between the current and the lowest sales

SELECT
	OrderID,
	ProductID,
	Sales,
	FIRST_VALUE(Sales) OVER (PARTITION BY ProductID ORDER BY Sales) AS 'LowestSales',
	LAST_VALUE(Sales) OVER (PARTITION BY ProductID ORDER BY Sales
	ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS 'HighestSales',
	FIRST_VALUE(Sales) OVER (PARTITION BY ProductID ORDER BY Sales DESC) AS 'HighestSales2',
	MIN(Sales) OVER (PARTITION BY ProductID) AS 'LowestSales2',
	MAX(Sales) OVER (PARTITION BY ProductID) AS 'HighestSales3',
	Sales - MIN(Sales) OVER (PARTITION BY ProductID) AS 'SalesDifference'
FROM Sales.Orders;

OrderID ProductID  Sales  LowestSales  HighestSales  HighestSales2  LowestSales2  HighestSales3  SalesDifference
8       101        90     10           90            90             10            90             80
3       101        20     10           90            90             10            90             10
9       101        20     10           90            90             10            90             10
1       101        10     10           90            90             10            90             0
10      102        60     15           60            60             15            60             45
7       102        30     15           60            60             15            60             15
2       102        15     15           60            60             15            60             0
6       104        50     25           50            50             25            50             25
5       104        25     25           50            50             25            50             0
4       105        60     60           60            60             60            60             0
