Create database class_jan_14_db;

use class_jan_14_db;

CREATE TABLE IF NOT EXISTS employee (
    id INT,
    name VARCHAR(50),
    address VARCHAR(50),
    city VARCHAR(50)
);

insert into employee values(1, 'Shashank', 'RJPM', 'Lucknow');

SELECT
    *
FROM
    employee;

-- add new column named DOB in the TABLE
alter table employee add DOB date;

SELECT
    *
FROM
    employee;


-- modify existing column in a TABLE or change datatype of name column or increase lenght of name column
alter table employee modify column name varchar(100);

-- delete existing column from given TABLE or remove city column from employee table
alter table employee drop column city;

SELECT
    *
FROM
    employee;


-- rename the column name to full_name
alter table employee rename column name to full_name;


CREATE TABLE IF NOT EXISTS employee (
    id INT,
    name VARCHAR(50),
    age INT,
    hiring_date DATE,
    salary INT,
    city VARCHAR(50)
);

insert into employee values(1,'Shashank', 24, '2021-08-10', 10000, 'Lucknow');

insert into employee values(2,'Rahul', 25, '2021-08-10', 20000, 'Khajuraho');

insert into employee values(3,'Sunny', 22, '2021-08-11', 11000, 'Banaglore');

insert into employee values(5,'Amit', 25, '2021-08-11', 12000, 'Noida');

insert into employee values(6,'Puneet', 26, '2021-08-12', 50000, 'Gurgaon');

-- add unique integrity constraint on id COLUMN

alter table employee add constraint id_unique UNIQUE(id);

insert into employee values(1,'XYZ', 25, '2021-08-10', 50000, 'Gurgaon');

-- drop constraint from existing TABLE
alter table employee drop constraint id_unique;

insert into employee values(1,'XYZ', 25, '2021-08-10', 50000, 'Gurgaon');

-- create table with Primary_Key

Create table persons
(
    id int,
    name varchar(50),
    age int,
    --Primary Key (id)
    constraint pk Primary Key (id)
);

insert into persons values(1,'Shashank',29);

-- Try to insert duplicate value for primary key COLUMN
insert into persons values(1,'Rahul',28);

-- Try to insert null value for primary key COLUMN
insert into persons values(null,'Rahul',28);

-- To check difference between Primary Key and Unique
alter table persons add constraint age_unq UNIQUE(age);

SELECT
    *
FROM
    persons;


insert into persons values(2,'Rahul',28);


insert into persons values(3,'Amit',28);

insert into persons values(3,'Amit',null);

SELECT
    *
FROM
    persons;

insert into persons values(4,'Charan',null);

insert into persons values(5,'Deepak',null);


-- create tables for Foreign Key demo
CREATE TABLE customer (
    cust_id INT,
    name VARCHAR(50),
    age INT,
    CONSTRAINT pk PRIMARY KEY (cust_id)
);

CREATE TABLE orders (
    order_id INT,
    order_num INT,
    customer_id INT,
    CONSTRAINT pk PRIMARY KEY (order_id),
    CONSTRAINT fk FOREIGN KEY (customer_id)
        REFERENCES customer (cust_id)
);

-- Differen between Drop & Truncate Command

SELECT
    *
FROM
    persons;
truncate table persons;

SELECT
    *
FROM
    persons;

drop table persons;

-- Operations with Select Command

SELECT
    *
FROM
    employee;


drop table employee;


CREATE TABLE IF NOT EXISTS employee (
    id INT,
    name VARCHAR(50),
    age INT,
    hiring_date DATE,
    salary INT,
    city VARCHAR(50)
);

insert into employee values(1,'Shashank', 24, '2021-08-10', 10000, 'Lucknow');

insert into employee values(2,'Rahul', 25, '2021-08-10', 20000, 'Khajuraho');

insert into employee values(3,'Sunny', 22, '2021-08-11', 11000, 'Bangalore');

insert into employee values(5,'Amit', 25, '2021-08-11', 12000, 'Noida');

insert into employee values(1,'Puneet', 26, '2021-08-12', 50000, 'Gurgaon');


SELECT
    *
FROM
    employee;

-- how to count total records
SELECT
    COUNT(*)
FROM
    employee;


-- alias declaration
SELECT
    COUNT(*) AS total_row_count
FROM
    employee;


