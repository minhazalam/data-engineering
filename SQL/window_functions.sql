create database winndow_functions;
show databases;
use winndow_functions;

show tables;

CREATE TABLE employees (
    emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT
);
 
INSERT INTO employees (department, salary) VALUES
('engineering', 80000),
('engineering', 69000),
('engineering', 70000),
('engineering', 103000),
('engineering', 67000),
('engineering', 89000),
('engineering', 91000),
('sales', 59000),
('sales', 70000),
('sales', 159000),
('sales', 72000),
('sales', 60000),
('sales', 61000),
('sales', 61000),
('customer service', 38000),
('customer service', 45000),
('customer service', 61000),
('customer service', 40000),
('customer service', 31000),
('customer service', 56000),
('customer service', 55000);

SELECT 
    department, AVG(salary)
FROM
    employees
GROUP BY department;

select emp_no,department,salary,
avg(salary) over(partition by department) as avg_salary,
max(salary) over(partition by department) as max_salary,
min(salary) over(partition by department) as min_salary
from employees
order by 1;

select emp_no, department, salary,
sum(salary) over(partition by department order by salary desc)
from employees;

select emp_no, department, salary,
row_number() over(partition by department order by salary desc) as dept_row_number,
rank() over(partition by department order by salary desc) as rank_dept_wise,
rank() over(order by salary desc) as over_all_rank,
dense_rank() over(order by salary desc) as dense_rank_salry,
row_number() over(order by salary desc) as company_row_number
from employees order by salary desc;

-- NTILE
select emp_no, department, salary,
ntile(5) over(order by salary desc) as comp_wise_quartile,
ntile(5) over(partition by department order by salary desc) as dept_wise_quartile
from employees;

-- LEAD AND LAG
select emp_no, department,salary,
lag(salary) over(order by salary desc),
lead(salary) over(order by salary desc)
from employees;



















