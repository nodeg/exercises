-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 05. Feb 2015 um 23:19
-- Server Version: 5.5.16
-- PHP-Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

DROP DATABASE IF EXISTS `geheimdienst`;

CREATE DATABASE IF NOT EXISTS `geheimdienst`;

USE `geheimdienst`;



--
-- Datenbank: geheimdienst
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle person
--

DROP TABLE IF EXISTS `person` ;
CREATE TABLE IF NOT EXISTS `person`  (
  PersonID int(5) NOT NULL,
  Nachname varchar(50) NOT NULL,
  Vorname varchar(50) NOT NULL,
  Strasse varchar(75) NOT NULL,
  PLZ int(5) NOT NULL,
  Ort varchar(50) NOT NULL,
  Geburtsjahr int(4) NOT NULL,
  PRIMARY KEY (PersonID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle 'person'
--

INSERT INTO `person`  (PersonID, Nachname, Vorname, Strasse, PLZ, Ort, Geburtsjahr) VALUES
(1, 'Fischer', 'Louis', 'Am Strand 10', 33098, 'Paderborn', 1962),
(2, 'Spring', 'Muck', 'Tabulatorweg 43', 48163, 'Münster', 1988),
(3, 'Socke', 'Heinz', 'Hauptstr. 335', 73431, 'Aalen', 1967),
(4, 'Mosberger', 'David', 'Tessenowweg 33', 53757, 'Sankt Augustin', 1981),
(5, 'Elpert', 'Verena', 'Auf dem Holzweg 34', 83104, 'Tuntenhausen', 1965),
(6, 'Neumann', 'Peter', 'Notenweg 37', 14050, 'Berlin', 1984),
(7, 'Spargel', 'Siegfried', 'Berghof 12', 49191, 'Belm', 1992),
(8, 'Paulus', 'Mustafa', 'Saustraße 98', 48167, 'Münster', 1984),
(9, 'Quickmann', 'Freya', 'Walgrafenstr. 25', 48301, 'Nottuln', 1988),
(10, 'Merkel', 'Erich', 'Merkantilstr. 18', 6255, 'Wünsch', 1962),
(11, 'Zahnleiter', 'Annerose', 'Elender Straße 2', 48291, 'Telgte', 1966),
(12, 'Hürlimann', 'Tamara', 'Tauchnitzweg 12', 48291, 'Telgte', 1990),
(13, 'Stoiber', 'Rosi', 'Marktstr. 12', 78345, 'Moos', 1954),
(14, 'Sütfeld', 'Elena', 'Prinzipalmarkt 135', 31171, 'Nordstemmen', 1989),
(15, 'Gallier', 'Bertram Paulus', 'Dorfstr.33', 48151, 'Münster', 1972),
(16, 'Pullmann', 'Franz', 'Im Winde 87', 82008, 'Unterhaching', 1963),
(17, 'Schulze', 'Silke', 'Auf dem Ostweg 4', 39319, 'Jerichow', 1977),
(18, 'Kachel', 'Robert', 'Kurzer Weg 12', 91183, 'Abenberg', 1970),
(19, 'Drauss', 'Kai', 'Zitterstr. 49', 26757, 'Borkum', 1956),
(20, 'Zauber', 'Josefa', 'Donaldstr. 78', 48565, 'Steinfurt', 1978),
(21, 'Winkelmann', 'Paul', 'Astweg 86', 48163, 'Münster', 1988),
(22, 'Hard', 'Sieglinde', 'Amtsgasse 2', 25335, 'Altenmoor', 1977),
(23, 'Storb', 'Karl', 'Sandgasse 35', 66954, 'Pirmasens', 1986),
(24, 'Winzig', 'Sven', 'Finkengasse 3', 14482, 'Potsdam', 1982),
(25, 'Pfaffhauser', 'Debora', 'Aladinweg 19', 65817, 'Eppstein', 1987),
(26, 'Duck', 'Jürgen', 'Karl Liebknecht Str. 10', 48317, 'Drensteinfurt', 1982),
(27, 'Waskow', 'Thomas', 'Fundus 3', 76332, 'Bad Herrenalb', 1969),
(28, 'Baum', 'Ruth', 'Besselweg 50', 47669, 'Wachtendonk', 1990),
(29, 'Leiermann', 'Steve', 'Ringstr. 55', 91602, 'Dürrwangen', 1970),
(30, 'Anadolu', 'Benedikt', 'Wittenberger Str. 6', 89617, 'Untermarchtal', 1962),
(31, 'Biedermann', 'Berta', 'Albrecht-Dürer-Platz 5', 25776, 'Leherfeld', 1968),
(32, 'Hauser', 'Benjamin', 'Kafka-Straße 18', 49453, 'Barver', 1993),
(33, 'Wackel', 'Sancho', 'Marktallee 45', 1445, 'Radebeul', 1975),
(34, 'Wollenhaupt', 'Matthias', 'Dingbängerweg 8', 88480, 'Achstetten', 1979),
(35, 'Naht', 'Corinna Theresa', 'Kirchhof 13', 87487, 'Wiggensbach', 1983),
(36, 'Gubser', 'Tobias', 'Fuchsbergredder 234', 18546, 'Sassnitz', 1960),
(37, 'Michel', 'Simone', 'Wurmsweg 27', 26670, 'Uplengen', 1969),
(38, 'Galli', 'Xander', 'Sultanstraße 65', 19348, 'Kleinow', 1970),
(39, 'Stubbe', 'Tina', 'Blumenwiese 47', 13127, 'Berlin', 1989),
(40, 'Lehmann', 'Monika', 'Höhlenweg 45', 99887, 'Catterfeld', 1961),
(41, 'Langstrumpf', 'Gabi', 'Holzweg 13', 53757, 'Sankt Augustin', 1963),
(42, 'Kogel', 'Siegfried', 'Braune Straße 1', 74939, 'Zuzenhausen', 1970),
(43, 'Weise', 'Anna-Sophie', 'Finkenweg 43', 48161, 'Münster', 1989),
(44, 'Hemken', 'Gottfried', 'Maßgasse 5', 91096, 'Möhrendorf', 1987),
(45, 'Baumann', 'Reana', 'Alexanderstraße 12', 48163, 'Münster', 1981),
(46, 'Möhre', 'Marion', 'Wankel End 99', 90441, 'Nürnberg', 1975),
(47, 'Trotz', 'Gudrun', 'Wielandstr. 19', 83104, 'Tuntenhausen', 1966),
(48, 'Herting', 'Wickie', 'Brest 16', 83567, 'Unterreit', 1987),
(49, 'Damwerth', 'Leo', 'Emmerbach 2', 59872, 'Meschede', 1994),
(50, 'Herbst', 'Gunda', 'Impressionistenweg 39b', 8062, 'Zwickau', 1956),
(51, 'Storch', 'Dieter', 'Rosa Straße 95', 88637, 'Leibertingen', 1986),
(52, 'Kannengießer', 'Arabella', 'Marienstr.57', 64395, 'Hippelsbach', 1954),
(53, 'Loskant', 'Flora', 'Bilderstr. 19', 91743, 'Unterschwaningen', 1979),
(54, 'Händel', 'Inga', 'Orange Straße 100', 64732, 'Bad König', 1974),
(55, 'Schwenk', 'Susanne', 'Bahnhofstr. 19', 48249, 'Dülmen', 1975),
(56, 'Frisch', 'Thomas', 'Tierstr. 5', 18546, 'Sassnitz', 1982),
(57, 'Assauer', 'Siegfried', 'Salzstr. 22', 35688, 'Dillenburg', 1984),
(58, 'Egge', 'Margarete', 'Lindenstr. 7', 61352, 'Bad Homburg', 1984),
(59, 'Schlendrian', 'Frieda', 'Wölkchenweg 25', 66798, 'Wallerfangen', 1988),
(60, 'Stude', 'Marc', 'Kaiser-Wilhelm-Ring 40', 48151, 'Münster', 1963),
(61, 'Massmann', 'Mathilde', 'Steinstr. 111a', 45721, 'Haltern am See', 1979),
(62, 'Schrot', 'Pablo', 'Rosenbusch 12', 25980, 'Sylt-Ost', 1979),
(63, 'Bayer', 'Klara-Marie', 'Karrengasse 8', 93142, 'Maxhütte-Haidhof', 1971),
(64, 'Siegel', 'Susanne', 'Friedenstr. 65', 48653, 'Coesfeld', 1966),
(65, 'Schütz', 'Eike', 'Regentengasse 13', 36142, 'Tann', 1967),
(66, 'Abenteurer', 'Reiner', 'Lärmweg 4', 49453, 'Barver', 1957),
(67, 'Kreis', 'Katja', 'Fuchsbergweg 95', 65618, 'Selters', 1964),
(68, 'Polak', 'Annina', 'Rehkoppel 8', 73431, 'Aalen', 1991),
(69, 'Van Tol', 'Frieda', 'Verbindungsstr. 54', 84555, 'Jettenbach', 1958),
(70, 'Schubert', 'Maik', 'Amselweg 15', 48163, 'Münster', 1973),
(71, 'Steinmeyer', 'Dagobert', 'Bohlweg 12', 89434, 'Blindheim', 1986),
(72, 'Höppener', 'Johann', 'Grüne Straße 14', 26670, 'Uplengen', 1977),
(73, 'Xandry', 'Valerie', 'Senfstr. 5', 87487, 'Wiggensbach', 1985),
(74, 'Limburg', 'Eike', 'Gelbe Straße 23', 91096, 'Möhrendorf', 1981),
(75, 'Notdurft', 'Silke', 'Stahlweg 234', 47652, 'Weeze', 1979),
(76, 'Gerdes', 'Dieter', 'Walgrafenstr. 2a', 95502, 'Himmelkron', 1969),
(77, 'Näher', 'Nora', 'Sandgasse 8', 94554, 'Moos', 1958),
(78, 'Nostra', 'Susanne', 'Im Querbeet 40', 59423, 'Unna', 1982),
(79, 'Kottmann', 'Siriusona', 'Reclamstraße 23', 70199, 'Stuttgart', 1976),
(80, 'Bühler', 'Sheena', 'Südring 123', 48161, 'Münster', 1980),
(81, 'Zietz', 'Seppl', 'Dorfplatz 13', 47574, 'Goch', 1963),
(82, 'Grießhammer', 'Mark', 'Dunantstr. 15', 59229, 'Ahlen', 1987),
(83, 'Höppener', 'Arnold', 'Hasenpfad 25', 59348, 'Lüdinghausen', 1967),
(84, 'Dezember', 'Frida', 'Traumallee 2', 85111, 'Adelschlag', 1956),
(85, 'Heinings', 'Nadja', 'Rue Baudelaire 92', 66115, 'Saarbrücken', 1993),
(86, 'Imhof', 'Céline', 'Nagelsweg 19', 33098, 'Paderborn', 1980),
(87, 'Leemann', 'Jessica', 'Fuchsloch 30a', 44149, 'Dortmund', 1992),
(88, 'Küster', 'Astrid', 'Rohrstr.', 89438, 'Holzheim', 1979),
(89, 'Geritzen', 'Winnetou', 'Pützler 32', 39120, 'Magdeburg', 1991),
(90, 'Engelmann', 'Fritz', 'Steinstr. 10', 48291, 'Telgte', 1980),
(91, 'Armeskind', 'Willi', 'Nazissenweg 1', 72658, 'Bempflingen', 1973),
(92, 'Famula', 'Nino', 'Aue 9', 37412, 'Elbingerode', 1989),
(93, 'Köhler', 'Hubert', 'Briandstr. 12', 34385, 'Bad Karlshafen', 1991),
(94, 'Ungricht', 'Jessica', 'Zimmerpforte 48', 6905, 'Bad Schmiedeberg', 1984),
(95, 'Schmitke', 'Egon', 'Freudscher Weg 1', 8267, 'Zwota', 1983),
(96, 'Gruber', 'Bashir', 'Heidestr. 77', 85716, 'Unterschleißheim', 1956),
(97, 'Beethoven', 'Benjamin', 'Kurzer Weg 15', 48163, 'Münster', 1971),
(98, 'Ärger', 'Siegfried', 'Heller 24 a', 4571, 'Rötha', 1981),
(99, 'Sonnenschein', 'Elke', 'Fabrikstr. 5', 48231, 'Warendorf', 1984),
(100, 'Pfaffhauser', 'Jessica', 'Wunschring 32', 48163, 'Münster', 1986),
(101, 'Salvatore', 'Tanja', 'Straße der Freundschaft 4', 17235, 'Neustrelitz', 1959),
(102, 'Rost', 'Ulf', 'Moorweg 23', 94160, 'Ringelai', 1957),
(103, 'Sprudel', 'Eva-Maria', 'Oasenweg 3', 44149, 'Dortmund', 1978),
(104, 'Roost', 'Andrea', 'Mundsburger Damm 34', 13125, 'Berlin', 1954),
(105, 'Ferkel', 'Norbert', 'Friedensweg 46', 52066, 'Aachen', 1973),
(106, 'Vogel', 'Dieter', 'Hansaplatz 12', 29369, 'Ummern', 1976),
(107, 'Schramm', 'Willem', 'Thronstr.80', 48653, 'Coesfeld', 1980),
(108, 'Laberkopp', 'Rudi', 'Flunderweg 13', 77773, 'Schenkenzell', 1985),
(109, 'Solaro', 'Maja', 'Fabrikstr. 7', 35688, 'Dillenburg', 1989),
(110, 'Kleist', 'Inken', 'Blaustr. 6', 74921, 'Helmstadt-Bargen', 1984),
(111, 'Biedermann', 'Frederik', 'Auf der Breie 2', 88142, 'Wasserburg', 1974),
(112, 'Keller', 'Gerda', 'Schlacht 2', 77855, 'Achern', 1973),
(113, 'Trödler', 'Anton', 'Dillingerstr. 123', 24239, 'Achterwehr', 1991),
(114, 'Sehmisch', 'Susi', 'Heckenstr. 13', 65817, 'Eppstein', 1985),
(115, 'Seyan', 'Karin', 'Im Zelt 1', 44581, 'Castrop-Rauxel', 1963),
(116, 'Biene', 'Klara', 'Kalifornienweg 1', 93326, 'Abensberg', 1991),
(117, 'Steinbrecher', 'Fabiola', 'Weinachtsweg 77', 19399, 'Neu Poserin', 1977),
(118, 'Baumann', 'Laura', 'Agnesstraße 38', 47652, 'Weeze', 1983),
(119, 'Argast', 'Cornelia', 'Strandbad 98', 48653, 'Coesfeld', 1982),
(120, 'Huser', 'Andrea', 'Rehmstraße 45', 67256, 'Weisenheim am Sand', 1964),
(121, 'Lenzner', 'Claudia', 'Alfredstraße 16', 72658, 'Bempflingen', 1961),
(122, 'Borner', 'Valentina', 'Pagenfelder Platz 55', 88480, 'Achstetten', 1976),
(123, 'Schlendrian', 'Frida', 'Finkenweg 37', 94036, 'Abraham', 1989),
(124, 'Arens', 'Detlev', 'Hasenpfad 3', 48167, 'Münster', 1968),
(125, 'Jedermann', 'Mariella', 'Agnesstraße 12', 48143, 'Münster', 1955),
(126, 'Wedel', 'Michael Jean Paul', 'Brückenweg 13', 51107, 'Köln', 1979),
(127, 'Ansinnen', 'Michael', 'Davertstr. 36', 16928, 'Holzländerhof', 1993),
(128, 'Kemper', 'Markus', 'Exerzierplatz 10', 13125, 'Berlin', 1984),
(129, 'Höschen', 'Detlef', 'Drosselweg 10', 66954, 'Pirmasens', 1982),
(130, 'Mohry', 'Jürgen', 'Ringstr. 11', 65326, 'Aarbergen', 1994),
(131, 'Lose', 'Karina', 'Angelsachsenweg 52', 39435, 'Egeln', 1964),
(132, 'Hütten', 'Ulla', 'Münster Straße 6', 45896, 'Gelsenkirchen', 1975),
(133, 'Rot', 'Friedjod', 'Mozartweg 66', 19348, 'Kleinow', 1981),
(134, 'Frye', 'Sybille', 'Klosterbusch 8', 34471, 'Volkmarsen', 1982),
(135, 'Wiese', 'Simon', 'Heinestr. 28', 48143, 'Münster', 1976),
(136, 'Schrot', 'Susanne', 'Dunkelstr. 13b', 33378, 'Rheda-Wiedenbrück', 1987),
(137, 'Gosden', 'Magda', 'Blaue Straße 146', 6118, 'Halle', 1962),
(138, 'Steinhoff', 'Ilka', 'Friedlandstr. 16', 73431, 'Aalen', 1973),
(139, 'Klapper', 'Peter', 'Raesfeldweg 3a', 65817, 'Eppstein', 1975),
(140, 'Sowka', 'Maya', 'Orgelweg 44', 47906, 'Kempen', 1977),
(141, 'Bussard', 'Hans', 'Dunkelstr. 45', 48356, 'Nordwalde', 1970),
(142, 'Mercel', 'Peter', 'Danzigerstr. 36', 34477, 'Twistetal', 1963),
(143, 'Heinrich', 'Hans', 'Bergweg 8', 48157, 'Münster', 1983),
(144, 'Assauer', 'Gerda', 'Diekhoff 2', 47906, 'Kempen', 1987),
(145, 'Schumann', 'Dirk', 'Leerer Landweg 37', 67823, 'Bergmühle', 1992),
(146, 'Otto', 'Karl', 'Rosenweg', 8451, 'Crimmitschau', 1993),
(147, 'Langer', 'Anja', 'Graue Straße 2', 58675, 'Hemer', 1983),
(148, 'Fleck', 'Gerda', 'Hernestr. 4', 55568, 'Abtweiler', 1958),
(149, 'Keller', 'Toni', 'Schwarze Straße 55', 37449, 'Zorge', 1986),
(150, 'Riesenbeck', 'Ulrike', 'Diekhoff 24', 27374, 'Visselhövede', 1964),
(151, 'Nelke', 'Margret', 'Wut 22', 37281, 'Wanfried', 1954),
(152, 'Limburg', 'Horst', 'Monsterhügel 186', 48163, 'Münster', 1955),
(153, 'Heine', 'Giesela', 'Beethovenstr. 29', 45721, 'Haltern am See', 1973),
(154, 'Störenfried', 'Luca', 'Berlinerstr. 47', 58511, 'Lüdenscheid', 1981),
(155, 'Paatz', 'Rosa', 'Bachstr. 7', 21765, 'Nordleda', 1973),
(156, 'Hillemeier', 'Erna', 'Blumenwiesengasse 3', 48163, 'Münster', 1989),
(157, 'Gerdes', 'Petra', 'Violette Straße 73', 33378, 'Rheda-Wiedenbrück', 1960),
(158, 'Zumbusch', 'Marisa', 'Blütenweg 4', 33106, 'Paderborn', 1965),
(159, 'Blessing', 'Antonia', 'Overbeckstraße 3c', 33106, 'Paderborn', 1960),
(160, 'Bahrt', 'Simone', 'Metzerstr. 45', 86720, 'Nördlingen', 1976),
(161, 'Solaro', 'Meinhard', 'Badstr. 8', 65326, 'Aarbergen', 1962),
(162, 'Seebär', 'Karl', 'Zwergenweg 198', 44329, 'Dortmund', 1983),
(163, 'Krone', 'Katja', 'Hüttenweg 35', 84427, 'Sankt Wolfgang', 1956),
(164, 'Groß', 'Arnold', 'Waldesruh 12', 48431, 'Rheine', 1991),
(165, 'Tulpe', 'Kim', 'Palmenweg 17', 90547, 'Stein', 1990),
(166, 'Wonder', 'Wilhelm', 'Steinbruch 34', 67256, 'Weisenheim am Sand', 1977),
(167, 'Schmidt', 'Daniela', 'Rautendeleinweg 42', 82008, 'Unterhaching', 1990),
(168, 'Markfort', 'Svenja', 'Am anderen Ufer 5', 38875, 'Drei Annen Hohne', 1977),
(169, 'Schindler', 'Richard', 'Am Ausguck 23', 55768, 'Hoppstädten-Weiersbach', 1990),
(170, 'Van Eeden', 'Hedwig', 'Palmenallee 55', 74544, 'Michelbach an der Bilz', 1983),
(171, 'Meyer', 'Josef', 'Ständer 4', 49509, 'Recke', 1973),
(172, 'Winter', 'Susanne', 'Stahlweg 5', 1616, 'Strehla', 1963),
(173, 'Doll', 'Elisabeth', 'Pferdepfad 109', 25826, 'Sankt Peter-Ording', 1965),
(174, 'Massmann', 'Elfriede', 'Emsaue 9', 59348, 'Lüdinghausen', 1972),
(175, 'Held', 'Rosalia', 'Hammerstr. 3', 48153, 'Münster', 1970),
(176, 'Landahl', 'Ulli', 'Rotnasenstr. 33', 74740, 'Adelsheim', 1989),
(177, 'Biedermann', 'Hidegard', 'Fitzel 18', 88450, 'Berkheim', 1988),
(178, 'Grieba', 'Isodore', 'Stahlweg 8', 70199, 'Stuttgart', 1968),
(179, 'Siebenschläfer', 'Agnes', 'Luisenstr. 17', 78267, 'Aach', 1958),
(180, 'Randy', 'Joschka', 'Am Bach 2', 84503, 'Holzhauser Eck', 1960),
(181, 'Wurlitz', 'Maya', 'Drosselweg 5', 39319, 'Jerichow', 1975),
(182, 'Rother', 'Olaf', 'Wucherstr. 399', 85088, 'Vohburg', 1978),
(183, 'Bäcker', 'Elke', 'Hafenstr. 5', 26316, 'Varel', 1989),
(184, 'Frühling', 'Berta', 'Merschweg 14', 83671, 'Benediktbeuern', 1962),
(185, 'Gosden', 'Rosi', 'Im Tiefen Grund 19', 73431, 'Aalen', 1970),
(186, 'Fischer', 'Rudi', 'Unter den Linden 12', 73432, 'Aalen', 1980),
(187, 'Heine', 'Ulf', 'Legendenstr. 23', 25980, 'Sylt-Ost', 1978),
(188, 'Formela', 'Dorle', 'K. Zetkinstr. 6', 15366, 'Hönow', 1990),
(189, 'Bettler', 'Jonas', 'Hinterhofstr. 50', 48153, 'Münster', 1991),
(190, 'Capatt', 'Stephanie', 'Aladinweg 1001', 21614, 'Buxtehude', 1967),
(191, 'Berg', 'Karola', 'Am Weiher 4', 91720, 'Absberg', 1970),
(192, 'Monet', 'Rainer', 'Eichenweg 6', 28832, 'Achim', 1969),
(193, 'Rose', 'Karl-Heinz', 'Walkenbrückenstr. 9', 49497, 'Mettingen', 1967),
(194, 'Schmidt', 'Florian', 'Goetheallee 14b', 59348, 'Lüdinghausen', 1964),
(195, 'Dommasch', 'Winfried', 'Auf dem Holzweg 130', 53721, 'Siegburg', 1975),
(196, 'Hillemeier', 'Ruth', 'Berlinerstr. 32', 48653, 'Coesfeld', 1963),
(197, 'Schwarzenberg', 'Tim', 'Hundegasse 54', 82390, 'Moos', 1956),
(198, 'Mühlenfeld', 'Sönke', 'Borussiastr. 120', 52068, 'Aachen', 1979),
(199, 'Wünsch', 'Matthias', 'Hafenstr.88', 56743, 'Mendig', 1989),
(200, 'Nonsens', 'Krimhild Uta', 'Almweg 12', 48739, 'Legden', 1986),
(201, 'Bergmann', 'Yvonne', 'Rote Straße 22', 80939, 'München', 1978),
(202, 'Schmitz', 'Martina', 'Hinterm Berg 54', 52062, 'Aachen', 1981),
(203, 'Schlot', 'Roland', 'Gregorweg 65', 86874, 'Tussenhausen', 1958),
(204, 'Baumann', 'Tanya', 'Sydneystraße 12', 47906, 'Kempen', 1991),
(205, 'Grünspan', 'Mai', 'Operettenweg 35', 65326, 'Aarbergen', 1969),
(206, 'Gallio', 'Jennifer', 'Albertstraße 2c', 59348, 'Lüdinghausen', 1988),
(207, 'Schwarzenegger', 'Anton', 'Hellhügelweg 12', 47589, 'Uedem', 1991),
(208, 'Wineke', 'Lydia', 'Jessenweg 4', 21640, 'Nottensdorf', 1977),
(209, 'Krämer', 'Kurt', 'Im Vogelhorst 12', 70771, 'Leinfelden-Echterdingen', 1954),
(210, 'Heidschnucke', 'Lasse', 'Postfach 81702', 3185, 'Drehnow', 1988),
(211, 'Kleeblatt', 'Clarissa', 'Zeisigweg', 73433, 'Aalen', 1974),
(212, 'Prosenik', 'Simona', 'Alemannenweg 100', 48143, 'Münster', 1962),
(213, 'Reidegeld', 'Martina', 'Flake 5', 47652, 'Weeze', 1966),
(214, 'Sieger', 'Svenja', 'Antoniusplatz 27', 66636, 'Tholey', 1975),
(215, 'Picasso', 'Anna', 'Bach Str. 99', 94036, 'Abraham', 1985),
(216, 'Maier', 'Tanja', 'Zitterstr. 9', 94036, 'Abraham', 1962),
(217, 'Sommer', 'Christin', 'Wannenallee 96', 24364, 'Holzdorf', 1994),
(218, 'Kuijt', 'Claude', 'Villa Kunterbunt 12', 56648, 'Saffig', 1991),
(219, 'Maier', 'Xandra', 'Dornbusch 12', 94036, 'Abraham', 1956),
(220, 'Fürst', 'Rudi', 'Wittenberger Str. 56', 59348, 'Lüdinghausen', 1984),
(221, 'Frankenheim', 'Xaver', 'Operettenweg 14', 66115, 'Saarbrücken', 1967),
(222, 'Böcker', 'Willibald', 'Am Kirchplatz 3', 97247, 'Eisenheim', 1991),
(223, 'Scharlach', 'Hermann', 'Schuhstr. 73', 65195, 'Wiesbaden', 1974),
(224, 'Hammel', 'Josefine', 'Lessingstr. 10', 73430, 'Aalen', 1962),
(225, 'Müller', 'Gerd', 'Regensburgerst. 56', 52076, 'Aachen', 1986),
(226, 'Sowka', 'Arabella', 'Auf dem Holzweg 6', 31171, 'Nordstemmen', 1978),
(227, 'Großfeld', 'Tom', 'Dünenweg 99', 42277, 'Wuppertal', 1960),
(228, 'Krail', 'Seraina', 'Gänselieselweg 12a', 91096, 'Möhrendorf', 1980),
(229, 'Storb', 'Gertrud', 'Sprüchegasse 144', 48155, 'Münster', 1967),
(230, 'Engel', 'Walther', 'Am Horst 4', 21614, 'Buxtehude', 1980),
(231, 'Kaiser', 'Linda', 'Westfalendamm 12', 48163, 'Münster', 1992),
(232, 'Weinert', 'Mathilde', 'Auf der Höhe 68', 48155, 'Münster', 1975),
(233, 'Geldern', 'Otto', 'Flora 2', 91364, 'Unterleinleiter', 1963),
(234, 'Westermann', 'Bert', 'Leninallee 22', 47059, 'Duisburg', 1987),
(235, 'Michel', 'Muck', 'Zesenstraße 39', 52070, 'Aachen', 1966),
(236, 'Höschen', 'Gabi', 'Weinsteige 35', 48163, 'Münster', 1975),
(237, 'Aron', 'Karla', 'Ostring 78', 92724, 'Trabitz', 1982),
(238, 'Deitermann', 'Wilhelm', 'Soester Str.90', 99991, 'Heroldishausen', 1963),
(239, 'Waldheim', 'Gerd', 'Traumstr. 78', 73430, 'Aalen', 1984),
(240, 'Kuller', 'Thomas', 'Grüner Weg 30', 47929, 'Grefrath', 1972),
(241, 'Steinhoff', 'Erna', 'Grüner Weg 31', 77773, 'Schenkenzell', 1971),
(242, 'Reiche', 'Ralf', 'Legendenstr. 15', 50127, 'Bergheim', 1966),
(243, 'Wagner', 'Herbert', 'Drachenstr. 1', 63874, 'Höllhammer', 1992),
(244, 'Caruso', 'Edmund', 'Heckenweg 5', 55543, 'Bad Kreuznach', 1971),
(245, 'Trotz', 'Margret', 'Jessenweg 2', 48155, 'Münster', 1955),
(246, 'Strootmann', 'Alice', 'Bosenheimerstr. 77', 52070, 'Aachen', 1968),
(247, 'Kant', 'Erna', 'Wilhelmsstr. 88', 16565, 'Lehnitz', 1980),
(248, 'Naht', 'Angelika', 'Wolke 7', 65326, 'Aarbergen', 1959),
(249, 'Lehmann', 'Rita', 'Oststr.55', 34513, 'Klippmühle', 1988),
(250, 'Panza', 'Spina', 'Schöllerstr. 34', 6905, 'Bad Schmiedeberg', 1992),
(251, 'Seife', 'Elisabeth', 'Hasenstr.76', 86673, 'Bergheim', 1960),
(252, 'Wolf', 'Elise', 'Aegidiistr. 32', 52062, 'Aachen', 1983),
(253, 'Xanthopuolos', 'Sakis', 'Fontanestr. 18', 63303, 'Dreieich', 1974),
(254, 'Schwarzer', 'Maria', 'Kleiststr. 22', 47877, 'Willich', 1970),
(255, 'Reidegeld', 'Karl', 'Palmenallee 12', 90547, 'Stein', 1970),
(256, 'Ardebil', 'Maja', 'Am stillen Örtchen 30', 65618, 'Selters', 1961),
(257, 'Wickinger', 'Rösler', 'Am Hollerbusch 5', 47506, 'Neukirchen-Vluyn', 1961),
(258, 'Picasso', 'Tom', 'Hinterhofstr. 12', 13051, 'Berlin', 1967),
(259, 'Geringhoff', 'Pippi', 'an der Kachel 6', 14947, 'Nuthe-Urstromtal', 1966),
(260, 'Fels', 'Jaap', 'Gelbe Straße 7', 13439, 'Berlin', 1976),
(261, 'Grünspan', 'Jens', 'An der Gerte 20', 59348, 'Lüdinghausen', 1979),
(262, 'Linsner', 'Corinna', 'Bachstr.54', 66740, 'Saarlouis', 1973),
(263, 'Rotnase', 'Ilse', 'Im Tiefen Grund 16', 47798, 'Krefeld', 1970),
(264, 'Habicht', 'Herbert', 'Am Wipfel 22', 54497, 'Horath', 1969),
(265, 'Wagner', 'Asterix', 'Kölner Ring 215', 64757, 'Unter-Hainbrunn', 1974),
(266, 'Amboss', 'Rudolf', 'Weinsteige 398', 72770, 'Reutlingen', 1988),
(267, 'Mohry', 'Gabrielle', 'Insel 64', 95502, 'Himmelkron', 1962),
(268, 'De Lussanet', 'Benjamin', 'Am Sunde 14', 55286, 'Sulzheim', 1978),
(269, 'Kehraus', 'Siegfried', 'Kirchhof 9', 84164, 'Dreifaltigkeitsberg, Gem Weng', 1983),
(270, 'Liebelei', 'Julia', 'Drachenbaumweg 42', 24211, 'Honigsee', 1955),
(271, 'Feger', 'Brunhilde', 'Proststr. 111', 73431, 'Aalen', 1957),
(272, 'Baur', 'Ümügülsüm', 'Mineralweg 5', 28717, 'Bremen', 1957),
(273, 'Sutter', 'Daniela', 'Geerzkamp 37', 48653, 'Coesfeld', 1962),
(274, 'Fürst', 'Uta', 'Heimchenweg 83', 13051, 'Berlin', 1988),
(275, 'Deinhard', 'Klaus', 'Beetstr. 34', 35510, 'Butzbach', 1970),
(276, 'Bieder', 'Lukas', 'Patentstr. 66', 31623, 'Drakenburg', 1980),
(277, 'Mercaldi', 'Nathalie', 'Albatrosweg 7', 45721, 'Haltern am See', 1977),
(278, 'Gscheidle', 'Dietmar', 'Nachtweg 36', 80809, 'München', 1988),
(279, 'Müller', 'Ramona', 'Mehrdenstr. 99', 47608, 'Geldern', 1976),
(280, 'Wesel', 'Birgit', 'Weikenkamp 22', 55568, 'Abtweiler', 1990);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
