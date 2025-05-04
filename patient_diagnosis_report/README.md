# 🏥 Hospital Patient Diagnosis Management using SQL

This project involves designing and managing a SQL-based database system to store, retrieve, and manipulate patient diagnosis records in a hospital setting. The goal is to create a well-structured table that holds patient and doctor information, allowing healthcare staff to maintain accurate, up-to-date records for effective patient care and health monitoring.

Through this project, various SQL operations such as **table creation**, **data insertion**, **aggregation**, **string manipulation**, and **date extraction** are practiced. These operations help in generating meaningful insights from the data, improving administrative processes, and supporting clinical decision-making.

---

## 📁 Project Objectives

- Design a `patients` table with fields:
  - `date`, `patient_id`, `patient_name`, `age`, `weight`, `gender`, `location`, `phone_number`, `disease`, `doctor_name`, `doctor_id`

- Insert patient records into the table

- Perform key SQL queries to:
  - Display the total number of patients
  - Show patient names along with the current date
  - Convert patient names to uppercase
  - Count the number of characters in patient names
  - Combine patient and doctor names into a single column
  - Extract the year from the diagnosis date
  - Identify duplicate entries in the `doctor_name` column

---

## 🧰 Skills and Concepts Applied

- SQL Table Creation with Data Types and Constraints
- Inserting and Updating Records
- Aggregation (`COUNT`)
- String Functions (`UPPER`, `LENGTH`, `CONCAT`)
- Date Functions (`CURRENT_DATE`, `EXTRACT`)
- Duplicate Detection using `GROUP BY` and `HAVING`

---

## 📦 Technologies Used

- SQL (PostgreSQL or MySQL syntax)
- CSV or manual data entry for table population
