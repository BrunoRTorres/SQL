SELECT * --? Retrieves all columns (everything)

FROM --? tells sql where to find your data

SELECT *
FROM TABLE;

-- Retrieve ALL Customers Data

SELECT *
FROM customers;

id	first_name	country	score
1	Maria	    Germany	350
2	 John	    USA	    900
3	Georg	    UK	    750
4	Martin	    Germany	500
5	Peter	    USA	    0

-- Retrieve ALL Order Data

SELECT *
FROM orders;

order_id	customer_id	order_date	sales
1001	    1	        2021-01-11	35
1002	    2	        2021-04-05	15
1003	    3	        2021-06-18	20
1004	    6	        2021-08-31	10

-- Retrieve each customer's name, country, and score.

SELECT
	first_name,
	country,
	score
FROM customers;

first_name	country	score
Maria	    Germany	350
 John	    USA	    900
Georg	    UK	    750
Martin	    Germany	500
Peter	    USA	    0
