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
/* 
Salt is generated using bcrypt, 13 rounds. Raw passwords pressent to test and so we can remember the originals.
*/

INSERT INTO USERS (user_id, fname, lname, age, email, pass, salt, h_email, h_pass) VALUES
        (1, 'John', 'Doe', 28, 'jd@example.com', 'qwe', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.O', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OJVeRfr3BRYnewUWlVkdkwda7dfOoAui', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OWVlX4QJlN4lAGhXVC3X.WRSfC3CamSa'), 
        (2, 'Jane', 'Smith', 34, 'janesmith@example.com', 'qwerty!456', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.O', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.O/XSIKCUPaEXphNfGlxketIMX/o/04Me', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OlxQ./XLavu5ZrNzZNfNeASPMkzgMEAq'), 
        (3, 'Alice', 'Johnson', 22, 'alicej@example.com', 'alice2024$', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.O', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OjCgMHZMfan98QQ60oHtfCzeWXzuZbJ2', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OrpTR4aB32UzaylsKBekI0jRHclVID8S'), 
        (4, 'Bob', 'Brown', 40, 'bobbrown@example.com', 'B0bP@ss789', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.O', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OiIUFpALSxIWqWuqkQ9Rhm/RkjLa30Y2', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.O1PwOil3gC/E3v3MdZE9EbGsdr9IXFUa'), 
        (5, 'Charlie', 'Davis', 29, 'charlied@example.com', 'CharL13!pass', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.O', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OsDDd2hvVTKiD4AXSCchpQHUfn55L80y', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OjiVszyV/LCqQ9b7O6j..fceFv83lCL2'), 
        (6, 'David', 'Wilson', 31, 'davidw@example.com', 'D@v1dP@ss123', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.O', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OHi2OQtI0eDegE.2MtR6bTpsmyOcipTO', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OCjykuig/5Il0SmF1nIH0aXK7b0b5dE2'), 
        (7, 'Emma', 'Thomas', 27, 'emmat@example.com', 'Emma!987pass', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.O', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OufvLRb6sE.aIfIDw1xPCNV0wRnkcGkO', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.O.Ixut2KapMfT0JW3o.5yYMQQ0/RmzBa'), 
        (8, 'Frank', 'Moore', 35, 'frankm@example.com', 'Fr@nk_456pass', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.O', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OUMWv1GKwjnXGC9t9NZaetXSpPjLJhIq', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OBuZ8zH2kYrRVGLjQ6CM2cNT3FkLMaoy'), 
        (9, 'Grace', 'Taylor', 26, 'gracet@example.com', 'Gr@ce!123', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.O', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.Ocj4G3zB7qTXF1IPd7HYyc0KjK4IaVAe', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.O0OBen8ljzzvxzA0C.K5OesExbJfAjuG'), 
        (10, 'Hank', 'Anderson', 32, 'hanka@example.com', 'H@nk789p@ss', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.O', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OonrIi4J2yK295axqXq2GSurB.GZDUcu', '$2b$13$HIe4MyqYLMdRMKhT7Jwf.OG0V2m9283A59jNAXTtuFSbwaeZp2GRS');