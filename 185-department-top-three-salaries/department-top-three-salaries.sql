# Write your MySQL query statement below
SELECT
    d.name AS Department,
    e.name As Employee,
    e.salary AS Salary
FROM Employee e 
JOIN Department d ON e.departmentId = d.id
WHERE (
    SELECT COUNT(DISTINCT salary)
    FROM employee e2
    WHERE e2.departmentId = e.departmentId AND e2.salary >= e.salary) <= 3

ORDER BY Department, Salary DESC

