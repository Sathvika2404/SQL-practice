

select * from EmployeeSalaries

--incorrect query
select *,
last_value(employeename) over(order by salary ) as [last value]
from EmployeeSalaries

--corrected query

select *,
last_value(salary) over(order by salary rows between unbounded preceding and unbounded following) as [last value]
from EmployeeSalaries













