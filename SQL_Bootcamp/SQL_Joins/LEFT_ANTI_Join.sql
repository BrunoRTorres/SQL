--? Returns row from left that has no match in right

--@ The order of tables is important

SELECT *
FROM A
LEFT JOIN B
ON A.key = B.key
WHERE B.key is NULL;

-- Get all customers who haven't place any order

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE customer_id IS NULL;

id	first_name	country	score	order_id	customer_id	order_date	sales
4	Martin	    Germany	500	    NULL	    NULL	    NULL	    NULL
5	Peter	    USA	    0	    NULL	    NULL	    NULL	    NULL
