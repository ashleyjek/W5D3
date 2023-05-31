`PRAGMA foreign_keys = ON;`

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL

    FOREIGN KEY
);


CREATE TABLE questions (
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    author TEXT NOT NULL,

    FOREIGN KEY(author) REFERENCES user(id)

);


CREATE TABLE question_follows (
    user_id,
    question_id



);

CREATE TABLE replies (



);