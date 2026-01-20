/*SQL TEMPORARY TABLES*/

select * into #temp1 
from [dbo].[Employees]

select * from #temp1

select * from employees

select * into #temp2 from employees

select * from #temp2

select * into ##temp3 from employee_records /* #temp and ## temp are different, #temp and temp will be invalid in other tabs, with or without its original tab being active..... but ##temp is when the tab it is created is active we can use the ##temp in the other tabs until it is inactive.*/

