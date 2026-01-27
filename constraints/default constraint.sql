-- default constraint
-- A DEFAULT constraint automatically inserts a predefined value into a column when no value is provided during INSERT.

--case 1: with new table
create table test_default(
eid int default 5,
fname varchar(256) ,
lname varchar(256) default  'human',
age tinyint)

insert into test_default values ( 1, 'mohit', 'mehra',25)

insert into test_default ( fname,age) values ('siri', 30)

select * from test_default -- check the results, eid and lname has been automatically been defined by the default data


--case 2:with existed table
alter table test_default
add default 25 for age -- be very clear default comes with 'for'


insert into test_default ( fname) values ('Meeresh')

select * from test_default




