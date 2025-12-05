DELETE --? Used to remove existing rows from a table

DELETE FROM table_name
WHERE condition

-- Delete all customers with an ID greater than 5

DELETE FROM customers
WHERE id > 5;

SELECT *
FROM customers
WHERE id > 5;

-- Delete all data from table persons

TRUNCATE TABLE persons;
