/*
Problem Statement:
   Query the average population of all cities in CITY where District is California.

Problem Link:
    https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true

*/

SELECT AVG(population) AS avg_population
FROM CITY
WHERE district = "California";