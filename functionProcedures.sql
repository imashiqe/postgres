SELECT * from employees

SELECT count(*) from employees;


CREATE function emp_count()

RETURNS INT
LANGUAGE SQL
AS
$$
   SELECT COUNT(*) FROM employees;
$$;