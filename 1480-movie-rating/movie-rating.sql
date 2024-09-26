# Write your MySQL query statement below
(SELECT name as results
FROM MovieRating 
JOIN Users 
using(user_id)
GROUP BY name
ORDER BY count(*) DESC, name # lexicographically 是指按照字典顺序
limit 1
)

UNION ALL

(SELECT title AS results
FROM MovieRating 
JOIN Movies USING (movie_id)
WHERE extract(YEAR_MONTH FROM created_at) = 202002
GROUP BY title
ORDER BY AVG(rating) DESC, title
limit 1
)

