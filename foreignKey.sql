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

INSERT INTO "user"(username) VALUES('John'), ('Jane'), ('Ali'), ('Maria'), ('Lin'), ('David'), ('Sophia'), ('Ahmed'), ('Emily'), ('Carlos');