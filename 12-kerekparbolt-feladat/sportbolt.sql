DROP DATABASE IF EXISTS `sportbolt`;

CREATE DATABASE `sportbolt`
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

USE `sportbolt`;

CREATE TABLE `kerekparok` (
  `id` int NOT NULL,
  `nev` varchar(70) DEFAULT NULL,
  `gyarto` varchar(20) DEFAULT NULL,
  `kerek_meret` varchar(10) DEFAULT NULL,
  `sebesseg` int DEFAULT NULL,
  `nem` varchar(10) DEFAULT NULL,
  `tipus` varchar(10) DEFAULT NULL,
  `meret` varchar(10) DEFAULT NULL,
  `szin` varchar(20) DEFAULT NULL,
  `keszlet` int DEFAULT NULL,
  `ar` int DEFAULT NULL
);

INSERT INTO `kerekparok` VALUES
('1','MTB kerékpár ST 530 S, 27,5”, fekete, piros','rockrider','27','9','férfi','MTB','S','fekete, piros','98','229990'),
('2','MTB kerékpár ST 530 S, 27,5”, fekete, piros','Rockrider','27','9','férfi','MTB','M','fekete, piros','73','229990'),
('3','MTB kerékpár ST 530 S, 27,5”, fekete, piros','Rockrider','27','9','férfi','MTB','L','fekete, piros','22','229990'),
('4','MTB kerékpár ST 530 S, 27,5”, fekete, piros','Rockrider','27','9','férfi','MTB','XL','fekete, piros','65','229990'),
('5','MTB kerékpár ST 50, 26”, fekete','Rockrider','26','21','férfi','MTB','S','fekete','32','99990'),
('6','MTB kerékpár ST 50, 26”, fekete','Rockrider','26','21','férfi','MTB','M','fekete','11','99990'),
('7','MTB kerékpár ST 50, 26”, fekete','Rockrider','26','21','férfi','MTB','L','fekete','7','99990'),
('8','Női MTB kerékpár ST 120, 27,5”, SÖTÉTKÉK','Rockrider','27.5','9','női','MTB','S','Tengerészkék','3','139990'),
('9','Női MTB kerékpár ST 120, 27,5”, SÖTÉTKÉK','Rockrider','27.5','9','női','MTB','M','Tengerészkék','1','139990'),
('10','Női MTB kerékpár ST 120, 27,5”, SÖTÉTKÉK','Rockrider','27.5','9','női','MTB','L','Tengerészkék','8','139990'),
('11','Városi kerékpár Elops 520, alacsony vázas, kék','Elops','26','6','női','városi','XS','Tengerészkék','40','139990'),
('12','Városi kerékpár Elops 520, alacsony vázas, kék','Elops','28','6','női','városi','S','Tengerészkék','11','139990'),
('13','Városi kerékpár Elops 520, alacsony vázas, kék','Elops','28','6','női','városi','L','Tengerészkék','34','139990'),
('14','Városi kerékpár Elops 100 alacsony vázas, fekete','Elops','28','1','női','városi',NULL,'fekete','32','99990'),
('15','Női országúti kerékpár Triban Regular, egyenes kormánnyal, kékeszöld','Triban','28','18','női','országúti','XS','Zöldeskék','0','249990'),
('16','Női országúti kerékpár Triban Regular, egyenes kormánnyal, kékeszöld','Triban','28','18','női','országúti','S','Zöldeskék','2','249990'),
('17','Női országúti kerékpár Triban Regular, egyenes kormánnyal, kékeszöld','Triban','28','18','női','országúti','M','Zöldeskék','0','249990'),
('18','VÁROSI KERÉKPÁR KRUZ DIABLO - 7 SEBESSÉGES - FEKETE','Kruz Bike Company','28','7','férfi','városi','54','fekete','10','179000'),
('19','VÁROSI KERÉKPÁR KRUZ DIABLO - 7 SEBESSÉGES - FEKETE','Kruz Bike Company','28','7','férfi','városi','57','fekete','7','179000'),
('20','Városi kerékpár Elops 120 férfi vázas, kék','Elops','28','6','férfi','városi',NULL,'Szürkéskék','10','127990'),
('21','Cyclocross kerékpár RCX Shimano GRX 1X11','Van Rysel','28','11','férfi','országúti','S','kék','0','719990'),
('22','Cyclocross kerékpár RCX Shimano GRX 1X11','Van Rysel','28','11','férfi','országúti','M','kék','0','719990'),
('23','Cyclocross kerékpár RCX Shimano GRX 1X11','Van Rysel','28','11','férfi','országúti','L','kék','0','719990'),
('24','CROSS PRO 28','XFACT','28','30','férfi','cross','18','fekete','10','214999'),
('25','CROSS PRO 28','XFACT','28','30','férfi','cross','20','fekete','11','214999'),
('26','CROSS PRO 28','XFACT','28','30','férfi','cross','22','fekete','34','214999'),
('27','I-PEAK CR+','HEAD','28','27','női','cross','46','fehér','5','229999'),
('28','I-PEAK CR+','HEAD','38','27','női','cross','50','fehér','55','229999'),
('29','I-PEAK CR+','HEAD','28','27','női','cross','54','fehér','20','229999')
;

ALTER TABLE `kerekparok`
  ADD PRIMARY KEY (`id`);