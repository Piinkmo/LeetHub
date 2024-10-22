# Write your MySQL query statement below

WITH CombinedFriends AS (
    SELECT requester_id AS id
    FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id
    FROM RequestAccepted
),

FindMost AS (
    SELECT id, COUNT(*) as num
    FROM CombinedFriends
    GROUP BY id
)

SELECT id, num
FROM FindMost
ORDER BY num DESC
limit 1