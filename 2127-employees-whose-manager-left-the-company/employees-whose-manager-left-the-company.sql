# Write your MySQL query statement below
SELECT employee_id
FROM Employees
WHERE salary < 30000 
AND manager_id IS NOT null
AND manager_id NOT IN (select employee_id FROM Employees)
ORDER BY employee_id