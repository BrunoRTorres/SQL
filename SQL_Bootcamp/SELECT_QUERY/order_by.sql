ORDER BY ASC --? from the lowest value to the highest value

ORDER BY DESC --? from the highest value to the lowest value

SELECT *
FROM table
ORDER BY score ASC;

/* Retrieve all customers and
   sort the results by the highest score first */

SELECT *
FROM customers
ORDER BY score DESC;

id	first_name	country	score
2	John	    USA	    900
3	Georg	    UK	    750
4	Martin	    Germany	500
1	Maria	    Germany	350
5	Peter	    USA	    0

/* Retrieve all customers and
   sort the results by the lowest score first */

SELECT *
FROM customers
ORDER BY score ASC;

id	first_name	country	score
5	Peter	    USA	    0
1	Maria	    Germany	350
4	Martin	    Germany	500
3	Georg	    UK	    750
2	John	    USA	    900

/* Retrieve all customers and
   sort the results by the country and then by the highest score */

SELECT *
FROM customers
ORDER BY country ASC,
		 score DESC;

id	first_name	country	score
4	Martin	    Germany	500
1	Maria	    Germany	350
3	Georg	    UK	    750
2	John	    USA	    900
5	Peter	    USA	    0
