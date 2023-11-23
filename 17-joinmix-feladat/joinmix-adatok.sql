SET AUTOCOMMIT = 0;
START TRANSACTION;

USE `joinmix`;

SET FOREIGN_KEY_CHECKS = 0 ;

TRUNCATE table `szin`;
INSERT INTO `szin` (`id`, `nev`)
VALUES
(1, 'Piros'),
(2, 'Fehér'),
(3, 'Zöld'),
(4, 'Kék'),
(5, 'Narancs'),
(6, 'Sárga'),
(7, 'Lila'),
(8, 'Barna'),
(9, 'Fekete');


TRUNCATE TABLE `tantargy`;
INSERT INTO `tantargy` (`id`, `nev`)
VALUES
('1', 'Adatbázis'),
('2', 'Adatbázis 2'),
('3', 'PHP'),
('4', 'Hálózatok'),
('5', 'Angol'),
('6', 'Diszkrét matematika'),
('7', 'Analízis 1'),
('8', 'Analízis 2');

TRUNCATE TABLE `hazikedvenc`;
INSERT INTO `hazikedvenc` (`id`, `fajta`, `nev`)
VALUES
(1, 'cica', 'Eper'),
(2, 'nyúl', 'Lilla'),
(3, 'kutya', 'Ede'),
(4, 'kutya', 'Pötty'),
(5, 'tengerimalac', 'COCO'),
(6, 'tengerimalac', 'Csík');

TRUNCATE TABLE `szemely`;
INSERT INTO `szemely` (`id`, `vnev`, `knev`, `kor`)
VALUES
(1, 'Nagy', 'Irma', '21'),
(2, 'Kiss', 'Elemér', '42'),
(3, 'Győri', 'Barnabás', '27'),
(4, 'Müller', 'Nóra', '53'),
(5, 'Bokor', 'Virág', '18');

TRUNCATE `auto`;
INSERT INTO `auto` (`rendszam`, `gyarto`, `tipus`, `szin_id`, `tulaj`) VALUES
('AAA-666', 'Audi', 'A6', 9, 4),
('CIM-651', 'Suzuki', 'Swift', 2, 2),
('FTT-010', 'Fiat', 'Tipo', 2, 5),
('SAN-001', 'SSANGYONG', 'Korando', 1, 2),
('WWW-404', 'VW', 'Golf', 8, 3),
('VVV-001', 'VW', 'Jetta', '9', '4');

TRUNCATE TABLE `tanulja`;
INSERT INTO `tanulja` (`szemely_id`, `tantargy_id`) VALUES
(3, 1),
(4, 2),
(4, 3),
(1, 4),
(2, 4),
(3, 5),
(4, 5),
(3, 6),
(4, 8),
(5, 3);

TRUNCATE TABLE `tulaj`;
INSERT INTO `tulaj` (`hazikedvenc_id`, `szemely_id`) VALUES
(5, 2),
(6, 2),
(1, 3),
(3, 3),
(1, 4),
(2, 5),
(4, 5);

COMMIT;