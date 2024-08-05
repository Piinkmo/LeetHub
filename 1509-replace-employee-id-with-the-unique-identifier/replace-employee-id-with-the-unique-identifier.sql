# Write your MySQL query statement below
SELECT employeeUNI.unique_id AS unique_id, employees.name AS name
FROM employees left join employeeuni ON employees.id = employeeuni.id