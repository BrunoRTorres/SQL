RIGHT JOIN --? Returns all rows from right and only matching from left

--@ The order of tables is important

SELECT *
FROM A
RIGHT JOIN B
ON A.key = B.key;

/* Get all customers along with their orders,
including orders without matching customers */

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c 
RIGHT JOIN orders AS o
ON c.id = o.customer_id;

id	 first_name	order_id	sales
1	 Maria	    1001	    35
2	 John	    1002	    15
3	 Georg	    1003	    20
NULL NULL	    1004	    10

--@ Alternative

/* Get all customers along with their orders,
including orders without matching customers */

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM orders o
LEFT JOIN customers c
ON c.id = o.customer_id;