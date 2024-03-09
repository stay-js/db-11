DROP DATABASE IF EXISTS `jatekbolt`;

CREATE DATABASE IF NOT EXISTS `jatekbolt`
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

USE `jatekbolt`;

DROP TABLE IF EXISTS `jatek`;

CREATE TABLE `jatek` (
	`cikkszam` varchar(20) PRIMARY KEY NOT NULL,
	`cim` varchar(250) NOT NULL,
	`ar` int NOT NULL,
	`nyelv` varchar(50) NOT NULL,
	`korhatar_min` int NOT NULL,
	`korhatar_max` int,
	`jatekosok_szama_min` int NOT NULL,
	`jatekosok_szama_max` int NOT NULL
);

DROP TABLE IF EXISTS `gyarto`;

CREATE TABLE `gyarto` (
	`weboldal` varchar(250) PRIMARY KEY NOT NULL,
	`nev` varchar(50) NOT NULL
);

DROP TABLE IF EXISTS `gyartja`;

CREATE TABLE `gyartja` (
	`cikkszam` varchar(20) NOT NULL,
	`weboldal` varchar(250) NOT NULL,
	PRIMARY KEY (cikkszam, weboldal),
	FOREIGN KEY (cikkszam) REFERENCES jatek (cikkszam),
	FOREIGN KEY (weboldal) REFERENCES gyarto (weboldal)
);

DROP TABLE IF EXISTS `kategoria`;

CREATE TABLE `kategoria` (
	`id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`nev` varchar(50) NOT NULL
);

DROP TABLE IF EXISTS `kateg`;

CREATE TABLE `kateg` (
	`kateg_id` int NOT NULL,
	`cikkszam` varchar(20) NOT NULL,
	PRIMARY KEY (kateg_id, cikkszam),
	FOREIGN KEY (kateg_id) REFERENCES kategoria (id),
	FOREIGN KEY (cikkszam) REFERENCES jatek (cikkszam)
);

INSERT INTO `jatek` (`cikkszam`, `cim`, `ar`, `korhatar_min`, `korhatar_max`, `jatekosok_szama_min`, `jatekosok_szama_max`, `nyelv`) VALUES
('HPHOGW', 'Harry Potter Hogwarts Battle Monster box angol nyelvű kiegészítő', 10490, 11, NULL, 2, 4,'magyar'),
('DB105', 'Harry Potter: Roxforti csata társasjáték', 19990, 11, NULL, 2, 4, 'magyar'),
('GDR44', 'Uno Flip kártyajáték', 2790, 7, NULL, 2, 10, 'magyar'),
('GWDES', 'A Tiltott Sivatag társasjáték', 8490, 10, NULL, 2, 5 ,'magyar'),
('WM00396NULLML1NULL6', 'Rick and Morty 1000 db puzzle', 5490, 3, 100, 1, 6, 'francia');

INSERT INTO `gyarto` (`weboldal`, `nev`) VALUES
('The Op', 'https://theop.games'),
('Mattel Inc.', 'https://mattel.com'),
('Gamewright', 'https://gamewright.com'),
('Winning Moves Games',	'https://www.winning-moves.com');

INSERT INTO `gyartja` (`cikkszam`, `weboldal`) VALUES
('HPHOGW', 'https://theop.games'),
('DB105', 'https://theop.games'),
('GDR44', 'https://mattel.com'),
('GWDES', 'https://gamewright.com'),
('WM00396-ML1-6', 'https://www.winning-moves.com');

INSERT INTO `kategoria` (`nev`) VALUES
('deck-buildig'),
('kooperatív'),
('kártyajáték'),
('kiegészítő'),
('kompetitív'),
('táblajáték'),
('puzzle');