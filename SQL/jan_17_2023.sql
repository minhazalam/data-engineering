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



-- Add some more books
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

-- distinct results -> eliminate duplicate results
SELECT DISTINCT
    author_lname
FROM
    books;

-- distinct author full name
SELECT DISTINCT
    CONCAT(author_fname, ' ', author_lname) AS author_full_name
FROM
    books;


SELECT 
    *
FROM
    books
ORDER BY released_year DESC;
SELECT 
    title, pages
FROM
    books
ORDER BY pages;

-- order by number; -> order by 4th column
SELECT 
    title, author_fname, author_lname, released_year
FROM
    books
ORDER BY 4;


SELECT 
    title, author_fname, author_lname, released_year
FROM
    books
ORDER BY 4 desc limit 5; -- LIMIT 0,5 -> start,end

-- LIKE -> seraching patterns
SELECT 
    title, author_fname, author_lname
FROM
    books
WHERE
    author_fname LIKE '%da%';

SELECT 
    title, author_fname, author_lname
FROM
    books
WHERE
    title LIKE '%:%';

-- '_' -> exactly one character
SELECT 
    title, author_fname, author_lname
FROM
    books
WHERE
    author_fname LIKE '____';
    
-- not as powerful as regex

SELECT 
    *
FROM
    books
WHERE
    title LIKE '%\%%';-- -> if % and _ exists in title use escape character

SELECT 
    title
FROM
    books
WHERE
    title LIKE '%stories%';

-- 2. find the logest book
SELECT 
    title, pages
FROM
    books
ORDER BY pages DESC
LIMIT 1;

-- 3. print a summary containing the title and year, for the 3 most recent book
SELECT 
    CONCAT(title, ' - ', released_year) AS summary
FROM
    books
ORDER BY released_year DESC
LIMIT 3;

-- 4. find all books with an author_lname that contains a space(' ')
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname LIKE '% %';

-- 5. find three books with the lowest stock quantity
SELECT 
    title, released_year, stock_quantity
FROM
    books
ORDER BY stock_quantity
LIMIT 3;

-- 6. print title and author_lname, sorted first by author_lname and then by title
SELECT 
    title, author_lname
FROM
    books
ORDER BY author_lname , title; -- order by 2,1;

SELECT 
    CONCAT('MY FAVORITE AUTHOR IS ',
            UPPER(author_fname),
            ' ',
            UPPER(author_lname),
            '!') as yell
FROM
    books
ORDER BY author_lname;








