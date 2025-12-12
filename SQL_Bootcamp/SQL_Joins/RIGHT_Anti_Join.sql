--? Returns rows from right that has no match in left

SELECT *
FROM A
RIGHT JOIN B
ON A.key = B.key
WHERE A.key IS NULL;

-- Get all orders without matching customers

SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL;

--@ Alternative

-- Get all orders without matching customers

SELECT *
FROM orders AS o
LEFT JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id IS NULL;
