-- Drop table(s) if exists
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE titles;
DROP TABLE salaries;
DROP TABLE dept_manager;
DROP TABLE employee;


-- Create new table
CREATE TABLE departments (
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (dept_no)
);

-- View table columns and datatypes
SELECT * FROM departments;

CREATE TABLE titles (
    title_id VARCHAR(20) NOT NULL,
    title VARCHAR(40) NOT NULL,
    PRIMARY KEY (title_id)
);

-- View table columns and datatypes
SELECT * FROM titles;

CREATE TABLE employee (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(30) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
    PRIMARY KEY ("emp_no")
);

-- View table columns and datatypes
SELECT * FROM employee;

-- Create new table
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(30) NOT NULL,
    PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- View table columns and datatypes
SELECT * FROM dept_emp;


CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no)
);

-- View table columns and datatypes
SELECT * FROM salaries;

CREATE TABLE dept_manager (
    dept_no VARCHAR(30) NOT NULL,
    emp_no INT  NOT NULL,
    PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no) REFERENCES employee (emp_no)
);
