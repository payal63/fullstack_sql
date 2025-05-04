-- lesson 13
use fullstack;

-- create table student
create table student (
	student_id int primary key,
	first_name varchar(100) not null,
	last_name varchar(100) not null,
	class int,
	age int);

-- create table marksheet
create table marksheet(
	score int,
	year int, 
	ranking int, 
	class int, 
	student_ID int); 


-- insert data into student table
insert into fullstack.student (
	student_id ,first_name ,last_name ,class ,age )
	values (1,"krishna", "gee", 10, 18),
	(2,"Stephen", "Christ", 10, 17),
	(3,"kailash", "kumar", 10, 18),
	(4,"ashish", "jain", 10, 16),
	(5,"khusbu", "jain", 10, 17),
	(6, "madhan", "lal", 10, 16),
	(7, "saurab", "kothari", 10, 15),
	(8, "vinesh", "roy", 10, 14),
	(9,"rishika", "r", 10, 15),
	(10, "sara", "rayan", 10, 16),
	(11, "rosy", "kumar", 10, 16);


-- insert data into marksheet table
insert into fullstack.marksheet (
	score,year,ranking,class,student_ID )
	values (989, 2014, 1, 10, 1),
	(454, 2014, 10, 10, 2),
	(880, 2014, 4, 10, 3),
	(870, 2014, 5, 10, 4),
	(720, 2014, 7, 10, 5),
	(670, 2014, 8, 10, 6),
	(900, 2014, 3, 10, 7),
	(540, 2014, 9, 10, 8),
	(801, 2014, 6, 10, 9),
	(420, 2014, 11,10, 10),
	(970, 2014, 2, 10, 11),
	(720, 2014, 12,10,12);

-- Write a query to display the student ID and first name of every student
-- in the students table whose age is greater than or equal to 16 and whose last name is Kumar 

select student_id,first_name,last_name,age
from fullstack.student
where age >= 16 and last_name ="kumar";


-- Write a query to display the details of every student from the marksheet table 
-- whose score is between 800 and 1000 
select m.score , s.*
from fullstack.marksheet m
inner join fullstack.student s on m.student_ID =s.student_id
where score between 800 and 1000 ;


-- Write a query to increase the score in the marksheet table by five and 
-- create a new score column to display this new score 

select *,score+5 as new_score
from fullstack.marksheet m ;

-- Write a query to display the marksheet table in descending order of the score 
select * from  fullstack.marksheet m 
order by score  desc;

-- Write a query to display the details of every student whose first name starts with an ‘s’ 
select *
from fullstack.student s 
where first_name like "s%";

