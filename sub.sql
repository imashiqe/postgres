SELECT * FROM employees;

SELECT max(salary) from employees WHERE > (SELECT max(salary) from employees WHERE department = 'HR');


ALTER TABLE employees (
    
    ADD COLUMN department_name VARCHAR(255)
    
    );
