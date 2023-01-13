CREATE DATABASE test;

select DATABASE();

use test;

create table if not exists employee_with_constraints(
    id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(50) NOT NULL,
    salary DOUBLE,
    hiring_date DATE,
    check (salary>1000)
);

SHOW TABLES;

INSERT INTO employee_with_constraints VALUES(NULL,'Amit',3000,'2021-09-05');
SELECT * FROM employee_with_constraints;
INSERT INTO employee_with_constraints VALUES(NULL,'Kishan',10200,'2022-09-05');
DESC employee_with_constraints;


CREATE Table if not exists employees_with_constraints_tmp(
    id INT NOT NULL ,
    name VARCHAR(50),
    salary DOUBLE,
    hiring_date DATE DEFAULT '2022-10-22',
    constraint unique_id UNIQUE(id),
    constraint salary_check check(salary>2000)
);

insert into employees_with_constraints_tmp VALUES(1,'Minz',10110,'2020-09-22');
select * from employees_with_constraints_tmp;
show create table employees_with_constraints_tmp;

CREATE table if not exists employees(
    id INT,
    name VARCHAR(50),
    address varchar(100),
    city VARCHAR(50)
);

insert into employees value(1,'Sash','RPJM','Lucknow');

SELECT * FROM employees;

alter table employees add DOB DATE;
show create table employees;

ALTER Table employees MODIFY COLUMN name varchar(100);

-- Delete existing colum from a TABLE
alter table employees DROP COLUMN city;

-- Change column name
alter table employees rename column name to full_name;

TRUNCATE TABLE employees; -- Clears all the rows from the Table
DROP TABLE employees; -- Deletes the table completely from the database
select * from employees;

CREATE table if not exists employees(
    id INT,
    name VARCHAR(50),
    age INT,
    address varchar(100),
    hiring_date date DEFAULT '2022-10-12',
    city VARCHAR(50)
);

-- Apply unique constraints for id COLUMN
alter table employees add constraint id_unique UNIQUE(id);
SHOW CREATE TABLE employees;

INSERT INTO employees VALUES(1,'test1',23,'Bangaluru','2022-10-10','Bangalore');
INSERT INTO employees VALUES(2,'test2',33,'Bangaluru','2022-10-10','Bangalore');
INSERT INTO employees VALUES(3,'test3',44,'Bangaluru','2022-10-10','Bangalore');
INSERT INTO employees VALUES(4,'test4',21,'Bangaluru','2022-10-10','Bangalore');
INSERT INTO employees VALUES(5,'test5',19,'Bangaluru','2022-10-10','Bangalore');

select * from employees;

alter table employees add COLUMN salary int;
alter table employees add constraint check_salary check(salary>25000);
insert into employees(salary) values(26000); -- This will add a new row in tabl emeployees

update employees set salary = 123456 where id in (1,2,3,4,5);

delete from employees where salary=26000;

create table customers (
    cust_id INT, name VARCHAR(50), age INT, constraint pk PRIMARY KEY (cust_id)
);

create table orders(
    order_id INT,amount FLOAT, customer_id INT,
    constraint fk FOREIGN KEY (customer_id) REFERENCES customers(cust_id)
);


select count(DISTINCT(city)) as unique_values from employees;

-- Write a query to display data with old and new salary after 20 % bonus addtion
-- columns which should be included in the output.
select id, name, salary as old_salary, (salary*.20+salary) as new_salary from employees;