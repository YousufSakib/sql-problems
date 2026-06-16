/*
Problem Link: 
    https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true

Problem Statement:
    You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

    The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of 0 from your result.

*/

Mysql

with maxscores as ( select s.hacker_id,name,challenge_id,max(score) as max_score from submissions s join hackers h on h.hacker_id = s.hacker_id group by s.hacker_id,challenge_id,name )

select hacker_id,name, sum(max_score) as total_score from maxscores group by hacker_id,name having sum(max_score) >0 order by sum(max_score) desc,hacker_id asc