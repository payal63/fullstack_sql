# 🎓 Student Database Management and Analysis using SQL

This project focuses on designing, managing, and analyzing a student database using SQL. The primary objective is to build a relational database system that efficiently stores student information and their academic scores. By performing a series of SQL operations, the project simulates real-world database administration tasks in an educational setting.

---

## 📁 Project Overview

You will work with two CSV datasets:

- `student_datasets.csv`
- `marksheet_datasets.csv`

Using these datasets, the following tasks are performed:

1. **Create the `students` table**  
   - Fields: `student_id`, `first_name`, `last_name`, `class`, `age`  
   - Constraints: `student_id`, `first_name`, and `last_name` are `NOT NULL`  
   - Primary Key: `student_id`

2. **Create the `marksheet` table**  
   - Fields: `score`, `year`, `ranking`, `class`, `student_id`

3. **Insert values** into both tables based on the CSV data.

4. **Query Tasks**:
   - Retrieve `student_id` and `first_name` of students aged **16 or older** with the last name **'Kumar'**
   - Display all students from the `marksheet` table with scores **between 800 and 1000**
   - Add 5 to each score and create a **new column** for the updated score
   - Show the `marksheet` table in **descending order of score**
   - Display details of students whose **first name starts with 'S'**

---

## 🧰 Skills and Concepts Applied

- SQL Table Creation with Constraints
- Data Insertion from CSV Files
- Conditional Filtering (`WHERE`, `BETWEEN`, `LIKE`)
- Data Update and Column Computation
- Sorting and Ordering Results
- Pattern Matching with `LIKE`
- Primary Keys and Data Integrity

---

## 📦 Technologies Used

- SQL (PostgreSQL or MySQL compatible syntax)
- CSV File Parsing
- SQL Joins, Subqueries, and Set Operations (as referenced in training)

---

## 📊 Outcome

By the end of this project:

- Designed and implemented a structured student and marksheet database
- Written queries for extracting meaningful academic insights
- Practiced key SQL techniques essential for database administration and reporting in educational institutions
