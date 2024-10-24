# Write your MySQL query statement below
select(SELECT distinct salary
FROM Employee 
Order BY salary desc
limit 1 offset 1)
as SecondHighestSalary