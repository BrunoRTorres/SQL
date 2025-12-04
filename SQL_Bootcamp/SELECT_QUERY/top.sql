TOP --? Restrict the numbers of rows returned

SELECT TOP (3)
    *
FROM table;

-- Retrieve only 3 customers

SELECT TOP (3)
	*
FROM customers;

id	first_name	country	score
1	Maria	    Germany	350
2	John	    USA	    900
3	Georg	    UK	    750

-- Retrieve the top 3 customers with the highest scores

SELECT TOP (3)
	*
FROM customers
ORDER BY score DESC;

id	first_name	country	score
2	John	    USA	    900
3	Georg	    UK	    750
4	Martin	    Germany	500

-- Retrieve the lowest 2 customers based on the score

SELECT TOP (2)
	*
FROM customers
ORDER BY score ASC;

id	first_name	country	score
5	Peter	    USA	    0
1	Maria	    Germany	350

-- Get the two most recent orders

SELECT TOP (2)
	*
FROM orders
ORDER BY order_date DESC;

order_id	customer_id	order_date	sales
1004	    6	        2021-08-31	10
1003	    3	        2021-06-18	20
