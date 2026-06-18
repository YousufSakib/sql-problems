/*
Problem Statement:
    Query a count of the number of cities in CITY having a Population larger than 100000.

Problem Link:
    https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true
*/
SELECT COUNT(*) AS totalCity
FROM CITY
WHERE population > 100000;
