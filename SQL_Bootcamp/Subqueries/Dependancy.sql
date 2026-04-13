Non-correlated subquery --? A subquery that can run independtly from the main query

Definition --* Subquery is independent of the main query
Execution --* Executed once and its result is used by the main query
          --* Can be executed on its own
Easy to use --* Easier to read
Performance --* Executed only once leads to better performance
Usage --* Static comparisons, filtering with constants

Correlated subquery --? A subquery that relays on values from the main query

Definition --*Subquery is dependent of the main query
Execution --* Executed for each row processed by the main query
          --* Can't be executed on its own
Easy to use --* Harder to read and more complex
Performance --* Executed multiple times leads to bad performance
Usage --* Row-by-row comparisons, dynamic filtering

-- Show all customer details and find the total orders of each customer

SELECT
*,
(SELECT COUNT(*) FROM Sales.Orders o WHERE o.CustomerID = c.CustomerID) AS 'TotalSales'
FROM Sales.Customers c;

CustomerID  FirstName LastName  Country  Score TotalSales
1           Jossef    Goldberg  Germany  350   3
2           Kevin     Brown     USA      900   3
3           Mary      NULL      USA      750   3
4           Mark      Schwarz   Germany  500   1
5           Anna      Adams     USA      NULL  0
