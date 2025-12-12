INNER JOIN --? Returns only matching rows from both tables

SELECT *
FROM A
[Type] JOIN B --@ Default (INNER)


SELECT *
FROM A
INNER JOIN B
ON A.key = B.key

/* Get all customers along with their orders, but only for 
customers who have placed an order */

SELECT *
FROM customers
INNER JOIN orders
ON id = customer_id;

id	first_name	country	score	order_id	customer_id	order_date	sales
1	Maria	    Germany	350	    1001	    1	        2021-01-11	35
2	John	    USA	    900	    1002	    2	        2021-04-05	15
3	Georg	    UK	    750	    1003	    3	        2021-06-18	20


--+ Good practices (Select only the columns you want)

SELECT
	customers.id,
	customers.first_name,
	orders.order_id,
	orders.sales
FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id;

id	first_name	order_id	sales
1	Maria	    1001	    35
2	John	    1002	    15
3	Georg	    1003	    20

--+ Using alias

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id;
