DROP DATABASE IF EXISTS `polo-g`;

CREATE DATABASE IF NOT EXISTS `polo-g`
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

USE `polo-g`;

DROP TABLE IF EXISTS `top-10`;

CREATE TABLE `top-10` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `cim` varchar(255),
  `album` varchar(255),
  `hossz` time,
  `kiadas` date,
  `kiadok` varchar(255),
  `mufaj` varchar(255),
  `szovegirok` varchar(255)
);

INSERT INTO `top-10` (`id`, `cim`, `album`, `hossz`, `kiadas`, `kiadok`, `mufaj`, `szovegirok`) VALUES
(1, 'Martin & Gina', 'The GOAT', '00:02:12', '2020-05-15', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Hagan Lange, Kyre Trask, Tahj Vaughn, Taurus Tremani Bartlett'),
(2, 'RAPSTAR', 'Hall of Fame', '00:02:46', '2021-06-11', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Alexander Wu, Einer Bankz, Ryan Vojtesak, Shane Lindstrom, Taurus Tremani Bartlett'),
(3, 'Heartbroken (feat. Jessie Murph & Polo G)', 'Heartbroken - Single', '00:03:24', '2023-07-21', 'Mad Decent, Columbia Records, Sony Music Entertainment', 'Country', 'Amy Allen, Elie Rizk, Emeric Boxall, Ilsey Juber, Jessie Murph, Taurus Tremani Bartlett, Thomas Wesley Pentz'),
(4, 'Barely Holdin\' On', 'HOOD POET', '00:02:54', '2023-12-31', 'Columbia Records, Sony Music Entertainment', 'Rap', 'Joshua Luellen, Lukasz Gottwald, Noah Goldstein, Tourus Tremani Bartlett'),
(5, 'Pop Out (feat. Lil Tjay)', 'Die a Legend', '00:02:47', '2019-07-07', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Dylan Berg, Joao Victor Alba Duarte, Lil Tjay, Polo G'),
(6, 'Go Stupid', 'Go Stupid - Single', '00:02:24', '2020-02-14', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Taurus Bartlett, Michael Williams, Khalick Caldwell, Bryson Potts'),
(7, 'Better Days (NEIKED x Mae Muller x Polo G)', 'Better Days - Single', '00:02:41', '2021-09-24', 'Capitol Records UK, Neiked Collective AB, Universal Music Operations Limited', 'Pop', 'Karl Folke Ingemar Ivert, Kian Sang, Taurus Tremani Bartlett, Victor Radstrom'),
(8, '21', 'The GOAT', '00:02:44', '2020-05-15', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Keanu Dean Torres, Khaled Rohaim, Taurus Tremani Bartlett'),
(9, 'Chosen 1', 'Die a Legend', '00:02:07', '2019-07-07', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Jordan Knight, Polo G'),
(10, 'Headshot (feat. Polo G & Fivio Foreign)', 'Destined 2 Win', '00:02:24', '2021-04-02', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Aiden Crane, Brendan Walsh, Dacid McDowell, Fivo Foreign, Jon Lazri, Lil Tjay, Luis Campozano, Tahj Vaughn, Taurus Tremani Bartlett, Thomsa Horton');
