`PRAGMA foreign_keys = ON;`

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL
);

INSERT INTO
    users (fname,lname)
VALUES
    ("Ashley", "Kim"), ("Samuel", "Kim");


CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    author TEXT NOT NULL,

    FOREIGN KEY(author_id) REFERENCES user(id)

);

INSERT INTO 
    questions (title, body, author_id)
SELECT
    "my_question", "my_title", 1
FROM 
    users
WHERE
    users.fname = "Ashley" AND users.lname = 'Kim';

INSERT INTO
    questions (title, body, author_id)
SELECT  
    "new_question", "new_title", 2;


CREATE TABLE question_follows (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    question_id INTEGER NOT NULL,

    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(question_id) REFERENCES questions(id)

);

INSERT INTO
    question_follows(user_id, question_id)
VALUES  


CREATE TABLE replies (
    id INTEGER PRIMARY KEY,



);