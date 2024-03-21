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
	`id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`weboldal` varchar(250) NOT NULL,
	`nev` varchar(50) NOT NULL
);

DROP TABLE IF EXISTS `gyartja`;

CREATE TABLE `gyartja` (
    `cikkszam` varchar(20) NOT NULL,
    `gyarto_id` int NOT NULL,
    PRIMARY KEY (cikkszam, gyarto_id)
    -- FOREIGN KEY (cikkszam) REFERENCES jatek (cikkszam),
    -- FOREIGN KEY (gyarto_id) REFERENCES gyarto (id)
);

DROP TABLE IF EXISTS `kategoria`;

CREATE TABLE `kategoria` (
	`id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`nev` varchar(50) NOT NULL
);

DROP TABLE IF EXISTS `kateg`;

CREATE TABLE `kateg` (
	`cikkszam` varchar(20) NOT NULL,
	`kateg_id` int NOT NULL,
	PRIMARY KEY (cikkszam, kateg_id)
	-- FOREIGN KEY (cikkszam) REFERENCES jatek (cikkszam),
	-- FOREIGN KEY (kateg_id) REFERENCES kategoria (id)
);

INSERT INTO `jatek` (`cikkszam`, `cim`, `ar`, `korhatar_min`, `korhatar_max`, `jatekosok_szama_min`, `jatekosok_szama_max`, `nyelv`) VALUES
('HPHOGW', 'Harry Potter Hogwarts Battle Monster box angol nyelvű kiegészítő', 10490, 11, NULL, 2, 4,'magyar'),
('DB105', 'Harry Potter: Roxforti csata társasjáték', 19990, 11, NULL, 2, 4, 'magyar'),
('GDR44', 'Uno Flip kártyajáték', 2790, 7, NULL, 2, 10, 'magyar'),
('GWDES', 'A Tiltott Sivatag társasjáték', 8490, 10, NULL, 2, 5 ,'magyar'),
('WM00396NULLML1NULL6', 'Rick and Morty 1000 db puzzle', 5490, 3, 100, 1, 6, 'francia');

INSERT INTO `gyarto` (`nev`, `weboldal`) VALUES
('The Op', 'https://theop.games'),
('Mattel Inc.', 'https://mattel.com'),
('Gamewright', 'https://gamewright.com'),
('Winning Moves Games',	'https://www.winning-moves.com');

INSERT INTO `gyartja` (`cikkszam`, `gyarto_id`) VALUES
('HPHOGW', 1),
('DB105', 1),
('GDR44', 2),
('GWDES', 3),
('WM00396-ML1-6', 4);

INSERT INTO `kategoria` (`nev`) VALUES
('deck-buildig'),
('kooperatív'),
('kártyajáték'),
('kiegészítő'),
('kompetitív'),
('táblajáték'),
('puzzle');

INSERT INTO `kateg` (`cikkszam`, `kateg_id`) VALUES
('HPHOGW', 1),
('HPHOGW', 2),
('HPHOGW', 3),
('DB105', 1),
('DB105', 2),
('DB105', 3),
('DB105', 4),
('GDR44', 3),
('GDR44', 5),
('GWDES', 2),
('GWDES', 6),
('WM00396-ML1-6', 7);