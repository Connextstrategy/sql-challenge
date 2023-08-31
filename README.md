
# Python Rutgers Bootcamp Challenge - SQL Challenge

This activity is an introduction into SQL table creation, query, and analyses

## Description

In this assignment, it’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

# Instructions

This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

## Data Modeling

1. Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBDLinks to an external site.

## Data Engineering

1. Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

* Remember to specify the data types, primary keys, foreign keys, and other constraints.

* For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.

* Be sure to create the tables in the correct order to handle the foreign keys.

2. Import each CSV file into its corresponding SQL table.

## Data Analysis
* List the employee number, last name, first name, sex, and salary of each employee.

* List the first name, last name, and hire date for the employees who were hired in 1986.

* List the manager of each department along with their department number, department name, employee number, last name, and first name.

* List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

* List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

* List each employee in the Sales department, including their employee number, last name, and first name.

* List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

* List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

### Dependencies


## SQL code writing and administration

* Using PostgresSQL database system for running of server for SQL creation and pgAdmin for admin, table creation and queries
* Using Quick Base Diagram



## Import CSV files to create tables in Resources folder
* departments.csv
* dept_emp.csv
* titles.csv
* salaries;
* dept_manager.csv
* employee.csv

### Installing

* No modifications needed to be made to files/folders

## Authors

Christopher Manfredi 

## Version History

    * Initial Release

## Acknowledgments

* This is specifically for an exercise for Rutgers Boot Camp 
