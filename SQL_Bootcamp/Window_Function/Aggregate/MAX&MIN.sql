MIN() --? Returns the lowest value within a window

MAX() --? Returns the highest value within a window

-- Find the highest and lowest sales of all orders
-- Find the highest and lowest sales for each product
-- Additionally provide details such order Id, order date

SELECT
OrderID,
OrderDate,
Sales,
ProductId,
MAX(Sales) OVER () AS 'HighestSale',
MIN(Sales) OVER () AS 'LowestSales',
MAX(Sales) OVER (PARTITION BY ProductID) AS 'HighestSaleByProduct',
MIN(Sales) OVER (PARTITION BY ProductID) AS 'LowestSaleByProduct'
FROM Sales.Orders;

OrderID OrderDate    Sales  ProductId    HighestSale LowestSales  HighestSaleByProduct  LowestSaleByProduct
1       2025-01-01   10     101          90          10           90                    10
3       2025-01-10   20     101          90          10           90                    10
8       2025-02-18   90     101          90          10           90                    10
9       2025-03-10   20     101          90          10           90                    10
10      2025-03-15   60     102          90          10           60                    15
2       2025-01-05   15     102          90          10           60                    15
7       2025-02-15   30     102          90          10           60                    15
5       2025-02-01   25     104          90          10           50                    25
6       2025-02-05   50     104          90          10           50                    25
4       2025-01-20   60     105          90          10           60                    60

-- Show the employees who have the highest salaries
SELECT
*
FROM(
	SELECT
	*,
	MAX(Salary) OVER () AS 'HighestSalary'
	FROM Sales.Employees
)t WHERE Salary = HighestSalary;

EmployeeID  FirstName LastName Department   BirthDate   Gender Salary  ManagerID HighestSalary
4           Michael   Ray      Sales        1977-02-10  M      90000   2         90000

-- Find the deviation of each sales from the minimum and maximum sales amounts

SELECT
OrderID,
OrderDate,
ProductID,
Sales,
MAX(Sales) OVER () AS 'HighestSale',
MIN(Sales) OVER () AS 'LowestSale',
Sales - MIN(Sales) OVER () AS 'DeviationFromMin',
MAX(Sales) OVER () - Sales AS 'DeviationFromMax'
FROM Sales.Orders;

OrderID OrderDate    ProductID  Sales   HighestSale LowestSale  DeviationFromMin  DeviationFromMax
1       2025-01-01   101        10      90          10          0                 80
2       2025-01-05   102        15      90          10          5                 75
3       2025-01-10   101        20      90          10          10                70
4       2025-01-20   105        60      90          10          50                30
5       2025-02-01   104        25      90          10          15                65
6       2025-02-05   104        50      90          10          40                40
7       2025-02-15   102        30      90          10          20                60
8       2025-02-18   101        90      90          10          80                0
9       2025-03-10   101        20      90          10          10                70
10      2025-03-15   102        60      90          10          50                30
