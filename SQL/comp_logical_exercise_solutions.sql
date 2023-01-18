-- 1. EVALUATE THE FOLLOWING:
select 10!=10; -- 0

select 15>14 and 99-5 <=94; -- 1

select 1 in (5,3) or 9 between 8 and 10; -- 1

-- 2 SELECT ALL BOOKS WRITTEN BEFORE 1980 (NON INCLUSIVE)
select * from books where released_year<1980;

-- 3. SELECT ALL THE BOOKS WRITTEN BY EGGERS OR CHABON
select * from books where author_lname in ('Eggers','Chabon');

-- 4. SELECT ALL BOOKS WRITTEN BY LAHIRI, PUBLISHED AFTER 2000
SELECT * from books where author_lname='Lahiri' and released_year>2000;

-- 5. SELECT ALL BOOKS WITH PAGE COUNT BETWEEN 100 AND 200
select * from books where pages between 100 and 200;

-- 6. SELECT ALL BOOKS WHERE AUTHOR_LNAME STARTS WITH A 'C' OR AN 'S'
select * from books where author_lname like 'C%' or author_lname like 'S%';

-- 7. 
select title, author_lname,
case 
when title like '%stories%' then 'Short stories'
when title in ('Just Kids','A Heartbreaking Work of Staggering Genius') then 'Memoir'
else 'Novel'
end as type
from books;

-- 8.
SELECT 
    author_fname,
    author_lname,
    CONCAT(COUNT(*), ' books') AS count
FROM
    books
GROUP BY author_fname , author_lname;










