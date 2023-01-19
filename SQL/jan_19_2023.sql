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

delete from customers where last_name='George'

