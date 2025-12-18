LEFT() --? Extracts specific number of characters from the start
RIGHT() --? Extracts specific number of characters from the end

-- Retrieve the first two characters of each first name

SELECT
first_name,
LEFT(TRIM(first_name), 2) AS 'first_2_char'
FROM customers;

first_name  first_2_char
Maria       Ma
 John       Jo
Georg       Ge
Martin      Ma
Peter       Pe

-- Retrieve the last two characters of each first name

SELECT
first_name,
LEFT(TRIM(first_name), 2) AS 'first_2_char',
RIGHT(first_name, 2) AS 'last_2_char'
FROM customers;

first_name  first_2_char  last_2_char
Maria       Ma            ia
 John       Jo            hn
Georg       Ge            rg
Martin      Ma            in
Peter       Pe            er
