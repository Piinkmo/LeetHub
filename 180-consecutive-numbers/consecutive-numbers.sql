# Write your MySQL query statement below
WITH cte AS (
    SELECT num,
        lead(num, 1) over() as num1,
        lead(num, 2) over() as num2
    FROM logs
)

SELECT DISTINCT num ConsecutiveNums
FROM cte
WHERE (num = num1) AND (num1 = num2);