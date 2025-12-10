OR --? At least on condition must be TRUE

-- Retrieve all customers who are either from the USA OR have a score greater than 500

SELECT *
FROM customers
WHERE country = 'USA' OR score > 500;

id	first_name	country	score
2	John	    USA	    900
3	Georg	    UK	    750
5	Peter	    USA	    0
