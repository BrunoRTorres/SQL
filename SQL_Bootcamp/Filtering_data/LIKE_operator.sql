LIKE --? Search for a pattern in text

-- Retrieve all customers whose first name starts with 'M'

SELECT *
FROM customers
WHERE first_name LIKE 'm%';

id	first_name	country	score
1	Maria	    Germany	350
4	Martin	    Germany	500

-- Retrieve all customers whose first name ends with 'N'

SELECT *
FROM customers
WHERE first_name LIKE '%n';

id	first_name	country	score
2	John	    USA	    900
4	Martin	    Germany	500

-- Retrieve all customers whose first name contains 'R'

SELECT *
FROM customers
WHERE first_name LIKE '%r%';

id	first_name	country	score
1	Maria	    Germany	350
3	Georg	    UK	    750
4	Martin	    Germany	500
5	Peter	    USA	    0

-- Retrieve all customers whose first name has 'R' in the third position

SELECT *
FROM customers
WHERE first_name LIKE '__r%';

id	first_name	country	score
1	Maria	    Germany	350
4	Martin	    Germany	500
