
SELECT * from employees

SELECT count(*) from employees;


CREATE function emp_count()

RETURNS INT
LANGUAGE SQL
AS
$$
   DELETE FROM employees  WHERE  employee_id = p_emp_id;
$$;


CREATE Procedure remove_emp()
LANGUAGE plpgsql

AS
$$
DECLARE
test_var int;
BEGIN 
     SELECT employee_id INTO test__var from  employees WHERE employee_id = p_emp_id;
     DELETE FROM employees  WHERE  employee_id = test_var;
     RAISE NOTICE 'Employee with id % has been removed' ;
END
 $$;

 call remove_emp();