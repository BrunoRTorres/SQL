-- Calculate moving average of sales for each product over time

SELECT
OrderID,
ProductID,
OrderDate,
Sales,
AVG(Sales) OVER (PARTITION BY ProductID) AS 'AvgByProduct',
AVG(Sales) OVER (PARTITION BY ProductID ORDER BY OrderDate) AS 'MovingAvg'
FROM Sales.Orders;

OrderID ProductID  OrderDate   Sales  AvgByProduct  MovingAvg
1       101        2025-01-01  10     35            10
3       101        2025-01-10  20     35            15
8       101        2025-02-18  90     35            40
9       101        2025-03-10  20     35            35
2       102        2025-01-05  15     35            15
7       102        2025-02-15  30     35            22
10      102        2025-03-15  60     35            35
5       104        2025-02-01  25     37            25
6       104        2025-02-05  50     37            37
4       105        2025-01-20  60     60            60

-- Calculate moving average of sales for each product over time
-- Calculate moving average of sales for each product over time, including only the next order

SELECT
OrderID,
ProductID,
OrderDate,
Sales,
AVG(Sales) OVER (PARTITION BY ProductID) AS 'AvgByProduct',
AVG(Sales) OVER (PARTITION BY ProductID ORDER BY OrderDate) AS 'MovingAvg',
AVG(Sales) OVER (PARTITION BY ProductID ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) AS 'RollingAvg'
FROM Sales.Orders;

OrderID ProductID  OrderDate    Sales   AvgByProduct  MovingAvg  RollingAvg
1       101        2025-01-01   10      35            10         15
3       101        2025-01-10   20      35            15         55
8       101        2025-02-18   90      35            40         55
9       101        2025-03-10   20      35            35         20
2       102        2025-01-05   15      35            15         22
7       102        2025-02-15   30      35            22         45
10      102        2025-03-15   60      35            35         60
5       104        2025-02-01   25      37            25         37
6       104        2025-02-05   50      37            37         50
4       105        2025-01-20   60      60            60         60
