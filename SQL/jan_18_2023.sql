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
    DATE(birth_date)
FROM
    people;


-- COMPARISON AND LOGICAL OPERATORS
SELECT DATABASE();
show tables;
SELECT 
    *
FROM
    books;

SELECT 
    *
FROM
    books
WHERE
    author_lname != 'Gaiman';
SELECT 
    *
FROM
    books
WHERE
    title NOT LIKE '% %';
SELECT 
    *
FROM
    books
WHERE
    author_fname NOT LIKE 'Da%';
SELECT 99 > 1;-- 1

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


-- ALTER AND CONTRAINTS
CREATE TABLE contacts (
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);
desc contacts;

insert into contacts(name, phone) values('billybo','8736257382');
SELECT 
    *
FROM
    contacts;


CREATE TABLE partiers (
    name VARCHAR(50),
    age INT CHECK (age > 18)
);
desc partiers;

insert into partiers(name,age) values ('Juhn',32);


CREATE TABLE users (
    name VARCHAR(50),
    age INT CHECK (age > 0)
);
alter table users rename column name to username;
desc users;

alter table users drop column age;
alter table users add constraint age_over_18 check(age>18);














