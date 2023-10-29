-- 3. feladat
SELECT
	*
FROM
	`napfogyatkozas`
ORDER BY
	`datum` ASC;

-- 4. feladat
SELECT DISTINCT
	`tipus`
FROM
	`napfogyatkozas`;

-- 5. feladat
SELECT
	*
FROM
	`napfogyatkozas`
WHERE
	`szelesseg` IS NULL;

-- 6. feladat
SELECT
	`datum`,
	`ido`,
	`tipus`
FROM
	`napfogyatkozas`
WHERE
	`megfigyelheto` = 'Észak-Amerika';

-- 7. feladat
SELECT
	`datum`,
	`ido`,
	`megfigyelheto`
FROM
	`napfogyatkozas`
WHERE
	`tipus` IN('Teljes', 'Gyűrűs');

-- 8. feladat
SELECT
	`datum`,
	`ido`
FROM
	`napfogyatkozas`
WHERE
	`datum` > NOW()
	AND `tipus` IN('Teljes', 'Gyűrűs')
	AND `megfigyelheto` LIKE '%Afrika%';

-- 9. feladat
SELECT
	`datum`,
	`ido`,
	`megfigyelheto`
FROM
	`napfogyatkozas`
WHERE
	LOWER(`megfigyelheto`)
	LIKE '%észak%'
	OR LOWER(`megfigyelheto`)
	LIKE '%dél%'
	OR LOWER(`megfigyelheto`)
	LIKE '%kelet%'
	OR LOWER(`megfigyelheto`)
	LIKE '%nyugat%';

-- 10. feladat
SELECT
	`datum`,
	`ido`
FROM
	`napfogyatkozas`
WHERE
	`tipus` = 'Teljes'
	AND `megfigyelheto` LIKE '%Magyarországon részleges%';

-- 11. feladat
SELECT DISTINCT
	`tipus`
FROM
	`napfogyatkozas`
ORDER BY
	`tipus` ASC;

-- 12. feladat
SELECT
	`datum`,
	`ido`,
	`idotartam`
FROM
	`napfogyatkozas`
WHERE
	`tipus` = 'Teljes'
ORDER BY
	`idotartam` DESC;

-- 13. feladat
SELECT
	*
FROM
	`napfogyatkozas`
WHERE
	`megfigyelheto` LIKE '%,%';

-- 14. feladat
SELECT
	*
FROM
	`napfogyatkozas`
WHERE
	`tipus` = 'Részleges'
	AND `datum` < NOW()
	AND(`megfigyelheto` LIKE '%Alaszka%'
		OR `megfigyelheto` LIKE '%Hawaii%');