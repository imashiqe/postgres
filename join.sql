CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL
)

SELECT * from "user";

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
   
)

ALTER TABLE post alter COLUMN  user_id set NOT NULL;

INSERT INTO "user"(username) VALUES('John'), ('Jane'), ('Ali'), ('Maria'), ('Lin'), ('David'), ('Sophia'), ('Ahmed'), ('Emily'), ('Carlos');

INSERT INTO post(title, user_id) VALUES
('Enjoying a sunny day', 1),
('Programming is fun', 2),
('Cooking with friends', 3),
('Exploring the city', 4),
('Climbing a mountain', 5),
('Reading a book', 6),
('Learning new things', 7),
('Traveling around the world', 8),
('Having a good time', 9),
('Enjoying a cup of coffee', 10);


SELECT * from post;

DELETE FROM "user" WHERE id = 1;

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
)


SELECT title, username FROM  post JOIN "user" on  post.user_id = "user".id;