-- Create a new database
CREATE DATABASE shirts_db;

-- Show databases
SHOW DATABASES;

-- Use created database -> shirts_db
USE shirts_db;

-- Check selected database
SELECT DATABASE();

SHOW TABLES;

-- Create table shirts
CREATE TABLE shirts (
    shirt_id INT PRIMARY KEY AUTO_INCREMENT,
    article VARCHAR(200) NOT NULL,
    color VARCHAR(50) NOT NULL,
    shirt_size VARCHAR(3) NOT NULL,
    last_worn INT NOT NULL
);

-- Drop table
DROP TABLE shirts;
DESC shirts;

-- Insert values in shirts table
INSERT INTO shirts(article,color,shirt_size,last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

-- Show all the rows in shirts table
SELECT 
    *
FROM
    shirts;

INSERT INTO shirts (article,color,shirt_size,last_worn)
VALUES ('polo shirt', 'purple', 'M', 50);


-- Select all shirts but only print out article and color
SELECT 
    article, color
FROM
    shirts;

-- Select all medium shirts print out everything but shirt_id
SELECT 
    article, color, shirt_size, last_worn
FROM
    shirts
WHERE
    shirt_size = 'M';

-- Update all polo shirts change their size to L
UPDATE shirts 
SET 
    shirt_size = 'L'
WHERE
    article = 'polo shirt';
-- COMMIT;
SELECT 
    *
FROM
    shirts;

-- Update shirts last worn 15 days ago and change last_worn to 0
UPDATE shirts 
SET 
    last_worn = 0
WHERE
    last_worn = 15;

-- Delete all old shirts, last worn 200 days ago
DELETE FROM shirts 
WHERE
    last_worn = 200;

-- Delete all ank tops
DELETE FROM shirts 
WHERE
    article = 'tank top';

-- Delete all shirts
DELETE FROM shirts;

-- Drop the entire shirts table 
DROP TABLE shirts;