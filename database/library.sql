--The following 2 quierie must be run by themselves
DROP DATABASE IF EXISTS LIBRARY;
CREATE DATABASE LIBRARY;

--The following quiries can bu run all together
DROP TABLE IF EXISTS BOOKS;
CREATE TABLE BOOKS (
    id INT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    author VARCHAR(30) NOT NULL,
    genre INT[],
    rating FLOAT,
    place VARCHAR(30),
    renter INT
);
/*
GENRES:
    1  - Action
    2  - Fantasy
    11 - Romance
    12 - Adventure
    15 - Drama
    18 - Sci-Fi
    19 - Horror
    20 - Dystopian
    21 - Space Opera
    22 - High Fantasy
    23 - Coming-of-Age
    37 - Epic Poetry
*/
INSERT INTO BOOKS (id, title, author, genre, rating, place, renter) VALUES
    (1, 'The Odyssey', 'Homer Simpson', '{37}', 4.7, 'Q4', NULL),
    (2, 'Who Goes There?', 'John W. Campbell', '{18, 19}', 4.5, 'W13', NULL),
    (3, 'Dune', 'Frank Herbert', '{18, 21}', 4.8, 'F5', NULL),
    (4, '1984', 'George Orwell', '{15, 19}', 4.9, 'R1', NULL),
    (5, 'To Kill a Mockingbird', 'Harper Lee', '{15}', 4.6, 'T9', NULL),
    (6, 'Brave New World', 'Aldous Huxley', '{19, 20}', 4.4, 'M2', NULL),
    (7, 'Fahrenheit 451', 'Ray Bradbury', '{19, 20}', 4.7, 'K3', NULL),
    (8, 'Moby-Dick', 'Herman Melville', '{12, 15}', 4.3, 'L8', NULL),
    (9, 'The Hobbit', 'J.R.R. Tolkien', '{18, 22}', 4.8, 'H7', NULL),
    (10, 'Pride and Prejudice', 'Jane Austen', '{11, 15}', 4.6, 'A3', NULL),
    (11, 'The Catcher in the Rye', 'J.D. Salinger', '{15, 23}', 4.2, 'C6', NULL);

DROP TABLE IF EXISTS USERS;
CREATE TABLE USERS (
    user_id INT PRIMARY KEY,
    fname VARCHAR(40),
    lname VARCHAR(40),
    age INT,
    email VARCHAR(40),
    pass VARCHAR(40),
    salt VARCHAR(40),
    h_email VARCHAR(70),
    h_pass VARCHAR(70)
);
/* Salt is generated using bcrypt, 10 rounds*/
INSERT INTO USERS (user_id, fname, lname, age, email, pass, salt, h_email, h_pass) VALUES
    (1, 'John', 'Doe', 28, 'jd@example.com', 'qwe', '$2b$10$F6EMRvmi1yz5WnoT937fLO','',''),
    (2, 'Jane', 'Smith', 34, 'janesmith@example.com', 'qwerty!456', '$2b$10$Vr9mOC4ageD0mvaR7ShpGO','',''),
    (3, 'Alice', 'Johnson', 22, 'alicej@example.com', 'alice2024$', '$2b$10$.V78..olcBdbaIc4JDcXnu','',''),
    (4, 'Bob', 'Brown', 40, 'bobbrown@example.com', 'B0bP@ss789', '$2b$10$/jHh615d8Mhgb/pD1YNDxO','',''),
    (5, 'Charlie', 'Davis', 29, 'charlied@example.com', 'CharL13!pass', '$2b$10$lijZXeFc.zy7PHp4zqJjse','',''),
    (6, 'David', 'Wilson', 31, 'davidw@example.com', 'D@v1dP@ss123', '$2b$10$tTHzklOBdJsLQBRTnVio4e','',''),
    (7, 'Emma', 'Thomas', 27, 'emmat@example.com', 'Emma!987pass', '$2b$10$zAtDgXZ4sal2ej1wDh/zqu','',''),
    (8, 'Frank', 'Moore', 35, 'frankm@example.com', 'Fr@nk_456pass', '$2b$10$6nRnZKqsXzlvDKYj8hlEBu','',''),
    (9, 'Grace', 'Taylor', 26, 'gracet@example.com', 'Gr@ce!123', '$2b$10$.NaE5ag7tLX6BqSx0Gyj4u','',''),
    (10, 'Hank', 'Anderson', 32, 'hanka@example.com', 'H@nk789p@ss', '$2b$10$vJVBMa/cPnCXGF3yKiIs7e','','');
