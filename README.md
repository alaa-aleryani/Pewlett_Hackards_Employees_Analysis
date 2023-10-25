# SQL Challenge
It’s been two weeks since I was hired as a new data engineer at Pewlett Hackard (a fictional company). 
My first major task is to do a research project about people whom the company employed during the 1980s and 1990s. 
All that remains of the employee database from that period are six CSV files.

For this project, I’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data.


## Data Modeling 
First, I inspected the CSV files, and then sketched an Entity Relationship Diagram of the tables. I used [QuickDBD](https://www.quickdatabasediagrams.com/) to create the sketch.

## Data Engineering
-1- Used the provided information to create a table schema for each of the six CSV files. 
-2- Imported each CSV file into its corresponding SQL table. NOTE: import the data in the same order as the corresponding tables got created to avoid errors.

## Data Analysis
Answered the following queries:
-1- List the employee number, last name, first name, sex, and salary of each employee.

-2- List the first name, last name, and hire date for the employees who were hired in 1986.

-3- List the manager of each department along with their department number, department name, employee number, last name, and first name.

-4- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

-5- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

-6- List each employee in the Sales department, including their employee number, last name, and first name.

-7- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-8- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).