-- creating a new Table in our DB
CREATE TABLE bands(
-- columnName dataType contraint
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	genre VARCHAR(255)
);


-- query a table (see what is in the table)
SELECT * FROM bands;




-- deleting table
DROP TABLE bands;