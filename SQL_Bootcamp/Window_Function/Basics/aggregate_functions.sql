COUNT(*) --? Counts the numbers of rows inside table

SUM() --? Calculate the total sum of a numeric column

AVG() --? Calculate the average of a numeric column

MAX() --? Search for the highest value

MIN() --? Search for the lowest value

-- Find the total number of orders

SELECT
COUNT(*) AS 'Total_Nr_Orders'
FROM orders;

Total_Nr_Orders
4

-- Find the total sales of all orders

SELECT
COUNT(*) AS 'Total_Nr_Orders',
SUM(sales) AS 'Total_Sales'
FROM orders;

Total_Nr_Orders Total_Sales
4               80

-- Find the average sales of all orders

SELECT
COUNT(*) AS 'Total_Nr_Orders',
SUM(sales) AS 'Total_Sales',
AVG(sales) AS 'Avg_Sales'
FROM orders;

Total_Nr_Orders Total_Sales  Avg_Sales
4               80           20

-- Find the highest sales of all orders

SELECT
COUNT(*) AS 'Total_Nr_Orders',
SUM(sales) AS 'Total_Sales',
AVG(sales) AS 'Avg_Sales',
MAX(sales) AS 'Highest_Sales'
FROM orders;

Total_Nr_Orders Total_Sales  Avg_Sales  Highest_Sales
4               80           20         35
-- Find the lowest sales of all orders

SELECT
COUNT(*) AS 'Total_Nr_Orders',
SUM(sales) AS 'Total_Sales',
AVG(sales) AS 'Avg_Sales',
MAX(sales) AS 'Highest_Sales',
MIN(sales) AS 'Lowest_Sales'
FROM orders;

Total_Nr_Orders Total_Sales  Avg_Sales  Highest_Sales  Lowest_Sales
4               80           20         35             10
