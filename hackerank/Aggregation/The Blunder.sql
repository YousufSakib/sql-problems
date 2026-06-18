/*

Problem Statment: Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

Problem Link: https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true

*/


SELECT CEIL(AVG(salary) - AVG(CAST(REPLACE(salary, 0, '') AS DECIMAL(10, 2))))
FROM EMPLOYEES