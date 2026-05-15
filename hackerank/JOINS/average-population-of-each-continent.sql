/*

Problem Link:

    https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true


Problem Statement:

    Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

    Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

    Input Format

    The CITY and COUNTRY tables are described as follows:

*/


SELECT CO.CONTINENT, FLOOR(AVG(CI.POPULATION))
FROM COUNTRY AS CO
JOIN CITY AS CI
ON CI.COUNTRYCODE = CO.CODE
GROUP BY CO.CONTINENT;

