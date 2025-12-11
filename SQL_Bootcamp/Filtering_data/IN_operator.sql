IN --? CHeck if a value exists in a list

-- Retrieve all customers from either Germany or USA

SELECT *
FROM customers
WHERE country IN ('Germany', 'USA');

id	first_name	country	score
1	Maria	    Germany	350
2	John	    USA	    900
4	Martin	    Germany	500
5	Peter	    USA	    0
