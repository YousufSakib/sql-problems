/*
Problem Statement: Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.

Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true
*/

SELECT ROUND(LONG_W, 4) AS roundedLong_w
FROM STATION
WHERE lat_n > 38.7780
ORDER BY lat_n
LIMIT 1