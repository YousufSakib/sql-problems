/*
Problem Link: 
    https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true

Problem Statement:
    You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

    The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of 0 from your result.

*/

With Scores AS (
    SELECT hacker_id, SUM(max_score) AS total_score

    FROM (
        SELECT hacker_id, challenge_id, MAX(score) AS max_score

        FROM Submissions 

        GROUP BY hacker_id, challenge_id
    ) x

    GROUP BY hacker_id
)


SELECT s.hacker_id, h.name, total_score

FROM Scores s 
    INNER JOIN Hackers h 
    ON s.hacker_id = h.hacker_id

WHERE s.total_score > 0

ORDER BY s.total_score DESC, s.hacker_id
