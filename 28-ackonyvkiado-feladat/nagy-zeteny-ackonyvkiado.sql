-- 2. feladat
DROP DATABASE IF EXISTS `ackonyvkiado`;

CREATE DATABASE IF NOT EXISTS `ackonyvkiado`
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

-- 3. feladat
USE `ackonyvkiado`;

-- 4. feladat
DROP TABLE IF EXISTS `regeny`;

CREATE TABLE `regeny` (
	`id` int AUTO_INCREMENT PRIMARY KEY NOT NULL,
	`magyar` varchar(50) NOT NULL,
    `angol` varchar(50) NOT NULL,
    `ev` int NOT NULL,
	`ar` int NOT NULL
);

-- 5. feladat
DROP TABLE IF EXISTS `rendeles`;

CREATE TABLE `rendeles` (
	`id` int AUTO_INCREMENT PRIMARY KEY NOT NULL,
	`regenyid` int NOT NULL,
    `datum` date NOT NULL,
	`db` int NOT NULL
);

-- 6. feladat
INSERT INTO `regeny` (`id`, `magyar`, `angol`, `ev`, `ar`) VALUES
(1, 'A láthatatlan kéz', 'The Moving Finger', 1942, 3990),
(2, 'És eljő a halál...', 'Death Comes as the End', 1944, 3999),
(3, 'Egy marék rozs', 'A Pocket Full of Rye', 1953, 5999),
(4, 'Zátonyok közt', 'Taken at the Flood', 1948, 3990);

-- 7. feladat
INSERT INTO `rendeles` (`regenyid`, `datum`, `db`) VALUES
(4, '2023-02-15', 32),
(1, '2023-02-27', 1);

-- 8. feladat
SELECT
    `magyar`,
    `angol`
FROM
    `regeny`
ORDER BY
    `ar` ASC
LIMIT 1;

-- 9. feladat
SELECT
    `magyar`,
    `angol`,
    `db`
FROM
    `regeny`
INNER JOIN `rendeles` ON `regeny`.`id` = `regenyid`;

-- 10. feladat
DELETE
FROM
    `rendeles`
WHERE
    `regenyid` = (
    SELECT
        `id`
    FROM
        `regeny`
    WHERE
        `angol` = 'The Moving Finger'
);

-- 11. feladat
ALTER TABLE
    `regeny` ADD `foszereplo` ENUM('Marple', 'Poirot') DEFAULT NULL;

-- 12. feladat
UPDATE
    `regeny`
SET
    `ar` = 4999
WHERE
    `angol` = 'Death Comes as the End';

-- 13. feldat
SELECT
    CONCAT(SUM(`ar`), ' Ft') AS `ossz`
FROM
    `regeny`;