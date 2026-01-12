--? Data Policy --> Set of rules that defines how data should be handled.

--* #1 Data Policy --> Only use NULLs and empty strings, but avoid blank spaces.

WITH Orders AS (
SELECT 1 Id, 'A' Category UNION
SELECT 2, NULL UNION
SELECT 3, '' UNION
SELECT 4, ' '
)
SELECT
*,
TRIM(Category) AS Policy1
FROM Orders;

Id  Category  Policy1
1   A         A
2   NULL      NULL
3             
4             

--* #2 Data Policy --> Only use NULLs and avoid using empty strings and blank spaces.

WITH Orders AS (
SELECT 1 Id, 'A' Category UNION
SELECT 2, NULL UNION
SELECT 3, '' UNION
SELECT 4, ' '
)
SELECT
*,
TRIM(Category) AS Policy1,
NULLIF(TRIM(Category), '') AS Policy2
FROM Orders;

Id  Category  Policy1   Policy2
1   A         A         A
2   NULL      NULL      NULL
3                       NULL
4                       NULL

--+ Use case

--+ Replacing empty strings and blanks with NULL during data preparation,
--+ before inserting into a database to optimize storage and performance.

--* #3 Data Policy --> Use the default value 'unknown' and avoid using nulls, empty strings, and blank spaces.

WITH Orders AS (
SELECT 1 Id, 'A' Category UNION
SELECT 2, NULL UNION
SELECT 3, '' UNION
SELECT 4, ' '
)
SELECT
*,
TRIM(Category) AS Policy1,
NULLIF(TRIM(Category), '') AS Policy2,
COALESCE(NULLIF(TRIM(Category), ''), 'unknown') AS Policy3
FROM Orders;

Id  Category  Policy1   Policy2    Policy3
1   A         A         A          A
2   NULL      NULL      NULL       unknown
3                       NULL       unknown
4                       NULL       unknown

--+ Use case

--+ Replaces empty strings, blanks, NULL with default value during data preparation,
--+ before using it in reporting to improve readability and reduce confusion
