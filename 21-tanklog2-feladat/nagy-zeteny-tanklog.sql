SET sql_mode = ANSI;

-- 3. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `nev`,
	`varos`,
	`email`
FROM
	`vasarlok`
WHERE
	`kartya` = 'MasterCard'
ORDER BY
	`nev` DESC;

-- 4. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `nev`,
	`kor`,
	`cim`
FROM
	`vasarlok`
WHERE
	`cim` LIKE '%krt.%'
ORDER BY
	`kor` ASC;

-- 5. feladat
SELECT
	SUM(`liter`) AS `osszmennyiseg`
FROM
	`tankolasok`
WHERE
	`nev` = 'PB'
	AND `hatosagi` IS FALSE;

-- 6. feladat
SELECT
	COUNT(*) AS `fo`
FROM
	`vasarlok`
WHERE
	`knev` = 'Izabella';

-- 7. feladat
SELECT
	*
FROM
	`vasarlok`
	INNER JOIN `tankolasok` ON `vasarlok`.`id` = `vasarlo_id`;

-- 8. feladat
SELECT
	`nem`,
	CONCAT(SUM(`liter` * `egysegar`), ' Ft') AS `mennyiseg`
FROM
	`vasarlok`
	INNER JOIN `tankolasok` ON `vasarlok`.`id` = `vasarlo_id`
WHERE
	`kartya` IS NOT NULL
GROUP BY
	`nem`
ORDER BY
	`liter` * `egysegar` DESC;

-- 9. feladat
SELECT
	CONCAT(SUM(`liter`), ' liter') AS `mennyiseg`
FROM
	`vasarlok`
	INNER JOIN `tankolasok` ON `vasarlok`.`id` = `vasarlo_id`
WHERE
	`nev` = 'Pearl'
	AND `tipus` = 'diesel'
	AND `kor` >= 52;

-- 10. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `vasarlo`,
	`datum`,
	`nev`,
	`liter` * `egysegar` AS `osszeg`
FROM
	`vasarlok`
	INNER JOIN `tankolasok` ON `vasarlok`.`id` = `vasarlo_id`
WHERE
	`liter` BETWEEN 21 AND 45
	AND `vasarlok`.`varos` IN('Budapest', 'Tamási', 'Nyíregyháza', 'Tarján')
	AND `egysegar` < 627;

-- 11. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `vasarlo`,
	`datum`,
	`liter` * `egysegar` AS `osszeg`
FROM
	`vasarlok`
	INNER JOIN `tankolasok` ON `vasarlok`.`id` = `vasarlo_id`
ORDER BY
	`osszeg` ASC
LIMIT 1;

-- 12. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `vasarlo`,
	SUM(`liter` * `egysegar`) AS `fizetett`
FROM
	`vasarlok`
	INNER JOIN `tankolasok` ON `vasarlok`.`id` = `vasarlo_id`
WHERE
	`vasarlok`.`varos` = `tankolasok`.`varos`
GROUP BY
	`vasarlo`
ORDER BY
	`fizetett` ASC;

-- 13. feladat
SELECT
	CONCAT(`vnev`, ' ', `knev`) AS `nev`
FROM
	`vasarlok`
	LEFT OUTER JOIN `tankolasok` ON `vasarlok`.`id` = `vasarlo_id`
WHERE
	`tankolasok`.`id` IS NULL;