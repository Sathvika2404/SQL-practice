-- check constraint
-- it checks for certain conditions that can be applied on the col of the table if this condn fails, we will not be able to insrt the values in to the table

-- case1: new table

create table test_check( EID int,
fname varchar(256),
age tinyint check(age>=10))

select * from test_check

insert into test_check values( 1, 'Orange' ,12),(2,'apple', 11)

insert into test_check values( 1, 'KIWI' ,9)-- it throws an error

-- case 2: existed table

alter table test_check
add check(eid>8)-- throws error because already there is data where eid<8

update  test_check
set eid= 15 where eid=1 

update  test_check
set eid= 12 where eid=2

alter table test_check
add check(eid>8)-- it executes now

insert into test_check values( 1, 'KIWI' ,15)-- throws an error



