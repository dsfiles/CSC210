DROP DATABASE IF EXISTS `world_db` ;
CREATE DATABASE IF NOT EXISTS `world_db`;
USE `world_db`;


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
INSERT INTO `countrylanguage` VALUES ('ABW','Papeiamento','F',76.7);
INSERT INTO `countrylanguage` VALUES ('AFG','Balochi','F',0.9);
INSERT INTO `countrylanguage` VALUES ('AGO','Kongo','F',13.2);
INSERT INTO `countrylanguage` VALUES ('AGO','Mbundu','F',21.6);


CREATE TABLE `city` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` char(35) NOT NULL DEFAULT '',
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `District` char(20) NOT NULL DEFAULT '',
  `Population` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CountryCode` (`CountryCode`),
  FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`));

INSERT INTO `city` VALUES (1,'Kabul','AFG',1780000);
INSERT INTO `city` VALUES (2,'Qandahar','AFG',237500);
INSERT INTO `city` VALUES (56,'Luanda','AGO',2022000);
INSERT INTO `city` VALUES (57,'Huambo','AGO',163100);
INSERT INTO `city` VALUES (129,'Oranjestad','ABW',29034);
