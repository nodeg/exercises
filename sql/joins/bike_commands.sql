-- 16.03.2021

SELECT *
FROM personal
JOIN auftrag
ON auftrag.Persnr = personal.Persnr;

--
SELECT *
FROM personal
JOIN auftrag
ON auftrag.Persnr = personal.Persnr;
JOIN kunde
ON kunde.nr = auftrag.kundnr;

--
SELECT *
FROM personal as p
LEFT JOIN auftrag as a
ON a.Persnr = p.Persnr;
LEFT JOIN kunde as k
ON k.nr = a.kundnr;

-------------------------------------------------


-- 17.03.2021

-- 1. Übersicht aller Aufträge, der zugehörigen Kunden und Mitarbeiter
SELECT auftrag.AuftrNr, k.Name as Kunde, p.Name as Kundenbetreuer
FROM auftrag
JOIN kunde AS k
ON auftrag.KundNr = k.Nr
JOIN personal as p
ON auftrag.Persnr = p.Persnr;

+---------+---------------------+------------------+
| AuftrNr | Kunde               | Kundenbetreuer   |
+---------+---------------------+------------------+
|       1 | Fahrrad Shop        | Anna Kraus       |
|       2 | Maier Ingrid        | Johanna K?Âster  |
|       3 | Rafa - Seger KG     | Anna Kraus       |
|       4 | Fahrr?ñder Hammerl  | Johanna K?Âster  |
|       5 | Fahrrad Shop        | Anna Kraus       |
+---------+---------------------+------------------+
5 rows in set (0.001 sec)


-- 2. Auftragsvolumen der einzelnen Kunden
SELECT kunde.Name, sum(auftragsposten.Gesamtpreis) as Auftragsvolumen
FROM auftrag
JOIN auftragsposten
ON auftrag.AuftrNr = auftragsposten.AuftrNr
JOIN kunde
ON auftrag.KundNr = kunde.Nr
GROUP BY kunde.name;

+---------------------+-----------------+
| Name                | Auftragsvolumen |
+---------------------+-----------------+
| Fahrr?ñder Hammerl  |          824.00 |
| Fahrrad Shop        |          870.00 |
| Maier Ingrid        |         2350.00 |
| Rafa - Seger KG     |          800.00 |
+---------------------+-----------------+
4 rows in set (0.001 sec)

oder

SELECT kunde.Name, sum(auftragsposten.Gesamtpreis) as Auftragsvolumen
FROM auftrag
RIGHT JOIN auftragsposten
ON auftrag.AuftrNr = auftragsposten.AuftrNr
RIGHT JOIN kunde
ON auftrag.KundNr = kunde.Nr
GROUP BY kunde.name;

+------------------------+-----------------+
| Name                   | Auftragsvolumen |
+------------------------+-----------------+
| Biker Ecke             |            NULL |
| Fahrr?ñder Hammerl     |          824.00 |
| Fahrrad Shop           |          870.00 |
| Maier Ingrid           |         2350.00 |
| Rafa - Seger KG        |          800.00 |
| Zweirad-Center Staller |            NULL |
+------------------------+-----------------+
6 rows in set (0.001 sec)


-- 3. Eine Übersicht welcher Lieferant welchen Artikel zuliefert

-- 4. Gesamtwert unseres Lagers (Netto)

-- 5. Wert der lagernden Zulieferartikel und Namen der Lieferanten (Nettopreise)

