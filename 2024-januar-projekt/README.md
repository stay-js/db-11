# Adatbázis projekt

## Leírás

Az adatbázis dalok adatait tartalmazza.

## Tábla jellemzői

Az elsődleges kulcs **[PK]**-val lett jelölve.

| Oszlop     | Típus       | Leírás                                                                      |
| ---------- | ----------- | --------------------------------------------------------------------------- |
| id         | Egész       | Azonosító. [PK]                                                             |
| cim        | Szöveg(50)  | A dal címe.                                                                 |
| album      | Szöveg(40)  | A dalt tartalmazó album megnevezése.                                        |
| hossz      | Idő         | A dal hossza.                                                               |
| kiadas     | Dátum       | A dal kiadásának időpontja.                                                 |
| kiadok     | Szöveg(80)  | A dal kiadásában közreműködők listája (vesszővel és szőközzel elválasztva). |
| mufaj      | Szöveg(20)  | A dal műfaja.                                                               |
| szovegirok | Szöveg(150) | A dal szövegíróinak listája (vesszővel és szőközzel elválasztva).           |

## Feladatok

### 1. feladat

Jelenítse meg a tábla összes adatát!

**Megoldás:**

```sql
SELECT
	*
FROM
	`top-20`;
```

### 2. feladat

Jelentítse meg, a "Hip-Hop/Rap" műfajú dalok számát! A számított mező neve legyen: `db`.

**Megoldás:**

```sql
SELECT
	COUNT(*) AS `db`
FROM
	`top-20`
WHERE
	`mufaj` = 'Hip-Hop/Rap';
```

### 3. feladat

Jelenítse meg kiadási év szerint csoportosítva a dalok számát! A számított mező neve legyen: `db`, illetve a a kiadás évét tartalmazó mező neve legyen: `kiadasi_ev`. Az adatokat kiadási év szerint növekvő sorrendben jelenítse meg!

**Megoldás:**

```sql
SELECT
	YEAR(`kiadas`) AS `kiadasi_ev`,
	COUNT(*) AS `db`
FROM
	`top-20`
GROUP BY
	`kiadasi_ev`
ORDER BY
	`kiadasi_ev` ASC;
```

### 4. feladat

Jelenítse meg a 2022 előtt megjelent kislemezeként (single) kiadott dalok teljes hosszát, `MM:SS` formátumban! A számított mező neve legyen: `ossz_hossz`.

**Megoldás:**

```sql
SELECT
	TIME_FORMAT(SEC_TO_TIME(SUM(TIME_TO_SEC(`hossz`))), '%i:%s') AS `ossz_hossz`
FROM
	`top-20`
WHERE
	`album` LIKE '%Single%'
	AND YEAR(`kiadas`) < 2022;
```

### 5. feladat

Jelenítse meg azon 2 perc 30 másodpercnél hosszabb dalok címét és hosszát, amelyek abba a kategóriába tartoznak amiből a legtöbb található az adatbázisban.

**Megoldás:**

```sql
SELECT
	`cim`,
	`hossz`
FROM
	`top-20`
WHERE
	`mufaj` = (
		SELECT
			`mufaj`
		FROM
			`top-20`
		GROUP BY
			`mufaj`
		ORDER BY
			COUNT(*)
			DESC
		LIMIT 1)
	AND TIME_TO_SEC(`hossz`) > 150;
```

### 6. feladat

Jelenítse meg azon dalok minden adatát kiadás szerint rendezve, amelyekben "Polo G" csak közreműködőként szerepel és kislemezként kerültek kiadásra!

**Megoldás:**

```sql
SELECT
	*
FROM
	`top-20`
WHERE
	`cim` LIKE '%(%Polo G%)%'
	AND `album` LIKE '%Single%'
ORDER BY
	`kiadas` ASC;
```

### 7. feladat

Jelenítse meg azon dalok címét, albumát, hosszát és műfaját, amelyek kiadásáért nem csak a "Columbia Records" és a "Sony Music Entertainment" felelős!

**Megoldás:**

```sql
SELECT
	`cim`,
	`album`,
	`hossz`,
	`mufaj`
FROM
	`top-20`
WHERE
	`kiadok` NOT IN('Columbia Records, Sony Music Entertainment', 'Sony Music Entertainment, Columbia Records');
```

### 8. feladat

Jelenítse meg azon albumokat, amelyekből legalább két dal megtalálható az adatbázisban.

**Megoldás:**

```sql
SELECT
	`album`
FROM
	`top-20`
GROUP BY
	`album`
HAVING
	COUNT(*) >= 2;
```

<br>
<br>

Készítette: **Nagy Zétény 11.a (SZTF1)**
