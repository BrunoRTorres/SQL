HAVING --? Filters data after aggregation, can be used only with GROUP BY

SELECT
    country,
    SUM(score)
FROM table
GROUP BY country
HAVING SUM(score) > 800;

WHERE --? Filters before the aggregation

HAVING --? Filters after the aggregation

/* Find the average score for each country cosidering
only customers with a score not equal to 0
and return only those countries with an average score greater than 430 */

SELECT
	country,
	AVG(score) as 'avg_score'
FROM customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430;

country	avg_score
UK	    750
USA	    900
