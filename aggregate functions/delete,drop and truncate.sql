-- delete,drop and truncate

select * from Employees

select * into #3 from employees
select * from Employees
select * from #3

delete from #3 where Department='0' or LastName=''

select * into #4 from employees

select * from #4

delete from #4

truncate table #3

drop table #4


--delete - delete certain records from the table

-- if we will use delete without where condition, all the records from the table will be deleted but the structure of the table remains intact.

-- Truncate- delets all the records from the table will be deleted but the structure of the table remains intact. 

-- drop- deletes all the records from the table and the structure of the table will also be removed.
