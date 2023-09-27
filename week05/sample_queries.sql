DROP DATABASE IF EXISTS `world_db` ;
CREATE DATABASE IF NOT EXISTS `world_db`;
USE `world_db`;

CREATE TABLE `country` (
  `Code` char(3) NOT NULL DEFAULT '',
  `Name` char(52) NOT NULL DEFAULT '',
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL DEFAULT 'Asia',
  PRIMARY KEY (`Code`)
);

INSERT INTO `country` VALUES ('ABW','Aruba','North America');
INSERT INTO `country` VALUES ('AFG','Alghanistan','Asia');
INSERT INTO `country` VALUES ('AGO','Angolo','Africa');
INSERT INTO `country` VALUES ('ALB','Albania','Europe');
INSERT INTO `country` VALUES ('AND','Andorra','Europe');


CREATE TABLE `countrylanguage` (
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `Language` char(30) NOT NULL DEFAULT '',
  `IsOfficial` enum('T','F') NOT NULL DEFAULT 'F',
  `Percentage` decimal(4,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`CountryCode`,`Language`),
  KEY `CountryCode` (`CountryCode`),
  FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
);

INSERT INTO `countrylanguage` VALUES ('ABW','Dutch','T',5.3);
INSERT INTO `countrylanguage` VALUES ('AFG','Balochi','F',0.9);
INSERT INTO `countrylanguage` VALUES ('AGO','Kongo','F',13.2);
INSERT INTO `countrylanguage` VALUES ('ALB','Albanian','T',97.9);
INSERT INTO `countrylanguage` VALUES ('AND','Catalan','T',32.3);


CREATE TABLE `city` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` char(35) NOT NULL DEFAULT '',
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `District` char(20) NOT NULL DEFAULT '',
  `Population` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CountryCode` (`CountryCode`),
  FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`));
