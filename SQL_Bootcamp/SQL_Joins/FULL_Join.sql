FULL JOIN --? Returns all rows from both tables

--@ The order of tables doesn't matter

SELECT *
FROM A
FULL JOIN B
ON A.key = B.key;

-- Get all customers and all sales, even if there's no match

SELECT
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers c
FULL JOIN orders o 
ON c.id = o.customer_id;

id	first_name	order_id	sales
1	 Maria	    1001	    35
2	 John	    1002	    15
3	 Georg	    1003	    20
4	 Martin	    NULL	    NULL
5	 Peter	    NULL	    NULL
NULL NULL	    1004	    10
