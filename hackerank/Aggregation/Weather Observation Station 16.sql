/*
Problem Statement: Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.

Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true
*/

SELECT ROUND(LAT_N, 4) AS roundedLat_n
FROM STATION
WHERE lat_n > 38.7780
ORDER BY lat_n
LIMIT 1