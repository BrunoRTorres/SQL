WHERE --? Filters your data based on a condition

SELECT *
FROM table
WHERE condition;

-- Retrieve customers with a score not equal to 0

SELECT *
FROM customers
WHERE score != 0;

id	first_name	country	score
1	Maria	    Germany	350
2	 John	    USA	    900
3	Georg	    UK	    750
4	Martin	    Germany	500

-- Retrieve customers from Germany

SELECT *
FROM customers
WHERE country = 'Germany';

id	first_name	country	score
1	Maria	    Germany	350
4	Martin	    Germany	500

SELECT
	first_name,
	country
FROM customers
WHERE country = 'Germany';

first_name	country
Maria	    Germany
Martin	    Germany
