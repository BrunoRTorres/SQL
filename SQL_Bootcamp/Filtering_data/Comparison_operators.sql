= --? Checks if two values are equal

-- Retrieve all customers from Germany

SELECT *
FROM customers
WHERE country = 'Germany';

id	first_name	country	score
1	Maria	    Germany	350
4	Martin	    Germany	500

<> != --? Checks if two values are not equal

-- Retrieve all customers who are not from Germany

SELECT *
FROM customers
WHERE country != 'Germany';

SELECT *
FROM customers
WHERE country <> 'Germany';

id	first_name	country	score
2	John	    USA	    900
3	Georg	    UK	    750
5	Peter	    USA	    0

> --? Checks if a value is greater than another value

-- Retrieve all customers with a score greater than 500

SELECT *
FROM customers
WHERE score > 500;

id	first_name	country	score
2	John	    USA	    900
3	Georg	    UK	    750

>= --? Checks if a value is greater than or equal to another value

-- Retrieve all customers with a score greater than 500 or more

SELECT *
FROM customers
WHERE score >= 500;

id	first_name	country	score
2	John	    USA	   900
3	Georg	    UK	   750
4	Martin	    Germany	500

< --? Checks if a value is less than another value

-- Retrieve all customers with a score less than 500

SELECT *
FROM customers
WHERE score < 500;

id	first_name	country	score
1	Maria	    Germany	350
5	Peter	    USA	    0

<= --? Checks if a value is less than or equal to another value

-- Retrieve all customers with a score of 500 or less

SELECT *
FROM customers
WHERE score <= 500;

id	first_name	country	score
1	Maria	    Germany	350
4	Martin	    Germany	500
5	Peter	    USA	    0
