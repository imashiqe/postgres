
SELECT * FROM employees;

SELECT max(salary) from employees WHERE > (SELECT max(salary) from employees WHERE department_name = 'HR');


ALTER TABLE employees
    
    ADD COLUMN department_name VARCHAR(255);


INSERT INTO employees (emp_id,emp_name, dep_id, salary, hire_date,  department_name)
    VALUES ('3', 'Doe', '103', '50000', '2018-01-01', 'HR');

INSERT INTO employees (emp_id,emp_name, dep_id, salary, hire_date,  department_name)
    VALUES ('4', 'jahan', '104', '60000', '2018-01-01', 'staff');

SELECT * FROM employees WHERE salary > (SELECT max(salary) from employees WHERE department_name = 'HR');


INSERT INTO employees (emp_id, emp_name, dep_id, salary, hire_date, department_name)
    VALUES ('5', 'Smith', '105', '70000', '2019-01-01', 'Finance');

SELECT * , (SELECT sum(salary) from  employees ) from employees;

SELECT department_name, sum (salary) from employees group by department_name;


