/*
    problem statement:
        Query the average population for all cities in CITY, rounded down to the nearest integer.

    problem link:
        https://www.hackerrank.com/challenges/average-population/problem?isFullScreen=true
*/

SELECT FLOOR(AVG(population)) AS avg_population
FROM CITY