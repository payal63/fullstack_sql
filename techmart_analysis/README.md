# 🛒 TechMart Sales Performance Analysis using SQL

TechMart, a leading retail company, is aiming to optimize its sales performance by leveraging structured data analysis. This project focuses on building a foundational SQL database and applying **window functions** and **ranking techniques** to evaluate product-level performance and monthly sales trends.

Through the creation of `Products` and `Sales` tables within a dedicated `sqlbasics` database, the analysis seeks to provide insights into top-performing products, purchasing patterns over time, and overall revenue contributors. These insights are key to driving **data-informed decisions** that enhance customer satisfaction, maximize revenue, and improve inventory and product strategy.

---

## 📁 Project Objectives

- Create a SQL database named `sqlbasics`
- Build and populate the following tables:
  - `Products` table with fields: `product_id`, `product_name`, `category`
  - `Sales` table with fields: `sale_id`, `product_id`, `sale_date`, `quantity_sold`
- Perform sales analysis using SQL queries, focusing on:
  - **Total sales per product** using `SUM() OVER` window function
  - **Monthly sales trends** using date-based aggregation and window functions
  - **Top N best-selling products** using `ROW_NUMBER()` or `RANK()`

---

## 🧰 Skills and Concepts Applied

- SQL Database and Table Creation
- Data Insertion into Relational Tables
- Use of Window Functions (`SUM() OVER`, `RANK()`, `ROW_NUMBER()`)
- Sales Data Aggregation and Trend Analysis
- Ranking and Filtering for Top Performers
- Real-world business analysis and decision support

---

## 🧪 Technologies Used

- SQL (compatible with MySQL, PostgreSQL, or SQLite)
- SQL client tool (e.g., MySQL Workbench, pgAdmin, DB Browser)
