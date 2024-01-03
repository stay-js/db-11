DROP DATABASE IF EXISTS `polo-g`;

CREATE DATABASE IF NOT EXISTS `polo-g`
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

USE `polo-g`;

DROP TABLE IF EXISTS `top-20`;

CREATE TABLE `top-20` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `cim` varchar(50),
  `album` varchar(40),
  `hossz` time,
  `kiadas` date,
  `kiadok` varchar(80),
  `mufaj` varchar(20),
  `szovegirok` varchar(150)
);

INSERT INTO `top-20` (`id`, `cim`, `album`, `hossz`, `kiadas`, `kiadok`, `mufaj`, `szovegirok`) VALUES
(1, 'Martin & Gina', 'THE GOAT', '00:02:12', '2020-05-15', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Hagan Lange, Kyre Trask, Tahj Vaughn, Taurus Tremani Bartlett'),
(2, 'RAPSTAR', 'Hall of Fame', '00:02:46', '2021-06-11', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Alexander Wu, Einer Bankz, Ryan Vojtesak, Shane Lindstrom, Taurus Tremani Bartlett'),
(3, 'Heartbroken (feat. Jessie Murph & Polo G)', 'Heartbroken - Single', '00:03:24', '2023-07-21', 'Mad Decent, Columbia Records, Sony Music Entertainment', 'Country', 'Amy Allen, Elie Rizk, Emeric Boxall, Ilsey Juber, Jessie Murph, Taurus Tremani Bartlett, Thomas Wesley Pentz'),
(4, 'Barely Holdin'' On', 'HOOD POET', '00:02:54', '2023-12-31', 'Columbia Records, Sony Music Entertainment', 'Rap', 'Joshua Luellen, Lukasz Gottwald, Noah Goldstein, Tourus Tremani Bartlett'),
(5, 'Pop Out (feat. Lil Tjay)', 'Die a Legend', '00:02:47', '2019-07-07', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Dylan Berg, Joao Victor Alba Duarte, Lil Tjay, Polo G'),
(6, 'Go Stupid', 'Go Stupid - Single', '00:02:24', '2020-02-14', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Taurus Tremani Bartlett, Michael Williams, Khalick Caldwell, Bryson Potts'),
(7, 'Better Days (NEIKED x Mae Muller x Polo G)', 'Better Days - Single', '00:02:41', '2021-09-24', 'Capitol Records UK, Neiked Collective AB, Universal Music Operations Limited', 'Pop', 'Karl Folke Ingemar Ivert, Kian Sang, Taurus Tremani Bartlett, Victor Radstrom'),
(8, '21', 'THE GOAT', '00:02:44', '2020-05-15', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Keanu Dean Torres, Khaled Rohaim, Taurus Tremani Bartlett'),
(9, 'Chosen 1', 'Die a Legend', '00:02:07', '2019-07-07', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Jordan Knight, Polo G'),
(10, 'Headshot (feat. Polo G & Fivio Foreign)', 'Destined 2 Win', '00:02:24', '2021-04-02', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Aiden Crane, Brendan Walsh, Dacid McDowell, Fivo Foreign, Jon Lazri, Lil Tjay, Luis Campozano, Tahj Vaughn, Taurus Tremani Bartlett, Thomas Horton'),
(11, 'Epidemic', 'Hall of Fame 2.0', '00:02:58', '2021-02-02', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'David McDowell, Lukas Payne, Sterling Reynolds, Tahj Vaughn, Taurus Tremani Bartlett'),
(12, 'Heartless (feat. Mustard)', 'Heartless (feat. Mustard) - Single', '00:03:22', '2019-09-20', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Dijon Isaiah McFarlane, Taurus Tremani Bartlett'),
(13, 'Finer Things', 'Die a Legend', '00:03:03', '2019-07-07', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'DJ Ayo, Polo G'),
(14, 'My All', 'My All - Single', '00:03:18', '2022-12-09', 'Columbia Records, Sony Music Entertainment', 'Rap', 'Joshua Luellen, Lesidney Ragland, Philipp Riebenstahl, Stefano Pigliapoco, Taurus Tremani Bartlett'),
(15, 'DND', 'THE GOAT', '00:03:00', '2020-05-15', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Dewayne Kennemer, Taurus Tremani Bartlett'),
(16, 'Bad Man (Smooth Criminal)', 'Hall of Fame 2.0', '00:01:46', '2021-02-02', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Anthony Jermaine White, Khaled Rohaim, Larrance Dopson, Michael Jackson, Taurus Tremani Bartlett, Travis Sayles'),
(17, 'Party Lyfe (feat. DaBaby)', 'Hall of Fame 2.0', '00:02:52', '2021-02-02', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Benjamin Diehl, David Mescon, Jonathan Lyndale Kirk, Taurus Tremani Bartlett, Terrence Rolle'),
(18, 'Flex (feat. Juice WRLD)', 'THE GOAT', '00:02:45', '2020-05-15', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Chauncey Hollis, Chris Madine, Dustin James Corbett, Jarad A. Higgins, Taurus Tremani Bartlett'),
(19, 'Richer (feat. Polo G)', 'SoulFly (Deluxe Version)', '00:03:12', '2021-03-26', 'Alamo Records, LLC/Sony Music Entertainment', 'Hip-Hop/Rap', 'Rod Green, Taurus Tremani Bartlett, Roland Hannah, Flynn Connor Cranston'),
(20, 'Unapologetic (feat. NLE Choppa)', 'Hall of Fame 2.0', '00:02:49', '2021-02-02', 'Columbia Records, Sony Music Entertainment', 'Hip-Hop/Rap', 'Bryson Potts, Joshua Luellen, Matthew-Kyle Adrian Brown, Taurus Tremani Bartlett');
