/*
CTEs = Common Table Expression 
it is a temporary result set that you can reference within a 
select, insert, update or delete statement. CTEs are defined using
the with keyword. they can make complex queries easy to write,
understand and maintain by breaking the into simpler parts
*/

select * from Employees

select * into #temp1 from employees 

select * from #temp1

-- example 1: CTE

with CTE As(
select * from #temp1
)

select * from CTE --  from line 17 to 21 has to be run together otherwise it s gonna throw an error

--example 2
with Test_CTE As(
select employeeid, firstname from #temp1 
where employeeId in (2,4)
)

select * from Test_CTE 

--example 3

with [comm table exp] as(
select * from #temp1 
where EmployeeID in (1,2,3)
)
select * into #temp2 from [comm table exp]

select * from #temp2

-- example 4
with cte1 as(
select * from #temp1 
where EmployeeID in (2,4,6)
)

update #temp1 set employeeid= 101 
where employeeid in (select distinct employeeid from cte1)

--example 5

with cte2 as (
select * from #temp1 
where EmployeeID=1
)

delete from #temp1 where employeeID in (
select distinct employeeid from cte2)

--example 6

with cte3 as (
select * from #temp1 
where employeeId =101
)

insert into #temp1 select * from cte3





