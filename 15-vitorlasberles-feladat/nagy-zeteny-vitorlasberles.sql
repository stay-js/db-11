-- 3. feladat
SELECT DISTINCT
	`tipus`
FROM
	`hajo`
ORDER BY
	`tipus` ASC;

-- 4. feladat
SELECT
	MIN(`dij`) AS `minimum`
FROM
	`hajo`;

-- 5. feladat
SELECT
	`nev`,
	`utas`,
	`dij`
FROM
	`hajo`
ORDER BY
	`dij` DESC
LIMIT 3;

-- 6. feladat
SELECT
	`tipus`,
	ROUND(AVG(`dij`), 2) AS `Átlagos viteldíj`
FROM
	`hajo`
GROUP BY
	`tipus`;

-- 7. feladat
SELECT
	`nev`,
	`dij` * `utas` AS `Bevétel`
FROM
	`hajo`;

-- 8. feladat
SELECT
	`nev`,
	COUNT(*) AS `Bérlés`
FROM
	`hajo`
	INNER JOIN `tura` ON `regiszter` = `hajoazon`
GROUP BY
	`nev`;

-- 9. feladat
SELECT
	`nev`,
	SUM(`nap`) AS `Bérelt napok száma`
FROM
	`hajo`
	INNER JOIN `tura` ON `regiszter` = `hajoazon`
GROUP BY
	`nev`
ORDER BY
	`Bérelt napok száma` DESC;

-- 10. feladat
SELECT
	SUM(`szemely`) AS `Fő`
FROM
	`hajo`
	INNER JOIN `tura` ON `regiszter` = `hajoazon`
WHERE
	`tipus` = 'Kalóz';

-- 11. feladat
SELECT
	`nev`
FROM
	`hajo`
	INNER JOIN `tura` ON `regiszter` = `hajoazon`
WHERE
	`nap` = 7;

-- 12. feladat
SELECT
	`nev`,
	ROUND(`dij` / `utas`) AS `Egy főre jutó bérleti díj`
FROM
	`hajo`
ORDER BY
	`nev` ASC;

-- 13. feladat
SELECT
	`nev`,
	SUM(`nap` * `dij`) AS `Összbevétel`
FROM
	`hajo`
	INNER JOIN `tura` ON `regiszter` = `hajoazon`
GROUP BY
	`nev`
ORDER BY
	`Összbevétel` DESC;

-- 14. feladat
SELECT
	`nev`,
	COUNT(*) AS `Bérlések száma`
FROM
	`hajo`
	INNER JOIN `tura` ON `regiszter` = `hajoazon`
WHERE
	`nev` LIKE 'HUN-%'
GROUP BY
	`nev`
ORDER by `nev` DESC;

-- 15. feladat
SELECT
	COUNT(*) AS `db`
FROM
	`hajo`
	INNER JOIN `tura` ON `regiszter` = `hajoazon`
WHERE
	`szemely` = `utas`;