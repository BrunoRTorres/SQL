CONCAT() --? Combines multiple strings into one

-- Show a list of customers's first names together with their country in one column

SELECT
first_name,
country,
CONCAT(first_name, '_', country) AS 'name_country'
FROM customers;

first_name  country  name_country
Maria       Germany  Maria_Germany
John        USA      John_USA
Georg       UK       Georg_UK
Martin      Germany  Martin_Germany
Peter       USA      Peter_USA
