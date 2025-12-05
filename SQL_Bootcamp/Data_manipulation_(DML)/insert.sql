INSERT --? Used to add new rows of data into a table

--! Manual insert

INSERT INTO customers (id, first_name, country, score)
VALUES
    (6, 'Anna', 'USA', NULL),
    (7, 'Sam', NULL, 100)

--! Insert using SELECT

-- Insert data from 'customers' into 'persons'
INSERT INTO persons (id, person_name, birth_date, phone)
SELECT
	id,
	first_name,
	NULL,
	'Unknown'
FROM customers;
