-- Dropping tables if exists
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dep_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;


-- (1) Creating the titles table
------------------------------------------------
CREATE TABLE titles (
    title_id VARCHAR(15) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

-- (2) Creating the employees table
------------------------------------------------
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(15) NOT NULL,
    birth_date DATE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(1),
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- (3) Creating the departments table
------------------------------------------------
CREATE TABLE departments (
    dept_no VARCHAR(6) PRIMARY KEY ,
    dept_name VARCHAR(100) NOT NULL
);

-- (4) Creating the dep_emp table
------------------------------------------------

-- contains composite primary key
CREATE TABLE dep_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(6) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


-- (5) Creating the dept_manager table
------------------------------------------------
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- (6) Creating the salaries table
------------------------------------------------
CREATE TABLE salaries (
	id SERIAL PRIMARY KEY,
    emp_no INT NOT NULL,
    salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);




-- CONFIRMING migration of data 
SELECT * FROM titles LIMIT 100;
SELECT * FROM employees LIMIT 100;
SELECT * FROM departments LIMIT 100;
SELECT * FROM dep_emp LIMIT 100;
SELECT * FROM dept_manager LIMIT 100;
SELECT * FROM salaries LIMIT 100;

