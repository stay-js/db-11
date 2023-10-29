-- 3. feladat
SELECT
	*
FROM
	`kerekparok`
WHERE
	`nem` = 'női'
ORDER BY
	`ar` DESC;

-- 4. feladat
SELECT
	`nev`,
	`szin`
FROM
	`kerekparok`
WHERE
	`szin` LIKE '%kék%'
ORDER BY
	`nev` ASC;

-- 5. feladat
SELECT
	*
FROM
	`kerekparok`
WHERE
	`nev` LIKE '____MTB%';

-- 6. feladat
SELECT
	COUNT(*) AS `sorok_szama`
FROM
	`kerekparok`;

-- 7. feladat
SELECT
	COUNT(DISTINCT `gyarto`) AS `gyartok_szama`
FROM
	`kerekparok`;

-- 8. feladat
SELECT
	COUNT(*) AS `rockrider_db`
FROM
	`kerekparok`
WHERE
	`gyarto` = 'Rockrider';

-- 9. feladat
SELECT
	SUM(`keszlet`) AS `teljes_keszlet`
FROM
	`kerekparok`;

-- 10. feladat
SELECT
	SUM(`keszlet` * `ar`) AS `teljes_ertek`
FROM
	`kerekparok`;

-- 11. feladat
SELECT
	MAX(`sebesseg`) AS `legnagyobb_sebesseg`
FROM
	`kerekparok`
WHERE
	`ar` BETWEEN 90000 AND 150000;

-- 12. feladat
SELECT
	`nev`,
	`gyarto`,
	CONCAT(`ar`, ' Ft') AS `ar_forintban`
FROM
	`kerekparok`
ORDER BY
	`ar` DESC
LIMIT 5;

-- 13. feladat
SELECT
	`nev`,
	`sebesseg`,
	`meret`,
	`ar`
FROM
	`kerekparok`
WHERE ((`nem` = 'férfi'
		AND `tipus` = 'városi')
	OR(`nem` = 'női'
		AND `tipus` = 'országúti'))
AND `meret` IN('S', 'M', '54');

-- 14. feladat
SELECT
	MIN(`keszlet`) AS `minimum_keszlet`
FROM
	`kerekparok`
WHERE
	`keszlet` <> 0;

-- 15. feladat
SELECT
	MIN(`kerek_meret`) AS `minimum`,
	MAX(`kerek_meret`) AS `maximum`,
	ROUND(AVG(`kerek_meret`), 1) AS `atlag`
FROM
	`kerekparok`;

-- 16. feladat
SELECT
	`nem`,
	ROUND(AVG(`ar`)) AS `atlag_ar`
FROM
	`kerekparok`
GROUP BY
	`nem`
ORDER BY
	`atlag_ar` DESC;

-- 17. feladat
SELECT
	`gyarto`,
	CONCAT(ROUND(MIN(`ar`) / 420), ' EUR') AS `ar_euroban`
FROM
	`kerekparok`
GROUP BY
	`gyarto`
ORDER BY
	ROUND(MIN(`ar`) / 420) ASC;

-- 18. feladat
SELECT
	`tipus`,
	ROUND(AVG(`ar`), 2) AS `atlag_ar`
FROM
	`kerekparok`
GROUP BY
	`tipus`
ORDER BY
	`tipus` ASC;

-- 19. feladat
SELECT
	`nem`,
	`tipus`,
	SUM(`keszlet`) AS `db`
FROM
	`kerekparok`
WHERE
	`ar` < 500000
GROUP BY
	`nem`,
	`tipus`
ORDER BY
	`nem` DESC,
	`tipus` ASC,
	`db` ASC;

-- 20. feladat
SELECT
	`gyarto`
FROM
	`kerekparok`
WHERE
	`tipus` = 'városi'
GROUP BY
	`gyarto`
HAVING
	COUNT(*) >= 5;