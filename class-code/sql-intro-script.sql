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
WHERE genre='Pop';


-- Updating a row
UPDATE bands
SET genre='Pop'
WHERE name='Metallica';


-- Order the values get
SELECT * FROM bands
ORDER BY name DESC;


-- relationship always lives on the many side in a many to one

-- Relationships

-- One to Many

CREATE TABLE musicians(
	musician_id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL UNIQUE,
	age INTEGER NOT NULL,
	sings BOOLEAN,
	dances BOOLEAN,
	-- foreign key (what band is he in)
	band_id INTEGER REFERENCES bands(id)
);
DROP TABLE musicians;

SELECT * FROM bands;
SELECT * FROM musicians;

INSERT INTO musicians(name,age,sings,dances)
VALUES('Omar',42, false, false);




-- get all the musicians that are in the beatles
-- by default it uses an inner join
SELECT 
	m.name AS musician_name,
	b.name AS band_name,
	b.id AS band_id,
	m.musician_id
FROM musicians m
JOIN bands b ON b.id = m.band_id ;


SELECT 
	*
FROM musicians
JOIN bands ON bands.id = musicians.band_id ;



-- left join
SELECT 
	m.name AS musician_name,
	b.name AS band_name,
	b.id AS band_id,
	m.musician_id
FROM musicians m
LEFT JOIN bands b ON b.id = m.band_id ;

