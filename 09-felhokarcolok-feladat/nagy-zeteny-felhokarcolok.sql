-- 3. feladat
SELECT
	*
FROM
	`felhokarcolok`
ORDER BY
	`magassag` DESC;

-- 4. feladat
SELECT
	*
FROM
	`felhokarcolok`
WHERE
	`varos` = 'Chicago';

-- 5. feladat
SELECT
	`nev`,
	`emeletek`
FROM
	`felhokarcolok`
WHERE
	`felhasznalas` LIKE '%lakóépület%';

-- 6. feladat
SELECT
	`nev`
FROM
	`felhokarcolok`
WHERE
	`nev` LIKE '_1%';

-- 7. feladat
SELECT
	COUNT(*) AS `db`
FROM
	`felhokarcolok`;

-- 8. feladat
SELECT
	COUNT(*) AS `db`
FROM
	`felhokarcolok`
WHERE
	`orszagkod` = 'US';

-- 9. feladat
SELECT
	COUNT(*) AS `db`
FROM
	`felhokarcolok`
WHERE
	`befejezes_eve` BETWEEN 1997 AND 2005;

-- 10. feladat
SELECT
	ROUND(AVG(`emeletek`)) AS `atlag_emelet`
FROM
	`felhokarcolok`
WHERE
	`nev` LIKE '%tower%';

-- 11. feladat
SELECT
	`nev`,
	CONCAT(ROUND(`magassag`), ' m') AS `magassag_meterben`
FROM
	`felhokarcolok`
ORDER BY
	`magassag` DESC
LIMIT 3;

-- 12. feladat
SELECT
	`nev`,
	`orszagkod`,
	IFNULL(`varos`, 'Ismeretlen') AS `varos_neve`,
	`befejezes_eve`,
	`anyag`
FROM
	`felhokarcolok`
WHERE
	`anyag` IN('acél', 'kompozit')
	AND `orszagkod` IN('CN', 'RU', 'MY')
	AND `befejezes_eve` BETWEEN 1990 AND 2000;

-- 13. feladat
SELECT
	MAX(`emeletek`) AS `legtobb_emelet`
FROM
	`felhokarcolok`;

-- 14. feladat
SELECT
	MIN(`befejezes_eve`) AS `elso`,
	MAX(`befejezes_eve`) AS `utolso`
FROM
	`felhokarcolok`;

-- 15. feladat
SELECT
	SUM(`magassag`) AS `ossz_magassag`
FROM
	`felhokarcolok`
WHERE
	`varos` = 'Hong Kong';

-- 16. feladat
SELECT
	`orszagkod`,
	COUNT(*) AS `db`
FROM
	`felhokarcolok`
GROUP BY
	`orszagkod`
ORDER BY
	`db` DESC;

-- 17. feladat
SELECT
	`felhasznalas`,
	AVG(`emeletek`) AS `emeletek_atlagos_szama`
FROM
	`felhokarcolok`
GROUP BY
	`felhasznalas`
ORDER BY
	`emeletek_atlagos_szama` ASC;

-- 18. feladat
SELECT
	`orszagkod`,
	ROUND(AVG(2022 - `befejezes_eve`), 1) AS `atlag_kor`
FROM
	`felhokarcolok`
GROUP BY
	`orszagkod`
ORDER BY
	`atlag_kor`;

-- 19. feladat
SELECT
	`anyag`,
	COUNT(*) AS `db`
FROM
	`felhokarcolok`
WHERE
	`anyag` IS NOT NULL
	AND `befejezes_eve` BETWEEN 1900 AND 2000
GROUP BY
	`anyag`
ORDER BY
	`anyag` DESC;

-- 20. feladat
SELECT
	`varos`
FROM
	`felhokarcolok`
GROUP BY
	`varos`
ORDER BY
	AVG(`magassag`)
	DESC
LIMIT 1;

-- 21. feladat
SELECT
	`nev`,
	`magassag`,
	`emeletek`,
	`magassag` * 100 / `emeletek` AS `egy_emelet_cm`
FROM
	`felhokarcolok`
ORDER BY
	`egy_emelet_cm` DESC;

-- 22. feladat
SELECT
	`orszagkod`,
	`varos`,
	COUNT(*) AS `db`,
	ROUND(AVG(`magassag`), 2) AS `atlag_magassag`
FROM
	`felhokarcolok`
GROUP BY
	`varos`,
	`orszagkod`
ORDER BY
	`db` DESC,
	`atlag_magassag` ASC;

-- 23. feladat
SELECT
	`varos`,
	MAX(`magassag`) - MIN(`magassag`) AS `kulonbseg`
FROM
	`felhokarcolok`
GROUP BY
	`varos`
ORDER BY
	`kulonbseg` DESC;