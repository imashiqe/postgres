CREATE TABLE employees(
    emp_id INT,
    EMP_NAME VARCHAR(50) ,
    dep_ID INT
);

CREATE TABLE departmentS(
    dep_id INT,
    dep_name VARCHAR(50)
);

INSERT INTO employees VALUES (1, 'John',101);
INSERT INTO employees VALUES (2, 'Smith',102);

INSERT INTO departments VALUES (101, 'HR');
INSERT INTO departments VALUES (102, 'IT');

SELECT * FROM employees;
SELECT * FROM departments;

-- cross join

SELECT * FROM employees CROSS JOIN departments;

-- natural join

