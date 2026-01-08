ISNULL() --? Replaces 'NULL' with a specified value.

--! Syntax

ISNULL(value, replacement_value)

--@ Limited to two values
--@ Fast
--@ SQL Server --> ISNULL
--@ ORACLE --> NVL
--@ MYSQL --> IFNULL

COALESCE() --? Returns the first non-null value from a list.

--! Syntax

COALESCE(value1, value2, value3, ...)

--@ Unlimited
--@ Slow
--@ Availabe in all databases
