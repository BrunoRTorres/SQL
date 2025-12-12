CROSS JOIN --? Combines every row from left with every row from right. All possible combinations - Cartersian join

--@ The order of tables doesn't matter

SELECT *
FROM A
CROSS JOIN B

-- Generate all possibles combinations of customers and orders

SELECT *
FROM customers
CROSS JOIN orders;

id	first_name	country	score	order_id	customer_id	order_date	sales
1	Maria	    Germany	350	    1001	    1	        2021-01-11	35
2	John	    USA	    900	    1001	    1	        2021-01-11	35
3	Georg	    UK	    750	    1001	    1	        2021-01-11	35
4	Martin	    Germany	500	    1001	    1	        2021-01-11	35
5	Peter	    USA	    0	    1001	    1	        2021-01-11	35
1	Maria	    Germany	350	    1002	    2	        2021-04-05	15
2	John	    USA	    900	    1002	    2	        2021-04-05	15
3	Georg	    UK	    750	    1002	    2	        2021-04-05	15
4	Martin	    Germany	500	    1002	    2	        2021-04-05	15
5	Peter	    USA	    0	    1002	    2	        2021-04-05	15
1	Maria	    Germany	350	    1003	    3	        2021-06-18	20
2	John	    USA	    900	    1003	    3	        2021-06-18	20
3	Georg	    UK	    750	    1003	    3	        2021-06-18	20
4	Martin	    Germany	500	    1003	    3	        2021-06-18	20
5	Peter	    USA	    0	    1003	    3	        2021-06-18	20
1	Maria	    Germany	350	    1004	    6	        2021-08-31	10
2	John	    USA	    900	    1004	    6	        2021-08-31	10
3	Georg	    UK	    750	    1004	    6	        2021-08-31	10
4	Martin	    Germany	500	    1004	    6	        2021-08-31	10
5	Peter	    USA	    0	    1004	    6	        2021-08-31	10
