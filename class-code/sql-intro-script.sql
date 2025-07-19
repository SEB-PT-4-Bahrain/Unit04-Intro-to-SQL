-- creating a new Table in our DB
CREATE TABLE bands(
-- columnName dataType contraint
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	genre VARCHAR(255)
);


-- query a table (see what is in the table)
SELECT * FROM bands;

-- selecting specific columns in my SELECT query
SELECT name, id FROM bands;




-- deleting table
DROP TABLE bands;


-- adding a new row to our table
INSERT INTO bands(name,genre)
VALUES('The Beatles','Rock');


-- add multiple values in 1 query
INSERT INTO bands(name,genre)
VALUES
	('Maroon 5','Pop'),
	('Metallica','Rock');


-- delete row
-- BE CAREFUL: Always a WHERE clause
DELETE FROM bands
WHERE name='The Beatles';


-- Updating a row
UPDATE bands
SET genre='Arabic Music'
WHERE name='Metallica';
