-- Data Engineering Part
-- Use the provided information to create a table schema for each of the six CSV files.
-------------------------------------------------------------------------------------------
-- Create the departments table
CREATE TABLE departments(
	dept_no VARCHAR(4) PRIMARY KEY NOT NULL,  
	dept_name VARCHAR(40) NOT NULL UNIQUE
);

SELECT * FROM departments;   -- To check the columns of the table. 								 
-- ---------------------------------------------------------
-- Create the titles table
CREATE TABLE titles(
	title_id VARCHAR(5) PRIMARY KEY NOT NULL,
	title VARCHAR(50) UNIQUE NOT NULL
);

SELECT * FROM titles;										
-- ---------------------------------------------------------
-- Create the employees table
CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(5) NOT NULL, 
	birth_date DATE NOT NULL,    					
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;  
-- ---------------------------------------------------------
-- Create the departments employees table					
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,  					            
	dept_no VARCHAR(4) NOT NULL, 
	FOREIGN KEY (emp_no, dept_no) REFERENCES employees(emp_no, dept_no),
	PRIMARY KEY (dept_no, emp_no)          
);

SELECT * FROM dept_emp;   
-- ---------------------------------------------------------
-- Create the departments manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR(4) REFERENCES departments(dept_no),
	emp_no INT NOT NULL REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
); 

SELECT * FROM dept_manager;  
-- ---------------------------------------------------------
-- Create the salaries table  								
CREATE TABLE salaries(            
	emp_no INT NOT NULL, 
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no, salary)
);

SELECT * FROM salaries; 
