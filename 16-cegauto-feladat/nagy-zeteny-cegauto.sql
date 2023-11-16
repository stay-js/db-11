-- 3. feladat
SELECT
	COUNT(DISTINCT `tipus`) AS `toyotadb`
FROM
	`auto`
WHERE
	`gyarto` = 'Toyota';

-- 4. feladat
SELECT
	`szin`
FROM
	`auto`
GROUP BY
	`szin`
ORDER BY
	COUNT(*)
	DESC
LIMIT 1; 

-- 5. feladat
SELECT
	`nem`,
	COUNT(*) AS `db`
FROM
	`auto`
	INNER JOIN `munkatars` ON `id` = `munkatars_id`
WHERE
	`automata` IS TRUE
GROUP BY
	`nem`;

-- 6. feladat
SELECT
	`gyarto`,
	`tipus`,
	COUNT(*) AS `db`
FROM
	`auto`
GROUP BY
	`gyarto`,
	`tipus`
ORDER BY
	`gyarto` ASC,
	`tipus` ASC; 

-- 7. feladat
SELECT
	`vnev`,
	`knev`,
	`rendszam`
FROM
	`auto`
	INNER JOIN `munkatars` ON `id` = `munkatars_id`
ORDER BY
	`vnev` ASC,
	`knev` ASC;

-- 8. feladat
SELECT
	`vnev`,
	`knev`,
	`rendszam`
FROM
	`auto`
	INNER JOIN `munkatars` ON `id` = `munkatars_id`
WHERE
	`auto`.`kor` <= 6;

-- 9. feladat
SELECT DISTINCT
	`tipus`
FROM
	`auto`
WHERE
	`gyarto` = 'Opel'
ORDER BY
	`tipus`;

-- 10. feladat
SELECT
	`vnev`,
	`knev`
FROM
	`auto`
	INNER JOIN `munkatars` ON `id` = `munkatars_id`
WHERE
	`varos` = 'Budapest'
	AND `gyarto` = 'Toyota';

-- 11. feladat
SELECT
	`vnev`,
	`knev`,
	`rendszam`
FROM
	`auto`
	INNER JOIN `munkatars` ON `id` = `munkatars_id`
WHERE
	`varos` = 'Budapest'
	AND(`uzemanyag` = 'dízel'
		OR `kivitel` = 'ferdehátú')
ORDER BY
	`rendszam` DESC;

-- 12. feladat
SELECT
	`rendszam`,
	`gyarto`,
	`tipus`,
	`knev`
FROM
	`auto`
	INNER JOIN `munkatars` ON `id` = `munkatars_id`
WHERE
	`gyarto` IN('Opel', 'Skoda')
	AND `auto`.`kor` BETWEEN 3 AND 5
ORDER BY `rendszam` DESC;

-- 13. feladat
SELECT
	SUM(`csomagter`) AS `osszliter`
FROM
	`auto`
	INNER JOIN `munkatars` ON `id` = `munkatars_id`
WHERE
	`nem` = 'férfi';

-- 14. feladat
SELECT
	`gyarto`,
	COUNT(*) AS `db`
FROM
	`auto`
	INNER JOIN `munkatars` ON `id` = `munkatars_id`
WHERE
	`nem` = 'nő'
GROUP BY
	`gyarto`;

-- 15. feladat
SELECT
	`gyarto`,
	AVG(`csomagter`) AS `csomagter_atlag`,
	MAX(`csomagter`) AS `legnagyobb_csomagter`
FROM
	`auto`
GROUP BY
	`gyarto`;