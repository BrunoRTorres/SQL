GROUP BY --? Combines rows with the same value, aggregates a column by another column

SELECT
    country,
    SUM(score)
FROM table
GROUP BY country;

-- Find the total score for each country

SELECT
	country,
	SUM(score) as 'total_score'
FROM customers
GROUP BY country;

country	total_score
Germany	850
UK	    750
USA	    900

-- Find the total score and total number of customers for each country

SELECT
	country,
	SUM(score) as 'total_score',
	COUNT(id) as 'total_customers'
FROM customers
GROUP BY country;

country	total_score	total_customers
Germany	850	        2
UK	    750	        1
USA	    900	        2
