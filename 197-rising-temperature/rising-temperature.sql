# Write your MySQL query statement below
SELECT id AS Id FROM weather w1
where temperature > (
    SELECT temperature FROM weather w2
    WHERE w2.recordDate = DATE_SUB(w1.recordDate, INTERVAL 1 DAY)
);