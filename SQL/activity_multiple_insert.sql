-- Create a table name 'people' 

CREATE TABLE people(
	first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
);

-- Single insert statement
INSERT INTO people(
first_name,
last_name,
age)
VALUES(
'Tina',
'Belcher',
13
);

-- Select/Retrieve data from table 'people '
SELECT * FROM people;


INSERT INTO people(
first_name, last_name, age)
VALUES
('Linda','Belcher',45),
('Philip', 'Frond', 38),
('Calvin', 'Fischoeder',70);


INSERT INTO unique_cats(name,age) VALUES('Bongi',12);

DROP TABLE unique_cats;
CREATE TABLE unique_cats (
	cat_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    age INT,
    PRIMARY KEY(cat_id)
);

CREATE TABLE employees(
	id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(25) NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    middle_name VARCHAR(25),
    age INT NOT NULL,
    current_status VARCHAR(25) NOT NULL DEFAULT 'employed'
);



















