-- commands for SQL Island https://sql-island.informatik.uni-kl.de

SELECT * from bewohner
SELECT * from bewohner WHERE status="friedlich"
SELECT * from bewohner WHERE status="friedlich" AND beruf="Waffenschmied"
SELECT * from bewohner WHERE status="friedlich" AND beruf LIKE "%schmied"
SELECT bewohnernr FROM bewohner WHERE name="Fremder"
SELECT gold FROM bewohner WHERE name="Fremder"
SELECT * FROM gegenstand WHERE besitzer IS NULL
UPDATE gegenstand SET besitzer = 20 WHERE besitzer IS NULL
SELECT * FROM gegenstand WHERE besitzer = 20
SELECT * FROM bewohner WHERE (beruf ="Haendler" OR beruf="Kaufmann") AND status="friedlich"
UPDATE gegenstand SET besitzer = 15 WHERE gegenstand="Teekanne"
UPDATE gegenstand SET besitzer = 15 WHERE gegenstand="Ring"
UPDATE bewohner SET name="dom" WHERE bewohnernr = 20
SELECT * FROM Bewohner WHERE beruf="Bäcker" ORDER BY gold
SELECT bewohner.name FROM dorf, bewohner WHERE dorf.haeuptling = bewohner.bewohnernr AND dorf.name="Zwiebelhausen"
SELECT COUNT(*) FROM bewohner, dorf WHERE dorf.dorfnr = bewohner.dorfnr AND dorf.name ="Zwiebelhausen" AND geschlecht="w"
SELECT bewohner.name FROM bewohner, dorf WHERE dorf.dorfnr = bewohner.dorfnr AND dorf.name ="Zwiebelhausen" AND geschlecht="w"
SELECT SUM(bewohner.gold) FROM bewohner WHERE bewohner.beruf="Bäcker" OR bewohner.beruf="Händler" OR bewohner.beruf="Kaufmann"
SELECT status, AVG(bewohner.gold) FROM bewohner GROUP BY status
DELETE FROM bewohner WHERE name ="Dirty Doerthe"
UPDATE bewohner SET status="friedlich" WHERE bewohnernr = 8
