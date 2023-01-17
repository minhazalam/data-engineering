SELECT 
    COUNT(DISTINCT (author_lname))
FROM
    books;
    
-- how many titles contain 'the'
SELECT 
    COUNT(title) AS number_of_books
FROM
    books
WHERE
    title LIKE '%the%';
    
-- GROUP BY
SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname
ORDER BY books_written DESC;


-- how many books were released in each year
SELECT 
    released_year, COUNT(*) AS books_released
FROM
    books
GROUP BY released_year
ORDER BY books_released DESC;


-- find min released year
select released_year,min(pages) as min_pages from books group by released_year;

-- title of the longest book
select title, pages from books order by pages desc limit 1;
SELECT 
    title, pages
FROM
    books
WHERE
    pages = (SELECT 
            max(pages)
        FROM
            books);

-- title of the book released earliest
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year IN (SELECT 
            MIN(released_year)
        FROM
            books);


SELECT 
    author_lname,
    COUNT(*) AS books_written,
    MIN(released_year),
    MAX(released_year)
FROM
    books
GROUP BY author_lname;

SELECT 
    author_lname, author_fname, SUM(pages)
FROM
    books
GROUP BY author_lname , author_fname;


SELECT 
    released_year, AVG(stock_quantity),count(*)
FROM
    books
GROUP BY released_year;


-- EXERCISE:

select count(*) as no_of_books from books;

-- 1. how many books released in each year
select released_year, count(*) from books group by released_year;

-- 2. total number of books in stock revisit
select stock_quantity,sum(stock_quantity) from books group by stock_quantity; 

-- 3. 
select author_lname,author_fname,avg(released_year), count(*) from books group by author_lname,author_fname;

-- 4. full name of author who wrote the longest book
select concat(author_fname,' ',author_lname) from books where pages in (select max(pages) from books);

-- 5. 
SELECT 
    released_year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM
    books
GROUP BY released_year
ORDER BY 1;















;