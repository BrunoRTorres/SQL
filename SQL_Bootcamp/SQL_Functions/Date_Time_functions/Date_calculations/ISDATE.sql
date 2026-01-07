ISDATE() --? Checks if a value is a date. Returns 1 if the string value is a valid date.

--! Syntax

ISDATE(value)

SELECT
ISDATE('123') DateCheck1,
ISDATE('2025-08-20') DateCheck2,
ISDATE('20-08-2025') DateCheck3,
ISDATE('2025') DateCheck4,
ISDATE('08') DateCheck5

DateCheck1  DateCheck2    DateCheck3  DateCheck4    DateCheck5
0           1             0           1             0

SELECT
	--Cast(OrderDate AS DATE) OrderDate,
	OrderDate,
	ISDATE(OrderDate),
	CASE WHEN ISDATE(OrderDate) = 1 THEN CAST(OrderDate AS DATE)
		ELSE '9999-01-01'
	END NewOrderDate
FROM
(
	SELECT '2025-08-20' AS OrderDate UNION
	SELECT '2025-08-21' UNION
	SELECT '2025-08-23' UNION	
	SELECT '2025-08'
)t
--WHERE ISDATE(OrderDate) = 0

OrderDate   (No column name)   NewOrderDate
2025-08     0                  9999-01-01
2025-08-20  1                  2025-08-20
2025-08-21  1                  2025-08-21
2025-08-23  1                  2025-08-23
