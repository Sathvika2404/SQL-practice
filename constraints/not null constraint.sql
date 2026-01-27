--not null constraint


--CONSTRAINTS- conditions that can be applied on cols of the tables and these conds are to be followed while inserting the data


-- not null constraint 
--case 1: we will have to create a new table 
create database constraints
use constraints


create table test_not_null( empid int not null,
age tinyint,
firstname varchar(256)
)
select * from test_not_null

insert into test_not_null values(1, 53,'ramesh')

insert into test_not_null(age,firstname) values (25, 'Megha') -- an error will be thrown

insert into test_not_null(empid, age) values (2, 30) -- this executes, because fname can be null. because we didn't define any non null constraint to fname


-- now let me convert fname to not null constraint

alter table test_not_null
alter column firstname varchar(256) not null -- throwing an error because there is already a null value, so it can't be applied

select * from test_not_null

insert into test_not_null(empid, age) values (3, 20) 

update test_not_null 
set firstname='megha'where empid=2

update test_not_null 
set firstname='Raghava'where empid=3


-- now I am give not null constraint to firstname again
alter table test_not_null
alter column firstname varchar(256) not null-- it is working now

