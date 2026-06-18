/*
    Problem Statement: Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
    
    Problem Link: https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true
*/

SELECT SUM(population) AS jpn_population
FROM CITY
WHERE countrycode = "JPN"

