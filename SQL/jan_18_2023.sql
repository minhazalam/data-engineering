SELECT DATABASE();

-- create new table people
CREATE TABLE people (
    name VARCHAR(100),
    birth_date DATE,
    birth_time TIME,
    birth_dt DATETIME
);

desc people;

-- create new person
insert into people(name, birth_date,birth_time,birth_dt)values('Elton','2000-12-25','11:34:09','2000-12-25 11:34:09');
insert into people(name, birth_date,birth_time,birth_dt)values('Elly','1996-10-15','10:34:09','1996-10-15 10:34:09');
insert into people(name, birth_date,birth_time,birth_dt)values('Juan','2000-09-05','1:34:09','2000-09-05 1:34:09');
insert into people(name, birth_date,birth_time,birth_dt)values('Xing','2001-02-25','02:34:09','2001-02-25 02:34:09');

SELECT 
    *
FROM
    people;

insert into people(name, birth_date,birth_time,birth_dt) values('Hazel',curdate(),curtime(),now());


-- useful date functions
SELECT 
    name,
    birth_date,
    DAY(birth_date),
    DAYOFWEEK(birth_date),
    DAYOFYEAR(birth_date),
    MONTHNAME(birth_date),
    DAYNAME(birth_date),
    WEEK(birth_date),
    date(birth_date)
FROM
    people;


-- COMPARISON AND LOGICAL OPERATORS
select database();
show tables;
select * from books;

select * from books where author_lname!='Gaiman';
select * from books where title not like '% %';
select * from books where author_fname not like 'Da%';
select 99>1; -- 1

-- case
SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS stock
FROM
    books;






