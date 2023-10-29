-- 3. feladat
SELECT
	*
FROM
	`jegyek`;

-- 4. feladat
SELECT
	`matematika`,
	`angol`
FROM
	`jegyek`
WHERE
	`nev` = 'Tóth Csaba';

-- 5. feladat
SELECT
	`nev`,
	`matematika`,
	`angol`,
	`prog_elm`,
	`prog_gyak`,
	`tortenelem`,
	`fizika`
FROM
	`jegyek`
WHERE
	`osztaly` = '9a';

-- 6. feladat
SELECT
	`nev`,
	((`matematika` + `angol` + `prog_elm` + `prog_gyak` + `tortenelem` + `fizika`) / 6) AS `atlag`
FROM
	`jegyek`
WHERE
	`nev` = 'Kovács Andrea';

-- 7. feladat
SELECT
	COUNT(*) as `db`
FROM
	`jegyek`
WHERE
	`osztaly` LIKE '9%';

-- 8. feladat
SELECT
	COUNT(*) as `db`
FROM
	`jegyek`
WHERE
	`osztaly` LIKE '%a';

-- 9. feladat
SELECT
	AVG(`matematika`) AS `Matematika atlag`
FROM
	`jegyek`;

-- 10. feladat
SELECT
	AVG(((`matematika` + `angol` + `prog_elm` + `prog_gyak` + `tortenelem` + `fizika`) / 6)) AS `atlagos teljesitmeny`
FROM
	`jegyek`
WHERE
	`nev` LIKE 'K%';

-- 11. feladat
SELECT
	`nev`
FROM
	`jegyek`
WHERE
	`prog_elm` > `prog_gyak`;

-- 12. feladat
SELECT
	`nev`,
	`osztaly`,
	`matematika`
FROM
	`jegyek`
ORDER BY
	`matematika`
LIMIT 3;