CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL
)

SELECT * from "user";

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    content TEXT,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES "user"(id)
)