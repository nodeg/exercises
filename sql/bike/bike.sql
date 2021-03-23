-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Jan 2021 um 13:47
-- Server-Version: 10.1.30-MariaDB
-- PHP-Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
SET SESSION time_zone = "+00:00";
SET @@sql_mode='Traditional'; --Sonst u.a. Not NULL nicht wirksam



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `bike`

DROP DATABASE IF EXISTS `bike`;

CREATE DATABASE IF NOT EXISTS `bike` DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci;

USE `bike`;




--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `artikel`
--

CREATE TABLE `artikel` (
  `Anr` int(11) NOT NULL,
  `Bezeichnung` char(30) NOT NULL,
  `Netto` decimal(7,2) DEFAULT NULL,
  `Steuer` decimal(7,2) DEFAULT NULL,
  `Preis` decimal(7,2) DEFAULT NULL,
  `Farbe` char(10) DEFAULT NULL,
  `Mass` char(15) DEFAULT NULL,
  `Einheit` char(2) NOT NULL,
  `Typ` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `artikel`
--

INSERT INTO `artikel` (`Anr`, `Bezeichnung`, `Netto`, `Steuer`, `Preis`, `Farbe`, `Mass`, `Einheit`, `Typ`) VALUES
(100001, 'Herren-City-Rad', '588.24', '111.76', '700.00', 'blau', '26 Zoll', 'ST', 'E'),
(100002, 'Damen-City-Rad', '546.22', '103.78', '650.00', 'rot', '26 Zoll', 'ST', 'E'),
(200001, 'Herren-City-Rahmen lackiert', '336.13', '63.87', '400.00', 'blau', NULL, 'ST', 'Z'),
(200002, 'Damen-City-Rahmen lackiert', '336.13', '63.87', '400.00', 'rot', NULL, 'ST', 'Z'),
(300001, 'Herren-City-Rahmen geschweisst', '310.92', '59.08', '370.00', NULL, NULL, 'ST', 'Z'),
(300002, 'Damen-City-Rahmen geschweisst', '310.92', '59.08', '370.00', NULL, NULL, 'ST', 'Z'),
(400001, 'Rad', '58.82', '11.18', '70.00', NULL, '26 Zoll', 'ST', 'Z'),
(500001, 'Rohr 25CrMo4 9mm', '6.30', '1.20', '7.50', NULL, '9mm', 'CM', 'F'),
(500002, 'Sattel', '42.02', '7.98', '50.00', NULL, NULL, 'ST', 'F'),
(500003, 'Gruppe Deore LX', '5.88', '1.12', '7.00', NULL, 'LX', 'ST', 'F'),
(500004, 'Gruppe Deore XT', '5.04', '0.96', '6.00', NULL, 'XT', 'ST', 'F'),
(500005, 'Gruppe XC-LTD', '6.72', '1.28', '8.00', NULL, 'XC-LTD', 'ST', 'F'),
(500006, 'Felgensatz', '33.61', '6.39', '40.00', NULL, '26 Zoll', 'ST', 'F'),
(500007, 'Bereifung Schwalbe', '16.81', '3.19', '20.00', NULL, '26 Zoll', 'ST', 'F'),
(500008, 'Lenker + Vorbau', '78.99', '15.01', '94.00', NULL, NULL, 'ST', 'F'),
(500009, 'Sattelstuetze', '4.62', '0.88', '5.50', NULL, NULL, 'ST', 'F'),
(500010, 'Pedalsatz', '33.61', '6.39', '40.00', NULL, NULL, 'ST', 'F'),
(500011, 'Rohr 34CrMo4 2.1mm', '3.36', '0.64', '4.00', NULL, '2,1mm', 'CM', 'F'),
(500012, 'Rohr 34CrMo3 2.4mm', '3.61', '0.69', '4.30', NULL, '2,4mm', 'CM', 'F'),
(500013, 'Tretlager', '25.21', '4.79', '30.00', NULL, NULL, 'ST', 'F'),
(500014, 'Gabelsatz', '10.08', '1.92', '12.00', NULL, NULL, 'ST', 'F'),
(500015, 'Schlauch', '6.72', '1.28', '8.00', NULL, '26 Zoll', 'ST', 'F');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `auftrag`
--

CREATE TABLE `auftrag` (
  `AuftrNr` int(11) NOT NULL,
  `Datum` date DEFAULT NULL,
  `Kundnr` int(11) NOT NULL,
  `Persnr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `auftrag`
--

INSERT INTO `auftrag` (`AuftrNr`, `Datum`, `Kundnr`, `Persnr`) VALUES
(1, '2008-08-04', 1, 2),
(2, '2008-09-06', 3, 5),
(3, '2008-10-07', 4, 2),
(4, '2008-10-18', 6, 5),
(5, '2008-11-03', 1, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `auftragsposten`
--

CREATE TABLE `auftragsposten` (
  `PosNr` int(11) NOT NULL,
  `AuftrNr` int(11) NOT NULL,
  `Artnr` int(11) NOT NULL,
  `Anzahl` smallint(6) DEFAULT NULL,
  `Gesamtpreis` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `auftragsposten`
--

INSERT INTO `auftragsposten` (`PosNr`, `AuftrNr`, `Artnr`, `Anzahl`, `Gesamtpreis`) VALUES
(101, 1, 200002, 2, '800.00'),
(201, 2, 100002, 3, '1950.00'),
(202, 2, 200001, 1, '400.00'),
(301, 3, 100001, 1, '700.00'),
(302, 3, 500002, 2, '100.00'),
(401, 4, 100001, 1, '700.00'),
(402, 4, 500001, 4, '30.00'),
(403, 4, 500008, 1, '94.00'),
(501, 5, 500010, 1, '40.00'),
(502, 5, 500013, 1, '30.00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunde`
--

CREATE TABLE `kunde` (
  `Nr` int(11) NOT NULL,
  `Name` char(30) NOT NULL,
  `Strasse` char(30) DEFAULT NULL,
  `PLZ` int(11) DEFAULT NULL,
  `Ort` char(20) DEFAULT NULL,
  `Sperre` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `kunde`
--

INSERT INTO `kunde` (`Nr`, `Name`, `Strasse`, `PLZ`, `Ort`, `Sperre`) VALUES
(1, 'Fahrrad Shop', 'Obere Regenstr. 4', 93059, 'Regensburg', '0'),
(2, 'Zweirad-Center Staller', 'Kirschweg 20', 44267, 'Dortmund', '0'),
(3, 'Maier Ingrid', 'Universit?ñtsstr. 33', 93055, 'Regensburg', '1'),
(4, 'Rafa - Seger KG', 'Liebigstr. 10', 10247, 'Berlin', '0'),
(5, 'Biker Ecke', 'Lessingstr. 37', 22087, 'Hamburg', '0'),
(6, 'Fahrr?ñder Hammerl', 'Schindlerplatz 7', 81739, 'M??nchen', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lager`
--

CREATE TABLE `lager` (
  `Artnr` int(11) NOT NULL,
  `Lagerort` char(6) DEFAULT NULL,
  `Bestand` smallint(6) NOT NULL,
  `Mindbest` smallint(6) DEFAULT NULL,
  `Reserviert` smallint(6) DEFAULT NULL,
  `Bestellt` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `lager`
--

INSERT INTO `lager` (`Artnr`, `Lagerort`, `Bestand`, `Mindbest`, `Reserviert`, `Bestellt`) VALUES
(100001, '001002', 3, 0, 2, 0),
(100002, '001001', 6, 0, 3, 0),
(200001, NULL, 0, 0, 0, 0),
(200002, '004004', 2, 0, 0, 0),
(300001, NULL, 0, 0, 0, 0),
(300002, '002001', 7, 0, 2, 0),
(400001, '005001', 1, 0, 0, 0),
(500001, '003005', 8050, 6000, 184, 0),
(500002, '002002', 19, 20, 2, 10),
(500003, '001003', 15, 10, 0, 0),
(500004, '004001', 18, 10, 0, 0),
(500005, '003002', 2, 0, 0, 0),
(500006, '003004', 21, 20, 0, 0),
(500007, '002003', 62, 40, 0, 0),
(500008, '003003', 39, 20, 1, 0),
(500009, '002007', 23, 20, 0, 0),
(500010, '001006', 27, 20, 1, 0),
(500011, '001007', 3250, 3000, 161, 0),
(500012, '004002', 720, 600, 20, 0),
(500013, '005002', 20, 20, 2, 0),
(500014, '005003', 27, 20, 1, 0),
(500015, '002004', 55, 40, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lieferant`
--

CREATE TABLE `lieferant` (
  `Nr` int(11) NOT NULL,
  `Name` char(30) NOT NULL,
  `Strasse` char(30) DEFAULT NULL,
  `PLZ` int(11) DEFAULT NULL,
  `Ort` char(25) DEFAULT NULL,
  `Sperre` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `lieferant`
--

INSERT INTO `lieferant` (`Nr`, `Name`, `Strasse`, `PLZ`, `Ort`, `Sperre`) VALUES
(1, 'Firma Gerti Schmidtner', 'Dr.Gesslerstr.59', 93051, 'Regensburg', '0'),
(2, 'Rauch GmbH', 'Burgallee 23', 90403, 'N??rnberg', '0'),
(3, 'Shimano GmbH', 'Rosengasse 122', 51143, 'K?Âln', '0'),
(4, 'Suntour LTD', '65 Melton Street', NULL, 'London', '0'),
(5, 'MSM GmbH', 'St-Rotteneckstr.13', 93047, 'Regensburg', '0');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lieferung`
--

CREATE TABLE `lieferung` (
  `Anr` int(11) NOT NULL,
  `Liefnr` int(11) NOT NULL,
  `Lieferzeit` smallint(6) DEFAULT NULL,
  `Nettopreis` decimal(7,2) DEFAULT NULL,
  `Bestellt` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `lieferung`
--

INSERT INTO `lieferung` (`Anr`, `Liefnr`, `Lieferzeit`, `Nettopreis`, `Bestellt`) VALUES
(500001, 5, 1, '5.50', 0),
(500002, 1, 5, '35.10', 0),
(500002, 2, 4, '36.60', 10),
(500003, 2, 4, '5.70', 0),
(500003, 3, 6, '5.60', 0),
(500003, 4, 5, '5.45', 0),
(500004, 3, 2, '4.70', 0),
(500004, 4, 3, '4.50', 0),
(500005, 4, 5, '5.70', 0),
(500006, 1, 1, '26.00', 0),
(500007, 1, 2, '15.50', 0),
(500008, 1, 4, '73.00', 0),
(500009, 1, 2, '4.00', 0),
(500009, 2, 1, '4.30', 0),
(500010, 1, 3, '29.90', 0),
(500011, 5, 1, '2.60', 0),
(500012, 5, 1, '3.20', 0),
(500013, 1, 4, '21.00', 0),
(500014, 1, 5, '9.00', 0),
(500015, 1, 1, '6.00', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `personal`
--

CREATE TABLE `personal` (
  `Persnr` int(11) NOT NULL,
  `Name` char(30) NOT NULL,
  `Strasse` char(30) DEFAULT NULL,
  `PLZ` int(11) DEFAULT NULL,
  `Ort` char(20) DEFAULT NULL,
  `GebDatum` date NOT NULL,
  `Stand` char(6) DEFAULT NULL,
  `Vorgesetzt` int(11) DEFAULT NULL,
  `Gehalt` decimal(8,2) DEFAULT NULL,
  `Beurteilung` char(1) DEFAULT NULL,
  `Aufgabe` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `personal`
--

INSERT INTO `personal` (`Persnr`, `Name`, `Strasse`, `PLZ`, `Ort`, `GebDatum`, `Stand`, `Vorgesetzt`, `Gehalt`, `Beurteilung`, `Aufgabe`) VALUES
(1, 'Maria Forster', 'Ebertstr. 28', 93051, 'Regensburg', '1979-07-05', 'verh', NULL, '4800.00', '2', 'Manager'),
(2, 'Anna Kraus', 'Kramgasse 5', 93047, 'Regensburg', '1975-07-09', 'led', 1, '2300.00', '3', 'Vertreter'),
(3, 'Ursula Rank', 'Dreieichstr. 12', 60594, 'Frankfurt', '1967-09-04', 'verh', 6, '2700.00', '1', 'Facharbeiterin'),
(4, 'Heinz Rolle', 'In der Au 5', 90455, 'N??rnberg', '1957-10-12', 'led', 1, '3300.00', '3', 'Sekretr'),
(5, 'Johanna K?Âster', 'Wachtelstr. 7', 90427, 'N??rnberg', '1984-02-07', 'ges', 1, '2100.00', '5', 'Vertreter'),
(6, 'Marianne Lambert', 'Fraunhofer Str 3', 92224, 'Landshut', '1974-05-22', 'verh', NULL, '4100.00', '1', 'Meister'),
(7, 'Thomas Noster', 'Mahlergasse 10', 93047, 'Regensburg', '1972-09-17', 'verh', 6, '2500.00', '5', 'Arbeiter'),
(8, 'Renate Wolters', 'Lessingstr. 9', 86159, 'Augsburg', '1979-07-14', 'led', 1, '3300.00', '4', 'Sachbearbeiterin'),
(9, 'Ernst Pach', 'Olgastr. 99', 70180, 'Stuttgart', '1992-03-29', 'led', 6, '800.00', NULL, 'Azubi');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservierung`
--

CREATE TABLE `reservierung` (
  `Posnr` int(11) NOT NULL,
  `Artnr` int(11) NOT NULL,
  `Anzahl` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `reservierung`
--

INSERT INTO `reservierung` (`Posnr`, `Artnr`, `Anzahl`) VALUES
(101, 300002, 2),
(201, 100002, 3),
(202, 500001, 180),
(202, 500011, 161),
(202, 500012, 20),
(202, 500013, 1),
(202, 500014, 1),
(301, 100001, 1),
(302, 500002, 2),
(401, 100001, 1),
(402, 500001, 4),
(403, 500008, 1),
(501, 500010, 1),
(502, 500013, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `teilestruktur`
--

CREATE TABLE `teilestruktur` (
  `Artnr` int(11) NOT NULL,
  `Einzelteilnr` int(11) NOT NULL,
  `Anzahl` smallint(6) DEFAULT NULL,
  `Einheit` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `teilestruktur`
--

INSERT INTO `teilestruktur` (`Artnr`, `Einzelteilnr`, `Anzahl`, `Einheit`) VALUES
(100001, 200001, 1, 'ST'),
(100001, 400001, 1, 'ST'),
(100001, 500002, 1, 'ST'),
(100001, 500003, 1, 'ST'),
(100001, 500008, 1, 'ST'),
(100001, 500009, 1, 'ST'),
(100001, 500010, 1, 'ST'),
(100002, 200002, 1, 'ST'),
(100002, 400001, 1, 'ST'),
(100002, 500002, 1, 'ST'),
(100002, 500004, 1, 'ST'),
(100002, 500008, 1, 'ST'),
(100002, 500009, 1, 'ST'),
(100002, 500010, 1, 'ST'),
(200001, 300001, 1, 'ST'),
(200002, 300002, 1, 'ST'),
(300001, 500001, 180, 'CM'),
(300001, 500011, 161, 'CM'),
(300001, 500012, 20, 'CM'),
(300001, 500013, 1, 'ST'),
(300001, 500014, 1, 'ST'),
(300002, 500001, 360, 'CM'),
(300002, 500011, 106, 'CM'),
(300002, 500012, 20, 'CM'),
(300002, 500013, 1, 'ST'),
(300002, 500014, 1, 'ST'),
(400001, 500006, 1, 'ST'),
(400001, 500007, 2, 'ST'),
(400001, 500015, 2, 'ST');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`Anr`);

--
-- Indizes für die Tabelle `auftrag`
--
ALTER TABLE `auftrag`
  ADD PRIMARY KEY (`AuftrNr`),
  ADD KEY `FK_Auftrag_Kunde` (`Kundnr`),
  ADD KEY `FK_Auftrag_Personal` (`Persnr`);

--
-- Indizes für die Tabelle `auftragsposten`
--
ALTER TABLE `auftragsposten`
  ADD PRIMARY KEY (`PosNr`),
  ADD UNIQUE KEY `AK_Auftragsposten` (`AuftrNr`,`Artnr`),
  ADD KEY `FK_Auftrag_Artikel` (`Artnr`);

--
-- Indizes für die Tabelle `kunde`
--
ALTER TABLE `kunde`
  ADD PRIMARY KEY (`Nr`);

--
-- Indizes für die Tabelle `lager`
--
ALTER TABLE `lager`
  ADD PRIMARY KEY (`Artnr`);

--
-- Indizes für die Tabelle `lieferant`
--
ALTER TABLE `lieferant`
  ADD PRIMARY KEY (`Nr`);

--
-- Indizes für die Tabelle `lieferung`
--
ALTER TABLE `lieferung`
  ADD PRIMARY KEY (`Anr`,`Liefnr`),
  ADD KEY `FK_Lieferant` (`Liefnr`);

--
-- Indizes für die Tabelle `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`Persnr`),
  ADD KEY `FK_Personal` (`Vorgesetzt`);

--
-- Indizes für die Tabelle `reservierung`
--
ALTER TABLE `reservierung`
  ADD PRIMARY KEY (`Posnr`,`Artnr`),
  ADD KEY `FK_Teil_Artikel` (`Artnr`);

--
-- Indizes für die Tabelle `teilestruktur`
--
ALTER TABLE `teilestruktur`
  ADD PRIMARY KEY (`Artnr`,`Einzelteilnr`),
  ADD KEY `FK_ETeil_Artikel` (`Einzelteilnr`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `auftrag`
--
ALTER TABLE `auftrag`
  ADD CONSTRAINT `FK_Auftrag_Kunde` FOREIGN KEY (`Kundnr`) REFERENCES `kunde` (`Nr`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Auftrag_Personal` FOREIGN KEY (`Persnr`) REFERENCES `personal` (`Persnr`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints der Tabelle `auftragsposten`
--
ALTER TABLE `auftragsposten`
  ADD CONSTRAINT `FK_Auftrag_Artikel` FOREIGN KEY (`Artnr`) REFERENCES `artikel` (`Anr`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Auftrag_Auftrag` FOREIGN KEY (`AuftrNr`) REFERENCES `auftrag` (`AuftrNr`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `lager`
--
ALTER TABLE `lager`
  ADD CONSTRAINT `FK_Lager_Artikel` FOREIGN KEY (`Artnr`) REFERENCES `artikel` (`Anr`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `lieferung`
--
ALTER TABLE `lieferung`
  ADD CONSTRAINT `FK_Lieferant` FOREIGN KEY (`Liefnr`) REFERENCES `lieferant` (`Nr`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Lieferung_Artikel` FOREIGN KEY (`Anr`) REFERENCES `artikel` (`Anr`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `FK_Personal` FOREIGN KEY (`Vorgesetzt`) REFERENCES `personal` (`Persnr`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints der Tabelle `reservierung`
--
ALTER TABLE `reservierung`
  ADD CONSTRAINT `FK_Teil_Artikel` FOREIGN KEY (`Artnr`) REFERENCES `artikel` (`Anr`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Teil_Auftrag` FOREIGN KEY (`Posnr`) REFERENCES `auftragsposten` (`PosNr`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints der Tabelle `teilestruktur`
--
ALTER TABLE `teilestruktur`
  ADD CONSTRAINT `FK_Artnr_Artikel` FOREIGN KEY (`Artnr`) REFERENCES `artikel` (`Anr`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_ETeil_Artikel` FOREIGN KEY (`Einzelteilnr`) REFERENCES `artikel` (`Anr`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
