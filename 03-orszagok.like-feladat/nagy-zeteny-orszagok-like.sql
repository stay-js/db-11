-- 3. feladat
SELECT
	*
FROM
	`orszagok`;

-- 4. feladat
SELECT
	`orszag`
FROM
	`orszagok`
WHERE
	`fovaros` IN('Intel', 'Kingston', 'Apple', 'Fujitsu');

-- 5. feladat
SELECT
	`orszag`
FROM
	`orszagok`
WHERE
	`orszag` LIKE '%D';

-- 6. feladat
SELECT
	`orszag`
FROM
	`orszagok`
WHERE
	`orszag` LIKE 'V%';

-- 7. feladat
SELECT
	`orszag`
FROM
	`orszagok`
WHERE
	`orszag` LIKE '%V%'
ORDER BY
	`orszag` ASC;

-- 8. feladat
SELECT
	`orszag`
FROM
	`orszagok`
WHERE
	`orszag` NOT LIKE 'Z%'
ORDER BY
	`orszag` DESC;

-- 9. feladat
SELECT
	`orszag`
FROM
	`orszagok`
WHERE
	`orszag` NOT LIKE '%O%'
ORDER BY
	`orszag` ASC;

-- 10. feladat
SELECT
	`orszag`,
	`autojel`
FROM
	`orszagok`
WHERE
	`orszag` LIKE 'V%'
	AND `autojel` NOT LIKE 'V%';

-- 11. feladat
SELECT
	`orszag`,
	`fovaros`
FROM
	`orszagok`
WHERE
	`foldr_hely` LIKE 'Észak-Amerika%';

-- 12. feladat
SELECT
	`orszag`,
	`terulet`
FROM
	`orszagok`
ORDER BY
	`terulet` ASC
LIMIT 1;

-- 13. feladat
SELECT
	`orszag`,
	`terulet`
FROM
	`orszagok`
WHERE
	`foldr_hely` LIKE '%Európa%'
ORDER BY
	`terulet` DESC
LIMIT 1;

-- 14. feladat
SELECT
	`orszag`,
	`terulet`
FROM
	`orszagok`
WHERE
	`foldr_hely` LIKE 'Közép-Európa%'
ORDER BY
	`terulet` ASC
LIMIT 3;

-- 15. feladat
SELECT
	`orszag`
FROM
	`orszagok`
WHERE
	`orszag` LIKE '%EGYESÜLT%';

-- 16. feladat
SELECT
	`orszag`
FROM
	`orszagok`
WHERE
	`foldr_hely` LIKE '%törpeállam%';

-- 17. feladat
SELECT
	`orszag`,
	`allamforma`
FROM
	`orszagok`
WHERE
	`allamforma` LIKE '%monarchia%';

-- 18. feladat
SELECT
	`orszag`
FROM
	`orszagok`
WHERE
	`orszag` LIKE '%ORSZÁG%';

-- 19. feladat
SELECT
	`orszag`
FROM
	`orszagok`
WHERE
	`valtopenz` LIKE '%cent'
	AND `valtopenz` NOT LIKE '%euro%'
ORDER BY
	`orszag` ASC;

-- 20. feladat
SELECT
	`orszag`,
	`foldr_hely`
FROM
	`orszagok`
WHERE
	`foldr_hely` LIKE '%Európa%'
ORDER BY
	`orszag` ASC;

-- 21. feladat
SELECT DISTINCT
	`penznem`
FROM
	`orszagok`
WHERE
	`penzjel` LIKE '%D'
	AND `penznem` NOT LIKE '%dollár%'
ORDER BY
	`penznem` ASC;

-- 22. feladat
SELECT
	`orszag`
FROM
	`orszagok`
WHERE
	`allamforma` LIKE '%szövetség%';

-- 23. feladat
SELECT
	`penznem`,
	`orszag`
FROM
	`orszagok`
WHERE
	`valtopenz` NOT LIKE '100 %';

-- 24. feladat
SELECT
	`orszag`
FROM
	`orszagok`
WHERE
	`valtopenz` LIKE '%kopejka%';