-- 1. feladat
SELECT
	`kiado`,
	COUNT(*) AS `db`
FROM
	`konyvek`
GROUP BY
	`kiado`
ORDER BY
	`kiado` ASC;

-- 2. feladat
SELECT
	`cim`,
	`arak` AS `ar`
FROM
	`arak`
	INNER JOIN `konyvek` ON `arak`.`isbn` = `konyvek`.`isbn`
WHERE
	`bolt` = 'Piros'
ORDER BY
	`cim` ASC;

-- 3. feladat
SELECT
	`nev`,
	COUNT(*) AS `db`
FROM
	`tulajdonok`
	INNER JOIN `emberek` ON `ember_id` = `id`
WHERE
	`elolvasva` IS TRUE
GROUP BY
	`nev`
ORDER BY
	`db` DESC;

-- 4. feladat
SELECT
	`kiado`,
	COUNT(*) AS `db`
FROM
	`konyvek`
GROUP BY
	`kiado`
ORDER BY
	`db` DESC
LIMIT 1;

-- 5. feladat
SELECT
	`nem`,
	COUNT(*) AS `db`
	-- nem jó a minta
FROM
	`konyvek`
	INNER JOIN `tulajdonok` ON `konyvek`.`isbn` = `tulajdonok`.`isbn`
	INNER JOIN `emberek` ON `ember_id` = `id`
WHERE
	`szerzo` = 'Philip K. Dick'
GROUP BY
	`nem`
ORDER BY
	`db` DESC
LIMIT 1;

-- 6. feladat
SELECT
	`nev`
FROM
	`tulajdonok`
	INNER JOIN `emberek` ON `ember_id` = `id`
WHERE
	`elolvasva` IS TRUE
GROUP BY
	`nev`
ORDER BY
	COUNT(*)
	DESC,
	`nev` ASC
LIMIT 1;

-- 7. feladat
SELECT
	`sorozat`,
	COUNT(*) AS `db`
FROM
	`konyvek`
WHERE
	`isbn` LIKE '%3324%'
	AND `sorozat` IS NOT NULL
GROUP BY
	`sorozat`;

-- 8. feladat
SELECT
	COUNT(*) AS `db`
FROM
	`konyvek`;

-- 9. feladat
SELECT
	`cim`,
	SUM(`arak`) AS `fizetendo`
FROM
	`arak`
	INNER JOIN `konyvek` ON `arak`.`isbn` = `konyvek`.`isbn`
GROUP BY
	`cim`
ORDER BY
	`fizetendo` ASC;

-- 10. feladat
-- nekem nem az jön ki
SELECT DISTINCT
	`cim`
FROM
	`konyvek`
	INNER JOIN `tulajdonok` ON `konyvek`.`isbn` = `tulajdonok`.`isbn`
	INNER JOIN `emberek` ON `ember_id` = `id`
WHERE
	`kor` < 10
ORDER BY
	`cim` ASC;

-- 11. feladat
SELECT
	COUNT(*) AS `db`
FROM
	`konyvek`
WHERE
	`sorozat` IS NULL;

-- 12. feladat
SELECT
	`cim`,
	`oldalak_szama`
FROM
	`konyvek`
ORDER BY
	`oldalak_szama` DESC
LIMIT 1;

-- 13. feladat
SELECT
	`sorozat`,
	SUM(`oldalak_szama`) AS `oldalak_szama`
FROM
	`konyvek`
GROUP BY
	`sorozat`
ORDER BY
	`oldalak_szama` DESC
LIMIT 1;

-- 14. feladat
SELECT
	`konyvek`.`isbn`,
	`cim`,
	`oldalak_szama`
FROM
	`arak`
	INNER JOIN `konyvek` ON `arak`.`isbn` = `konyvek`.`isbn`
WHERE
	`sorozat` = 'varázslók'
	AND `bolt` = 'Piros'
ORDER BY
	`arak` ASC
LIMIT 1;

-- 15. feladat
SELECT
	SUM(`oldalak_szama`) AS `oldalak`
FROM
	`konyvek`
WHERE
	`fordito` = 'Tóth Tamás Boldizsár';

-- 16. feladat
SELECT
	`cim`,
	`eredeti_cim`,
	`sorozat`
FROM
	`konyvek`
WHERE
	`kategoria` = 'fantasy'
ORDER BY
	`isbn`;

-- 17. feladat
SELECT
	AVG(`kor`) AS `atlag_kor`
FROM
	`konyvek`
	INNER JOIN `tulajdonok` ON `konyvek`.`isbn` = `tulajdonok`.`isbn`
	INNER JOIN `emberek` ON `ember_id` = `id`
WHERE
	`sorozat` = 'Twilight saga';