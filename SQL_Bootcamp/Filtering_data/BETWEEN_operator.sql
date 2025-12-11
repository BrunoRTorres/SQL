BETWEEN --? Check if a value is within a range

-- Retrieve all customers whose score falls in the range between 100 and 500

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500;

SELECT *
FROM customers
WHERE score >= 100 AND score <= 500;

id	first_name	country	score
1	Maria	    Germany	350
4	Martin	    Germany	500
