-- 1. feladat:
SELECT
	`first_name`,
	`last_name`
FROM
	`employees`
WHERE
	`salary` > (
		SELECT
			`salary`
		FROM
			`employees`
		WHERE
			`employee_id` = '163');

-- 2. feladat:
SELECT
	`first_name`,
	`last_name`,
	`salary`,
	`department_id`,
	`job_id`
FROM
	`employees`
WHERE
	`job_id` = (
		SELECT
			`job_id`
		FROM
			`employees`
		WHERE
			`employee_id` = '163');

-- 3. feladat:
SELECT
	`first_name`,
	`last_name`,
	`salary`,
	`department_id`
FROM
	`employees`
WHERE
	`salary` = (
		SELECT
			MIN(`e`.`salary`)
		FROM
			`employees` `e`
		WHERE
			`employees`.`department_id` = `e`.`department_id`);

-- 4. feladat:
SELECT
	`employee_id`,
	`first_name`,
	`last_name`
FROM
	`employees`
WHERE
	`salary` > (
		SELECT
			AVG(`salary`)
		FROM
			`employees`);

-- 5. feladat:
SELECT
	`first_name`,
	`last_name`,
	`employee_id`,
	`salary`
FROM
	`employees`
WHERE
	`manager_id` = (
		SELECT
			`employee_id`
		FROM
			`employees`
		WHERE
			`first_name` = 'Payam');

-- 6. feladat:
SELECT
	`employees`.`department_id`,
	`first_name`,
	`last_name`,
	`job_id`,
	`department_name`
FROM
	`employees`
	INNER JOIN `departments` ON `employees`.`department_id` = `departments`.`department_id`
WHERE
	`department_name` = 'Finance';

-- 7. feladat:
SELECT
	*
FROM
	`employees`
WHERE
	`salary` = 3000
	AND `manager_id` = 121;

-- 8. feladat:
SELECT
	*
FROM
	`employees`
WHERE
	`employee_id` IN(134, 159, 183);

-- 9. feladat:
SELECT
	*
FROM
	`employees`
WHERE
	`salary` BETWEEN 1000 AND 3000;

-- 10. feladat:
SELECT
	*
FROM
	`employees`
WHERE
	`salary` <= 2500;

-- 11. feladat:
SELECT
	*
FROM
	`employees`
WHERE
	`department_id` NOT IN(
		SELECT
			`department_id` FROM `departments`
		WHERE
			`manager_id` BETWEEN 100 AND 200);

-- 12. feladat:
SELECT
	*
FROM
	`employees`
WHERE
	`salary` = (
		SELECT
			`salary`
		FROM
			`employees`
		GROUP BY
			`salary`
		ORDER BY
			`salary` DESC
		LIMIT 1 OFFSET 1);

-- 13. feladat:
SELECT
	`first_name`,
	`last_name`,
	`hire_date`
FROM
	`employees`
WHERE
	`first_name` <> 'Clara'
	AND `department_id` IN(
		SELECT
			`department_id` FROM `employees`
		WHERE
			`first_name` = 'Clara');

-- 14. feladat:
SELECT
	`first_name`,
	`last_name`,
	`hire_date`
FROM
	`employees`
WHERE
	`department_id` in(
		SELECT
			`department_id` FROM `departments`
		WHERE
			`location_id` IN(
				SELECT
					`locations`.`location_id` FROM `employees`
					INNER JOIN `departments` ON `employees`.`department_id` = `departments`.`department_id`
					INNER JOIN `locations` ON `departments`.`location_id` = `locations`.`location_id`
				WHERE
					`last_name` LIKE '%t%'))
ORDER BY
	`employee_id`;

-- 15. feladat:
SELECT
	`employee_id`,
	`first_name`,
	`last_name`,
	`salary`
FROM
	`employees`
WHERE
	`department_id` IN(
		SELECT
			`department_id` FROM `employees`
		WHERE
			`first_name` LIKE '%j%')
	AND `salary` > (
		SELECT
			AVG(`e`.`salary`)
		FROM
			`employees` `e`
		WHERE
			`employees`.`department_id` = `e`.`department_id`);

-- 16. feladat:
SELECT
	`first_name`,
	`last_name`,
	`employee_id`,
	`job_id`
FROM
	`employees`
WHERE
	`department_id` IN(
		SELECT
			`department_id` FROM `departments`
			INNER JOIN `locations` ON `departments`.`location_id` = `locations`.`location_id`
		WHERE
			`city` = 'Toronto');

-- 17. feladat:
SELECT
	`employee_id`,
	`first_name`,
	`last_name`,
	`job_id`
FROM
	`employees`
WHERE
	`salary` < (
		SELECT
			MIN(`salary`)
		FROM
			`employees`
		WHERE
			`job_id` = 'MK_MAN');

-- 18. feladat:
-- Alapból nem tartalmazza az MK_MAN munkaazonosítójú munkavállalókat, mert nem kereshetnek kevesebbet, mint a saját munkaazonosítójukkal rendelkezők minimum fizetése...