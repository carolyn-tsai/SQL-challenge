# SQL_Challenge

-----------------------------------------

## SQL Homework - Employee Database: A Mystery in Two Parts

For this assignment, the following was performed:

### 1. Data Modeling

- Inspect the CSVs
- Sketch out an ERD of the tables
- ERD created using Quick DBD (http://www.quickdatabasediagrams.com)
- Specify data types, primary keys, and foreign keys 

### 2. Data Engineering

- Use the information from the ERD to create a table schema for each of the six CSV files
- Specify data types, primary keys, foreign keys, and other constraints
- Import each CSV file into the corresponding SQL table
- Tables and data created with pgAdmin postgreSQL

### 3. Data Analysis

- Once a complete database is created, the following will be queried:

        1. List the following details of each employee: employee number, last name, first name, gender, and salary.
        2. List employees who were hired in 1986.
        3 List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
        4 List the department of each employee with the following information: employee number, last name, first name, and department name.
        5. List all employees whose first name is "Hercules" and last names begin with "B."
        6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
        7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
        8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

-----------------------------------------

## Bonus

To analyze the data, visualizations are generated:

1. SQL database imported into Pandas

2. A histogram to visualize the most common salary ranges for employees

3. A bar chart of average salary by title

-----------------------------------------

## Epilogue

Also included is a query for employee ID number 499942.



-----------------------------------------------------



Along with what we learned in class, I also used the following resources to complete this assignment:



- https://docs.sqlalchemy.org/en/13/core/engines.html#postgresql
- https://www.w3resource.com/mysql-exercises/join-exercises/find-the-names-and-hire-date-of-the-employees-who-were-hired-after-jones.php
- https://www.postgresql.org/
- http://www.postgresqltutorial.com/
- https://keydifferences.com/difference-between-histogram-and-bar-graph.html
- https://matplotlib.org/3.1.0/gallery/statistics/hist.html
- https://matplotlib.org/3.1.1/api/_as_gen/matplotlib.pyplot.hist.html
- https://seaborn.pydata.org/examples/color_palettes.html
- https://towardsdatascience.com/histograms-and-density-plots-in-python-f6bda88f5ac0
- https://stackoverflow.com/
- https://www.youtube.com/watch?v=dR5lPbGLY84
- https://www.lucidchart.com/pages/how-to-draw-ERD