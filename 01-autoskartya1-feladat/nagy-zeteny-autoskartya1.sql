-- 3. feladat
SELECT
	*
FROM
	`autoskartya`;

-- 4. feladat
SELECT
	`gyartmany`,
	`tipus`,
	`vegsebesseg`,
	`gyorsulas`
FROM
	`autoskartya`
WHERE (`vegsebesseg` >= 220
	AND `gyorsulas` < 6.5)
	OR `tipus` LIKE '%GT%'
	OR `tipus` LIKE '%RS%'
	OR `tipus` LIKE '%Sport%';

-- 5. feladat
SELECT
	`gyartmany`,
	`tipus`
FROM
	`autoskartya`
WHERE
	`orszag` = 'Németország'
	AND(`vegsebesseg` > 240
		OR `loero` >= 200);

-- 6. feladat
SELECT
	*
FROM
	`autoskartya`
WHERE
	`orszag` = 'Japán'
	OR `fogyasztas` <= 6
	OR(`hengerurtartalom` <= 1400
		AND `fogyasztas` <= 7);

-- 7. feladat
SELECT
	`gyartmany`,
	`tipus`,
	`gyartasi_ev`
FROM
	`autoskartya`
WHERE
	`gyartmany` IN('Bentley', 'BMW', 'Mercedes', 'Volvo')
	AND `kilowatt` >= 150;

-- 8. feladat
SELECT DISTINCT
	`gyartmany`
FROM
	`autoskartya`
ORDER BY
	`gyartmany` ASC;

-- 9. feladat
SELECT
	`gyartmany`,
	`tipus`,
	`loero`
FROM
	`autoskartya`
ORDER BY
	`loero` DESC;

-- 10. feladat
SELECT
	`tipus`,
	`orszag`,
	`vegsebesseg`
FROM
	`autoskartya`
ORDER BY
	`orszag` ASC;

-- 11. feladat
SELECT
	`gyartmany`,
	`tipus`,
	`orszagkod`
FROM
	`autoskartya`
WHERE
	`orszag` IN('Németország', 'Franciaország')
	AND `fogyasztas` <= 5;