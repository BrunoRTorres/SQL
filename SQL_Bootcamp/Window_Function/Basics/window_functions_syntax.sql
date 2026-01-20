AVG(Sales) OVER (PARTITION BY Category ORDER BY OrderDate ROWS UNBOUNDED PRECEDING)

--* Window function --> AVG(Sales)

--? Perform calculations within a window

--* Function expression --> (Sales)

--? Arguments you pass to a function

--* OVER clause --> OVER (PARTITION BY Category ORDER BY OrderDate ROWS UNBOUNDED PRECEDING)

--? Tells SQL that the funcions used is a window fuction, it defines a window or subset of data

--* Partition clause --> (PARTITION BY Category)

--? Divides the result set into partitions (Windows)

--* ORDER BY clause --> (ORDER BY OrderDate)

--? Sort the data within a window

--* Frame clause --> (ROWS UNBOUNDED PRECEDING)

--? Defines a subset of rows within each window that is relevant for the calculation
