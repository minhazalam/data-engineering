show tables;

desc books;

SELECT 
    *
FROM
    books;

-- Print capital title with stupid strings
SELECT 
    CONCAT('I LOVE ', UPPER(title), '!!!')
FROM
    books;
    
-- INSERT
SELECT INSERT('Hello Bobby', 6, 0, ' there ');

-- LEFT
SELECT 
    LEFT(author_lname, 1) AS initial_lname
FROM
    books;

-- TRIM
SELECT TRIM(BOTH '.' FROM '..trim...');

-- String open book challenges
-- 1. upper case
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));

-- 2. What does this print out?
SELECT 
    REPLACE(CONCAT('I', ' ', 'like', ' ', 'cats'),
        ' ',
        '-');
-- I-like-cats

SELECT 
    REPLACE(title, ' ', '->')
FROM
    books;

SELECT 
    author_lname AS forward, REVERSE(author_lname) AS backward
FROM
    books;

SELECT 
    UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps'
FROM
    books;

SELECT 
    CONCAT(title,
            ' was released in ',
            released_year) AS blurb
FROM
    books;

SELECT 
    title, CHAR_LENGTH(title) AS 'character count'
FROM
    books;

SELECT 
    CONCAT(SUBSTR(title, 1, 10), '...') AS 'short title',
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM
    books;



















