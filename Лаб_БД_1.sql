DROP DATABASE IF EXISTS DB;

CREATE DATABASE IF NOT EXISTS studybooks;

USE studybooks;

CREATE TABLE booksF (
    number INT NOT NULL,
    bookCode INT NOT NULL,
    isNew VARCHAR(3) NOT NULL,
    name VARCHAR(100) NOT NULL,
    price VARCHAR(10),
    publishing VARCHAR(50),
    pages INT NOT NULL,
    format VARCHAR(20) DEFAULT NULL,
    bookDate VARCHAR(10),
    circulation INT CHECK (circulation <= 5000),
    theme VARCHAR(50) NOT NULL,
    cathegory VARCHAR(30) NOT NULL,
    indexing INT AUTO_INCREMENT PRIMARY KEY
);


LOAD DATA INFILE 'DB_CSV.txt' INTO TABLE books1
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'

ALTER TABLE booksF
ADD COLUMN author VARCHAR(15);

ALTER TABLE booksF
MODIFY COLUMN author VARCHAR(20);

ALTER TABLE booksF
DROP COLUMN author;
ADD CONSTRAINT unique_indexing UNIQUE (indexing);

ALTER TABLE booksF
DROP COLUMN indexing;
