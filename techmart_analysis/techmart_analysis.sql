-- techmart sales analysis

create database sqlbasics;

use  sqlbasics;

create table products(
	product_id int primary key,
    product_name varchar(50),
    category varchar(50));
    
insert into sqlbasics.products values
 (1,"laptop","electronics"),
 (2,"smartphones","electronics"),
 (3,"coffee maker","appliances"),
 (4,"running shoes","apparel");
 
 create table sale
 (sale_id int primary key,
 product_id int,
 sale_date date,
 quantity_sold int);
 
 insert into sqlbasics.sale values
 (1,1,"2023-01-15",10),
 (2,2,"2023-02-20",15),
 (3,3,"2023-03-10",5),
 (4,1,"2023-01-20",8),
 (5,4,"2023-04-05",12);
 
 select * from sqlbasics.products;
 select * from sqlbasics.sale;
 
 -- Calculate the total sales for each product
 select distinct p.product_name,
 sum(quantity_sold) over (partition by product_name) as product
 from sqlbasics.products p
 inner join sqlbasics.sale s on p.product_id = s.product_id;
 
 -- Analyze the monthly sales trend over the past year
 select distinct monthname(sale_date) as month,
sum(quantity_sold) over(partition by month(sale_date)) as sales
 from sqlbasics.sale;
 
 -- Identify the top N products with the highest total sale
 -- top 1st product
 with cte as
 (
  select p.product_name as product,s.quantity_sold as quantity,
  sum(quantity_sold) over (partition by product_name ) as sale
 from sqlbasics.products p
 inner join sqlbasics.sale s on p.product_id = s.product_id)
 select distinct product,sale,
 rank() over ( order by sale desc)as rn
 from cte
 limit 1
 ;

-- top 5 products
 with cte as
 (
  select p.product_name as product,s.quantity_sold as quantity,
  sum(quantity_sold) over (partition by product_name ) as sale
 from sqlbasics.products p
 inner join sqlbasics.sale s on p.product_id = s.product_id)
 select distinct product,sale,
 rank() over ( order by sale desc)as rn
 from cte
 limit 5
 ;

