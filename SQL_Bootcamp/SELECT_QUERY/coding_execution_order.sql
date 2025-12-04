--? Coding order

SELECT DISTINCT TOP (2)
    col1,
    SUM(col2)
FROM table
WHERE col = 10
GROUP BY col1
HAVING SUM(col2) > 30
ORDER BY col1 ASC;

--? Execution order

/*

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT DISTINC
6. ORDER BY
7. TOP

*/
