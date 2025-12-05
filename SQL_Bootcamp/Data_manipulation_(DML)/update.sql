UPDATE --?

UPDATE table_name
SET column1 = value1,
    column2 = value2
WHERE condition;

-- Change the score of customers 6 to 0

--@ Best practice -> Check with SELECT before running UPDATE to avoid updating the wrong data

SELECT *
FROM customers
WHERE id = 6;

UPDATE customers
SET score = 0
WHERE id = 6;


-- Change the score of customers 10 to 0 and update the country to UK

SELECT *
FROM customers
WHERE id = 10;

UPDATE customers
SET score = 0,
	country = 'UK'
WHERE id = 10;

-- Update all customers with a NULL score by setting their score to 0

SELECT *
FROM customers
WHERE score IS NULL;

UPDATE customers
SET score = 0
WHERE score IS NULL;

id	first_name	country	score
1	Maria	    Germany	350
2	John	    USA	    900
3	Georg	    UK	    750
4	Martin	    Germany	500
5	Peter	    USA	    0
6	Anna	    USA	    0
7	SAM	        NULL	100
8	USA	        Max	    0
9	Andreas	    Germany	0
10	Sahra	    UK	    0
