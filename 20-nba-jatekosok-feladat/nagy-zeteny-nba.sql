-- 1. feladat
DROP DATABASE IF EXISTS `nagy-nba`;

-- 2. feladat
CREATE DATABASE IF NOT EXISTS `nagy-nba`
DEFAULT CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

-- 3. feladat
USE `nagy-nba`;

-- 4. feladat
CREATE TABLE `jatekos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nev` varchar(25) DEFAULT NULL,
  `kor` tinyint DEFAULT NULL,
  `magassag` float(5,2) DEFAULT NULL,
  `csapat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 5. feladat
TRUNCATE TABLE `jatekos`;

-- 6. feladat
INSERT INTO `jatekos` (`nev`, `kor`, `magassag`, `csapat`) VALUES
	('Matt Fish', 27, 210.82, 'MIA')
;

-- 7. feladat
INSERT INTO `jatekos` (`nev`, `kor`, `magassag`, `csapat`) VALUES
	('Walter McCarty', 27, 208.28, 'BOS'),
	('James Posey', 31, 203.2, 'BOS'),
	('James Michael McAdoo', 22, 205.74, 'GSW')
;

-- 8. feladat
SELECT
	`csapat`,
	AVG(`magassag`) AS `atalag_magassag`
FROM
	`jatekos`
GROUP BY
	`csapat`;

-- 9. feladat
SELECT
	`nev`
FROM
	`jatekos`
ORDER BY
	`magassag` DESC
LIMIT 1;

-- 10. feladat
SELECT
	`csapat`,
	`kor`
FROM
	`jatekos`
ORDER BY
	`kor` ASC
LIMIT 1