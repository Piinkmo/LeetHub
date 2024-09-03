# Write your MySQL query statement below
SELECT max(num) as num From (
    SELECT distinct num 
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
    ) AS unique_nums