-- display all columns in the final result
SELECT
    *
FROM
    employee;


-- display specific columns in the final result
SELECT
    name, salary
FROM
    employee;


-- aliases for mutiple columns
SELECT
    name AS employee_name, salary AS employee_salary
FROM
    employee;


SELECT
    *
FROM
    employee;

-- print unique hiring_dates from the employee table when employees joined it
SELECT DISTINCT
    (hiring_date) AS distinct_hiring_dates
FROM
    employee;


SELECT
    *
FROM
    employee;

-- How many unique age values in the table??

SELECT
    COUNT(DISTINCT (age)) AS total_unique_ages
FROM
    employee;

-- Increment salary of each employee by 20% and display final result with new salary
SELECT
    id,
    name,
    salary AS old_salary,
    (salary + salary * 0.2) AS new_salary
FROM
    employee;


-- Syntax for update command
SELECT
    *
FROM
    employee;

-- Upadtes will be made for all rows
UPDATE employee
SET
    age = 20;

SELECT
    *
FROM
    employee;

-- update the salary of employee after giving 20% increment
UPDATE employee
SET
    salary = salary + salary * 0.2;

SELECT
    *
FROM
    employee;


-- How to filter data using WHERE Clauses
SELECT
    *
FROM
    employee
WHERE
    hiring_date = '2021-08-10';


SELECT
    *
FROM
    employee;

-- Update the salary of employees who joined the company on 2021-08-10 to 80000
UPDATE employee
SET
    salary = 80000
WHERE
    hiring_date = '2021-08-10';

SELECT
    *
FROM
    employee;


-- how to delete specific records from table using delete command
-- delete records of those employess who joined company on 2021-08-10

DELETE FROM employee
WHERE
    hiring_date = '2021-08-10';


SELECT
    *
FROM
    employee;

-- How to apply auto increment
CREATE TABLE auto_inc_exmp (
    id INT AUTO_INCREMENT,
    name VARCHAR(20),
    PRIMARY KEY (id)
);

insert into auto_inc_exmp(name) values('Shashank');
insert into auto_inc_exmp(name) values('Rahul');

SELECT
    *
FROM
    auto_inc_exmp;

-- Use of limit
SELECT
    *
FROM
    employee;
SELECT
    *
FROM
    employee
LIMIT 2;


-- sorting data in mysql by using 'Order By'
SELECT
    *
FROM
    employee;

-- arrage data in ascending order
SELECT
    *
FROM
    employee
ORDER BY name;


-- arrage data in descending order
SELECT
    *
FROM
    employee
ORDER BY name DESC;

-- display employee data in desc order of salary and if salaries are same for more than one employees
-- arrange their data in ascedinding order of name

SELECT
    *
FROM
    employee
ORDER BY salary DESC , name ASC;

-- when we ignore multilevel ordering
SELECT
    *
FROM
    employee
ORDER BY salary DESC;

-- Write a query to find the employee who is getting maximum salary?
SELECT
    *
FROM
    employee
ORDER BY salary DESC
LIMIT 1;


-- Write a query to find the employee who is getting minium salary?
SELECT
    *
FROM
    employee
ORDER BY salary
LIMIT 1;


SELECT
    *
FROM
    employee
WHERE
    name LIKE 'S%';

-- Print names with 5 characters only
SELECT
    *
FROM
    employee
WHERE
    CHAR_LENGTH(name) = 5;

-- using regex -> _ (under_score) means one char
SELECT
    *
FROM
    employee
WHERE
    name LIKE '_____';

insert into employee values(10,'Kapil',null,'2021-08-10', 1000, 'Assam');
insert into employee values(11,'Nikhil',30,'2021-08-10', null, 'Assam');

-- filter by nul and not null
SELECT
    *
FROM
    employee
WHERE
    salary IS NOT NULL;
SELECT
    *
FROM
    employee
WHERE
    salary IS NULL;

-- GROUP BY OPERATIONS

CREATE TABLE orders_data (
    cust_id INT,
    order_id INT,
    country VARCHAR(50),
    state VARCHAR(50)
);

desc orders_data;

