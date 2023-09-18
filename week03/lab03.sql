-- Managing databases
SHOW DATABASES;

USE world;

SHOW TABLES;

SHOW COLUMNS FROM city;

DESCRIBE city;

SHOW CREATE TABLE city;

-- Sample Queries

SELECT * FROM city;

SELECT count(*) FROM city;

SELECT Id, Name, Population FROM city limit 10;

SELECT COUNT(Id) AS 'Total number of cities' FROM city;

SELECT Name, Population 
FROM city
WHERE Population > 50000000;

-- PA 2.6.7
USE world;
SELECT CountryCode, Language
FROM CountryLanguage
WHERE Percentage > 0.0
AND Percentage < 10.0;

SELECT CountryCode, Language
FROM CountryLanguage
WHERE Percentage < 5.0
OR Percentage > 90.0;
 
-- PA 2.4.7
CREATE DATABASE temp;
SHOW DATABASES;
CREATE TABLE Product (
  ID INT,
  Name VARCHAR(40),
  ProductType VARCHAR(3),
  OriginDate DATE,
  Weight DECIMAL(6,1) 
);
INSERT INTO Product (ID, Name, ProductType, OriginDate, Weight) VALUES 
  (100, 'Tricorder', 'TC', '2020-08-11', 2.4),
  (200, 'Food replicator', 'FOD', '2020-09-21', 54.2),
  (300, 'Cloaking device', 'CD', '2019-02-04', 177.9);
SELECT *
FROM Product;

-- PA 2.5.4
USE temp;
SHOW TABLES;
DROP TABLE Product;
SHOW TABLES;

CREATE TABLE Product (
  ID SMALLINT UNSIGNED,
  Name VARCHAR(40),
  ProductType CHAR(3),
  OriginDateTime DATETIME,
  Weight FLOAT 
);
INSERT INTO Product (ID, Name, ProductType, OriginDateTime, Weight) VALUES 
  (100, 'Tricorder', 'COM', '2020-08-11 11:30:00', 2.4172),
  (200, 'Food replicator', 'FOD', '2020-09-21 14:00:00', 54.02),
  (300, 'Cloaking device', 'SPA', '2019-02-04 07:35:00', 19257.9);

SELECT *
FROM Product;

-- PA 2.6.9 Select movies with logical operators
CREATE DATABASE MovieDB;
CREATE TABLE Movie (
  ID INT AUTO_INCREMENT,
  Title VARCHAR(100),
  Rating CHAR(5) CHECK (Rating IN ('G', 'PG', 'PG-13', 'R')),
  ReleaseDate DATE,
  PRIMARY KEY (ID)
);

INSERT INTO Movie (Title, Rating, ReleaseDate) VALUES
  ('Casablanca', 'PG', '1943-01-23'),
  ('Bridget Jones\'s Diary', 'PG-13', '2001-04-13'),
  ('The Dark Knight', 'PG-13', '2008-07-18'),
  ('Hidden Figures', 'PG', '2017-01-06'),
  ('Toy Story', 'G', '1995-11-22'),
  ('Rocky', 'PG', '1976-11-21'),
  ('Crazy Rich Asians', 'PG-13', '2018-08-15');

-- Modify the SELECT statement:
SELECT *
FROM Movie
WHERE ReleaseDate < '2000-01-01';

-- PA 2.7.9: Select songs with NULL values. 


-- 2.9.7: Insert rows into Movie table.

USE temp;
CREATE TABLE Movie (
  ID INT AUTO_INCREMENT,
  Title VARCHAR(100),
  Rating CHAR(5) CHECK (Rating IN ('G', 'PG', 'PG-13', 'R')),
  ReleaseDate DATE,
  PRIMARY KEY (ID)
);

INSERT INTO Movie (Title, Rating, ReleaseDate) VALUES
  ('Raiders of the Lost Ark', 'PG', '1981-06-15'),
  ('The Godfather', 'R', '1972-03-24'),
  ('The Pursuit of Happyness', 'PG-13', '2006-12-15');
  
  SELECT * FROM Movie;