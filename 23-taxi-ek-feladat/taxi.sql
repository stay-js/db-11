DROP DATABASE IF EXISTS `taxi`;

CREATE DATABASE IF NOT EXISTS `taxi`
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

USE `taxi`;

DROP TABLE IF EXISTS `sofor`;

CREATE TABLE `sofor` (
	`engedely` int PRIMARY KEY NOT NULL,
	`telefonszam` varchar(20) NOT NULL,
	`nev` varchar(50) NOT NULL,
	`rendszam` varchar(12),
	`tipus` varchar(50) NOT NULL,
	`ferohely` int NOT NULL
);

DROP TABLE IF EXISTS `ut`;

CREATE TABLE `ut` (
	`utas_nev` varchar(50) NOT NULL,
	`idopont` datetime NOT NULL,
	`indulasi_cim` varchar(50) NOT NULL,
	`uti_cel` varchar(50) NOT NULL,
	`megtett_km` int NOT NULL,
	PRIMARY KEY (utas_nev, idopont)
);

DROP TABLE IF EXISTS `utak`;

CREATE TABLE `utak` (
	`engedely` int NOT NULL,
	`utas_nev` varchar(50) NOT NULL,
	`idopont` datetime NOT NULL,
	PRIMARY KEY (engedely, utas_nev, idopont),
	FOREIGN KEY (engedely) REFERENCES sofor (engedely)
);