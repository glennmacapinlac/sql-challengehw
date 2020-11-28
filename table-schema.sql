-- Creating table schema

-- Create table employees

DROP TABLE employees

CREATE TABLE employees (
	emp_no BIGINT NOT NULL,
	emp_title_id VARCHAR(100) NOT NULL,
	birth_date VARCHAR(100) NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	SEX VARCHAR(100) NOT NULL,
	hire_date VARCHAR(100) NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employees

-- Create table departments

DROP TABLE departments

CREATE TABLE departments (
	dept_no VARCHAR(100) not null,
  	dept_name VARCHAR(100) not null
	PRIMARY KEY (dept_no)

);

select * from departments

--Create table dept_emp

DROP TABLE dept_emp

CREATE TABLE dept_emp (
	emp_no BIGINT NOT NULL,
	dept_no VARCHAR(100) Not null,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

);

select * from dept_emp


-- Create table dept_manager

DROP TABLE dept_manager

CREATE TABLE dept_manager (
 dept_no VARCHAR (100),
 emp_no BIGINT NOT NULL,
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager

--Creating salaries table

DROP TABLE salaries

CREATE TABLE salaries (
	emp_no BIGINT NOT NULL,
	salary BIGINT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
	
);


select * from salaries

--Creating titles table

DROP TABLE titles

CREATE TABLE titles (
	title_id VARCHAR(100) not null,
	title VARCHAR(100) not null
	
);

select * from titles



