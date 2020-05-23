CREATE DATABASE AIGram2;
USE AIGram2;

CREATE TABLE person
(
    id                INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name              VARCHAR(45) NOT NULL,
    phone_number      VARCHAR(45) NOT NULL UNIQUE,
    email             VARCHAR(45) NOT NULL UNIQUE,
    password          VARCHAR(45) NOT NULL,
    registration_date DATETIME    NOT NULL,
    avatar_path       VARCHAR(255),
    about             VARCHAR(255)
);

INSERT INTO person (name, phone_number, email, password, registration_date)
VALUES ('Yaroslav', '380985081839', 'gladi41414@gmail.com', '111111', '2001-07-23');