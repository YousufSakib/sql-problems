/*
    Problem Statement: Query the difference between the maximum and minimum populations in CITY.

    Problem Link: http://hackerrank.com/challenges/population-density-difference/problem?isFullScreen=true
*/

SELECT MAX(population) - MIN(population) AS diff
FROM CITY
