-- 1. feladat
DROP DATABASE IF EXISTS `taxi`;

CREATE DATABASE IF NOT EXISTS `taxi`
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

USE `taxi`;

-- 2. feladat
DROP TABLE IF EXISTS `szemely`;

CREATE TABLE `szemely` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nev` varchar(45),
  `szuletett` date,
  `telefon` varchar(45)
);

-- 3. feladat
DROP TABLE IF EXISTS `tipus`;

CREATE TABLE `tipus` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `gyartmany` varchar(45),
  `tipus` varchar(45),
  `loero` varchar(11),
  `ulesek` varchar(11),
  `fajta` varchar(45),
  `csomagter` int
);

-- 4. feladat
ALTER TABLE `tipus`
ADD `uzemanyag` enum('benzin', 'diesel', 'hibrid', 'elektromos') NOT NULL,
ADD `fogyasztas` double,
ADD `kw` int DEFAULT NULL;

ALTER TABLE `tipus`
RENAME COLUMN `fajta` TO `kialakitas`;

ALTER TABLE `szemely`
ADD `email` varchar(50) NOT NULL;

-- 5. feladat
INSERT INTO `tipus` (`id`, `gyartmany`, `tipus`, `loero`, `ulesek`, `kialakitas`, `kw`, `uzemanyag`, `fogyasztas`) VALUES
(1, 'Tokoma', 'Prince', 160, 5, 'ferdehátú', 400, 'hibrid', 2.3),
(2, 'Tokoma', 'Avena', 132, 5, 'kombi', 522, 'diesel', 4.9),
(3, 'MN', 'Gold', 105, 5, 'ferdehátú', 380, 'benzin', 7.6),
(4, 'MN', 'Gold', 134, 5, 'ferdehátú', 348, 'elektromos', 0),
(11, 'Bolt', 'On', 69, 4, 'ferdehátú', 220, 'benzin', 3.68);

-- 6. feladat
SELECT
	COUNT(*) as `db`
FROM
	`tipus`
WHERE
	`kialakitas` = 'ferdehátú';

-- 7. feladat
SELECT
	`uzemanyag`,
	AVG(`fogyasztas`) as `fogyasztas`
FROM
	`tipus`
GROUP BY
	`uzemanyag`;

-- 8. feladat
SELECT
	`gyartmany`
FROM
	`tipus`
ORDER BY
	`fogyasztas` ASC
LIMIT 1;

-- 9. feladat
INSERT INTO `szemely` (`id`, `nev`, `szuletett`, `telefon`, `email`) VALUES
(2000, 'Pap Hajnalka', '1994-10-26', '(95) 596-243', 'PapHajnalka@teleworm.us'),
(2001, 'Takáts Alexander', '1989-08-17', '(74) 557-850', 'TakatsAlexander@fleckens.hu'),
(2002, 'Farkas Nikoletta', '1966-01-24', '(46) 453-909', 'FarkasNikoletta@cuvox.de'),
(2799, 'Dobos Bendegúz', '1968-03-31', '(78) 692-089', 'DobosBendeguz@teleworm.us');

-- 10. feladat
DROP TABLE IF EXISTS `auto`;

CREATE TABLE `auto` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `tipus` int,
  `tulaj` int,
  `rendszam` char(7),
  `szin` varchar(12)
);

-- 11. feladat
DROP TABLE IF EXISTS `ut`;

CREATE TABLE `ut` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `auto_id` int,
  `sofor_id` int,
  `indulasi_ido` timestamp,
  `erkezesi_ido` timestamp,
  `km` float,
  `ar` int
);