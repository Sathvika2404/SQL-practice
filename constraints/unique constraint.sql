-- unique constraint

-- it ensures that a column consist of unique values

--case1: when the table already exists


alter table test_unique
add unique(lname)






--case 2: we need to create the table

create table test_unique( sid int unique,
age tinyint not null,
fname varchar(256) not null unique,
lname varchar(256))

select * from test_unique

insert into test_unique values(1,25,'Rajeev', 'manas')

insert into test_unique values(1,25,'Rajeev', 'mehra') -- throws error because, rajeev already exsists

insert into test_unique values(null,23,'Piya', 'mesh')-- null value works once because it is defined as unique

insert into test_unique values(null,33,'Riya', 'Veeresh') -- throws error

truncate table test_unique





