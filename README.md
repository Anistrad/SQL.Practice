# SQL Practice

A collection of SQL exercises and database design solutions developed as part of my journey learning relational databases, showcasing my practical implementation of the concepts learned throughout the Database – Level 1 course.

This repository focuses on applying Entity-Relationship Design (ERD), relational schema conversion, and SQL querying — from fundamentals (DDL, DML, Joins, Group By) to advanced topics like Self Referential relationships — by solving real, structured problem sets.

Each problem set was solved as a hands-on exercise to strengthen my understanding of database design and SQL as a core backend skill.

## 📂 Content Included

### 1️⃣ ERD & Relational Schema

Five independent design problems, each solved by converting a real-world scenario into an Entity-Relationship Diagram, then translating it into a relational schema.

- 🏥 **Clinic**
- 📚 **Library**
- 🥋 **Karate Club**
- 🚗 **Car Rental**
- 🛒 **Online Store**

Each folder includes the exercise question as a PDF file alongside screenshots of the solved ERD.

**Concepts Demonstrated**
- Entity identification and relationship mapping
- Cardinality (1:1, 1:N, N:M)
- Converting ERD into relational schema
- Primary Key / Foreign Key placement
- Handling many-to-many relationships with junction tables

### 2️⃣ DB Problems

Two structured SQL problem sets (`.sql` and organized `.txt` query files), solved on real datasets.

**🚗 Problems 1–50 (VehicleMakesDB)**
Covers SQL fundamentals in order of complexity:
- Views
- Joins
- Logical operators (AND, OR, BETWEEN, IN, LIKE)
- Aggregations (COUNT, SUM, AVG, MIN, MAX)
- GROUP BY / HAVING
- Subqueries and nested queries
- CASE expressions
- Normalization awareness through relational tables (Makes, Models, SubModels, Bodies, DriveTypes, FuelTypes)

**👤 Problems 51–54 (EmployeesDB)**
Focused specifically on Self Referential relationships:
- Joining a table to itself (Employee ↔ Manager)
- INNER JOIN vs LEFT JOIN behavior with self-referencing keys
- Handling NULL values with CASE expressions
- Filtering by a self-joined column

*Note: This section is query-file based and does not include screenshots.*

## 🧱 Problem-Solving Approach

Every SQL problem was approached by first understanding the question in plain language, then breaking it down into the minimal logical steps needed — filtering, joining, grouping, then aggregating — rather than writing one large query from the start.

Several problems include an alternative solution (e.g. solving `HAVING` filters with a subquery instead) to reinforce understanding of *why* a tool works, not just that it works.

## 🛠️ Technologies Used

- **Language:** SQL (T-SQL)
- **Engine:** Microsoft SQL Server
- **Tool:** SQL Server Management Studio (SSMS)

## 🎯 Learning Objectives

These exercises helped strengthen my understanding of:

- Relational database design from real-world scenarios
- Writing efficient, readable SQL queries
- Joins (INNER, LEFT, Self Join) and when to use each
- Aggregate functions and grouped reporting
- Subqueries vs Views vs CTE-style breakdowns
- NULL handling and conditional logic (CASE)
- Query optimization thinking (e.g. filtering before joining when possible)

## 🧠 Concepts Demonstrated

### 🔹 Database Design
- ERD modeling
- Relational schema conversion
- Key constraints

### 🔹 SQL Fundamentals
- DDL (Create, Alter)
- DML (Select, Insert, Update)
- Filtering and pattern matching (LIKE, IN, BETWEEN)

### 🔹 Intermediate SQL
- Multi-table Joins
- Self Referential Joins
- Aggregations with GROUP BY / HAVING
- Subqueries and derived tables
- Views
- CASE-based conditional columns

## 🙏 Acknowledgment

Special thanks to:

**Professor Mohammed Abu-Hadhoud**
**Programming Advices**

for providing one of the best practical learning paths for mastering databases and SQL through real-world problem sets and professional query-writing practices.

⭐ If you find these solutions useful, feel free to star the repository and use it as a reference while learning SQL and database design.
