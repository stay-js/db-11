DROP DATABASE IF EXISTS `iskola`;

CREATE DATABASE IF NOT EXISTS `iskola`
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

USE `iskola`;

DROP TABLE IF EXISTS `tanar`;

CREATE TABLE `tanar` (
	`nev` varchar(50) NOT NULL,
	`email` varchar(320) PRIMARY KEY NOT NULL
);

DROP TABLE IF EXISTS `vegzettseg`;

CREATE TABLE `vegzettseg` (
	`id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`nev` varchar(50) NOT NULL
);

DROP TABLE IF EXISTS `vegzettsegek`;

CREATE TABLE `vegzettsegek` (
	`vegzettseg_id` int NOT NULL,
	`email` varchar(50) NOT NULL,
	PRIMARY KEY (vegzettseg_id, email),
	FOREIGN KEY (vegzettseg_id) REFERENCES vegzettseg (id),
	FOREIGN KEY (email) REFERENCES tanar (email)
);

DROP TABLE IF EXISTS `tantargy`;

CREATE TABLE `tantargy` (
	`id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`nev` varchar(50) NOT NULL,
	`evfolyam` int NOT NULL,
	`tanterv` varchar(250) NOT NULL
);

DROP TABLE IF EXISTS `tanitja`;

CREATE TABLE `tanitja` (
	`tantargy_id` int NOT NULL,
	`email` varchar(50) NOT NULL,
	PRIMARY KEY (tantargy_id, email),
	FOREIGN KEY (tantargy_id) REFERENCES tantargy (id),
	FOREIGN KEY (email) REFERENCES tanar (email)
);

DROP TABLE IF EXISTS `diak`;

CREATE TABLE `diak` (
	`taj` int PRIMARY KEY NOT NULL,
	`nev` varchar(50) NOT NULL,
	`osztaly` varchar(10) NOT NULL,
	`szuletesi_ido` datetime NOT NULL
);

DROP TABLE IF EXISTS `tanulja`;

CREATE TABLE `tanulja` (
	`tantargy_id` int NOT NULL,
	`taj` int NOT NULL,
	PRIMARY KEY (tantargy_id, taj),
	FOREIGN KEY (tantargy_id) REFERENCES tantargy (id),
	FOREIGN KEY (taj) REFERENCES diak (taj)
);