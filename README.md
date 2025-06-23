# ElevateLabs_Task1
Author - Darji Chintankumar Dineshchandra
# Library Management System – PostgreSQL

##  Objective
Design and implement a PostgreSQL relational database for a library system. The system tracks authors, book categories, books, library members, and book loans. It includes both schema creation and sample data insertion.


## 🛠️ Technologies Used

- PostgreSQL
- pgAdmin / psql CLI
- SQL

---
Refer to libraryDB.sql
##  Database: `libraryDB`

### Step 1: Create Database

--sql
<br>
CREATE DATABASE libraryDB;


---Connect to database
<br>
--Refer to libraryTablesSchema.sql
##  Tables in the Schema

### 1. `authors_tb`
Stores information about book authors.

| Column         | Type         | Description                   |
|----------------|--------------|-------------------------------|
| auth_id        | SERIAL       | Primary key                   |
| auth_Name      | VARCHAR(100) | Author's name (NOT NULL)      |
| auth_Details   | TEXT         | Brief biography               |
| areated_date   | DATE         | Default: `CURRENT_DATE`       |

---

### 2. `categories_tb`
Represents book genres or types.

| Column         | Type         | Description                   |
|----------------|--------------|-------------------------------|
| cat_id         | SERIAL       | Primary key                   |
| cat_Name       | VARCHAR(50)  | Unique category name          |
| created_date   | DATE         | Default: `CURRENT_DATE`       |

---

### 3. `books_tb`
Book details and inventory.

| Column           | Type         | Description                        |
|------------------|--------------|------------------------------------|
| bk_id            | SERIAL       | Primary key                        |
| title            | VARCHAR(150) | Book title                         |
| sr_no            | VARCHAR(13)  | Unique serial/ISBN number          |
| published_year   | INT          | Must be ≥ 1500                     |
| auth_id          | INT          | FK → `authors_tb`                  |
| cat_id           | INT          | FK → `categories_tb`               |
| available_copies | INT          | Defaults to 1, minimum 0           |
| total_copies     | INT          | Defaults to 1, minimum 0           |
| create_date      | DATE         | Default: `CURRENT_DATE`            |

---

### 4. `members_tb`
Registered library members.

| Column      | Type         | Description                      |
|-------------|--------------|----------------------------------|
| memb_id     | SERIAL       | Primary key                      |
| memb_name   | VARCHAR(100) | Member's full name               |
| email       | VARCHAR(100) | Unique email address             |
| phone       | VARCHAR(15)  | Contact number                   |
| address     | VARCHAR(200) | Mailing address                  |
| join_date   | DATE         | Default: `CURRENT_DATE`          |
| is_active   | BOOLEAN      | Default: `TRUE`                  |
| create_date | DATE         | Default: `CURRENT_DATE`          |

---

### 5. `loans_tb`
Tracks borrowed books and their status.

| Column      | Type        | Description                        |
|-------------|-------------|------------------------------------|
| loan_id     | SERIAL      | Primary key                        |
| memb_id     | INT         | FK → `members_tb`                  |
| bk_id       | INT         | FK → `books_tb`                    |
| loan_date   | DATE        | Default: `CURRENT_DATE`            |
| due_date    | DATE        | Expected return date               |
| return_date | DATE        | Actual return date (nullable)      |
| status      | VARCHAR(10) | Must be 'borrowed', 'returned', or 'overdue' |
| create_date | DATE        | Default: `CURRENT_DATE`            |

---
<br>
Refer to `Insert_Lib_Tables_Data.sql` for full insert statements.
<br>
##  Sample Data Insertion

Sample data is inserted into all five tables including:

- 10 Authors
- 10 Categories
- 10 Books
- 10 Members
- 10 Loan records





