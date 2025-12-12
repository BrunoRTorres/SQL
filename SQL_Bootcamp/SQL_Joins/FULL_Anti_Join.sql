--? Returns only rows that don't match in either tables

--@ The order of tables doesn't matter

SELECT *
FROM A
FULL JOIN B
ON A.key = B.key
WHERE B.key IS NULL OR A.key IS NULL;

-- Find customers without orders and orders without customers

SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL;

id	 first_name	country	score	order_id	customer_id	order_date	sales
4	 Martin	    Germany	500	    NULL	    NULL	    NULL	    NULL
5	 Peter	    USA	    0	    NULL	    NULL	    NULL	    NULL
NULL NULL	    NULL	NULL	1004	    6	        2021-08-31	10

/* Get all customers along with their orders,
but only for customers who have placed an order
(without using inner join) */

SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NOT NULL AND o.customer_id IS NOT NULL;

id	first_name	country	score	order_id	customer_id	order_date	sales
1	Maria	    Germany	350	    1001	    1	        2021-01-11	35
2	John	    USA	    900	    1002	    2	        2021-04-05	15
3	Georg	    UK	    750	    1003	    3	        2021-06-18	20
