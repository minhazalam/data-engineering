-- Create a new database
create database shirts_db;

-- Show databases
show databases;

-- Use created database -> shirts_db
use shirts_db;

-- Check selected database
select database();

show tables;

-- Create table shirts
create table shirts(
	shirt_id int primary key auto_increment,
    article varchar(200) not null,
    color varchar(50) not null,
    shirt_size varchar(3) not null,
    last_worn int not null
);

-- Drop table
drop table shirts;
desc shirts;

-- Insert values in shirts table
insert into shirts(article,color,shirt_size,last_worn) values
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

-- Show all the rows in shirts table
select * from shirts;


-- Select all shirts but only print out article and color
select article,color from shirts;

-- Select all medium shirts print out everything but shirt_id
select article,color,shirt_size,last_worn
from shirts
where shirt_size='M';

-- Update all polo shirts change their size to L
update shirts set shirt_size='L' where article='polo shirt';
commit;
select * from shirts;

-- Update shirts last worn 15 days ago and change last_worn to 0
update shirts set last_worn=0 where last_worn=15;

-- Delete all old shirts, last worn 200 days ago
delete from shirts where last_worn=200;

-- Delete all ank tops
delete from shirts where article='tank top';

-- Delete all shirts
delete from shirts;

-- Drop the entire shirts table 
drop table shirts;