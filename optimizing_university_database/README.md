# 🎓 University Database Design Project

##  Introduction
As universities grow in complexity, managing academic data efficiently becomes critical. This project focuses on designing a well-structured relational database to handle core academic operations such as student records, course management, instructor assignments, and enrollments. By identifying key entities and their relationships, the system supports accurate tracking of academic progress and enables scalable, efficient data management across departments.

##  Objectives
- Identify core entities and their attributes.
- Define relationships between students, courses, instructors, and programs.
- Create a scalable structure for managing academic records.
- Support future enhancements like graduation checks and academic performance tracking.

##  Entities & Attributes

| Entity     | Attributes                                                  |
|------------|-------------------------------------------------------------|
| Student    | Student_ID, First_Name, Last_Name, DOB, Gender, Major, Enrollment_Year |
| Course     | Course_ID, Course_Name, Department, Credits                 |
| Instructor | Instructor_ID, Instructor_Name, Department                  |
| Enrollment | Enrollment_ID, Student_ID, Course_ID, Semester, Grade      |
| Program    | Program_ID, Program_Name, Duration                          |

##  Relationships
- A **student** can enroll in multiple **courses** (Many-to-Many).
- A **course** can have multiple **students** enrolled (Many-to-Many).
- An **instructor** can teach multiple **courses** (One-to-Many).
- A **program** includes multiple **courses**, and a **student** belongs to one **program** (One-to-Many).
