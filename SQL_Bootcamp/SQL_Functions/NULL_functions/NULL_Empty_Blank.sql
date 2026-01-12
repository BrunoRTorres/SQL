--? NULL --> Means nothing unknonw.

--? Empty String '' --> String value has zero characters.

--? Blank Space ' ' --> String value has one or more space characters

WITH Orders AS (
SELECT 1 Id, 'A' Category UNION
SELECT 2, NULL UNION
SELECT 3, '' UNION
SELECT 4, ' '
)
SELECT
*,
DATALENGTH(Category) AS CategoryLen
FROM Orders;

Id  Category  CategoryLen
1   A         1
2   NULL      NULL
3             0
4             1
