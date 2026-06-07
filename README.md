## Table Schema 

| Table | Primary Key | Foreign Keys | Key/Attribute Columns |
| :--- | :--- | :--- | :--- |
| **Students** | `student_id` | *None* | `name`, `email`, `phone` |
| **Companies** | `company_id` | *None* | `company_name`, `industry` |
| **Jobs** | `job_id` | `company_id` ➔ `Companies(company_id)` | `title`, `description`, `location` |
| **Applications** | `application_id` | `student_id` ➔ `Students(student_id)` <br> `job_id` ➔ `Jobs(job_id)` | `application_date`, `status` |
| **Interviews** | `interview_id` | `application_id` ➔ `Applications(application_id)` | `interview_date`, `interviewer_name` |
| **Offers** | `offer_id` | `application_id` ➔ `Applications(application_id)` | `salary`, `start_date`, `status` |
