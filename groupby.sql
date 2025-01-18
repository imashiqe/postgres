SELECT * from students;


SELECT country, count(*) from students
  GROUP BY country;
SELECT country, avg(age) from students
  GROUP BY country;

  SELECT country , avg(age) from students
    GROUP BY country
    HAVING avg(age) > 20;
    ;