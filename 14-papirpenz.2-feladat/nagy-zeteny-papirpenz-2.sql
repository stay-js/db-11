-- 3. feladat
SELECT
	COUNT(*) AS `db`
FROM
	`papirpenz`
WHERE
	`ertek` >= 100;

-- 4. feladat
SELECT
	`penznem`,
	COUNT(*) AS `db`
FROM
	`papirpenz`
GROUP BY
	`penznem`
ORDER BY
	`db` ASC;

-- 5. feladat
SELECT
	`penznem`,
	COUNT(DISTINCT `ertek`) AS `db_egyedi`
FROM
	`papirpenz`
GROUP BY
	`penznem`
ORDER BY
	`db_egyedi` DESC;

-- 6. feladat
SELECT
	`penznem`,
	MAX(`ertek`) AS `legertekesebb`
FROM
	`papirpenz`
GROUP BY
	`penznem`
ORDER BY `penznem` ASC;

-- 7. feladat
SELECT
	`penznem`,
	`ertek`,
	COUNT(*) AS `db`
FROM
	`papirpenz`
GROUP BY
	`penznem`,
	`ertek`
HAVING
	`db` >= 4
ORDER BY
	`penznem` ASC,
	`ertek` ASC;

-- 8. feladat
SELECT
	`penznem`,
	SUM(`ertek`) AS `ossz`
FROM
	`papirpenz`
GROUP BY
	`penznem`
HAVING
	`ossz` >= 3000
ORDER BY
	`ossz` ASC;
