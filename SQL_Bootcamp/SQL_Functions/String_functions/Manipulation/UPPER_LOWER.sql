UPPER() --? Converts all characters to uppercase
LOWER() --? Converts all characters to lowercase

-- Transform the customer's first name to lowercase

SELECT
first_name,
country,
CONCAT(first_name, '_', country) AS 'name_country',
LOWER(first_name) AS 'low_name'
FROM customers;

first_name  country  name_country    low_name
Maria       Germany  Maria_Germany   maria
John        USA      John_USA        john
Georg       UK       Georg_UK        georg
Martin      Germany  Martin_Germany  martin
Peter       USA      Peter_USA       peter

-- Transform the customer's first name to uppercase

SELECT
first_name,
country,
CONCAT(first_name, '_', country) AS 'name_country',
LOWER(first_name) AS 'low_name',
UPPER(first_name) AS 'up_name'
FROM customers;

first_name  country  name_country    low_name  up_name
Maria       Germany  Maria_Germany   maria     MARIA
John        USA      John_USA        john      JOHN
Georg       UK       Georg_UK        georg     GEORG
Martin      Germany  Martin_Germany  martin    MARTIN
Peter       USA      Peter_USA       peter     PETER
