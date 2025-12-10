NOT --? (REVERSE) Excludes matching values

-- Retrieve all customers with a score not less than 500

SELECT *
FROM customers
WHERE NOT score < 500;

id	first_name	country	score
2	John	    USA	   900
3	Georg	    UK	   750
4	Martin	    Germany	500
