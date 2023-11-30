-- 3. feladat
SELECT
	`host_nev`,
	`os`
FROM
	`rendszerek`
	LEFT OUTER JOIN `eszlelesek` ON `rendszer_id` = `host_id`
WHERE
	`eszleles_id` IS NULL;

-- 4. feladat
SELECT
	`vuln_nev`,
	`CVE`,
	`CVSS`
FROM
	`eszlelesek`
	RIGHT OUTER JOIN `serulekenysegek` ON `eszlelesek`.`vuln_id` = `serulekenysegek`.`vuln_id`
WHERE
	`eszleles_id` IS NULL
ORDER BY
	`cvss` ASC;

-- 5. feladat
SELECT
	`vuln_nev`
FROM
	`eszlelesek`
	INNER JOIN `serulekenysegek` ON `eszlelesek`.`vuln_id` = `serulekenysegek`.`vuln_id`
GROUP BY
	`vuln_nev`
ORDER BY
	COUNT(*)
	DESC
LIMIT 1;

-- 6. feladat
SELECT
	SUM(`cvss`) AS `cvss_osszesen`
FROM
	`rendszerek`
	INNER JOIN `eszlelesek` ON `rendszer_id` = `host_id`
	INNER JOIN `serulekenysegek` ON `eszlelesek`.`vuln_id` = `serulekenysegek`.`vuln_id`
GROUP BY
	`host_nev`
ORDER BY
	`cvss_osszesen` DESC
LIMIT 1;

-- 7. feladat
SELECT
	`vuln_nev`
FROM
	`rendszerek`
	INNER JOIN `eszlelesek` ON `rendszer_id` = `host_id`
	INNER JOIN `serulekenysegek` ON `eszlelesek`.`vuln_id` = `serulekenysegek`.`vuln_id`
GROUP BY
	`vuln_nev`,
	`cvss`
ORDER BY
	COUNT(`host_nev`) * `cvss` DESC
LIMIT 1;

-- 8. feladat
SELECT
	`host_nev`
FROM
	`rendszerek`
	INNER JOIN `eszlelesek` ON `rendszer_id` = `host_id`
	INNER JOIN `serulekenysegek` ON `eszlelesek`.`vuln_id` = `serulekenysegek`.`vuln_id`
WHERE
	`os` LIKE '%Windows%'
GROUP BY
	`host_nev`
HAVING
	COUNT(*) <= 2;

-- 9. feladat
SELECT
	`vuln_nev`
FROM
	`eszlelesek`
	INNER JOIN `serulekenysegek` ON `eszlelesek`.`vuln_id` = `serulekenysegek`.`vuln_id`
WHERE
	`javitva` IS TRUE
ORDER BY
	`utolso_eszleles` - `elso_eszleles` DESC
LIMIT 1;

-- 10. feladat
SELECT
	ROUND(AVG(`utolso_eszleles` - `elso_eszleles`), 1) AS `atlagos_javitasi_ido`
FROM
	`eszlelesek`
	INNER JOIN `serulekenysegek` ON `eszlelesek`.`vuln_id` = `serulekenysegek`.`vuln_id`
WHERE
	`javitva` IS TRUE;

-- 11. feladat
SELECT
	`vuln_nev`
FROM
	`eszlelesek`
	INNER JOIN `serulekenysegek` ON `eszlelesek`.`vuln_id` = `serulekenysegek`.`vuln_id`
WHERE
	`javitva` IS FALSE
ORDER BY
	`elso_eszleles` ASC
LIMIT 1;

-- 12. feladat
SELECT
	`vuln_nev`
FROM
	`rendszerek`
	INNER JOIN `eszlelesek` ON `rendszer_id` = `host_id`
	INNER JOIN `serulekenysegek` ON `eszlelesek`.`vuln_id` = `serulekenysegek`.`vuln_id`
WHERE
	`javitva` IS FALSE
	AND `cvss` >= 9
GROUP BY
	`vuln_nev`
HAVING
	COUNT(`host_nev`) >= 3;