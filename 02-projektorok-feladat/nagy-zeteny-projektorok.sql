-- 3. feladat
SELECT
	*
FROM
	`projektorok`;

-- 4. feladat
SELECT
	`nev`
FROM
	`projektorok`
WHERE
	`projektor` = 1
ORDER BY
	`nev` ASC;

-- 5. feladat
SELECT
	`nev`,
	`elvitte`
FROM
	`projektorok`
WHERE
	`projektor` = 4
ORDER BY
	`elvitte` DESC;

-- 6. feladat
SELECT DISTINCT
	`nev`,
	`terem`
FROM
	`projektorok`
WHERE
	`atalakito` = 'HDMI->VGA';

-- 7. feladat
SELECT DISTINCT
	`nev`,
	`terem`
FROM
	`projektorok`
WHERE
	`hangszoro` = 'Logi 5.1';

-- 8. feladat
SELECT
	`nev`
FROM
	`projektorok`
WHERE
	`terem` IS NULL;

-- 9. feladat
SELECT
	`nev`
FROM
	`projektorok`
WHERE
	`nev` IS NOT NULL
	AND `hangszoro` IS NULL
ORDER BY
	`nev` ASC;

-- 10. feladat
SELECT
	`nev`
FROM
	`projektorok`
WHERE
	`atalakito` IS NOT NULL
ORDER BY
	`nev` ASC;

-- 11. feladat
SELECT DISTINCT
	`nev`
FROM
	`projektorok`
WHERE
	`projektor` IN(1, 3, 4)
ORDER BY
	`nev` ASC;

-- 12. feladat
SELECT
	`nev`,
	IFNULL(`terem`, 'ismeretlen')
FROM
	`projektorok`
WHERE
	`visszahozta` IS NULL;

-- 13. feladat
SELECT
	`terem`,
	`elvitte`
FROM
	`projektorok`
ORDER BY
	`elvitte` DESC
LIMIT 1;

-- 14. feladat
SELECT
	`nev`
FROM
	`projektorok`
WHERE
	`terem` BETWEEN 15 AND 25;

-- 15. feladat
SELECT
	`nev`
FROM
	`projektorok`
WHERE
	`terem` BETWEEN 100 AND 199
	AND `hangszoro` IS NOT NULL;

-- 16. feladat
SELECT
	`projektor`,
	`elvitte`
FROM
	`projektorok`
WHERE
	`nev` IS NULL
	AND `visszahozta` IS NULL;