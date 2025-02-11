SELECT * from employees;

CREATE View  test_view
AS
SELECT  emp_name, salary, department_name
    FROM employees
    WHERE department_name in 
    (SELECT department_name FROM employees WHERE department_name LIKE '%R%');


SELECT * from test_view;

-- simplified complex query
-- Improved security
-- Enhanced data abstraction