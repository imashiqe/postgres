CREATE Table my_users
(
    user_name VARCHAR(50),
    email VARCHAR(100)
);


INSERT INTO my_users VALUES('Mezba', 'mezba@mail.com'), ('Mir', 'mir@mail.com');

SELECT * from my_users;


CREATE Table deleted_users_audit
(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
)



CREATE Trigger save_deleted_user_trigger
before DELETE on my_users
for EACH ROW