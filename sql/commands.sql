-- all cities from Germany
SELECT *
FROM city
WHERE CountryCode = "DEU";

-- biggest 10 cities in Germany
SELECT *
FROM city
WHERE CountryCode = "DEU"
ORDER BY Population
DESC limit 10;

-- biggest 10 countries by surface area
SELECT Name, SurfaceArea
FROM country
ORDER BY SurfaceArea
DESC LIMIT 10;

-- query all country codes
SELECT Code, Name
FROM country;

-- query the biggest city in the world
SELECT Max(Population), Name
from city;
SELECT *
FROM city
ORDER BY population
DESC limit 1;

-- list all republic countries
SELECT *
FROM country
WHERE GovernmentForm = "Republic";
SELECT *
FROM country
WHERE GovernmentForm like "%Republic%";

-- average life expectancy in Europe
SELECT AVG(LifeExpectancy)
FROM country
WHERE continent = "Europe";

-- list every country with population less than 8 mio
SELECT *
FROM country
WHERE population < 8000000;

-- list every districts in Germany with population less then 10 mio


