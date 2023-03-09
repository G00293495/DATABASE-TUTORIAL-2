CREATE DATABASE Celebrities;

USE Celebrities;

CREATE TABLE person (
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
age INT NOT NULL,
category VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE address (
id INT NOT NULL AUTO_INCREMENT,
person_id INT NOT NULL,
street VARCHAR(50) NOT NULL,
city VARCHAR(50) NOT NULL, 
country VARCHAR(50) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (person_id) REFERENCES person(id)
);

INSERT INTO person (name, age, category) VALUES
('Kanye', 45, 'rap'),
('PoloG', 24, 'rap'),
('Rihanna', 35, 'pop'),
('Taylor', 33, 'pop'),
('Beyonce', 25, 'pop'),
('Elton', 75, 'jazz'),
('Mary', 63, 'techno'),
('Eminem', 75, 'rap');

INSERT INTO address (person_id, street, city, country) VALUES
(1, 'Hollywood', 'Los Angeles', 'America'),
(2, 'Illinois', 'Chicago', 'America'),
(3, 'Bridgetown', 'Saint Michael', 'Barbados'),
(4, 'West Reading', 'Pennsylvania', 'America'),
(5, 'Houston', 'Texas', 'America'),
(6, 'Pinner', 'London', 'England'),
(7, 'Drinane', 'Ballygar', 'Ireland'),
(8, 'Saint Joseph', 'Missouri', 'America');

START TRANSACTION;


INSERT INTO PERSON(name, age, category) VALUES ('Dave', 24, 'All types');

SET @person_id = LAST_INSERT_ID();

INSERT INTO address (person_id, street, city, country) VALUES (@person_id, 'Brixton', 'London', 'England');

COMMIT;