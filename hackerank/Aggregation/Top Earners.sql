/*
Problem Statement: We define an employee's total earnings to be their monthly salary x months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers.

Problem Link: https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true

*/

With TotalEarnings AS (
    SELECT salary * months AS earning, count(*) AS cnt
    FROM Employee
    GROUP BY earning
)

SELECT earning, cnt
FROM TotalEarnings
ORDER BY earning DESC
LIMIT 1;
