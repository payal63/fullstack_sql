-- create database

use SQLbasics;

-- create product,customer,sales table
create table product
(product_code int primary key,
product_name varchar(50),
price int,
stock int,
category varchar(60));

drop table if exists customer;
create table customer
(customer_id int primary key,
name varchar(60),
location varchar(60),
phone_number varchar(10));

drop table if exists sales;
create table sales
(order_date date,
order_no varchar(20),
c_id int,
c_name varchar(50),
product_code int,
product_name varchar(60),
quantity int,
price int);

-- write a query inser value into product,customer,sales table

insert into product values
(1,"pen",10,30,"stationary"),
(2,"apple",30,52,"fruit"),
(3,"sketchpen",20,40,"stationary"),
(4,"banana",5,35,"fruit");

insert into customer values
(1,"jaya","texas",3424565423),
(2,"mika","michigan",5467327698),
(3,"priya","new york",3456432643);

insert into sales values
("2024-04-22",1,23,"pen",3,10),
("2024-05-03",2,22,"sketchpen",2,20),
("2024-03-20",3,11,"apple",3,30);

-- modify sales table by adding and deleteing columns

alter table sales
add column serial_numbers int,
add column category varchar(50);

alter table sales
drop column serial_numbers,
drop column category;

-- Rename the customer table to customer details

alter table customer rename to customer_detais;

alter table customer_detais rename to customer_details;

-- Click on Schemas, expand the Tables columns, then right click on the particular table and import the dataset

-- first truncate all table

truncate table product ;
truncate table customer_details ;
truncate table sales ;

select * from product ;
alter table product 
drop column p_code,
drop column p_name;

select * from  product ;
select * from customer_details;

select * from sales;

-- Write a query to display the order ID, customer ID, order date, price, and quantity columns of the sales table

select order_no as order_id,c_id,order_date,price,quantity
from sqlbasics.sales;

-- Write a query to show details from the product table where the category is stationary
select *
from sqlbasics.product 
where category ="stationary";

-- Write a query to display the unique categories in the product table

select distinct category
from sqlbasics.product ;

-- Write a query to display the product details in descending order of price
select *
from sqlbasics.product 
order by price desc ;

-- Write a query to display the product code and category from categories that have one or more products
select distinct product_code,category,product_name 
from sqlbasics.product ;