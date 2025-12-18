ROUND() --? Used to round a numeric value to a specified number of decimal places

-- Retrieve a list of customer's first name after removing the first character

SELECT
3.516 AS 'raw_number',
ROUND(3.516, 2) AS 'round_2',
ROUND(3.516, 1) AS 'round_1',
ROUND(3.516, 0) AS 'round_0';

raw_number  round_2 round_1 round_0
3.516       3.520   3.500   4.000
