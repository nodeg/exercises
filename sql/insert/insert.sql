
-- insert multiple entries

INSERT INTO person
(PersonID, Nachname, Vorname, Strasse, PLZ, ORT, Geburtsjahr)
VALUES
('281','Dorkel', 'Linux', 'Rübenacker 13', '44532', 'Lünen', '1993'),
('282', 'Bornekamp', 'Viola', 'Eichenalle 25', '44532', 'Lünen', '1995'),
('283', 'Wolkentied', 'Lasse', 'Von Galen-Straße 40', '59192', 'Bergkamen', '1982');

-- show new entries
SELECT *
FROM person
ORDER BY PersonID DESC
LIMIT 3;

+----------+------------+---------+----------------------+-------+-----------+-------------+
| PersonID | Nachname   | Vorname | Strasse              | PLZ   | Ort       | Geburtsjahr |
+----------+------------+---------+----------------------+-------+-----------+-------------+
|      283 | Wolkentied | Lasse   | Von Galen-Straße 40  | 59192 | Bergkamen |        1982 |
|      282 | Bornekamp  | Viola   | Eichenalle 25        | 44532 | Lünen     |        1995 |
|      281 | Dorkel     | Linux   | Rübenacker 13        | 44532 | Lünen     |        1993 |
+----------+------------+---------+----------------------+-------+-----------+-------------+


-- remove entries (always use the primary key!)

DELETE FROM person
WHERE PersonID = 3;

DELETE FROM person
WHERE Nachname = 'Heinings' AND Vorname = 'Nadja' AND Ort = 'Saarbrücken';


DELETE FROM person
WHERE Nachname = 'Klapper' AND Vorname = 'Peter' AND Ort = 'Eppstein';


DELETE FROM person
WHERE Nachname = 'Großfeld' AND Vorname = 'Tom';


-- check deletion
SELECT *
FROM person
WHERE Nachname = 'Klapper'
OR Nachname = 'Heinings'
OR Nachname = 'Großfeld';

Empty set (0.001 sec)


-- update entry

UPDATE person
SET Nachname = 'Alparto'
WHERE Nachname = 'Baumann';

-- show changes
SELECT * FROM `person` WHERE Nachname = 'Alparto';

+----------+----------+---------+---------------------+-------+----------+-------------+
| PersonID | Nachname | Vorname | Strasse             | PLZ   | Ort      | Geburtsjahr |
+----------+----------+---------+---------------------+-------+----------+-------------+
|       45 | Alparto  | Reana   | Alexanderstraße 12  | 48163 | Münster  |        1981 |
|      118 | Alparto  | Laura   | Agnesstraße 38      | 47652 | Weeze    |        1983 |
|      204 | Alparto  | Tanya   | Sydneystraße 12     | 47906 | Kempen   |        1991 |
+----------+----------+---------+---------------------+-------+----------+-------------+