--+ Time series analysis
--? The process of analyzing the data to understand patters, trends, and behaviors over time

--* Year-over-year (YoY)
--? Analyze the overall growth or decline of the business performance over time

--* Month-over-month (MoM)
--? Analyze short-term trends and discover patters in seasonality

-- Analyze the month-over-month performance by finding the percentage change
-- in sales between the current and previous months
SELECT
*,
CurrentMonthSales - PreviousMonthSales AS 'MoM_Change',
ROUND(CAST((CurrentMonthSales - PreviousMonthSales) AS FLOAT) / PreviousMonthSales * 100, 1) AS 'MoM_Per'
FROM(
	SELECT
		MONTH(OrderDate) AS 'OrderMonth',
		SUM(Sales) AS 'CurrentMonthSales',
		LAG(SUM(Sales)) OVER (ORDER BY Month(OrderDate)) AS 'PreviousMonthSales'
	FROM Sales.Orders
		GROUP BY MONTH(OrderDate)
)t;

OrderMonth  CurrentMonthSales PreviousMonthSales   MoM_Change MoM_Per
1           105               NULL                 NULL       NULL
2           195               105                  90         85.7
3           80                195                  -115       -59
