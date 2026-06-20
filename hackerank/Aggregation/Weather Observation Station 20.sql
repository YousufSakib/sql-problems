/*
    Problem Statement: A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
    
    Problem Link: https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
*/


WITH RankedData AS (
    SELECT LAT_N,
        ROW_NUMBER() OVER(ORDER BY LAT_N) AS row_num,
        COUNT(*) OVER() AS total_cnt
    FROM STATION
)


SELECT ROUND(AVG(LAT_N), 4)
FROM RankedData
WHERE row_num IN (FLOOR((total_cnt + 1) / 2), CEIL((total_cnt + 1) / 2));
