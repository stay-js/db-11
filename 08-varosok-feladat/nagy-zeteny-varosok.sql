-- 3. feladat
SELECT
	*
FROM
	`magyarorszag`
ORDER BY
	`nepesseg` DESC;

-- 4. feladat
SELECT DISTINCT
	`tipus`
FROM
	`magyarorszag`
ORDER BY
	`tipus` ASC;

-- 5. feladat
SELECT
	COUNT(*) AS `varosok_szama`
FROM
	`magyarorszag`;

-- 6. feladat
SELECT
	COUNT(DISTINCT `tipus`) AS `tipus_db`
FROM
	`magyarorszag`;

-- 7. feladat
SELECT
	COUNT(*) AS `db`
FROM
	`magyarorszag`
WHERE
	`megye` = 'Csongrád-Csanád';

-- 8. feladat
SELECT
	COUNT(*) AS `db`
FROM
	`magyarorszag`
WHERE
	`nev` LIKE '____';

-- 9. feladat
SELECT
	COUNT(*) AS `db`
FROM
	`magyarorszag`
WHERE
	`megye` IN('Békés', 'Fejér');

-- 10. feladat
SELECT
	`megye`,
	COUNT(*) AS `db`
FROM
	`magyarorszag`
GROUP BY
	`megye`
ORDER BY
	`db` DESC;

-- 11. feladat
SELECT
	MAX(`varos_cim_elnyerese`) AS `ev`
FROM
	`magyarorszag`;

-- 12. feladat
SELECT
	`megye`,
	MAX(`varos_cim_elnyerese`) AS `ev`
FROM
	`magyarorszag`
GROUP BY
	`megye`;

-- 13. feladat
SELECT
	MIN(`nepesseg`) AS `minimum__lakossag`
FROM
	`magyarorszag`;

-- 14. feladat
SELECT
	MAX(`nepesseg`) AS `maximum__lakossag`
FROM
	`magyarorszag`;

-- 15. feladat
SELECT
	MAX(`terulet`) AS `maximum__terulet`
FROM
	`magyarorszag`;

-- 16. feladat
SELECT
	`nev`,
	`terulet`
FROM
	`magyarorszag`
ORDER BY
	`terulet` DESC
LIMIT 3;

-- 17. feladat
SELECT
	`nev`,
	`terulet`
FROM
	`magyarorszag`
WHERE
	`megye` = 'Somogy'
ORDER BY
	`terulet` DESC
LIMIT 3;

-- 18. feladat
SELECT
	`nev`,
	ROUND(`nepesseg` / `terulet`, 4) AS `nepsuruseg`
FROM
	`magyarorszag`
ORDER BY
	`nepsuruseg` DESC
LIMIT 1;

-- 19. feladat
SELECT
	SUM(`nepesseg`) AS `lakossag`
FROM
	`magyarorszag`
WHERE
	`tipus` = 'járásszékhely város';

-- 20. feladat
SELECT
	ROUND(SUM(`terulet`), 2) AS `osszterulet`
FROM
	`magyarorszag`
WHERE
	`varos_cim_elnyerese` BETWEEN 2000 AND 2012;

-- 21. feladat
SELECT
	`megye`,
	SUM(`nepesseg`) AS `lakossag`
FROM
	`magyarorszag`
GROUP BY
	`megye`
ORDER BY
	`megye` ASC;

-- 22. feladat
SELECT
	`megye`,
	ROUND(AVG(`nepesseg`)) AS `lakossag`
FROM
	`magyarorszag`
GROUP BY
	`megye`
ORDER BY
	`lakossag` DESC;

-- 23. feladat
SELECT
	`jaras`,
	ROUND(AVG(`terulet`), 2) AS `atlag_terulet`
FROM
	`magyarorszag`
GROUP BY
	`jaras`
ORDER BY
	`atlag_terulet` ASC;

-- 24. feladat
SELECT
	`nev`,
	CONCAT(`nepesseg`, ' fő') AS `lakossag`
FROM
	`magyarorszag`
WHERE
	`tipus` LIKE '%megyei jogú város%'
ORDER BY
	`nepesseg` DESC
LIMIT 1;

-- 25. feladat
SELECT
	`jaras`,
	CONCAT(ROUND(AVG(`magyarorszag`.`terulet`) * 1000000), ' négyzetméter') AS `terulet`
FROM
	`magyarorszag`
WHERE
	`tipus` = 'város'
GROUP BY
	`jaras`
ORDER BY
	ROUND(AVG(`magyarorszag`.`terulet`)) ASC;