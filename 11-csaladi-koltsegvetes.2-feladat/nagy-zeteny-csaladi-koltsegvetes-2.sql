-- 3. feladat
SELECT
	`kategoria`,
	SUM(`mennyiseg`) AS `db`
FROM
	`kiadasok`
GROUP BY
	`kategoria`
ORDER BY
	`db` ASC;

-- 4. feladat
SELECT
	`nev`,
	SUM(`mennyiseg` * `egysegar`) AS `koltes`
FROM
	`kiadasok`
GROUP BY
	`nev`
ORDER BY
	`koltes` DESC;

-- 5. feladat
SELECT
	`nev`,
	SUM(`mennyiseg`) AS `db`
FROM
	`kiadasok`
GROUP BY
	`nev`;

-- 6. feladat
SELECT
	`nev`,
	`kategoria`,
	SUM(`mennyiseg`) AS `db`
FROM
	`kiadasok`
GROUP BY
	`nev`,
	`kategoria`
ORDER BY
	`nev` DESC,
	`kategoria` ASC;

-- 7. feladat
SELECT
	`kategoria`,
	MIN(`egysegar`) AS `minimum_ar`
FROM
	`kiadasok`
GROUP BY
	`kategoria`
ORDER BY
	`minimum_ar` ASC;

-- 8. feladat
SELECT
	`kategoria`,
	ROUND(AVG(`egysegar` * `mennyiseg`), 1) AS `koltes`
FROM
	`kiadasok`
WHERE
	`nev` IN('Mariann', 'Lajos')
GROUP BY
	`kategoria`
ORDER BY
	`kategoria` ASC;

-- 9. feladat
SELECT
	`kategoria`,
	MAX(`egysegar` * `mennyiseg`) AS `koltes`
FROM
	`kiadasok`
WHERE
	`nev` IN('Bence', 'Emese')
GROUP BY
	`kategoria`
ORDER BY
	`koltes` DESC
LIMIT 1;

-- 10. feladat
SELECT
	`nev`,
	MIN(`egysegar` * `mennyiseg`) AS `legolcsobb_koltes`,
	MAX(`egysegar` * `mennyiseg`) AS `legdragabb_koltes`
FROM
	`kiadasok`
GROUP BY
	`nev`
ORDER BY
	`nev` DESC;

-- 11. feladat
SELECT
	`nap`,
	`kategoria`,
	SUM(`mennyiseg`) AS `mennyiseg`
FROM
	`kiadasok`
GROUP BY
	`nap`,
	`kategoria`
ORDER BY
	`mennyiseg` DESC;

-- 12. feladat
SELECT
	`nev`,
	`kategoria`,
	SUM(`mennyiseg` * `egysegar`) as `koltes`
FROM
	`kiadasok`
GROUP BY
	`nev`,
	`kategoria`;

-- 13. feladat
SELECT
	`kategoria`,
	SUM(`mennyiseg` * `egysegar`) AS `koltes`
FROM
	`kiadasok`
WHERE
	`nev` = 'Bence'
GROUP BY
	`kategoria`
ORDER BY
	`koltes` ASC;

-- 14. feladat
SELECT
	`nev`,
	CONCAT(SUM(`mennyiseg` * `egysegar`), ' Ft') AS `koltes`
FROM
	`kiadasok`
WHERE
	`kategoria` = 'élelmiszer'
GROUP BY
	`nev`
ORDER BY
	`nev` ASC;

-- 15. feladat
SELECT
	`nev`
FROM
	`kiadasok`
WHERE
	`kategoria` = 'közlekedés'
GROUP BY
	`nev`
ORDER BY
	SUM(`mennyiseg` * `egysegar`) ASC
LIMIT 1;