/*

Problem Link: 
    https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true


Problem Statement: 
    
    Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

*/


SELECT s.hacker_id,
       h.name
FROM
(
    SELECT hacker_id,
           challenge_id,
           MAX(score) AS score
    FROM Submissions
    GROUP BY hacker_id, challenge_id
) s
JOIN Challenges c
    ON s.challenge_id = c.challenge_id
JOIN Difficulty d
    ON c.difficulty_level = d.difficulty_level
JOIN Hackers h
    ON s.hacker_id = h.hacker_id
WHERE s.score = d.score
GROUP BY s.hacker_id, h.name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC, s.hacker_id ASC;