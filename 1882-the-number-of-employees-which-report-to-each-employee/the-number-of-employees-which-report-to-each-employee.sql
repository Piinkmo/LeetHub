# Write your MySQL query statement below
SELECT b.employee_id, b.name, count(a.reports_to) AS reports_count, ROUND(avg(a.age)) as average_age
FROM Employees a
JOIN Employees b
ON a.reports_to = b.employee_id
GROUP BY employee_id
order by employee_id