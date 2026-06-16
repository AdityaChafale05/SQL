# College Placement Portal Database
------

![SQL](https://img.shields.io/badge/SQL-Database-blue)
![DBMS](https://img.shields.io/badge/DBMS-Project-green)
![Normalization](https://img.shields.io/badge/3NF-Normalized-orange)
![Status](https://img.shields.io/badge/Status-InCompleted-success)
## Project Overview

- This project demonstrates the design and implementation of a College Placement Portal Database using SQL.

## SQL Concepts Used

- CREATE TABLE
- ALTER TABLE
- INSERT
- UPDATE
- DELETE
- PRIMARY KEY
- FOREIGN KEY
- UNIQUE
- CHECK
- NOT NULL



## Table Schema 

| Table | Primary Key | Foreign Keys | Key/Attribute Columns |
| :--- | :--- | :--- | :--- |
| **Students** | `student_id` | *None* | `name`, `email`, `phone` |
| **Companies** | `company_id` | *None* | `company_name`, `industry` |
| **Jobs** | `job_id` | `company_id` ➔ `Companies(company_id)` | `title`, `description`, `location` |
| **Applications** | `application_id` | `student_id` ➔ `Students(student_id)` <br> `job_id` ➔ `Jobs(job_id)` | `application_date`, `status` |
| **Interviews** | `interview_id` | `application_id` ➔ `Applications(application_id)` | `interview_date`, `interviewer_name` |
| **Offers** | `offer_id` | `application_id` ➔ `Applications(application_id)` | `salary`, `start_date`, `status` |



erDiagram
    Students ||--|{ Applications : places
    Jobs ||--|{ Applications : requires
    Companies ||--|{ Jobs : posts
    Applications ||--|| Interviews : schedules
    Students ||--|{ Offers : receives
    Companies ||--|{ Offers : extends



  ┌──────────────┐             ┌──────────────┐
  │   Students   │             │  Companies   │
  └──────┬───────┘             └──────┬───────┘
         │ 1                          │ 1
         │                            │
         ├────────────────────────┐   │
         │ 1                      │   │
         │                        │   │ ∞
   ┌─────▼──────┐                 │ ┌─▼──────────┐
   │   Offers   │                 │ │    Jobs    │
   └─────▲──────┘                 │ └─┬──────────┘
         │ ∞                      │   │ 1
         │                        │   │
         ├────────────────────────┘   │ ∞
         │                            │
         │ ∞                    ┌─────▼──────┐
   ┌─────▼──────┐               │Applications│
   │Applications│               └─────┬──────┘
   └─────┬──────┘                     │ 1
         │ 1                          │
         │                            │ 1
   ┌─────▼──────┐               ┌─────▼──────┐
   │ Interviews │               │ Interviews │
   └────────────┘               └────────────

---

## 🏗️ Database Architecture

```text
Students
    │
    ▼
Applications
    │
    ▼
Jobs
    │
    ▼
Companies

Applications
      │
      ▼
 Interviews

Students
      │
      ▼
   Offers
      ▲
      │
Companies
```

---


## 🖼️ Entity Relationship Diagram

![ER Diagram](ER_diagram.png)


---

## 🗃️ Database Schema

### Students

| Column | Data Type |
|----------|----------|
| StudentID | INT |
| FullName | VARCHAR(100) |
| Email | VARCHAR(100) |
| Branch | VARCHAR(50) |
| CGPA | DECIMAL(3,2) |
| GraduationYear | INT |
## Project Structure

placement-portal-database/

├── README.md

├── schema.sql

├── sample_data.sql

├── queries.sql

└── ER_diagram.png

## Learning Outcomes

After completing this project I learned:

- Relational database design
- SQL query writing
- Data normalization
- Joins and subqueries
- Database constraints
- Transaction management

