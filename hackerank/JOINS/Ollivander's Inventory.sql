/*

Problem link: 
    https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true

Problem Statement:
    Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

    Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.

    Input Format

    The following tables contain data on the wands in Ollivander's inventory:

    Wands: The id is the id of the wand, code is the code of the wand, coins_needed is the total number of gold galleons needed to buy the wand, and power denotes the quality of the wand (the higher the power, the better the wand is).

*/

SELECT W.id, WP.age, W.coins_needed, W.power
FROM Wands W
    JOIN Wands_Property WP
    ON W.code = WP.code
    JOIN (
        SELECT W.power, MIN(W.coins_needed) AS min_coins_needed, WP.age
        FROM Wands W
            JOIN Wands_Property WP
            ON W.code = WP.code
        GROUP BY W.power, WP.age
    ) MinWandCost
    ON W.power = MinWandCost.power
        AND WP.age = MinWandCost.age
        AND W.coins_needed = MinWandCost.min_coins_needed

WHERE WP.is_evil = 0
ORDER BY W.power DESC, WP.age DESC
