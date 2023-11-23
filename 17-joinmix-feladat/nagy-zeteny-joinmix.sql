-- 3. feladat
SELECT
	`gyarto`,
	`tipus`,
	`nev`
FROM
	`auto`
	INNER JOIN `szin` ON `szin_id` = `id`
ORDER BY
	`gyarto` ASC,
	`tipus` ASC;

-- 4. feladat
SELECT
	`nev`,
	COUNT(*) AS `db`
FROM
	`szin`
	INNER JOIN `auto` ON `szin_id` = `id`
GROUP BY
	`nev`;

-- 5. feladat
SELECT
	`vnev`,
	`knev`,
	`rendszam`
FROM
	`auto`
	INNER JOIN `szemely` ON `tulaj` = `id`;

-- 6. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `Teljes Név`
FROM
	`szin`
	INNER JOIN `auto` ON `szin_id` = `szin`.`id`
	INNER JOIN `szemely` ON `tulaj` = `szemely`.`id`
WHERE
	`nev` = 'Barna';

-- 7. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `Teljes Név`,
	`fajta`,
	`nev`
FROM
	`szemely`
	INNER JOIN `tulaj` ON `szemely`.`id` = `szemely_id`
	INNER JOIN `hazikedvenc` ON `hazikedvenc_id` = `hazikedvenc`.`id`;

-- 8. feladat
SELECT
	COUNT(*) AS `db`
FROM
	`hazikedvenc`
WHERE
	`fajta` = 'kutya';

-- 9. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `Teljes Név`,
	`kor`
FROM
	`szemely`
	INNER JOIN `tulaj` ON `szemely`.`id` = `szemely_id`
	INNER JOIN `hazikedvenc` ON `hazikedvenc_id` = `hazikedvenc`.`id`
WHERE
	`nev` = 'Lilla';

-- 10. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `Teljes Név`,
	COUNT(*) AS `db`
FROM
	`szemely`
	INNER JOIN `tulaj` ON `szemely`.`id` = `szemely_id`
	INNER JOIN `hazikedvenc` ON `hazikedvenc_id` = `hazikedvenc`.`id`
GROUP BY
	`vnev`,
	`knev`;

-- 11. feladat
SELECT
	`fajta`,
	CONCAT(`vnev`, ' ', `knev`) AS `Tulaj neve`,
	COUNT(*) AS `db`
FROM
	`szemely`
	INNER JOIN `tulaj` ON `szemely`.`id` = `szemely_id`
	INNER JOIN `hazikedvenc` ON `hazikedvenc_id` = `hazikedvenc`.`id`
GROUP BY
	`fajta`,
	`vnev`,
	`knev`;

-- 12. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `Teljes Név`,
	`nev`
FROM
	`szemely`
	INNER JOIN `tanulja` ON `szemely`.`id` = `szemely_id`
	INNER JOIN `tantargy` ON `tantargy_id` = `tantargy`.`id`
ORDER BY
	`Teljes Név` ASC;

-- 13. feladat
SELECT
	ROUND(AVG(`kor`), 2) AS `PHP-t tanulok átlag kora`
FROM
	`szemely`
	INNER JOIN `tanulja` ON `szemely`.`id` = `szemely_id`
	INNER JOIN `tantargy` ON `tantargy_id` = `tantargy`.`id`
WHERE
	`nev` = 'PHP';

-- 14. feladat
SELECT
	`nev`
FROM
	`auto`
	INNER JOIN `szemely` ON `tulaj` = `szemely`.`id`
	INNER JOIN `tulaj` ON `szemely`.`id` = `szemely_id`
	INNER JOIN `hazikedvenc` ON `hazikedvenc_id` = `hazikedvenc`.`id`
WHERE
	`rendszam` = 'AAA-666';

-- 15. feladat
SELECT
	`tantargy`.`nev` AS `Tantárgyak`
FROM
	`szin`
	INNER JOIN `auto` ON `szin`.`id` = `szin_id`
	INNER JOIN `szemely` ON `tulaj` = `szemely`.`id`
	INNER JOIN `tanulja` ON `szemely`.`id` = `szemely_id`
	INNER JOIN `tantargy` ON `tantargy_id` = `tantargy`.`id`
WHERE
	`szin`.`nev` = 'Fehér';

-- 16. feladat
SELECT
	COUNT(*) AS `Adatbázist tanulók száma`
FROM
	`tanulja`
	INNER JOIN `tantargy` ON `tantargy_id` = `tantargy`.`id`
WHERE
	`nev` LIKE 'Adatbázis%';

-- 17. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `Teljes Név`
FROM
	`auto`
	INNER JOIN `szemely` ON `tulaj` = `szemely`.`id`
	INNER JOIN `tanulja` ON `szemely`.`id` = `szemely_id`
	INNER JOIN `tantargy` ON `tantargy_id` = `tantargy`.`id`
WHERE
	`gyarto` = 'VW'
	AND `nev` = 'Diszkrét matematika';

-- 18. feladat
SELECT
	`vnev`,
	`knev`,
	`kor`,
	`hazikedvenc`.`nev`
FROM
	`szin`
	INNER JOIN `auto` ON `szin`.`id` = `szin_id`
	INNER JOIN `szemely` ON `tulaj` = `szemely`.`id`
	INNER JOIN `tanulja` ON `szemely`.`id` = `tanulja`.`szemely_id`
	INNER JOIN `tantargy` ON `tantargy_id` = `tantargy`.`id`
	INNER JOIN `tulaj` ON `tulaj`.`szemely_id` = `szemely`.`id`
	INNER JOIN `hazikedvenc` ON `hazikedvenc_id` = `hazikedvenc`.`id`
WHERE
	`szin`.`nev` = 'Fehér'
	AND `tantargy`.`nev` = 'Hálózatok';

-- 19. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `Több állattal rendelkező személyek`
FROM
	`szemely`
	INNER JOIN `tulaj` ON `szemely_id` = `id`
GROUP BY
	`vnev`,
	`knev`,
	`id`
HAVING
	COUNT(*) >= 2;

-- 20. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `Kocsival nem rendelkezők`
FROM
	`auto`
	RIGHT OUTER JOIN `szemely` ON `tulaj` = `id`
WHERE
	`rendszam` IS NULL;

-- 21. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `Házikedvenccel nem rendelkezők`
FROM
	`szemely`
	LEFT OUTER JOIN `tulaj` ON `szemely_id` = `szemely`.`id`
WHERE
	`hazikedvenc_id` IS NULL;

-- 22. feladat
SELECT
	`nev`
FROM
	`tantargy`
	LEFT OUTER JOIN `tanulja` ON `tantargy_id` = `id`
WHERE
	`tantargy_id` IS NULL;