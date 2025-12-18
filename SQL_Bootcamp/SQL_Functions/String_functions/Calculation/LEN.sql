LEN() --? Counts how many characters

-- Calculate the length of each customer's first name

SELECT
first_name,
LEN(first_name) AS 'len_name'
FROM customers;

first_name  len_name
Maria       5
 John       5
Georg       5
Martin      6
Peter       5
