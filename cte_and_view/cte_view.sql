select *
from fullstack.student;

select *
from fullstack.course;

use fullstack;
create table instructors(
instructor_id int primary key,
instructor_name varchar(50),
department varchar(50));

insert into fullstack.instructors values
(201, "Dr.adams", "computer science"),
(202, "Dr.baker", "economics"),
(203, "Dr.clark", "physics"),
(204, "Dr.davis", "mathematics"),
(205, "Dr.evans", "biology");

select * from fullstack.instructors;

drop table if exists enrolments;
create table enrolments(
enrolment_id int primary key,
student_id int,
course_id int,
semester varchar(50),
grade varchar(10));

insert into enrolments values
(301, 1, 101, "fall 2023", "A"),
(302, 2, 102, "fall 2023", "B"),
(303, 3, 103, "fall 2023", "C"),
(304, 4, 104, "fall 2023", "D"),
(305, 5, 105, "fall 2023", "E");
select * from fullstack.enrolments;

-- Create a view named CourseSummary that shows the total number of students enrolled in each course
create view coursesummary as
(
select s.student_id as student_id,s.first_name as first_name,s.last_name as last_name,c.course_name as course_name
from course c inner join
enrolments e on c.course_id = e.course_id
inner join student s on e.student_id=s.student_id);

select * from coursesummary;

-- create view instructorscheddule
create view instructorschedule as
(
select i.instructor_name as instructor_name, c.course_name as course_name, c.department as department
from instructors i
inner join course c on i.department=c.department );

select * from instructorschedule;

-- Modify CourseSummary
-- Modify the CourseSummary view to list the distinct semesters each course was offered, along with the total student enrolment

CREATE OR REPLACE VIEW fullstack.coursesummary AS
select 
distinct e.semester,
c.course_name,
count(student_id)as total_enrolment
from course c
inner join enrolments e on c.course_id=e.course_id
group by c.course_name,e.semester;

select *
from coursesummary;

-- Update InstructorSchedule
-- Update InstructorSchedule to show only courses for the current semester

select * from instructorschedule;

create or replace view fullstack.instructorschedule as
select 
e.semester,
c.course_name
from enrolments e
inner join course c on e.course_id=c.course_id;

select * from instructorschedule;

-- Create a view EligibleGraduates
-- Create a view EligibleGraduates that lists students eligible for graduation whose GPA is greater than or equal to 3.7

create view eligiblegraduates as
select *
from student
where GPA >= 3.7;

select * 
from eligiblegraduates; 

-- Alter EligibleGraduates
-- Alter EligibleGraduates to include students' GPAs

create or replace view  eligiblegraduates as
select GPA
from student;

select *
from  eligiblegraduates; 

-- Rename CourseSummary
create view CourseEnrolmentSummary as
select * 
from coursesummary;

select * 
from CourseEnrolmentSummary;

-- Drop EligibleGraduates
-- Drop View EligibleGraduates

drop view eligiblegraduates; 

-- Create a CTE named SemesterCourses to list all courses offered in the current semester

with cte as
(
select 
e.semester,
c.course_name
from enrolments e
inner join course c on e.course_id=c.course_id)
select *
from cte;
