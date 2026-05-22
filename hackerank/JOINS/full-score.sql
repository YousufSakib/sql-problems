/*

Problem Link: 
    https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true


Problem Statement: 
    
    Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

*/


SELECT h.hacker_id, h.name
FROM Hackers h JOIN Submissions s ON s.hacker_id = h.hacker_id
WHERE s.score = ( 
    select d.score from Difficulty d join Challenges c 
    on d.difficulty_level = c.difficulty_level
    where c.challenge_id = s.challenge_id
    ) 
group by h.hacker_id, h.name
having count(s.challenge_id) > 1
order by count(s.challenge_id) DESC, h.hacker_id ASC;