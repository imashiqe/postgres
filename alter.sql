SELECT * from person2;

ALTER TABLE person2 ADD COLUMN email VARCHAR(50) DEFAULT 'default@gmail.com' NOT NULL;

INSERT into person2 values(7, 'test', 45)

ALTER TABLE person2 DROP COLUMN email;

ALTER TABLE person2 RENAME COLUMN age to user_age;

ALTER TABLE person2 
  ALTER COLUMN user_name TYPE VARCHAR(50);

ALTER TABLE person2 ALTER COLUMN user_age set NOT NULL;

ALTER TABLE person2 ALTER COLUMN user_age DROP NOT NULL;


ALTER TABLE person2
  ADD constraint unique_person2_user_age UNIQUE(user_age);

TRUNCATE TABLE person2;