-- patient dignosis report

use fullstack;

-- Create a patients table with fields like date, patient ID, name, age, weight, gender,
--  location, phone number, disease, doctor's name, and doctor ID. 

create table patients1 (
	 date date, 
	 patient_ID varchar(20) primary key, 
	 patient_name varchar(50), 
	 age int, 
	 weight int, 
	 gender varchar(20), 
	 location varchar(30), 
	 phone_number int(20), 
	 disease varchar(50), 
	 doctor_name varchar(50), 
	 doctor_ID int
); 

-- insert value in the table
insert into patients1 (
	date, patient_id, patient_name, age, weight, gender, location, phone_number, disease, doctor_name, doctor_id)
	values
	("2019-06-15", "AP2021", "Sarath", 67, 76, "Male","Chennai", 5462829, "Cardiac", "Mohan", 21),
	("2019-02-13", "AP2022", "John", 62, 80, "Male", "banglore", 1234731, "Cancer", "Suraj", 22),
	("2018-01-08", "AP2023" ,"Henry", 43, 65, "Male", "Kerala", 9028320, "Liver", "Mehta", 23),
	("2020-02-04", "AP2024", "Carl", 56, 72, "Female", "Mumbai", 9293829, "Asthma", "Karthik", 24),
	("2017-09-15", "AP2025", "Shikar", 55, 71, "Male", "Delhi", 7821281, "Cardiac", "Mohan", 21),
	("2018-07-22", "AP2026", "piysuh", 47, 59, "Male", "Haryana", 8912819, "Cancer", "Suraj", 22),
	("2017-03-25", "AP2017", "Stephen", 69, 55, "Male", "Gujarat", 8888211, "Liver", "Mehta", 23),
	("2019-04-22", "AP2028", "Aaron", 75, 53, "Male", "Banglore", 9012192, "Asthma", "Karthik", 24);
	
select *
from fullstack.patients1 p ;

-- Display the total number of patients in the table.
select count(patient_id)
from fullstack.patients1 p ;


-- displaying patient names with the current date
select patient_ID ,patient_name, curdate() 
from fullstack.patients1 p ;

-- Write a query to display the old patient name and the new patient name in uppercase
select patient_name as old_patient_name,upper(patient_name)as new_patient_name
from fullstack.patients1 p ;

-- Write a query to display the patients' names along with the total number of characters in their name
select patient_name, length(patient_name)as number_of_character
from fullstack.patients1 p ;

-- Write a query to combine the patient's name and the doctor's name in a new column
select patient_name, doctor_name, concat(patient_name," ",doctor_name) as new_column
from fullstack.patients1 p ;

-- Write a query to extract the year for a given date and place it in a separate column
select date, year(date)
from fullstack.patients1 p ;

-- Write a query to display duplicate entries in the doctor name column
select distinct doctor_name
from fullstack.patients1 p ;

