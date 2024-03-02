-- Data Engineering Section:
-- Create Table for departments.csv data
CREATE TABLE Departments (
    dept_no VARCHAR(4) PRIMARY KEY, 
    dept_name VARCHAR(255) NOT NULL UNIQUE
);

-- Create Table for titles.csv data
CREATE TABLE Titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(255) NOT NULL UNIQUE
);

-- Create Table for employees.csv data
CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(255),
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

-- Create Table for dept_manager.csv data
CREATE TABLE Dept_Manager (
    dept_no VARCHAR(4),
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

-- Create Table for dept_emp.csv data
CREATE TABLE Dept_Emp (
    emp_no INT,
    dept_no VARCHAR(4),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- Create Table for salaries.csv data
CREATE TABLE Salaries (
    emp_no INT,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Run this to show data from departments.csv
SELECT * FROM Departments;

-- Run this to show data from titles.csv
SELECT * FROM Titles;

-- Run this to show data from employees.csv
SELECT * FROM Employees;

-- Run this to show data from dept_manager.csv
SELECT * FROM Dept_Manager;

-- Run this to show data from dept_emp.csv
SELECT * FROM Dept_Emp;

-- Run this to show data from salaries.csv
SELECT * FROM Salaries;
