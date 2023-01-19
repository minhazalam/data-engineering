-- RELATIONSHIP BASICS
-- 1:M
-- M:M

CREATE DATABASE shop;
use shop;

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50)
);
 
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

show tables;
 
INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
       
       
       
insert into orders(order_date,amount,customer_id) values('2023-01-19',123.990,3); 

select * from orders where customer_id in (select id from customers where first_name='Boy');

SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        JOIN
    orders ON orders.customer_id = customers.id;

SELECT 
    first_name, last_name, SUM(amount) AS total_sell
FROM
    customers
        JOIN
    orders ON orders.customer_id = customers.id
GROUP BY first_name , last_name
ORDER BY total_sell;

-- left join
select first_name,last_name,order_date,amount from customers left join orders on orders.customer_id = customers.id; -- group by first_name,last_name;

-- ifnull()
SELECT 
    first_name, last_name, IFNULL(SUM(amount), 0) AS total
FROM
    customers
        LEFT JOIN
    orders ON orders.customer_id = customers.id
GROUP BY first_name , last_name
ORDER BY total;


alter table orders
drop  FOREIGN KEY customer_id;

delete from customers where last_name='George';

-- EXERCISE : JOINS
-- SCHEMAS
create table students(id int primary key auto_increment,first_name varchar(50));
create table papers(title varchar(100),grade tinyint,student_id int,
 foreign key (student_id) references students(id) on delete cascade);

-- insert data
INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);


select first_name, title, grade from students join papers on papers.student_id=students.id;

select first_name, title, grade from students left join papers on papers.student_id=students.id;

select first_name, ifnull(title,'MISSING'), IFNULL(grade,0) from students left join papers on papers.student_id=students.id;
-- group by first_name,title,grade;

SELECT 
    first_name,
    IFNULL(AVG(grade), 0) AS average,
    CASE
        WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'PASSING'
        ELSE 'FAILING'
    END AS passing_status
FROM
    students
        LEFT JOIN
    papers ON papers.student_id = students.id
GROUP BY first_name
ORDER BY average DESC;










