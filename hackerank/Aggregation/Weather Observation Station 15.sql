/*
    Problem Statement: Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.
    
    Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true
*/

SELECT ROUND(LONG_W, 4) AS roundedLong_w
FROM STATION
WHERE lat_n < 137.2345
ORDER BY lat_n DESC
LIMIT 1