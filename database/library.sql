DROP DATABASE [IF EXISTS] LIBRARY;
CREATE DATABASE LIBRARY;

DROP TABLE IF EXISTS BOOKS;
CREATE TABLE BOOKS (
    id INT PRIMARY KEY,
    title VARCHAR(20) NOT NULL,
    author VARCHAR(20) NOT NULL,
    genre INT[],
    rating FLOAT,
    place VARCHAR(20),
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
    fname VARCHAR(20),
    lname VARCHAR(20),
    age INT,
    email VARCHAR(20),
    pass VARCHAR(20),
    creditcardnum INT,
    auth VARCHAR(20)
);