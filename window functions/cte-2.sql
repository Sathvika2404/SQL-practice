
select * from Employees

select * into #1 from Employees

select * from #1

example 1:
with cte1 as(
select * from #1 
where EmployeeID in (1,2)
),cte2 as(
select * from #1 
where EmployeeID in (3,4)
)

select * from cte1
union all
select * from cte2

--example 2

with cte3 as(
select employeeid, firstname from #1
where EmployeeID= 1
), cte4 as (
select employeeid, firstname from #1
where EmployeeID= 3
)
select * into #2 from(
select * from cte3
union all
select * from cte4) x

select * from #2

--example 3

with cte3 as(
select employeeid, firstname from #1
where EmployeeID= 1
), cte4 as (
select employeeid, firstname from #1
where EmployeeID= 3
)
insert into #2 select *from (
select * from cte3
union all
select * from cte4) insering


--example 5

with cte3 as(
select employeeid, firstname from #1
where EmployeeID= 1
), cte4 as (
select employeeid, firstname from #1
where EmployeeID= 3
)

delete from #1 
where employeeid in(
select distinct EmployeeID from cte3 
union all
select distinct EmployeeID from cte4
)

select * from #1

--example 6

with cte3 as(
select employeeid, firstname from #1
where EmployeeID= 9
), cte4 as (
select employeeid, firstname from #1
where EmployeeID= 10
)

update #1 
set employeeid =100 where EmployeeID not in (
select distinct EmployeeID from cte3 
union all
select distinct EmployeeID from cte4
)



























