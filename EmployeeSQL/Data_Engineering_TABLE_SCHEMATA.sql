-- DATA ENGINEERING --

-- After sketching out an ERD of the tables using QuickDBD (http://www.quickdatabasediagrams.com), export code
-- Use code to create a table schema for each of the six CSV files
-- Specify data types, primary keys, foreign keys, and other constraints

------------------------------------------------------

-- Drop tables if exists

DROP TABLE IF EXISTS "Departments";
DROP TABLE IF EXISTS "Dept_Employees";
DROP TABLE IF EXISTS "Dept_Managers";
DROP TABLE IF EXISTS "Employees";
DROP TABLE IF EXISTS "Salaries";
DROP TABLE IF EXISTS "Titles";

-- Create the "Departments" table

CREATE TABLE "Departments" (
    "dept_no" CHAR(4)   NOT NULL,
    "dept_name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

-- Create the "Dept_Employees" table

CREATE TABLE "Dept_Employees" (
    "emp_no" INT   NOT NULL,
    "dept_no" CHAR(4)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    CONSTRAINT "pk_Dept_Employees" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

-- Create the "Dept_Managers" table

CREATE TABLE "Dept_Managers" (
    "dept_no" CHAR(4)   NOT NULL,
    "emp_no" INT   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    CONSTRAINT "pk_Dept_Managers" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

-- Create the "Employees" table

CREATE TABLE "Employees" (
    "emp_no" INT   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "gender" CHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

-- Create the "Salaries" table

CREATE TABLE "Salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no","from_date"
     )
);

-- Create the "Titles" table

CREATE TABLE "Titles" (
    "emp_no" INT   NOT NULL,
    "title" VARCHAR(50)   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "emp_no","from_date"
     )
);

-- Add constraints to tables

ALTER TABLE "Dept_Employees" ADD CONSTRAINT "fk_Dept_Employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Dept_Employees" ADD CONSTRAINT "fk_Dept_Employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_Managers" ADD CONSTRAINT "fk_Dept_Managers_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "Dept_Managers" ADD CONSTRAINT "fk_Dept_Managers_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

-- After each table is created, import each CSV file into the corresponding SQL table
-- Test to see if all data was imported correctly

SELECT * FROM "Departments";
SELECT * FROM "Dept_Employees";
SELECT * FROM "Dept_Managers";
SELECT * FROM "Employees";
SELECT * FROM "Salaries";
SELECT * FROM "Titles";