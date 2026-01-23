📚 Library Management System – Database Design
📌 Aim

To design and implement a Library Management System database using appropriate tables, primary keys, foreign keys, and constraints, and to perform DML operations along with DCL commands such as role creation, privilege granting, and revoking to ensure database security.

🛠️ Technologies Used

Database: PostgreSQL / SQL-compliant RDBMS

Language: SQL

🗂️ Database Schema Overview

The system consists of the following tables:

BOOKS

LIBRARY_VISITOR_USER

BOOK_ISSUE

Additionally, roles and privileges are managed using SQL DCL commands.

📘 Table Descriptions
1️⃣ BOOKS Table

Stores details of books available in the library.

Column Name	Data Type	Constraints
ID	INT	Primary Key
NAME	VARCHAR(20)	NOT NULL
AUTHOR_NAME	VARCHAR(20)	NOT NULL
COUNT	INT	CHECK (COUNT ≥ 1)

✔ Ensures that at least one copy of a book exists.

2️⃣ LIBRARY_VISITOR_USER Table

Stores information about users visiting the library.

Column Name	Data Type	Constraints
USER_ID	INT	Primary Key
USER_NAME	VARCHAR(20)	—
AGE	INT	NOT NULL, CHECK (AGE ≥ 17)
EMAIL	VARCHAR(30)	UNIQUE

✔ Ensures only users aged 17 or above can register.
✔ Prevents duplicate email registrations.

3️⃣ BOOK_ISSUE Table

Tracks books issued to users.

Column Name	Data Type	Constraints
BOOK_ISSUE_ID	INT	Primary Key
BOOK_ID	INT	Foreign Key → BOOKS(ID)
USER_ID	INT	Foreign Key → LIBRARY_VISITOR_USER(USER_ID)
BOOK_ISSUE	DATE	NOT NULL

✔ Maintains referential integrity between books and users.

🔗 Relationships

One Book can be issued multiple times.

One User can issue multiple books.

Foreign keys ensure valid book and user references.

✏️ DML Operations Performed

INSERT – Add new books, users, and issue records

UPDATE – Modify book counts and user email details

SELECT – Retrieve data from tables

🔐 DCL (Data Control Language)
👤 Role Creation

A librarian role is created to manage library data:

CREATE ROLE LIBRARIAN_1
WITH LOGIN PASSWORD 'password123';

✅ Granting Privileges

The librarian is granted permissions to manage data:

GRANT SELECT, INSERT, DELETE, UPDATE ON BOOKS TO LIBRARIAN_1;
GRANT SELECT, INSERT, DELETE, UPDATE ON BOOK_ISSUE TO LIBRARIAN_1;
GRANT SELECT, INSERT, DELETE, UPDATE ON LIBRARY_VISITOR_USER TO LIBRARIAN_1;

❌ Revoking Privileges

Access can be restricted when required:

REVOKE SELECT, INSERT, DELETE, UPDATE ON BOOKS FROM LIBRARIAN_1;

🎯 Key Features

Strong data integrity using constraints

Proper normalization

Secure access through roles and privileges

Efficient tracking of book issues

Scalable database design

📌 Conclusion

This project demonstrates a well-structured Library Management System database with effective use of DDL, DML, and DCL commands. It ensures data accuracy, security, and maintainability, making it suitable for real-world library applications.