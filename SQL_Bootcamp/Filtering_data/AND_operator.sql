AND --? Used to combine multiple conditions, and both conditions must be true to display a value

-- Retrieve all customers who are from the USA and have a score greater than 500

SELECT *
FROM customers
WHERE country = 'USA' AND score > 500;

id	first_name	country	score
2	John	    USA	    900
