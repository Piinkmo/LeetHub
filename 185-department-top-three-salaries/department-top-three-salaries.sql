select Department, Employee, Salary 
    from (
    select 
    dense_rank() over w as top,
    e.name as Employee, salary as Salary, departmentId, d.name as Department from Employee e
    join Department d
    on e.departmentId = d.id 
    window w as (
    partition by departmentId
    order by salary desc
    )
) x
where top < 4
