CTE --? Common Table Expression
    --? Temporary, named result set (virtual table), that can be used multiple
    --? times within ypur query to simplify and organize complex query.

--+ Why CTE?
--* Readability
--* Modularity
--* Reusability

--+ CTE types
--* None-recursive CTE
--? Is executed only once without any repetition.
    --* Standalone CTE
    --* Nested CTE
--* Recursive CTE
--? Self-referencing query that repeatedly processes
--? data until a specific condition is met.

--+ CTE Rule
--@ You cannot use ORDER BY directly within the CTE

--+ Best Practices
--@ Rethink and refactor your CTEs before starting a new one.
--@ Dont't use more than 5 CTEs in one query; otherwise, your
--@ code will be hard to understand and maintain.
