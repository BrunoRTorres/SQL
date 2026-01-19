--? Transform the value from one form to another.

-- Retrieve employee details with gender displayed as full text

SELECT
EmployeeID,
FirstName,
LastName,
Gender,
CASE
	WHEN Gender = 'M' THEN 'Male'
	WHEN Gender = 'F' THEN 'Female'
	ELSE 'Not Available'
END AS 'GenderFullText'
FROM Sales.Employees;

EmployeeID  FirstName LastName Gender   GenderFullText
1           Frank     Lee      M        Male
2           Kevin     Brown    M        Male
3           Mary      NULL     F        Female
4           Michael   Ray      M        Male
5           Carol     Baker    F        Female

-- Retrieve customers details with abbreviated country code

SELECT
CustomerID,
FirstName,
LastName,
Country,
CASE
	WHEN Country = 'Germany' THEN 'DE'
	WHEN Country = 'USA'	 THEN 'US'
	ELSE 'n/a'
END AS 'CountryAbbr',
CASE Country
	WHEN 'Germany' THEN 'DE'
	WHEN 'USA'	   THEN 'US'
	ELSE 'n/a'
END AS 'CountryAbbr2'
FROM Sales.Customers;

CustomerID  FirstName LastName  Country  CountryAbbr   CountryAbbr2
1           Jossef    Goldberg  Germany  DE            DE
2           Kevin     Brown     USA      US            US
3           Mary      NULL      USA      US            US
4           Mark      Schwarz   Germany  DE            DE
5           Anna      Adams     USA      US            US
