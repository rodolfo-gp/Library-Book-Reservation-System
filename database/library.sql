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
        (1, 'John', 'Doe', 28, 'jd@example.com', 'qwe', '$2b$13$DGxxxRtZ.R.LUIr9YHhxne', '$2b$13$DGxxxRtZ.R.LUIr9YHhxneUWtdrAfrFY5UlWbjJbo9N9uVqo.YIwS', '$2b$13$DGxxxRtZ.R.LUIr9YHhxneNYFmWCeZuuHtCZdL/3Egfa6MoQlpnSS'), 
        (2, 'Jane', 'Smith', 34, 'janesmith@example.com', 'qwerty!456', '$2b$13$wzZgw8M9AjxwxjAovDrpY.', '$2b$13$wzZgw8M9AjxwxjAovDrpY.W0UQVdG0mpgJE4oxp34IFY653AHaW4K', '$2b$13$wzZgw8M9AjxwxjAovDrpY.1Z/5/9AllDDoOSnzj0vwhd8fSs81n7y'), 
        (3, 'Alice', 'Johnson', 22, 'alicej@example.com', 'alice2024$', '$2b$13$ZRvAQzaHj52jKxo1gSwmHO', '$2b$13$ZRvAQzaHj52jKxo1gSwmHOnu01Hg9M/QqScY9Jq.7SJTEXhlpRzAe', '$2b$13$ZRvAQzaHj52jKxo1gSwmHOO9oNqN5SFZXamczBTM8bIq6H1MVGa/y'), 
        (4, 'Bob', 'Brown', 40, 'bobbrown@example.com', 'B0bP@ss789', '$2b$13$icHvNeiNyVY.mE2owO2Yqe', '$2b$13$icHvNeiNyVY.mE2owO2YqelSy5rinau2v4yWyRw.ug/qYI6wo5wRO', '$2b$13$icHvNeiNyVY.mE2owO2Yqe4yaSYYJJINqSKiZs0eUT5h.WqbxVyGC'), 
        (5, 'Charlie', 'Davis', 29, 'charlied@example.com', 'CharL13!pass', '$2b$13$Tna64xD6LHXcjHTkC0.7iO', '$2b$13$Tna64xD6LHXcjHTkC0.7iOU/Uf2Y2VEHnU.HvEyQjBz5FqO3FsnTe', '$2b$13$Tna64xD6LHXcjHTkC0.7iOMVOAdaz1ZJV07mDXOxWgBlqZlC1dKg.'), 
        (6, 'David', 'Wilson', 31, 'davidw@example.com', 'D@v1dP@ss123', '$2b$13$3wIUH3Af76I3t5ngPh9AFe', '$2b$13$3wIUH3Af76I3t5ngPh9AFeF5IoJ3J1.iAm7Z9.KrljP/RYfYdA4tW', '$2b$13$3wIUH3Af76I3t5ngPh9AFeL.sVu8dlm7.NTXi/ItZn1ML6X6uBLZe'), 
        (7, 'Emma', 'Thomas', 27, 'emmat@example.com', 'Emma!987pass', '$2b$13$v8cwRk2c3AfaQSFxnm3RM.', '$2b$13$v8cwRk2c3AfaQSFxnm3RM.GQ9MjySV4St.M10D5QHB1ekiwmPt6.q', '$2b$13$v8cwRk2c3AfaQSFxnm3RM.Xg70ytVjQCJQHxJGo2y.Bi2oAN8uK9i'), 
        (8, 'Frank', 'Moore', 35, 'frankm@example.com', 'Fr@nk_456pass', '$2b$13$SDPT/.ouE15Zo3qtG60sp.', '$2b$13$SDPT/.ouE15Zo3qtG60sp.ITRwYgQASYnYmFmNXiKg40UkoRtGlwq', '$2b$13$SDPT/.ouE15Zo3qtG60sp.RKgBvoOyxmqZHAMQB1BxKKnBmBp9YwS'), 
        (9, 'Grace', 'Taylor', 26, 'gracet@example.com', 'Gr@ce!123', '$2b$13$PF6wg3kAxdtEO7sSRQ8Yee', '$2b$13$PF6wg3kAxdtEO7sSRQ8YeewKH1He90VX3CCUhbE/s3x5Q4qp6OjJu', '$2b$13$PF6wg3kAxdtEO7sSRQ8Yeeab5EWQzSeF3x4zmCzwzkDBNGLfAo4mm'), 
        (10, 'Hank', 'Anderson', 32, 'hanka@example.com', 'H@nk789p@ss', '$2b$13$vtBVlkX.Qzlc0cp/rnvSw.', '$2b$13$vtBVlkX.Qzlc0cp/rnvSw.fajHeEk7GcrJlugAfT/St7lwfG4Dl0e', '$2b$13$vtBVlkX.Qzlc0cp/rnvSw.5GPt8I1Rccc1Pa1G4mwT1pTfHNZzqEW');
