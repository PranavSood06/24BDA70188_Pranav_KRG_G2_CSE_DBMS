# Library Management System Database

## Aim

To design and implement a Library Management System database using appropriate tables, primary keys, foreign keys, and constraints, and to perform DML operations along with DCL commands such as role creation, privilege granting, and revoking to ensure database security.

## Overview

This project demonstrates the creation and management of a relational database for a library system. It includes:

* Book management
* Library visitor (user) management
* Book issue tracking
* Role-based access control using SQL DCL commands

The database is designed with data integrity, normalization, and security in mind.

## Database Schema

### 1. BOOKS Table

Stores information about books available in the library.

**Columns:**

* `ID` (INT, PRIMARY KEY)
* `NAME` (VARCHAR(20), NOT NULL)
* `AUTHOR_NAME` (VARCHAR(20), NOT NULL)
* `COUNT` (INT, CHECK COUNT >= 1)

### 2. LIBRARY_VISITOR_USER Table

Stores details of users who visit the library.

**Columns:**

* `USER_ID` (INT, PRIMARY KEY)
* `USER_NAME` (VARCHAR(20))
* `AGE` (INT, NOT NULL, CHECK AGE >= 17)
* `EMAIL` (VARCHAR(30), UNIQUE)

### 3. BOOK_ISSUE Table

Tracks the books issued to users.

**Columns:**

* `BOOK_ISSUE_ID` (INT, PRIMARY KEY)
* `BOOK_ID` (INT, FOREIGN KEY REFERENCES BOOKS(ID))
* `USER_ID` (INT, FOREIGN KEY REFERENCES LIBRARY_VISITOR_USER(USER_ID))
* `BOOK_ISSUE` (DATE, NOT NULL)

## SQL Operations Performed

### DDL (Data Definition Language)

* Created tables with primary keys and foreign keys
* Added and dropped columns using `ALTER TABLE`
* Applied constraints such as `NOT NULL`, `UNIQUE`, and `CHECK`

### DML (Data Manipulation Language)

* Inserted records into tables
* Updated existing records
* Retrieved data using `SELECT`

### DCL (Data Control Language)

* Created a role `LIBRARIAN_1`
* Granted SELECT, INSERT, UPDATE, and DELETE privileges on tables
* Revoked privileges from the role to demonstrate access control

## Role and Security Management

* A librarian role was created with login capability
* Permissions were granted on selected tables
* Permissions were revoked to ensure controlled access

## Conclusion

This project provides a foundational implementation of a Library Management System database using SQL. It showcases effective database design, data integrity through constraints, and secure access management using roles and privileges.

It can be extended further by adding return tracking, fine management, and advanced user roles.
