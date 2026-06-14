/*
Problem Link:
    https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true

Problem Statement:
    Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

*/

SELECT Hackers.hacker_id, name, COUNT(challenge_id) AS total_challenges
FROM Hackers
    JOIN Challenges ON Hackers.hacker_id = Challenges.hacker_id

GROUP BY Hackers.hacker_id, Hackers.name

HAVING 

    COUNT(Challenges.challenge_id) = (
        SELECT MAX(challenge_count)
        FROM (
            SELECT COUNT(*) AS challenge_count
            FROM Challenges
            GROUP BY hacker_id
        ) x
    )
    
    OR

    COUNT(Challenges.challenge_id) IN (
        SELECT challenge_count
        FROM (
            SELECT COUNT(*) AS challenge_count
            FROM Challenges
            GROUP BY hacker_id
        ) y
        GROUP BY challenge_count
        HAVING COUNT(challenge_count) = 1
    )
    
ORDER BY total_challenges DESC, hacker_id
