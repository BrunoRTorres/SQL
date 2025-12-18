SUBSTRING() --? Extracts a part of string at a specified position

-- Retrieve a list of customer's first name after removing the first character

SELECT
first_name,
SUBSTRING(TRIM(first_name), 2, LEN(first_name)) AS 'sub_name'
FROM customers;

first_name  sub_name
Maria       aria
 John       ohn
Georg       eorg
Martin      artin
Peter       eter
