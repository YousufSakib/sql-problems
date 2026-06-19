/*
    Problem Statement: Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.
    
    Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true
*/

SELECT ROUND(SUM(LAT_N), 4)
FROM STATION
WHERE lat_n > 38.7880 and lat_n < 137.2345