-- update Statement

select * from employees

select * into #temp1 from employees

select * from #temp1

update #temp1 
set Department='HR' where Department is null


update #temp1 
set salary =89000, HireDate= '2023-01-01' where employeeID=7

select * into #2 from #temp1

select * from #2

update #2
set salary= 99999




