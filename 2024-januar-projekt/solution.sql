-- 1. feladat
SELECT
	*
FROM
	`top-10`;

-- 2. feladat
SELECT
	COUNT(*) AS `db`
FROM
	`top-10`
WHERE
	`mufaj` = 'Hip-Hop/Rap';

-- 3. feladat
SELECT
	YEAR(`kiadas`) AS `kiadasi_ev`,
	COUNT(*) AS `db`
FROM
	`top-10`
GROUP BY
	`kiadasi_ev`
ORDER BY
	`kiadasi_ev` ASC;

-- 4. feladat
SELECT
	TIME_FORMAT(SEC_TO_TIME(SUM(TIME_TO_SEC(`hossz`))), '%i:%s') AS `ossz_hossz`
FROM
	`top-10`
WHERE
	`album` LIKE '%Single%'
	AND YEAR(`kiadas`) < 2022;

-- 5. feladat
SELECT
	`cim`,
	`hossz`
FROM
	`top-10`
WHERE
	`mufaj` = (
		SELECT
			`mufaj`
		FROM
			`top-10`
		GROUP BY
			`mufaj`
		ORDER BY
			COUNT(*)
			DESC
		LIMIT 1)
	AND TIME_TO_SEC(`hossz`) > 150;

-- 6. feladat
SELECT
	*
FROM
	`top-10`
WHERE
	`cim` LIKE '%(%Polo G%)%'
	AND `album` LIKE '%Single%'
ORDER BY
	`kiadas` ASC;

-- 7. feladat
SELECT
	`cim`,
	`album`,
	`hossz`,
	`mufaj`
FROM
	`top-10`
WHERE
	`kiadok` NOT IN('Columbia Records, Sony Music Entertainment', 'Sony Music Entertainment, Columbia Records');