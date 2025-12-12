LEFT JOIN --? Returns all rows from left table an only matching from right

--@ The order of tables is important

SELECT *
FROM A --@ Left
LEFT JOIN B --@ Right
ON A.key = B.key;

/* Get all customers along with their orders,
including those without orders */

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id;

id	first_name	order_id	sales
1	Maria	    1001	    35
2	John	    1002	    15
3	Georg	    1003	    20
4	Martin	    NULL	    NULL
5	Peter	    NULL	    NULL
