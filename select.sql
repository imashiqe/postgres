CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);


INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES
('John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2004-05-15', 'O+', 'USA'),
('Jane', 'Smith', 22, 'B', 'Mathematics', 'jane.smith@example.com', '2002-09-12', 'A-', 'Canada'),
('Ali', 'Khan', 19, 'A', 'Physics', 'ali.khan@example.com', '2005-01-20', 'B+', 'Pakistan'),
('Maria', 'Gonzalez', 21, 'C', 'Biology', 'maria.gonzalez@example.com', '2003-03-11', 'AB-', 'Mexico'),
('Lin', 'Wang', 23, 'B', 'Chemistry', 'lin.wang@example.com', '2001-07-08', 'O-', 'China'),
('David', 'Brown', 20, 'A', 'Engineering', 'david.brown@example.com', '2004-11-03', 'A+', 'UK'),
('Sophia', 'Johnson', 18, 'A', 'Literature', 'sophia.johnson@example.com', '2006-02-27', 'B-', 'Australia'),
('Ahmed', 'Hassan', 22, 'B', 'Economics', 'ahmed.hassan@example.com', '2002-12-19', 'O+', 'Egypt'),
('Emily', 'Clark', 19, 'A', 'History', 'emily.clark@example.com', '2005-06-15', 'AB+', 'USA'),
('Carlos', 'Martinez', 21, 'C', 'Art', 'carlos.martinez@example.com', '2003-04-09', 'B+', 'Spain');

SELECT email as "student email"  FROM students;

SELECT *  FROM students ORDER BY dob DESC;


SELECT DISTINCT blood_group from students   ;


SELECT * FROM students WHERE country = 'USA';

SELECT * FROM students WHERE grade = 'A' AND course = 'Physics';

SELECT * FROM students 
   WHERE (country = 'USA' OR country = 'Australia') and age =20;

SELECT * from students
   WHERE age > 20 AND course = 'Mathematics';

SELECT * from students
   WHERE age <> 20

SELECT upper(first_name), * from  students;


SELECT concat  (first_name, ' ', last_name) as full_name from students;

SELECT avg(age)  from students;

SELECT count(*) from students;

SELECT max(length(first_name)) from students;\

SELECT  * from  students
  WHERE email IS NOT NULL;


SELECT * from students ;

SELECT COALESCE(NULL, 5);

SELECT COALESCE(email, 'Email Not Provided') as email, blood_group from students;

SELECT * FROM students WHERE country  IN ('USA' ,'Canada' , 'UK') ; 
SELECT * FROM students WHERE country NOT IN ('USA' ,'Canada' , 'UK') ; 

SELECT * FROM students WHERE dob BETWEEN  '2002-01-01' AND '2004-01-01' ;