insert into orders_data values(1,100,'USA','Seattle');
insert into orders_data values(2,101,'INDIA','UP');
insert into orders_data values(2,103,'INDIA','Bihar');
insert into orders_data values(4,108,'USA','WDC');
insert into orders_data values(5,109,'UK','London');
insert into orders_data values(4,110,'USA','WDC');
insert into orders_data values(3,120,'INDIA','AP');
insert into orders_data values(2,121,'INDIA','Goa');
insert into orders_data values(1,131,'USA','Seattle');
insert into orders_data values(6,142,'USA','Seattle');
insert into orders_data values(7,150,'USA','Seattle');

-- find total orders placed in each country
SELECT
    country, COUNT(*) country_wise_orders
FROM
    orders_data
GROUP BY country;


-- 15:35:58	select country,state,count(*) country_wise_orders from orders_data group by country LIMIT 0, 1000	Error Code: 1055. Expression --2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'class_jan_14_db.orders_data.state' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by	0.00075 sec
-- reason : if group by on country then select must be on country only + aggregation function

SELECT
    *
FROM
    employee;

UPDATE employee
SET
    salary = 15000
WHERE
    id = 11;


SELECT
    age, SUM(salary) AS age_group_total_salary
FROM
    employee
GROUP BY age;

SELECT
    age,
    SUM(salary),
    MAX(salary),
    MIN(salary),
    AVG(salary),
    COUNT(*)
FROM
    employee
GROUP BY age;

-- for each country per state wise
SELECT
    country, state, COUNT(*) AS state_wise_orders
FROM
    orders_data
GROUP BY country , state
ORDER BY country;


SELECT
    country, state, COUNT(*) AS state_wise_orders
FROM
    orders_data
GROUP BY country , state
HAVING COUNT(*) = 1
ORDER BY country;



-- GROUP_CONCAT() -> generates the list of arguments
SELECT
    country,
    GROUP_CONCAT(DISTINCT (state)) AS state_data,
    COUNT(*) AS country_wise_orders
FROM
    orders_data
GROUP BY country;

SELECT
    country,
    GROUP_CONCAT(DISTINCT state
        ORDER BY state DESC
        SEPARATOR ' | ') AS state_data,
    COUNT(*) AS country_wise_orders
FROM
    orders_data
GROUP BY country;


-- NESTED QUERIES
select * from employee where salary > (select salary from employee where name ='Rohit');

-- write a query to find those orders which are placed in seattle or goa
select * from orders_data where state='Seattle' or state='Goa';

select * from orders_data where state in ('Seattle','Goa');
-- 16:31:04	select * from orders_data where state in (select state in orders_data)	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orders_data)' at line 1	0.00029 sec


CREATE TABLE student_marks (
    stu_id INT,
    stu_name VARCHAR(50),
    totat_marks INT
);
insert into student_marks values (1, 'Shashank' ,50);
insert into student_marks values (2, 'Rahul', 91);
insert into student_marks values (3, 'Amit', 74);
insert into student_marks values (4, 'Nikhil',65);
insert into student_marks values (5, 'Rohit', 86);
insert into student_marks values (6, 'Deepak' ,77);

select * from orders_data;

-- Derive a new column to print the continent
SELECT
    *,
    CASE
        WHEN country = 'USA' THEN 'NORTH AM'
        WHEN country = 'INDIA' THEN 'ASIA'
        WHEN country = 'UK' THEN 'EU'
        ELSE 'none'
    END AS continent
FROM
    orders_data;

-- IMPORTANT START

-- write a query to find all customer order data where all coustomers are from same countries
-- as the suppliers
SELECT
    *
FROM
    customer_order_data
WHERE
    cust_country IN (SELECT DISTINCT
            sup_country
        FROM
            supplier_data);

CREATE TABLE tree (
    node INT,
    parent INT
);

insert into tree values (5,8),(9,8),(4,5),(2,9),(1,5),(3,9),(8,null);

SELECT
    *
FROM
    tree;

SELECT
    node,
    CASE
        WHEN
            node NOT IN (SELECT DISTINCT
                    parent
                FROM
                    tree
                WHERE
                    parent IS NOT NULL)
        THEN
            'LEAF'
        WHEN parent IS NULL THEN 'ROOT'
        ELSE 'INNER'
    END AS node_type
FROM
    tree;

-- END

-- TODO : How to Determine the Type of Tree Nodes using SQL? -> an attempt
select node,
case when parent is null then 'Root'
	when node not in (select parent from tree) then 'Leaf'
    else 'Internal' end as type
    from tree;


